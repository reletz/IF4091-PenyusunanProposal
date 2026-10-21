# Folder 5.2: Tabel Perbandingan Penelitian Terkait

- **Subbab di Bab II (struktur ramping):** 2.5.2
- **Status:** INTI
- **Target panjang:** ±0,5 hlm (tabel)
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] Isi baris tabel di Bab II .tex (kolom: judul, tahun, bahasa/kerentanan, model, metode XAI, metrik evaluasi, keterbatasan).
- [ ] Draf baris di bawah sudah diisi dari kutipan; kode dalam kurung = id kutipan di bagian Kutipan.

## Hubungan ke subbab lain

Masuk ← 5.1. Keluar → 5.3.

## Paper di folder ini

| File | Peran |
|---|---|
| `Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf` | Ground truth lokal via directed fuzzing untuk mengevaluasi metode XAI. |
| `cao2024-coca.pdf` | Coca: GNN detektor + explainer; metrik MSP/MSR/MIoU terhadap vulnerability-triggering path. |
| `cheng2024-beyond-fidelity.pdf` | Evaluasi 10 metode XAI untuk detektor kerentanan; metrik fidelity dan Line Coverage. |
| `chu2024-gnn-counterfactual-explanation.pdf` | CFExplainer: penjelasan counterfactual untuk GNN; ground truth dari commit perbaikan. |
| `pintore2025-line-level-localization.pdf` | Detection Alignment (Jaccard) untuk lokalisasi level baris pada detektor Transformer. |
| `sekyewa2025-explainable-ensemble-sqli.pdf` | Tesis MSc Makerere: ensemble XAI (SHAP+LIME) untuk SQLi level query (122 hlm). |

## Kutipan

### Draf baris tabel

| Karya | Tahun | Bahasa / kerentanan | Model | Metode XAI | Metrik evaluasi | Keterbatasan |
|---|---|---|---|---|---|---|
| Ganz dkk. | 2023 | C (Libxml2, Libming) (G8, p8) | Devign, ReVeal (graf); VulDeeLocator, LineVul (token) (G11, p2) | GNNExplainer, Smoothgrad, GradCAM (contoh) (G15, p2) | 3 kriteria ekstrinsik dari directed fuzzing (G14, p5) | Terbatas pada kerentanan yang bisa dicapai fuzzer (G9, p13) |
| Cheng dkk. | 2024 | C/C++ (CWE20/119/125/190/400/787) (C7, p12) | DeepWuKong, IVDetect, ReVeal, Devign; VulDeePecker, SySeVR, TokenLSTM (C4/C5, p2) | 10 metode: GNNExplainer, PGExplainer, GNN-LRP, GradCAM, DeepLift; LRP, Shap, Lime, GradInput, DeepLift (C4/C5, p2) | Fidelity + Line Coverage (TLC, FLC) (C3, p2) | Tidak mencakup detektor LLM/Transformer (C11, p26); evaluasi token→baris belum pasti (C8, p26) |
| Cao dkk. (Coca) | 2024 | C/C++ (K6, p7; K7, p10) | Devign, ReVeal, DeepWuKong, mVulPreter, IVDetect (Tabel 3, p8) (cek) | Coca-Exp (dual-view causal inference, abstrak p1), P2IM (cek) | MSP, MSR, MIoU thd. triggering path (K1, p8) | Hanya C/C++; belum tentu berlaku untuk Java/Python (K7, p10) |
| Pintore dkk. | 2025 | C/C++ (BigVul, Devign, PrimeVul) (P6, p7) | LineVul, CodeBERT, CodeT5-Small (P5, p7) | Attention scores, AttnLRP, integrated gradients (P3, p5) | Detection Alignment (Jaccard) (P1, p1) | Input terpotong; metode atribusi dan detektor terbatas (P7, p12) |
| Chu dkk. | 2024 | C/C++ (Big-Vul) (H4, p6) | Detektor GNN (daftar model: baca Sec. 5, belum diekstrak) | CFExplainer (counterfactual) vs 6 explainer factual (H7, p6) | Accuracy, Precision, Recall thd. statement dihapus/diubah di commit (H8, p7; H3, p7) | Bergantung kualitas detektor (H6, p10); belum spesifik ke fitur kerentanan (H5, p10) |
| Mao dkk. | 2025 | C/C++ (SeVC, DiverseVul, PrimeVul) (M4, p3) | LLM (student: CodeLlama) (p2) (cek) | Penjelasan bahasa alami dari LLM (bukan atribusi fitur) (M1, p1) | Accuracy, Clarity, Actionability via LLM-as-a-judge (M2, p2) | (Sec. VI belum dibaca) |

