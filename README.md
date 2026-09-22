# My CV

LaTeX sources for two CV variants built from shared modules:

- `cv_ml.tex` — ML / industry CV
- `cv_edu.tex` — education-focused CV (same modules, education with course lists)

Layout:

- `contacts.tex`, `_header.tex`, `TLCresume.sty` — shared contacts, header and style
- `sections/` — content modules, `\input` from the top-level `cv_*.tex` files
- `images/` — logos

Build (needs TeX Live with `latexmk`):

```sh
make        # build cv_ml.pdf and cv_edu.pdf; aux files go to build/
make clean  # remove build/
```
