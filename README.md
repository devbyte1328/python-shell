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

1. **Clone this repo:**

```bash
git clone https://github.com/yourusername/python-shell.git
```

2. **Add an alias to your shell config (`.bashrc`, `.zshrc`, etc):**

```bash
echo "alias python_shell='bash ~/path/to/python-shell/python_shell.sh'" >> ~/.bashrc
source ~/.bashrc
```

> Replace `~/path/to` with the actual path where you cloned the repo.

---

## 🚀 Usage

In any Python project directory that already contains a `venv/`:

```bash
python_shell
```

This will drop a ready-to-go, self-updating `run.sh` into the current folder.

Then simply:

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
- `main.py` – The main Python script the runner will execute

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

## 📌 Note

This tool is optimized for Arch Linux (`pacman`).  
Feel free to fork and add support for other distros like Ubuntu (`apt`) or Fedora (`dnf`).

---

## 🪪 License

MIT License.  
Go make cool things.
