# Folder 3.1: Konsep Dasar XAI (bagian konsep dasar)

- **Subbab di Bab II (struktur ramping):** 2.3.1 (digabung dengan 3.5)
- **Status:** INTI (digabung)
- **Target panjang:** ±0,5 hlm untuk 3.1+3.5
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] Black box; post-hoc vs intrinsic; local vs global.
- [ ] Apa arti "penjelasan" untuk model kode.

## Hubungan ke subbab lain

Keluar → 3.2/3.3/3.4 (metode), 3.5 (level token).

## Paper di folder ini

| File | Peran |
|---|---|
| `ASystematicLiteratureReviewofExplainableAIforSoftwareEngineering.pdf` | SLR XAI untuk rekayasa perangkat lunak (preprint arXiv v1, versi artikel dari tesis Calgary). |
| `arora2025-xai-sdlc-survey.pdf` | Survei teknik XAI sepanjang siklus pengembangan perangkat lunak. |
| `ucalgary_2023_hajimohammadkhani_ahmad.pdf` | Tesis MSc Calgary (102 hlm), induk dari SLR di atas. Cukup bab latar. |

## Istilah sulit (difficult terms)

### black-box (problem)

- Model yang mengambil keputusan tanpa penjelasan yang jelas, sehingga membatasi kepercayaan dan adopsi AI (A1).

### XAI (explainable AI)

- Upaya membuat sistem AI lebih mudah ditafsirkan dan transparan agar pemangku kepentingan bisa mempercayai, memverifikasi, dan bertindak atas hasilnya (A2).

### intrinsic / inherently interpretable / self-explaining

- Model yang sejak desainnya dapat ditafsirkan (contoh umum: decision tree). Tiga nama untuk hal yang sama (S2). Kelemahannya: trade-off akurasi vs interpretabilitas (S3).

### post-hoc

- Penjelasan dibuat SETELAH model dilatih, dengan model pengganti (surrogate) yang transparan, tanpa mengubah model dasar (S4). Contoh: LIME dan SHAP (S5).

### surrogate model

- Model sederhana yang meniru perilaku model kompleks agar bisa dibaca manusia (S4).

### local vs global interpretability

- Lokal: menjelaskan SATU prediksi (satu instans) dan kaitannya dengan fitur instans itu (S7). Global: memahami keputusan model berdasarkan seluruh fitur, parameter, dan struktur (S6).

### token-level explanation

- Penjelasan berupa skor per token masukan. Sulit dibandingkan langsung dengan fitur yang ditandai pada level lain, mis. token pada AST (ST2) atau baris (C8).


## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

### Masalah black-box dan tujuan XAI

**A1**

> “However, complex AI models, which make decisions without providing clear explanations (known as the “**black-box problem**”), currently restrict trust and widespread adoption of AI.”
>
> Arora dkk. (2025), **hal. PDF 1** · `article/3.1/arora2025-xai-sdlc-survey.pdf`  
> **Pakai untuk:** Masalah black-box (2.3.1).

**A2**

> “Explainable Artificial Intelligence (XAI) has emerged to address the black-box problem of making AI systems **more interpretable and transparent so stakeholders can trust, verify, and act upon AI-based outcomes**.”
>
> Arora dkk. (2025), **hal. PDF 1** · `article/3.1/arora2025-xai-sdlc-survey.pdf`  
> **Pakai untuk:** Definisi tujuan XAI (2.3.1).

### Dua jalur: intrinsic dan post-hoc

**S1b**

> “the model understanding can be achieved by either considering **inherently interpretable predictive models** (i.e.; Linear regression, Random forest, Decision trees, etc.) or posthoc interpretability approaches [35].”
>
> Haji Mohammadkhani dkk. (2023), **hal. PDF 5** · `article/3.1/ASystematicLiteratureReviewofExplainableAIforSoftwareEngineering.pdf`  
> **Pakai untuk:** Dua jalur pemahaman model: intrinsic atau post-hoc (2.3.1).

**S2**

> “Intrinsically interpretable models are also called inherently interpretable models or **self-explaining models**.”
>
> Haji Mohammadkhani dkk. (2023), **hal. PDF 5** · `article/3.1/ASystematicLiteratureReviewofExplainableAIforSoftwareEngineering.pdf`  
> **Pakai untuk:** Definisi intrinsic (2.3.1).

**S3**

> “However, these inherently interpretable models often suffer from the **accuracy-interpretability trade-off**.”
>
> Haji Mohammadkhani dkk. (2023), **hal. PDF 5** · `article/3.1/ASystematicLiteratureReviewofExplainableAIforSoftwareEngineering.pdf`  
> **Pakai untuk:** Kelemahan model intrinsik (2.3.1).