### Kutipan pendukung

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

**G8**

> “The first program is an XML parser **written in C** with around 70 known CVEs and around 5000 public commits.”
>
> Ganz dkk. (2023), **hal. PDF 8** (cetak 531) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Bukti cakupan bahasa C, bukan Java (5.2, 5.3).

**G11**

> “we consider the **graph-based methods Devign [56], ReVeal [13] and the token-based methods VulDeeLocator [34] and LineVul [20]**”
>
> Ganz dkk. (2023), **hal. PDF 2** (cetak 525) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Model yang diuji untuk tabel 2.5.2.

**G15**

> “Figure 1: Vulnerability CVE-2016-1834 with highlighted explanations for **ReVeal+GNNExplainer (green), ReVeal+Smoothgrad (blue), ReVeal+GradCam (red)**.”
>
> Ganz dkk. (2023), **hal. PDF 2** (cetak 525) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Metode XAI yang dipakai (contoh) untuk tabel 2.5.2.

**G14**

> “We introduce **three metrics that provide extrinsic criteria** to compare and assess explanation methods.”
>
> Ganz dkk. (2023), **hal. PDF 5** (cetak 528) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Metrik evaluasi untuk tabel 2.5.2 (M1 sampai M3).

**G9**

> “Clearly, our approach is **limited to vulnerabilities that can be generally identified through a fuzzer**.”
>
> Ganz dkk. (2023), **hal. PDF 13** (cetak 536) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Batasan cakupan jenis kerentanan (5.2, 4.3).

**C7**

> “For our study, we follow Nie et al. [53] to primarily focus on six of the top 30 most critical **C/C++ software weaknesses** in 2021, specifically CWE20, CWE119, CWE125, CWE190, CWE400, and CWE787.”
>
> Cheng dkk. (2024), **hal. PDF 12** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** Cakupan bahasa dan CWE (5.2, 5.3).

**C4**

> “We set our sights on evaluating **five graph-based explanation methodologies**: GNNExplainer [16], PGExplainer [21], GNN-LRP [22], GradCAM [23], and DeepLift [24].”
>
> Cheng dkk. (2024), **hal. PDF 2** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** Metode XAI untuk tabel 2.5.2 (bagian graf).

**C5**

> “Furthermore, we venture into the investigation of five sequence-based techniques—LRP [25], **Shap [26], Lime [27]**, GradInput [23], and DeepLift [24]—in relation to sequence-based vulnerability detectors such as VulDeePecker [13], SySeVR [12], and TokenLSTM.”
>
> Cheng dkk. (2024), **hal. PDF 2** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** SHAP dan LIME dibandingkan di model sekuens (bukan Transformer); penting untuk menyempitkan klaim celah ke-3 (5.3).

**C3**

> “we introduce an additional metric called **Vulnerability Line Coverage rate (LC)**, mirroring MSR [28], which can be divided into two sub-metrics: the Vulnerability-Triggering Code Line Coverage rate (TLC) and the Vulnerability-Fixing Code Line Coverage rate (FLC).”
>
> Cheng dkk. (2024), **hal. PDF 2** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** Definisi metrik LC untuk 4.4 dan tabel 2.5.2.

**C11**

> “Third, Our research **does not involve vulnerability detection methods based on large language models** (LLMs).”
>
> Cheng dkk. (2024), **hal. PDF 26** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** Batas: belum mencakup model Transformer/LLM (5.3).

**K6**

> “Note that, for two multi-language datasets CrossVul and CVEFixes, we **only preserve code samples written in C/C++** in our experiments to unify the whole dataset.”
>
> Cao dkk. (2024), **hal. PDF 7** · `article/4.4/cao2024-coca.pdf`  
> **Pakai untuk:** Cakupan bahasa (5.2, 5.3).

**K7**

> “We only conduct our experiments on C/C++ datasets, and thus our experimental results **may not generalizable to other programming languages such as Java and Python**.”
>
> Cao dkk. (2024), **hal. PDF 10** · `article/4.4/cao2024-coca.pdf`  
> **Pakai untuk:** Bukti eksplisit celah 'belum untuk Java' (5.2, 5.3).

**K1**

> “Thus, we use the fine-grained **Vulnerability-Triggering Paths (VTP)** [15, 17] metrics to evaluate the quality of explanations, which are formally defined as follows:”
>
> Cao dkk. (2024), **hal. PDF 8** · `article/4.4/cao2024-coca.pdf`  
> **Pakai untuk:** Dasar metrik statement-level terhadap triggering path (4.4).

