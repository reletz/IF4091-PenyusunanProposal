# Folder 2.1: Representasi Kode untuk ML

- **Subbab di Bab II (struktur ramping):** 2.2 (satu narasi; digabung 2.1+2.2+2.3)
- **Status:** INTI (digabung)
- **Target panjang:** ±0,75 hlm untuk 2.1+2.2+2.3
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] Token vs graf: apa bedanya dan mana yang dipakai beserta alasan.

## Hubungan ke subbab lain

Keluar → 2.2 (model).

## Paper di folder ini

| File | Peran |
|---|---|
| `3564625.3564655.pdf` | Compact Abstract Graphs: representasi graf ringkas untuk GNN (representasi kode untuk ML). |
| `mainFastWeb.pdf` | Disertasi Yamaguchi (151 hlm): representasi vektor kode. Pakai bab representasi saja. |

## Istilah sulit (difficult terms)

### token-based (urutan) vs graph-based

- Token-based: kode diperlakukan seperti teks; pernyataan = kalimat, kata kunci dan literal = kata (GT1). Graph-based: kode dimodelkan sebagai graf yang memuat hubungan sintaktis dan semantik (GT2).

### GNN (graph neural network)

- Jaringan saraf yang memproses data berstruktur graf. Sumber di folder ini (Luo) memakai enam model GNN; definisi umum GNN tidak ada di kutipan, tambahkan sitasi bila ingin mendefinisikan.

### CAG (compact abstract graph)

- Representasi graf ringkas usulan Luo dkk.: menyelaraskan representasi dengan tugas klasifikasi kerentanan dan memperkecil ukuran graf (abstrak Luo, hal. PDF 1).


## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

### Model butuh representasi vektor; token vs graf

**GT0**

> “Learning algorithms typically **require vector representations as input**.”
>
> Ganz dkk. (2023), **hal. PDF 2** (cetak 525) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Model ML butuh representasi vektor sebagai masukan (2.2).

**GT1**

> “Some methods for vulnerability discovery, therefore, apply techniques from natural language processing (NLP) to derive a suitable feature vector for a given source code. In this case, the **statements in the code are regarded as sentences while keywords and literals form the words**.”
>
> Ganz dkk. (2023), **hal. PDF 2** (cetak 525) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Representasi berbasis token/urutan (2.2).

**GT2**

> “These graphs can capture **syntactic and semantic relations between statements and expressions** inside code.”
>
> Ganz dkk. (2023), **hal. PDF 2** (cetak 525) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Representasi berbasis graf (2.2).

### Pentingnya representasi dan hasil pada Java

**U1**

> “**Source code representation is critical** to the machine-learning-based approach to detecting code vulnerability.”
>
> Luo dkk. (2022), **hal. PDF 1** · `article/2.1/3564625.3564655.pdf`  
> **Pakai untuk:** Pentingnya representasi kode (2.2).

**U3**

> “The results also show that using CAGs for GNN models is **significantly better than ASTs, CFGs (Control Flow Graphs), and PDGs (Program Dependence Graphs)**.”
>
> Luo dkk. (2022), **hal. PDF 1** · `article/2.1/3564625.3564655.pdf`  
> **Pakai untuk:** Pilihan representasi graf memengaruhi hasil (2.2).

**U5**

> “The experiment results show that the GNN models have performed well, with **accuracy ranging from 94.7% to 96.3% on the Java dataset** and from 91.6% to 93.2% on the C dataset.”
>
> Luo dkk. (2022), **hal. PDF 1** · `article/2.1/3564625.3564655.pdf`  
> **Pakai untuk:** Akurasi GNN pada dataset Java Luo (2.2). Dataset ini 114 jenis kerentanan, bukan khusus SQLi.

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

- Satu-satunya paper yang dibaca dengan dataset Java untuk deteksi berbasis GNN adalah Luo; dataset-nya dari NVD, SARD, dan publikasi lain (U4, hal. PDF 8). Dataset ini 114 jenis kerentanan; SQLi tidak disebut secara khusus (kata "SQL" tidak muncul di PDF).
- Disertasi Yamaguchi (mainFastWeb.pdf, 151 hlm) belum dipakai; cukup baca bab representasi vektor bila perlu.
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.

## Peta sitasi di Bab II

| Kalimat di .tex | Disokong oleh | Catatan |
|---|---|---|
| "Model machine learning memerlukan kode sumber dalam bentuk representasi vektor sebagai masukan" | GT0 (Ganz, hal. PDF 2) | Sesuai. |
| "memperlakukan kode seperti teks ... pernyataan = kalimat, kata kunci dan literal = kata" | GT1 (Ganz, hal. PDF 2) | Sesuai. |
| "memodelkan kode sebagai graf ... hubungan sintaktis dan semantik" | GT2 (Ganz, hal. PDF 2) | Sesuai. |
| "representasi kode sangat penting bagi pendekatan deteksi kerentanan berbasis machine learning" | U1 (Luo, hal. PDF 1) | Sesuai. |
| "graf ringkas ... secara signifikan lebih baik daripada AST, CFG, dan PDG" | U3 (Luo, hal. PDF 1) | Sesuai. Perbandingan dilakukan pada model GNN yang sama. |
| "akurasi 94,7% sampai 96,3% pada dataset Java berisi 114 jenis kerentanan" | U5, U2 (Luo, hal. PDF 1) | Sesuai. 114 jenis kerentanan, bukan khusus SQLi; jangan dibaca sebagai akurasi deteksi SQLi. |