**S4**

> “This approach approximates the black-box model using a **transparent surrogate model without changing the base model**.”
>
> Haji Mohammadkhani dkk. (2023), **hal. PDF 5** · `article/3.1/ASystematicLiteratureReviewofExplainableAIforSoftwareEngineering.pdf`  
> **Pakai untuk:** Definisi post-hoc (2.3.1).

**S5**

> “Some of the most common post-hoc methods are **LIME [38] and SHAP [39]** which provide an explanation regarding defined features.”
>
> Haji Mohammadkhani dkk. (2023), **hal. PDF 5** · `article/3.1/ASystematicLiteratureReviewofExplainableAIforSoftwareEngineering.pdf`  
> **Pakai untuk:** LIME dan SHAP sebagai metode post-hoc umum (2.3.1, 2.3.2).

### Lokal dan global

**S7**

> “When discussing local interpretability for a single prediction, it considers a **single instance** and argues that how the model’s prediction for the particular instance corresponds to that instance’s features.”
>
> Haji Mohammadkhani dkk. (2023), **hal. PDF 5** · `article/3.1/ASystematicLiteratureReviewofExplainableAIforSoftwareEngineering.pdf`  
> **Pakai untuk:** Definisi interpretabilitas lokal (2.3.1).

**S6**

> “The basic idea behind the holistic global interpretability is understanding how the model makes decisions based on the **entire feature set, parameters, and structures**.”
>
> Haji Mohammadkhani dkk. (2023), **hal. PDF 5** · `article/3.1/ASystematicLiteratureReviewofExplainableAIforSoftwareEngineering.pdf`  
> **Pakai untuk:** Definisi interpretabilitas global (2.3.1).

### Level token (jembatan ke Subbab 2.4)

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

## Catatan verifikasi

- Artikel SLR (preprint arXiv v1) dan tesis Calgary adalah dua versi karya yang sama; teks mengutip artikelnya saja (hajimohammadkhani2023).
- Judul subbab di .tex sudah kamu ubah menjadi "Konsep Dasar XAI" (tanpa "dan Penjelasan pada Level Token"); paragraf level token di akhir subbab ditulis sebagai jembatan ke Subbab 2.4 dan boleh dipotong.
- ST2, P3, ST3, C8 berasal dari folder 3.5, 4.4, dan 1.4 (paper yang sama), dikutip di sini karena menjadi jembatan.
- Klaim "review Stuttgart" dari daftar riset lama tidak dipakai (tidak ada sebagai paper terpisah).
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.

## Peta sitasi di Bab II

| Kalimat di .tex | Disokong oleh | Catatan |
|---|---|---|
| "Model AI yang kompleks ... masalah black-box" | A1 (Arora, hal. PDF 1) | Sesuai. |
| "XAI hadir untuk membuat sistem AI lebih mudah ditafsirkan dan transparan ..." | A2 (Arora, hal. PDF 1) | Sesuai. |
| "Pemahaman terhadap model dapat dicapai melalui dua jalur" | S1b (SLR, hal. PDF 5) | Sesuai. |
| "model intrinsic ... disebut self-explaining"; "trade-off akurasi dan interpretabilitas" | S2, S3 (SLR, hal. PDF 5) | Sesuai. |
| "post-hoc ... model pengganti yang transparan tanpa mengubah model dasarnya"; "LIME dan SHAP termasuk di antara metode post-hoc yang paling umum" | S4, S5 (SLR, hal. PDF 5) | Sesuai. Sumber menulis *some of the most common*; teks sudah memakai "di antara". |
| "Interpretabilitas lokal ... satu instans"; "global ... seluruh fitur, parameter, dan strukturnya" | S7, S6 (SLR, hal. PDF 5) | Sesuai. |
| "Alat interpretabilitas yang dikaji pada model kode bekerja pada level token masukan" | ST2 (Steenhoek, hal. PDF 5) | Sumber: *the interpretability tools* yang ia pakai; kata "yang dikaji" membatasi klaim agar tidak digeneralisasi. |
| "Pintore dkk. menghitung skor relevansi untuk setiap token ... skor attention, AttnLRP, atau integrated gradients" | P3 (Pintore, hal. PDF 5) | Sesuai. |
| "tidak dapat dibandingkan langsung dengan fitur bug yang ditandai pada level token AST" | ST2 (Steenhoek, hal. PDF 5) | Sesuai. |
| "cara terbaik menghitung cakupannya pada penjelasan berbasis sekuens masih pertanyaan terbuka" | C8 (Cheng, hal. PDF 26) | Sesuai: *Determining the most effective method for computing coverage rate in sequence-based explanations remains an open question*. |
