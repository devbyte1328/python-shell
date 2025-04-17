# 🐚 python-shell

A zero-boilerplate way to run Python projects with optional virtual environments and smart package checks — tailored for Arch Linux users. Just run `python-shell` in your terminal and it will drop a ready-to-use `run.sh` script into the current directory.

---

## ✨ Features

- Activates an existing virtual environment (`venv/`) if found
- Silently upgrades `pip` **only if a newer version is available**
- Installs only **missing** Python packages from `requirements.txt`
- Installs only **missing** Arch Linux packages from `arch_packages.txt`
- Quiet and efficient: minimal output, no unnecessary re-installs
- Runs your `main.py` script at the end

---

## 📦 Installation

1. **Clone this repo:**

```bash
git clone https://github.com/devbyte1328/python-shell
cd python-shell
```

2. **Move the script to your templates folder:**

```bash
mkdir -p ~/.templates
cp python-shell.sh ~/.templates/
```

3. **Add the alias to your shell config (`.bashrc`, `.zshrc`, etc):**

```bash
echo "alias python-shell='bash ~/.templates/python-shell.sh'" >> ~/.bashrc
source ~/.bashrc
```

> ✅ Now `python-shell` is available in any terminal session.

---

## 🚀 Usage

Inside any Python project folder:

```bash
python-shell
```

This will drop a ready-to-go `run.sh` script into your current folder.

Then simply run:

```bash
./run.sh
```

It will:
- Activate your virtual environment (if it exists)
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
python-shell

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