**P5**

> “We evaluate **3 transformer-based vulnerability detection models**: LineVul (Fu and Tantithamthavorn, 2022), CodeBERT (Lu et al., 2021), and CodeT5-Small (Wang et al., 2021).”
>
> Pintore dkk. (2025), **hal. PDF 7** · `article/4.4/pintore2025-line-level-localization.pdf`  
> **Pakai untuk:** Model untuk tabel 2.5.2 (dekat dengan pilihan CodeBERT di 2.2).

**P6**

> “BigVul is built by collecting a large set of **C/C++ code** from 348 open-source GitHub repositories.”
>
> Pintore dkk. (2025), **hal. PDF 7** · `article/4.4/pintore2025-line-level-localization.pdf`  
> **Pakai untuk:** Bahasa dataset (5.2, 5.3).

**P7**

> “In future work, we plan to extend the experimental evaluation in order to consider different attribution methods and detectors, possibly able to handle larger inputs and **avoid truncating the input functions**, which represent a limitation of current approaches.”
>
> Pintore dkk. (2025), **hal. PDF 12** · `article/4.4/pintore2025-line-level-localization.pdf`  
> **Pakai untuk:** Keterbatasan input terpotong dan metode atribusi terbatas (5.2).

**P1**

> “Our approach, defined as **Detection Alignment (DA)**, quantifies the agreement between the input source code lines that most influence the prediction and the actual localization of the vulnerability as per the ground truth.”
>
> Pintore dkk. (2025), **hal. PDF 1** · `article/4.4/pintore2025-line-level-localization.pdf`  
> **Pakai untuk:** Definisi DA (4.4, 5.1).

**H4**

> “Big-Vul comprises extensive source code vulnerabilities extracted from 348 open-source **C/C++ GitHub projects**, spanning from 2002 to 2019.”
>
> Chu dkk. (2024), **hal. PDF 6** · `article/4.5/chu2024-gnn-counterfactual-explanation.pdf`  
> **Pakai untuk:** Bahasa dataset (5.2, 5.3).

**H7**

> “To provide a comparative analysis, we investigate **six prominent factual reasoning-based GNN explainers** as our baselines:”
>
> Chu dkk. (2024), **hal. PDF 6** · `article/4.5/chu2024-gnn-counterfactual-explanation.pdf`  
> **Pakai untuk:** Metode XAI pembanding untuk tabel 2.5.2.

**H8**

> “Moreover, we calculate the **Precision and Recall scores** for each code snippet by comparing the explanation vector”
>
> Chu dkk. (2024), **hal. PDF 7** · `article/4.5/chu2024-gnn-counterfactual-explanation.pdf`  
> **Pakai untuk:** Metrik evaluasi untuk tabel 2.5.2.

**H5**

> “Our current counterfactual explainer is mainly based on graph theory principles and **does not specifically consider the unique features of vulnerabilities**.”
>
> Chu dkk. (2024), **hal. PDF 10** · `article/4.5/chu2024-gnn-counterfactual-explanation.pdf`  
> **Pakai untuk:** Keterbatasan: belum spesifik ke fitur kerentanan (5.2).

**H6**

> “The effectiveness of the counterfactual explainer is **heavily influenced by the detection performance** of the GNN model.”
>
> Chu dkk. (2024), **hal. PDF 10** · `article/4.5/chu2024-gnn-counterfactual-explanation.pdf`  
> **Pakai untuk:** Keterbatasan: bergantung kualitas detektor (5.2).

**M4**

> “**We select C/C++ as the programming language** due to its diverse range of vulnerability types and examples, as well as the substantial dependence of fine-tuning on the availability of large-scale data.”
>
> Mao dkk. (2025), **hal. PDF 3** · `article/5.1/2406.09701v5.pdf`  
> **Pakai untuk:** Bahasa dataset dan alasannya (5.2, 5.3).

**M2**

> “To ensure rigorous assessment, we also introduce a novel evaluation protocol for the generated explanations, comprising specific metrics—**Accuracy, Clarity, and Actionability**—and an automated “LLM-as-a-judge” methodology [21], [22], addressing a critical gap in evaluation standards.”
>
> Mao dkk. (2025), **hal. PDF 2** · `article/5.1/2406.09701v5.pdf`  
> **Pakai untuk:** Metrik evaluasi (bukan berbasis ground truth baris/taint) (5.1, 5.2). Mengoreksi klaim awal 'tanpa framework standar'.

## Catatan verifikasi

- Tabel adalah parafrase + rujukan halaman; kolom yang belum diverifikasi ditandai (cek).
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.
