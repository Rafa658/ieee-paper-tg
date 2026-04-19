# ieee-paper-tg

This repository contains the LaTeX files and source code related to the paper.

## Requirements and Installation (Linux / Ubuntu)

To compile the LaTeX project locally and generate the PDF file, you need to install a LaTeX distribution. On Debian/Ubuntu-based systems, you can install the dependencies via `apt`.

### Option 1: Recommended Installation (Lighter)
Installs the basic compiler, recommended fonts, science packages, and publisher classes (including IEEE dependencies), along with the `latexmk` tool for automation:

```bash
sudo apt update
sudo apt install texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-science texlive-publishers latexmk
```

### Option 2: Full Installation (~5GB)
If you encounter missing package errors, you can opt to install the complete TeX Live distribution:

```bash
sudo apt update
sudo apt install texlive-full latexmk
```

*(Note: While `pandoc` might also be installed for format conversions, `latexmk` is the primary tool used to compile the `.tex` template in this project.)*

## Compilation

A `Makefile` has been configured at the root of the project to simplify the compilation process.

### Generate the PDF
To compile the paper into a PDF document (which will be output to `paper/paper.pdf`), run the following command at the root of the project:

```bash
make paper
```
*(Or simply run `make`, which triggers the same default command).*

### Clean Auxiliary Files
During compilation, LaTeX generates several temporary and log files (`.aux`, `.log`, `.fls`, etc.). To clean up these files, run:

```bash
make clean
```
