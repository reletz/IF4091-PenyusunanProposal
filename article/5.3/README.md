# Folder 5.3: Celah Penelitian

- **Subbab di Bab II (struktur ramping):** 2.5.3
- **Status:** INTI
- **Target panjang:** ±0,25 hlm
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] (1) Belum ada ground truth formal berbasis taint-flow.
- [ ] (2) Belum ada fokus pada Java SQLi.
- [ ] (3) Belum ada perbandingan SHAP, LIME, dan attention dengan basis yang sama (rumusan dipersempit, lihat catatan).

## Hubungan ke subbab lain

Masuk ← 5.1 dan 5.2. Keluar → Bab III.

## Paper di folder ini

| File | Peran |
|---|---|
| (belum ada PDF) | - |

## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

### Celah 1: ground truth yang dipakai karya lain (tidak ada yang berbasis taint-flow)

**G6**

> “**Local ground-truth** refers to the precise location within a program where a crash has been reported.”
>
> Ganz dkk. (2023), **hal. PDF 5** (cetak 528) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Definisi 'local ground-truth' berbasis crash; bandingkan dengan taint-flow path (4.3, 5.3).

**K5**

> “Following [17, 61], we evaluate these explanation approaches on another vulnerability dataset D2A [78] because it is labeled with clearly annotated vulnerability-contexts which are **more reliable than other diff -based ground truths** [15].”
>
> Cao dkk. (2024), **hal. PDF 8** · `article/4.4/cao2024-coca.pdf`  
> **Pakai untuk:** Sumber klaim 'ground truth berbasis diff kurang andal' (bukan Cheng); bandingkan Cheng (C6) soal D2A (1.4, 4.4).

**H3**

> “we adopt the **statements that are deleted or modified in the commit** (marked with “-” signs) as ground-truth labels.”
>
> Chu dkk. (2024), **hal. PDF 7** · `article/4.5/chu2024-gnn-counterfactual-explanation.pdf`  
> **Pakai untuk:** Cara membentuk ground truth dari diff (4.5, 5.3).

**P1**

> “Our approach, defined as **Detection Alignment (DA)**, quantifies the agreement between the input source code lines that most influence the prediction and the actual localization of the vulnerability as per the ground truth.”
>
> Pintore dkk. (2025), **hal. PDF 1** · `article/4.4/pintore2025-line-level-localization.pdf`  
> **Pakai untuk:** Definisi DA (4.4, 5.1).

### Celah 2: bahasa dan kerentanan (semua C/C++, tidak ada Java SQLi)

**K7**

> “We only conduct our experiments on C/C++ datasets, and thus our experimental results **may not generalizable to other programming languages such as Java and Python**.”
>
> Cao dkk. (2024), **hal. PDF 10** · `article/4.4/cao2024-coca.pdf`  
> **Pakai untuk:** Bukti eksplisit celah 'belum untuk Java' (5.2, 5.3).

**K6**

> “Note that, for two multi-language datasets CrossVul and CVEFixes, we **only preserve code samples written in C/C++** in our experiments to unify the whole dataset.”
>
> Cao dkk. (2024), **hal. PDF 7** · `article/4.4/cao2024-coca.pdf`  
> **Pakai untuk:** Cakupan bahasa (5.2, 5.3).

**P6**

> “BigVul is built by collecting a large set of **C/C++ code** from 348 open-source GitHub repositories.”
>
> Pintore dkk. (2025), **hal. PDF 7** · `article/4.4/pintore2025-line-level-localization.pdf`  
> **Pakai untuk:** Bahasa dataset (5.2, 5.3).

**H4**

> “Big-Vul comprises extensive source code vulnerabilities extracted from 348 open-source **C/C++ GitHub projects**, spanning from 2002 to 2019.”
>
> Chu dkk. (2024), **hal. PDF 6** · `article/4.5/chu2024-gnn-counterfactual-explanation.pdf`  
> **Pakai untuk:** Bahasa dataset (5.2, 5.3).

**M4**

> “**We select C/C++ as the programming language** due to its diverse range of vulnerability types and examples, as well as the substantial dependence of fine-tuning on the availability of large-scale data.”
>
> Mao dkk. (2025), **hal. PDF 3** · `article/5.1/2406.09701v5.pdf`  
> **Pakai untuk:** Bahasa dataset dan alasannya (5.2, 5.3).

