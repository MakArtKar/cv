# My CV

LaTeX sources for CVs built from shared modules. One entrypoint per CV variant or application.

- `cvs/` — entrypoints; each `cvs/<name>.tex` only lists the sections it `\input`s
- `pdf/` — built PDFs (`pdf/<name>.pdf`), committed
- `sections/` — content modules; add a variant (e.g. `experience_research.tex`) only when the text really differs
- `common/` — style, header and contacts
- `images/` — logos

Base variants: `cvs/ml.tex` (ML / industry) and `cvs/edu.tex` (education with course lists).

## New application

1. Copy a base entrypoint: `cp cvs/ml.tex cvs/YYYY-MM_company_role.tex`
2. Change the section list.
3. Run `make`.

## Build

Needs TeX Live with `latexmk`.

```sh
make                              # build all pdf/*.pdf
make pdf/YYYY-MM_company_role.pdf # build one CV
make clean                        # remove build/ (aux files)
```
