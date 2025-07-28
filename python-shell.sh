#!/bin/bash

cat << 'EOF' > run.sh
#!/bin/bash

set -e  # Exit on error

VENV_DIR="venv"

# Create virtual environment if missing
if [ ! -d "$VENV_DIR" ]; then
    echo "Creating virtual environment in '$VENV_DIR'..."
    python3 -m venv "$VENV_DIR"
fi

# Activate virtual environment
echo "Activating virtual environment..."
source "$VENV_DIR/bin/activate"

# Ensure pip and pipreqs are up to date
pip install --upgrade pip > /dev/null
pip install --quiet pipreqs

# Generate requirements.txt if missing
if [ ! -f "requirements.txt" ]; then
    echo "Generating requirements.txt using pipreqs..."
    pipreqs . --force
fi

# Install all packages in requirements.txt
echo "Installing packages from requirements.txt..."
pip install -r requirements.txt

# Run the script
echo "Running main.py..."
python3 main.py
EOF

chmod +x run.sh
echo "'run.sh' created."

