# Folder 5.1: XAI untuk Deteksi Kerentanan Kode

- **Subbab di Bab II (struktur ramping):** 2.5.1
- **Status:** INTI
- **Target panjang:** ±0,75 hlm
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] Satu paragraf per karya terdekat (4–6 karya): apa yang dijelaskan dan bagaimana dievaluasi.
- [ ] Ganz, Cheng, Coca, Pintore, Chu, Mao; tambahan SQLi level query: Sekyewa, Peralta-Garcia.

## Hubungan ke subbab lain

Masuk ← 4.x. Keluar → 5.2, 5.3.

## Paper di folder ini

| File | Peran |
|---|---|
| `2406.09701v5.pdf` | Mao dkk. (TSE 2025), LLMVulExp: LLM untuk deteksi dan penjelasan kerentanan (bahasa alami). |
| `Detecting_Structured_Query_Language_Injections_in_.pdf` | Deteksi SQLi di web microservices dengan ML (Informatics 2024). |
| `Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf` | Ground truth lokal via directed fuzzing untuk mengevaluasi metode XAI. |
| `cao2024-coca.pdf` | Coca: GNN detektor + explainer; metrik MSP/MSR/MIoU terhadap vulnerability-triggering path. |
| `cheng2024-beyond-fidelity.pdf` | Evaluasi 10 metode XAI untuk detektor kerentanan; metrik fidelity dan Line Coverage. |
| `chu2024-gnn-counterfactual-explanation.pdf` | CFExplainer: penjelasan counterfactual untuk GNN; ground truth dari commit perbaikan. |
| `pintore2025-line-level-localization.pdf` | Detection Alignment (Jaccard) untuk lokalisasi level baris pada detektor Transformer. |
| `sekyewa2025-explainable-ensemble-sqli.pdf` | Tesis MSc Makerere: ensemble XAI (SHAP+LIME) untuk SQLi level query (122 hlm). |

## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

**G2**

> “The core idea of our approach is to **generate ground-truth around the code regions marked by an explanation method** to determine their veracity. To this end, we guide a directed fuzzer toward their locations and inspect the relation between reported crashes and explanations.”
>
> Ganz dkk. (2023), **hal. PDF 1** (cetak 524) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Inti metode ground truth non-manusia; pembanding terdekat untuk ground truth berbasis taint-flow (4.3, 5.1, 5.3).

**G14**

> “We introduce **three metrics that provide extrinsic criteria** to compare and assess explanation methods.”
>
> Ganz dkk. (2023), **hal. PDF 5** (cetak 528) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Metrik evaluasi untuk tabel 2.5.2 (M1 sampai M3).

**C2**

> “We subsequently check the precision of the vulnerability-related code lines reported by the explanation approaches and find **poor accuracy in this task among all of them**.”
>
> Cheng dkk. (2024), **hal. PDF 1** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** Motivasi: metode XAI buruk menunjuk baris rentan sebenarnya (5.1, 5.3).

**C3**

> “we introduce an additional metric called **Vulnerability Line Coverage rate (LC)**, mirroring MSR [28], which can be divided into two sub-metrics: the Vulnerability-Triggering Code Line Coverage rate (TLC) and the Vulnerability-Fixing Code Line Coverage rate (FLC).”
>
> Cheng dkk. (2024), **hal. PDF 2** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** Definisi metrik LC untuk 4.4 dan tabel 2.5.2.

**K1**

> “Thus, we use the fine-grained **Vulnerability-Triggering Paths (VTP)** [15, 17] metrics to evaluate the quality of explanations, which are formally defined as follows:”
>
> Cao dkk. (2024), **hal. PDF 8** · `article/4.4/cao2024-coca.pdf`  
> **Pakai untuk:** Dasar metrik statement-level terhadap triggering path (4.4).

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

**P2**

> “As a result, we show how the predictions of such models are **consistently biased by non-vulnerable lines**, ultimately highlighting the high impact of biases and spurious correlations.”
>
> Pintore dkk. (2025), **hal. PDF 1** · `article/4.4/pintore2025-line-level-localization.pdf`  
> **Pakai untuk:** Temuan: model memakai baris tak relevan (motivasi, 5.1).

**H3**

> “we adopt the **statements that are deleted or modified in the commit** (marked with “-” signs) as ground-truth labels.”
>
> Chu dkk. (2024), **hal. PDF 7** · `article/4.5/chu2024-gnn-counterfactual-explanation.pdf`  
> **Pakai untuk:** Cara membentuk ground truth dari diff (4.5, 5.3).

**H8**

> “Moreover, we calculate the **Precision and Recall scores** for each code snippet by comparing the explanation vector”
>
> Chu dkk. (2024), **hal. PDF 7** · `article/4.5/chu2024-gnn-counterfactual-explanation.pdf`  
> **Pakai untuk:** Metrik evaluasi untuk tabel 2.5.2.

**M1**

> “enabling LLMVulExp to detect vulnerability types in code while generating **detailed explanations, including the cause, location, and repair suggestions**.”
>
> Mao dkk. (2025), **hal. PDF 1** · `article/5.1/2406.09701v5.pdf`  
> **Pakai untuk:** Jenis penjelasan: bahasa alami, bukan atribusi fitur (5.1, 5.2).

**M2**

> “To ensure rigorous assessment, we also introduce a novel evaluation protocol for the generated explanations, comprising specific metrics—**Accuracy, Clarity, and Actionability**—and an automated “LLM-as-a-judge” methodology [21], [22], addressing a critical gap in evaluation standards.”
>
> Mao dkk. (2025), **hal. PDF 2** · `article/5.1/2406.09701v5.pdf`  
> **Pakai untuk:** Metrik evaluasi (bukan berbasis ground truth baris/taint) (5.1, 5.2). Mengoreksi klaim awal 'tanpa framework standar'.

## Catatan verifikasi

- Mao (2406.09701v5.pdf) hanya ada di folder ini. KOREKSI: v5 justru mengusulkan protokol evaluasi sendiri (Accuracy, Clarity, Actionability, LLM-as-a-judge); klaim awal "tanpa framework standar" tidak berlaku untuk versi ini.
- Sekyewa (tesis, 122 hlm, SHAP+LIME level query SQL) dan Peralta-Garcia (Informatics 2024) belum diekstrak; baca bab metodologi dan evaluasinya.
- Threats to validity Mao (Sec. VI) belum dibaca.
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.
