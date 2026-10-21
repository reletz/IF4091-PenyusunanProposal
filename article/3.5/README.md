# Folder 3.5: Penjelasan pada Level Token untuk Kode

- **Subbab di Bab II (struktur ramping):** 2.3.1 (digabung dengan 3.1)
- **Status:** INTI (digabung)
- **Target panjang:** lihat 3.1
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] Bagaimana SHAP, LIME, dan attention menghasilkan skor per token.
- [ ] Jembatan ke masalah pemetaan skor token → baris/statement/taint path (4.3 dan 4.4).

## Hubungan ke subbab lain

Masuk ← 3.1–3.4. Keluar → 4.3, 4.4.

## Paper di folder ini

| File | Peran |
|---|---|
| `cheng2024-beyond-fidelity.pdf` | Evaluasi 10 metode XAI untuk detektor kerentanan; metrik fidelity dan Line Coverage. |
| `steenhoek2023-do-lms-learn-code-semantics.pdf` | Apakah LM mempelajari semantik kode (LineVul, CodeBERT, dll.); penjelasan level baris dari attention. |

## Istilah sulit (difficult terms)

### token-level vs line-level vs statement-level

- Granularitas penjelasan: skor per token, per baris, atau per pernyataan. Pemetaan antar-level adalah masalah terbuka (C8).

### PVS (Potentially Vulnerable Statements)

- Pernyataan yang berpotensi rentan; dipakai Steenhoek sebagai fitur bug pembanding (abstrak Steenhoek, ST3).

### buggy paths

- Lintasan eksekusi yang memicu bug; model gagal menyelaraskan sama sekali dengannya (ST3). Dekat dengan gagasan taint-flow path.


## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

### Penjelasan di level token

**ST2**

> “Because the interpretability tools **operate at the input token-level**, we cannot directly compare them with the bug features, which are highlighted at AST token-level.”
>
> Steenhoek dkk. (2023), **hal. PDF 5** · `article/3.5/steenhoek2023-do-lms-learn-code-semantics.pdf`  
> **Pakai untuk:** Alat interpretabilitas bekerja di level token; sulit dibandingkan langsung dengan fitur bug (2.3.1).

**P3**

> “We then compute, with an explainability-based approach (via attention scores, AttnLRP or integrated gradients), a **relevance score rl,i for each i-th token of the l-th line**.”
>
> Pintore dkk. (2025), **hal. PDF 5** · `article/4.4/pintore2025-line-level-localization.pdf`  
> **Pakai untuk:** Skor per token yang diagregasi ke baris (3.5, 4.4).

**ST3**

> “We find that (1) better-performing models also aligned better with PVS, (2) the models **failed to align strongly to PVS**, and (3) the models failed to align at all to buggy paths.”
>
> Steenhoek dkk. (2023), **hal. PDF 1** · `article/3.5/steenhoek2023-do-lms-learn-code-semantics.pdf`  
> **Pakai untuk:** Temuan penyelarasan model dengan fitur bug (2.3.1, 2.4).

**C8**

> “However, **sequence-based detectors provide token-level explanations, making it difficult to directly evaluate TLC and FLC**. We approximate token recall from relevant code lines but face challenges due to granularity differences. Determining the most effective method for computing coverage rate in sequence-based explanations remains an open question.”
>
> Cheng dkk. (2024), **hal. PDF 26** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** Masalah pemetaan skor token ke baris/ground truth tetap terbuka (3.5, 4.4, 4.5).

**G7**

> “If the considered learning model operates on a sequential representation of the source code, **mapping the highlighted features to code regions** is straightforward. For graph-based approaches, however, we need to design a way to extract the relevant code locations from the graph to be able to feed them as targets into a directed fuzzer.”
>
> Ganz dkk. (2023), **hal. PDF 5** (cetak 528) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Masalah pemetaan fitur/token ke region kode (3.5, 4.4).

## Catatan verifikasi

- Isi folder ini digabung ke Subbab 2.3.1 (paragraf terakhir).
- ST3: model gagal menyelaraskan sama sekali dengan *buggy paths* (taint-flow path adalah lintasan serupa); kutipan ini menguatkan motivasi riset tetapi belum dipakai di teks 2.3. Pertimbangkan untuk 2.4/2.5.
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.

## Peta sitasi di Bab II

| Kalimat di .tex | Disokong oleh | Catatan |
|---|---|---|
| "Alat interpretabilitas ... bekerja pada level token masukan" | ST2 (hal. PDF 5) | Lihat 3.1. |
| "Pintore dkk. menghitung skor relevansi untuk setiap token ..." | P3 (hal. PDF 5) | Sesuai. |
| "tidak dapat dibandingkan langsung dengan fitur bug pada level token AST" | ST2 (hal. PDF 5) | Sesuai. |
| "cara terbaik menghitung cakupan ... masih pertanyaan terbuka" | C8 (Cheng, hal. PDF 26) | Sesuai. |
