# Folder 2.2: Model Detektor

- **Subbab di Bab II (struktur ramping):** 2.2 (bagian model)
- **Status:** INTI (digabung)
- **Target panjang:** lihat 2.1
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] Model yang dipilih (misal CodeBERT) dan alasannya (penjelasan level token cocok untuk SHAP/LIME/attention).
- [ ] Pembanding berbasis graf (Devign, ReVeal) via Lu 2025.

## Hubungan ke subbab lain

Masuk ← 2.1. Keluar → 2.3 (dataset), 3.x (XAI).

## Paper di folder ini

| File | Peran |
|---|---|
| `feng2020-codebert.pdf` | CodeBERT: model pra-latih untuk bahasa pemrograman dan alami. |
| `lu2025-from-lab-to-reality.pdf` | Evaluasi praktis model DL dan LLM untuk deteksi kerentanan; keterbatasan dataset. |
| `steenhoek2023-do-lms-learn-code-semantics.pdf` | Apakah LM mempelajari semantik kode (LineVul, CodeBERT, dll.); penjelasan level baris dari attention. |

**Bukan PDF / belum ada:**

- Devign (arXiv 1909.03496) dan ReVeal "Deep Learning based Vulnerability Detection: Are We There Yet?" (arXiv 2009.07235): opsional, belum diunduh.

## Istilah sulit (difficult terms)

### pre-trained model

- Model yang dilatih lebih dulu pada data besar lalu disetel (*fine-tuned*) untuk tugas tertentu. Di CodeBERT: dilatih dengan tujuan *replaced token detection* (N2).

### bimodal

- Memakai dua modalitas data sekaligus: bahasa pemrograman (PL) dan bahasa alami (NL) (N1).

### Transformer

- Arsitektur jaringan saraf yang dipakai CodeBERT (N2). Penjelasan cara kerja attention ada di folder 3.4.


## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

### CodeBERT

**N1**

> “We present CodeBERT, a **bimodal pre-trained model for programming language (PL) and natural language (NL)**.”
>
> Feng dkk. (2020), **hal. PDF 1** · `article/2.2/feng2020-codebert.pdf`  
> **Pakai untuk:** Definisi CodeBERT (2.2).

**N2**

> “We develop CodeBERT with **Transformer-based neural architecture**, and train it with a hybrid objective function that incorporates the pre-training task of replaced token detection, which is to detect plausible alternatives sampled from generators.”
>
> Feng dkk. (2020), **hal. PDF 1** · `article/2.2/feng2020-codebert.pdf`  
> **Pakai untuk:** Arsitektur dan tujuan pelatihan CodeBERT (2.2).

### Model yang dibandingkan Lu dan Lagaisse

**L5**

> “In this study, we systematically evaluate four representative DL models—**Devign, ReVeal, LineVul, and VulBERTa**—across four representative datasets: Juliet, Devign, BigVul, and ICVul.”
>
> Lu & Lagaisse (2025), **hal. PDF 1** · `article/2.2/lu2025-from-lab-to-reality.pdf`  
> **Pakai untuk:** Model DL yang dibandingkan dan datasetnya (2.2).

## Catatan verifikasi

- Keputusan model yang dipilih belum dibuat; di .tex ada placeholder petunjuk. Alasan pemilihan CodeBERT (misalnya penjelasan level token) perlu sumber sendiri, belum ada di kutipan.
- Lu dan Lagaisse mengevaluasi Devign, ReVeal, LineVul, VulBERTa (L5); bila memakai model lain, kutipan ini jadi konteks saja.
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.

## Peta sitasi di Bab II

| Kalimat di .tex | Disokong oleh | Catatan |
|---|---|---|
| "CodeBERT adalah model pre-trained bimodal untuk bahasa pemrograman dan bahasa alami yang dibangun dengan arsitektur Transformer" | N1, N2 (Feng, hal. PDF 1) | Sesuai. |
