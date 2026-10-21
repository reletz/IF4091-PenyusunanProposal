# Folder 4.5: Keterbatasan Metrik yang Ada untuk Domain Kode

- **Subbab di Bab II (struktur ramping):** 2.4.3
- **Status:** INTI
- **Target panjang:** ±0,25 hlm
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] Fidelity saja tidak cukup.
- [ ] Ground truth mahal atau tidak standar; tidak ada metrik standar.
- [ ] Metrik yang ada terbatas ke C/C++ dan tidak berbasis taint-flow untuk Java (jembatan ke 5.3).

## Hubungan ke subbab lain

Masuk ← 4.4. Keluar → 5.x.

## Paper di folder ini

| File | Peran |
|---|---|
| `chu2024-gnn-counterfactual-explanation.pdf` | CFExplainer: penjelasan counterfactual untuk GNN; ground truth dari commit perbaikan. |

## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

**H1**

> “relied on manual labeling for evaluation, which is **costly, not easily scalable, and lacks standardization**.”
>
> Chu dkk. (2024), **hal. PDF 7** · `article/4.5/chu2024-gnn-counterfactual-explanation.pdf`  
> **Pakai untuk:** Alasan ground truth penjelasan sulit distandarkan (4.5).

**H2**

> “Fortunately, the Big-Vul dataset mitigates this issue by providing detailed **statement-level fixes within git commits**, which accurately reflect the changes addressing vulnerabilities.”
>
> Chu dkk. (2024), **hal. PDF 7** · `article/4.5/chu2024-gnn-counterfactual-explanation.pdf`  
> **Pakai untuk:** Sumber ground truth berbasis commit/diff (4.5, 5.2).

**H3**

> “we adopt the **statements that are deleted or modified in the commit** (marked with “-” signs) as ground-truth labels.”
>
> Chu dkk. (2024), **hal. PDF 7** · `article/4.5/chu2024-gnn-counterfactual-explanation.pdf`  
> **Pakai untuk:** Cara membentuk ground truth dari diff (4.5, 5.3).

**S1**

> “We also noticed a **clear lack of standard evaluation metrics for XAI methods** in the literature which has caused confusion among researchers and a lack of benchmarks for comparisons.”
>
> Haji Mohammadkhani dkk. (2023), **hal. PDF 1** · `article/3.1/ASystematicLiteratureReviewofExplainableAIforSoftwareEngineering.pdf`  
> **Pakai untuk:** Dukungan klaim 'tidak ada metrik evaluasi standar' (4.5). Menggantikan klaim 'review Stuttgart' yang tidak ada.

**C1**

> “Our results show that **fidelity alone is insufficient** for evaluating these approaches, as fidelity incurs significant fluctuations across different datasets and detectors.”
>
> Cheng dkk. (2024), **hal. PDF 1** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** Fidelity saja tidak cukup (4.1, 4.5, 5.1).

**C8**

> “However, **sequence-based detectors provide token-level explanations, making it difficult to directly evaluate TLC and FLC**. We approximate token recall from relevant code lines but face challenges due to granularity differences. Determining the most effective method for computing coverage rate in sequence-based explanations remains an open question.”
>
> Cheng dkk. (2024), **hal. PDF 26** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** Masalah pemetaan skor token ke baris/ground truth tetap terbuka (3.5, 4.4, 4.5).

**C12**

> “First, we are **not rigorously studying whether these explanation methods descriptively and accurately explain** the models’ output.”
>
> Cheng dkk. (2024), **hal. PDF 25** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** Batas: tidak mengukur faithfulness secara ketat (4.5).

**G1**

> “However, there is **no established standard** for these explanations.”
>
> Ganz dkk. (2023), **hal. PDF 1** (cetak 524) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Motivasi: penjelasan XAI untuk kode belum punya standar evaluasi (4.5, 5.1).

## Catatan verifikasi

- KOREKSI: klaim "tidak ada metrik standar" didukung SLR Calgary (S1), bukan "review Stuttgart" (tidak ada sebagai paper terpisah).
- Chu (H1): kalimat dimulai dari tengah ("relied on manual labeling...", subjek ada di kalimat sebelumnya); baca konteksnya di hal. PDF 7.
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.
