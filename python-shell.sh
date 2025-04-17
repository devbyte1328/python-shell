#!/bin/bash

cat << 'EOF' > run.sh
#!/bin/bash

set -e  # Exit on error

VENV_DIR="venv"

# Activate virtual environment if it exists
if [ -d "$VENV_DIR" ]; then
    echo "Activating virtual environment in '$VENV_DIR'..."
    source "$VENV_DIR/bin/activate"

    # Upgrade pip if a newer version is available
    CURRENT_PIP=$(pip --version | awk '{print $2}')
    LATEST_PIP=$(python3 -m pip install --upgrade pip --dry-run 2>/dev/null | grep -oP '(?<=pip )\d+(\.\d+)+(?= ->)' || echo "$CURRENT_PIP")

    if [ "$CURRENT_PIP" != "$LATEST_PIP" ]; then
        python3 -m pip install --upgrade pip > /dev/null
    fi

    # Install missing Python packages if requirements.txt exists
    if [ -f "requirements.txt" ]; then
        while read -r package; do
            if ! pip show "$package" > /dev/null 2>&1; then
                pip install "$package" > /dev/null
            fi
        done < requirements.txt
    fi
fi

# Install missing Arch packages
if [ -f "arch_packages.txt" ]; then
    while read -r pkg; do
        if ! pacman -Qi "$pkg" > /dev/null 2>&1; then
            sudo pacman -S --noconfirm "$pkg" > /dev/null
        fi
    done < arch_packages.txt
fi

# Run the Python script
python3 main.py
EOF

chmod +x run.sh
