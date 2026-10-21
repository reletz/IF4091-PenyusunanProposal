# Template Proposal IF4091 (LaTeX)

Adaptasi `Template-Proposal-IF4091-Reguler-Individu-2026-1.docx` ke LaTeX,
berbasis class `ta-sti.cls` (template STI) yang diubah menjadi `ta-if.cls`.

## Kompilasi
Butuh pdflatex dan bibtex (bawaan TeX Live), tanpa biber.

    latexmk ProposalTA.tex     # pdflatex -> bibtex -> pdflatex x2

## Yang diisi
- `ProposalTA.tex`: nama, NIM, dan data pembimbing (`\namamhs`, `\nimmhs`, `\pembimbingI`, `\nippembimbingI`, dst.)
- `Bab I` s.d. `Bab IV`: teks biru (lingkungan `petunjuk`) adalah petunjuk dari template Word; ganti dengan isi sendiri
- `daftar-pustaka.bib`: contoh entri template, ganti dengan referensi Anda
- Lampiran: mulai dengan `\mulailampiran` (bukan `\appendix`) supaya masuk Daftar Lampiran, bukan Daftar Isi