**G8**

> “The first program is an XML parser **written in C** with around 70 known CVEs and around 5000 public commits.”
>
> Ganz dkk. (2023), **hal. PDF 8** (cetak 531) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Bukti cakupan bahasa C, bukan Java (5.2, 5.3).

**C7**

> “For our study, we follow Nie et al. [53] to primarily focus on six of the top 30 most critical **C/C++ software weaknesses** in 2021, specifically CWE20, CWE119, CWE125, CWE190, CWE400, and CWE787.”
>
> Cheng dkk. (2024), **hal. PDF 12** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** Cakupan bahasa dan CWE (5.2, 5.3).

### Celah 3: metode XAI yang dibandingkan (SHAP/LIME vs attention terpisah, bukan pada Transformer yang sama)

**C5**

> “Furthermore, we venture into the investigation of five sequence-based techniques—LRP [25], **Shap [26], Lime [27]**, GradInput [23], and DeepLift [24]—in relation to sequence-based vulnerability detectors such as VulDeePecker [13], SySeVR [12], and TokenLSTM.”
>
> Cheng dkk. (2024), **hal. PDF 2** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** SHAP dan LIME dibandingkan di model sekuens (bukan Transformer); penting untuk menyempitkan klaim celah ke-3 (5.3).

**P3**

> “We then compute, with an explainability-based approach (via attention scores, AttnLRP or integrated gradients), a **relevance score rl,i for each i-th token of the l-th line**.”
>
> Pintore dkk. (2025), **hal. PDF 5** · `article/4.4/pintore2025-line-level-localization.pdf`  
> **Pakai untuk:** Skor per token yang diagregasi ke baris (3.5, 4.4).

**C11**

> “Third, Our research **does not involve vulnerability detection methods based on large language models** (LLMs).”
>
> Cheng dkk. (2024), **hal. PDF 26** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** Batas: belum mencakup model Transformer/LLM (5.3).

### Bukti hitungan kata kunci

| Paper | "taint" | "Java" | "SQL" | SHAP | LIME | attention |
|---|---|---|---|---|---|---|
| Ganz 2023 | 0 | 0 | 0 | 0 | 0 | 4 |
| Cheng 2024 | 0 | 0 | 0 | 7 | 14 | 2 |
| Coca 2024 | 0 | 3 | 0 | 1 | 1 | 7 |
| Pintore 2025 | 0 | 0 | 0 | 0 | 0 | 51 |
| Chu 2024 | 0 | 1 | 0 | 0 | 0 | 7 |
| Mao 2025 | 0 | 0 | 0 | 0 | 0 | 0 |
| ERASER 2020 | 0 | 0 | 0 | 0 | 4 | 28 |
| Sekyewa 2025 (SQLi, query) | 0 | 0 | 432 | 56 | 35 | 8 |
| Peralta-Garcia 2024 (SQLi, query) | 0 | 1 | 135 | 0 | 0 | 0 |

Cara hitung: `pdftotext` per PDF lalu hitung kemunculan kata (tanpa membedakan konteks). "Java" pada Coca muncul di kalimat batasan (K7) dan daftar pustaka; pada Chu di referensi (Facebook Infer). Angka "attention" yang tinggi pada Pintore karena metodenya memang berbasis attention.

## Catatan verifikasi

- Pernyataan "belum ada" tidak bisa dibuktikan hanya dari 7 paper; tuliskan sebagai "dari karya yang ditelaah" dan lakukan pencarian lanjutan (kata kunci di bawah).
- Klaim (3) PERLU DIPERSEMPIT: Cheng sudah membandingkan SHAP dan LIME (C5) tetapi pada model sekuens non-Transformer, dan tidak mencakup LLM/Transformer (C11); Pintore membandingkan attention/AttnLRP/IG (P3) pada Transformer tanpa SHAP/LIME. Rumusan aman: "belum ada perbandingan SHAP, LIME, dan attention pada satu model Transformer dengan satu ground truth yang sama".
- Kata kunci pencarian lanjutan: "taint" + "explanation" + "vulnerability detection"; "CodeQL" OR "Joern" + "explainability"; "Java" + "SQL injection" + "SHAP"; "ground truth" + "data flow" + "XAI".
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.
