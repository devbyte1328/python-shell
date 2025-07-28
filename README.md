# python-shell

A zero-boilerplate way to run Python projects with automatic virtualenv setup and accurate dependency detection using `pipreqs`. Just run `python-shell` in your terminal and it will drop a ready-to-use `run.sh` script into the current directory.

## Features

- Creates and activates a virtual environment (`venv/`)
- Automatically generates `requirements.txt` using `pipreqs` if it's missing
- Installs all required packages from `requirements.txt`
- Runs your `main.py` script

## Installation

1. Clone this repo:

```
git clone https://github.com/devbyte1328/python-shell
cd python-shell
```

2. Move the script to your templates folder:

```
mkdir -p ~/.templates
cp python-shell.sh ~/.templates/
```

3. Add the alias to your shell config (`.bashrc`, `.zshrc`, etc):

```
echo "alias python-shell='bash ~/.templates/python-shell.sh'" >> ~/.bashrc
source ~/.bashrc
```

> Now `python-shell` is available in any terminal session.

## Usage

Inside any Python project folder:

```
python-shell
```

This will generate a `run.sh` script in the current directory.

Then run:

```bash
./run.sh
```

What happens next:
- A virtual environment is created (if missing)
- `pipreqs` scans your Python files to generate `requirements.txt` (if missing)
- All dependencies are installed
- `main.py` is executed

## Notes

- This tool uses `pipreqs` for dependency inference, which detects all imports and resolves them to valid PyPI package names.
- It avoids incorrect package names (e.g., `PIL` becomes `Pillow`, `cv2` becomes `opencv-python`) without any manual mapping.
- Ideal for rapid prototyping and small-to-medium projects.

