# Folder 4.4: Evaluasi Penjelasan pada Kode (token, baris, statement)

- **Subbab di Bab II (struktur ramping):** 2.4.2 (digabung dengan 4.3)
- **Status:** INTI (digabung)
- **Target panjang:** lihat 4.3
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] Level token, baris, dan statement.
- [ ] Masalah pemetaan skor token ke taint path.
- [ ] Metrik yang sudah ada: MSP/MSR/MIoU (Coca), Detection Alignment (Pintore), Line Coverage (Cheng).

## Hubungan ke subbab lain

Masuk ← 4.3. Keluar → 4.5.

## Paper di folder ini

| File | Peran |
|---|---|
| `cao2024-coca.pdf` | Coca: GNN detektor + explainer; metrik MSP/MSR/MIoU terhadap vulnerability-triggering path. |
| `pintore2025-line-level-localization.pdf` | Detection Alignment (Jaccard) untuk lokalisasi level baris pada detektor Transformer. |

## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

**K1**

> “Thus, we use the fine-grained **Vulnerability-Triggering Paths (VTP)** [15, 17] metrics to evaluate the quality of explanations, which are formally defined as follows:”
>
> Cao dkk. (2024), **hal. PDF 8** · `article/4.4/cao2024-coca.pdf`  
> **Pakai untuk:** Dasar metrik statement-level terhadap triggering path (4.4).

**K2**

> “stands for the **proportion of contextual statements truly related** to the detected vulnerability sample”
>
> Cao dkk. (2024), **hal. PDF 8** · `article/4.4/cao2024-coca.pdf`  
> **Pakai untuk:** Arti Mean Statement Precision (MSP) (4.4).

**K3**

> “denotes that **how many contextual statements in the triggering path** of the detected vulnerability sample”
>
> Cao dkk. (2024), **hal. PDF 8** · `article/4.4/cao2024-coca.pdf`  
> **Pakai untuk:** Arti Mean Statement Recall (MSR) (4.4).

**K4**

> “reflects the **degree of overlap** between the explanatory statements and the contextual statements on the vulnerability-triggering path.”
>
> Cao dkk. (2024), **hal. PDF 8** · `article/4.4/cao2024-coca.pdf`  
> **Pakai untuk:** Arti MIoU (4.4).

**P1**

> “Our approach, defined as **Detection Alignment (DA)**, quantifies the agreement between the input source code lines that most influence the prediction and the actual localization of the vulnerability as per the ground truth.”
>
> Pintore dkk. (2025), **hal. PDF 1** · `article/4.4/pintore2025-line-level-localization.pdf`  
> **Pakai untuk:** Definisi DA (4.4, 5.1).

**P3**

> “We then compute, with an explainability-based approach (via attention scores, AttnLRP or integrated gradients), a **relevance score rl,i for each i-th token of the l-th line**.”
>
> Pintore dkk. (2025), **hal. PDF 5** · `article/4.4/pintore2025-line-level-localization.pdf`  
> **Pakai untuk:** Skor per token yang diagregasi ke baris (3.5, 4.4).

**P4**

> “We finally compute DA through the **Jaccard’s index** computed between the two sets.”
>
> Pintore dkk. (2025), **hal. PDF 6** · `article/4.4/pintore2025-line-level-localization.pdf`  
> **Pakai untuk:** Rumus inti DA (4.4).

**C3**

> “we introduce an additional metric called **Vulnerability Line Coverage rate (LC)**, mirroring MSR [28], which can be divided into two sub-metrics: the Vulnerability-Triggering Code Line Coverage rate (TLC) and the Vulnerability-Fixing Code Line Coverage rate (FLC).”
>
> Cheng dkk. (2024), **hal. PDF 2** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** Definisi metrik LC untuk 4.4 dan tabel 2.5.2.

**G7**

> “If the considered learning model operates on a sequential representation of the source code, **mapping the highlighted features to code regions** is straightforward. For graph-based approaches, however, we need to design a way to extract the relevant code locations from the graph to be able to feed them as targets into a directed fuzzer.”
>
> Ganz dkk. (2023), **hal. PDF 5** (cetak 528) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Masalah pemetaan fitur/token ke region kode (3.5, 4.4).

## Catatan verifikasi

- Rumus MSP/MSR memakai simbol matematika; kutipan hanya bagian kata. Baca rumus lengkapnya di Coca hal. PDF 8.
- C3 dari Cheng dan G7 dari Ganz (folder lain) karena langsung relevan.
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.
