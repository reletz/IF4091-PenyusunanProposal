# Folder 2.3: Dataset Kerentanan Java dan Metrik Performa

- **Subbab di Bab II (struktur ramping):** 2.2 (bagian dataset)
- **Status:** INTI (digabung)
- **Target panjang:** lihat 2.1
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] Juliet/SARD, OWASP Benchmark, dsb.; label SQLi (CWE-89); keterbatasan (sintetis).
- [ ] Metrik performa model (F1, dll.).
- [ ] Catatan: semua paper XAI-untuk-kode yang dibaca memakai C/C++ → dataset Java kemungkinan perlu dibangun sendiri (lihat 5.3).

## Hubungan ke subbab lain

Masuk ← 2.2. Keluar → 3.1.

## Paper di folder ini

| File | Peran |
|---|---|
| `lu2025-from-lab-to-reality.pdf` | Evaluasi praktis model DL dan LLM untuk deteksi kerentanan; keterbatasan dataset. |

**Bukan PDF / belum ada:**

- Juliet Java/SARD (NIST) dan OWASP Benchmark: bukan PDF; cek lisensi dan label SQLi di dokumentasi resmi.

## Istilah sulit (difficult terms)

### synthetic dataset (dataset sintetis)

- Dataset yang dibuat/dibangkitkan secara buatan (bukan dari kode dunia nyata). Juliet: *large synthetic dataset* (L3).

### label noise / heuristic labels

- Label yang salah atau diberikan dengan aturan perkiraan, bukan verifikasi manusia. Sumber menyebutnya sebagai ciri umum dataset benchmark (L2).

### generalization (generalisasi)

- Kemampuan model bekerja baik pada data yang berbeda dari data latih. Lu dan Lagaisse: model menggeneralisasi dengan buruk ke dataset dengan distribusi berbeda (L4).

### Juliet / SARD / OWASP Benchmark

- Dataset/koleksi uji kerentanan. Juliet (NIST) yang dievaluasi Lu berisi C/C++ (L3); versi Java ada ("Juliet 1.1 C/C++ and Java Test Suite", judul rujukan Boland & Black di daftar pustaka Lu) tetapi belum dikutip dari sumbernya.


## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

### Keterbatasan dataset benchmark

**L1**

> “Vulnerability detection methods based on deep learning (DL) have shown strong performance on benchmark datasets, yet their **real-world effectiveness remains underexplored**.”
>
> Lu & Lagaisse (2025), **hal. PDF 1** · `article/2.2/lu2025-from-lab-to-reality.pdf`  
> **Pakai untuk:** Motivasi: performa di benchmark belum tentu berlaku di dunia nyata (2.2).

**L2**

> “These datasets are typically characterized by similar data distributions and may contain **synthetic samples, heuristic labels, or labeling noise**.”
>
> Lu & Lagaisse (2025), **hal. PDF 1** · `article/2.2/lu2025-from-lab-to-reality.pdf`  
> **Pakai untuk:** Keterbatasan dataset kerentanan (2.2).

**L4**

> “Our experiments reveal that current representation methods struggle to distinguish vulnerable from non-vulnerable code and that trained models **generalize poorly across datasets with differing distributions** and characteristics.”
>
> Lu & Lagaisse (2025), **hal. PDF 1** · `article/2.2/lu2025-from-lab-to-reality.pdf`  
> **Pakai untuk:** Model dilatih di satu dataset sulit digeneralisasi (2.2).

### Juliet

**L3**

> “Juliet (Boland and Black, 2012) is a **large synthetic dataset developed by the National Institute of Standards and Technology (NIST)**. It contains small, labeled C/C++ code snippets with vulnerabilities corresponding to various CWE types.”
>
> Lu & Lagaisse (2025), **hal. PDF 3** · `article/2.2/lu2025-from-lab-to-reality.pdf`  
> **Pakai untuk:** Deskripsi Juliet; versi yang dievaluasi Lu berisi C/C++ (bukan Java) (2.2).

### Dataset Java (Luo)

**U2**

> “We have applied CAGs to six GNN models and large Java/C datasets with **114 vulnerability types in Java programs** and 106 vulnerability types in C programs.”
>
> Luo dkk. (2022), **hal. PDF 1** · `article/2.1/3564625.3564655.pdf`  
> **Pakai untuk:** Satu-satunya paper yang dibaca yang memakai dataset Java untuk deteksi berbasis GNN (2.2, 5.3).

**U4**

> “It has **37,350 positive samples with 114 vulnerability types** and 68,480 negative samples.”
>
> Luo dkk. (2022), **hal. PDF 8** · `article/2.1/3564625.3564655.pdf`  
> **Pakai untuk:** Ukuran dataset Java Luo; 'It' merujuk ke dataset Java (tabel 2 dan 3 pada halaman yang sama) (2.2).

## Catatan verifikasi

- Juliet Java/SARD dan OWASP Benchmark bukan PDF; sitir dari dokumentasi resmi (belum diunduh). Belum ada keputusan dataset dan metrik (F1 dll.); di .tex ada placeholder petunjuk.
- Lu dan Lagaisse mengevaluasi pada Juliet versi C/C++, jadi kutipan mereka tidak menjawab "seberapa baik model pada Juliet Java".
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.

## Peta sitasi di Bab II

| Kalimat di .tex | Disokong oleh | Catatan |
|---|---|---|
| "efektivitasnya di dunia nyata masih kurang dieksplorasi" | L1 (hal. PDF 1) | Sesuai. |
| "Dataset benchmark ... distribusi data yang mirip ... sampel sintetis, label heuristik, atau derau" | L2 (hal. PDF 1) | Sumber menulis *typically characterized by* dan *may contain*; teks mengikutinya. |
| "model yang dilatih pada satu dataset menggeneralisasi dengan buruk ke dataset dengan distribusi berbeda" | L4 (hal. PDF 1) | Sesuai. |
| "Juliet milik NIST ... dataset sintetis berukuran besar ... potongan kode C/C++ berlabel" | L3 (hal. PDF 3) | Sesuai. Perhatikan: itu deskripsi Lu atas Juliet yang ia pakai (C/C++), bukan Juliet Java. |
