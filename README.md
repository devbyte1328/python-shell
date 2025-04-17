# 🐚 python-shell

A zero-boilerplate way to run Python projects with virtual environments and package checks, tailored for Arch Linux users. Just type `python_shell` in your terminal and it will drop a smart `run.sh` script into the current directory.

---

## ✨ Features

- Activates an existing virtual environment (`venv/`)
- Installs only missing Python packages from `requirements.txt`
- Installs only missing Arch Linux packages from `arch_packages.txt`
- Silently upgrades `pip` **only if a newer version is available**
- Quiet and efficient: minimal output, no unnecessary re-installs
- Runs your `main.py` script at the end

---

## 📦 Installation

1. **Create a `.templates` directory (if you don't already have one):**

```bash
mkdir -p ~/.templates
```

2. **Save the script as `python_shell.sh` in that directory:**

```bash
cp python_shell.sh ~/.templates/
```

3. **Add the alias to your shell config (`.bashrc`, `.zshrc`, etc):**

```bash
echo "alias python_shell='bash ~/.templates/python_shell.sh'" >> ~/.bashrc
source ~/.bashrc
```

> Now `python_shell` will be available in any terminal session.

---

## 🚀 Usage

Inside any Python project directory that already contains a virtual environment (`venv/`):

```bash
python_shell
```

This will drop a ready-to-go, self-updating `run.sh` script into your current folder.

Then simply run:

```bash
./run.sh
```

It will:
- Activate your virtual environment
- Install any missing Python or Arch Linux packages
- Upgrade pip if needed
- Run your `main.py` script

---

## 📁 Optional Project Files

If you want full automation, include these files in your project:

- `requirements.txt` – List of Python packages (one per line)
- `arch_packages.txt` – List of system packages for Arch Linux
- `main.py` – Your main script

Example `requirements.txt`:
```
pytesseract
Pillow
```

Example `arch_packages.txt`:
```
tesseract
tesseract-data-eng
```

---

## 🛠 Example Workflow

```bash
# Inside your project folder
python3 -m venv venv
source venv/bin/activate
touch main.py requirements.txt arch_packages.txt

# Add packages to the text files...

# Drop in the run script
python_shell

# Run it
./run.sh
```

---

## 🧠 Why This Exists

This script is for developers who:

- Use Python a lot
- Hate boilerplate setup
- Want fast, repeatable project execution
- Use Arch Linux and want system package checks built-in

---

## 📌 Note

This tool is optimized for Arch Linux (`pacman`).  
Feel free to fork and add support for other distros like Ubuntu (`apt`) or Fedora (`dnf`).

---

## 🪪 License

MIT License.  
Go make cool things.
