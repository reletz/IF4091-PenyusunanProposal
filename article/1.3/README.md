# Folder 1.3: Taint Analysis dan Perangkat Analisis (bagian representasi dan tool)

- **Subbab di Bab II (struktur ramping):** 2.1.2 (digabung dengan 1.2)
- **Status:** INTI (digabung)
- **Target panjang:** lihat 1.2
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] AST/CFG/PDG/CPG sekilas, hanya yang dipakai tool.
- [ ] Joern/CodeQL: apa yang dipakai dan alasan pemilihan (keputusan final tool masuk Bab III).

## Hubungan ke subbab lain

Masuk ← 1.2. Keluar → 1.4.

## Paper di folder ini

| File | Peran |
|---|---|
| `effendi2025-language-agnostic-taint-tracking.pdf` | Taint tracking lintas bahasa; membandingkan Joern, Semgrep, CodeQL (FP/FN). |
| `yamaguchi2014-code-property-graphs.pdf` | Code Property Graph (AST+CFG+PDG) dan Joern; dasar representasi untuk taint analysis. |

**Bukan PDF / belum ada:**

- Dokumentasi CodeQL Java: bukan PDF, sitir dengan URL.

## Istilah sulit (difficult terms)

### AST (abstract syntax tree)

- Pohon yang menyandikan bagaimana pernyataan dan ekspresi bersarang membentuk program (Y7).

### CFG (control flow graph)

- Graf urutan eksekusi pernyataan beserta kondisi untuk menempuh suatu jalur (Y8).

### PDG (program dependence graph)

- Graf ketergantungan: tepi data (pengaruh satu variabel terhadap variabel lain) dan tepi kendali (pengaruh kondisi terhadap nilai variabel) (Y9).

### CDG (control dependence graph)

- Hanya bagian kendali dari PDG. Effendi (EF2) memakainya bersama AST dan CFG sebagai dasar CPG; sumber tidak mendefinisikannya secara terpisah, jadi jangan didefinisikan sendiri tanpa sitasi.

### CPG (code property graph)

- Graf yang menggabungkan AST, CFG, dan PDG dalam satu struktur data (Y6). Joern membentuk CPG hampir lengkap (EF2).

### Joern

- Platform analisis kode sumber terbuka (EF1). Versi awal untuk C/C++ (Y10); analisis aliran datanya kini dievaluasi pada Java, Python, JavaScript (EF3).

### CodeQL / Semgrep

- Perangkat analisis statis multi-bahasa yang dibandingkan Effendi dengan Joern (EF4). Alasan dipilih sebagai pembanding: luas dipakai, mendukung taint multi-bahasa, bisa menganalisis program parsial (EF5).
- Hanya itu yang disokong sumber; deskripsi CodeQL lain perlu dokumentasi resmi (belum diunduh).


## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

### Mengapa perlu representasi gabungan

**Y11**

> “many vulnerabilities can only be adequately discovered by **jointly taking into account the structure, control flow and dependencies of code**.”
>
> Yamaguchi dkk. (2014), **hal. PDF 1** · `article/1.2/yamaguchi2014-code-property-graphs.pdf`  
> **Pakai untuk:** Alasan perlu representasi gabungan seperti CPG (2.1.2).

### Code property graph

**Y6**

> “we introduce a novel representation of source code called a **code property graph** that merges concepts of classic program analysis, namely abstract syntax trees, control flow graphs and program dependence graphs, into a joint data structure.”
>
> Yamaguchi dkk. (2014), **hal. PDF 1** · `article/1.2/yamaguchi2014-code-property-graphs.pdf`  
> **Pakai untuk:** Definisi CPG (2.1.2).

### AST, CFG, PDG

**Y7**

> “These trees **faithfully encode how statements and expressions are nested** to produce programs.”
>
> Yamaguchi dkk. (2014), **hal. PDF 2** · `article/1.2/yamaguchi2014-code-property-graphs.pdf`  
> **Pakai untuk:** Arti AST (2.1.2).

**Y8**

> “A control flow graph explicitly describes **the order in which code statements are executed** as well as conditions that need to be met for a particular path of execution to be taken.”
>
> Yamaguchi dkk. (2014), **hal. PDF 2** · `article/1.2/yamaguchi2014-code-property-graphs.pdf`  
> **Pakai untuk:** Arti CFG (2.1.2).

**Y9**

> “**data dependency edges reflecting the influence of one variable on another** and control dependency edges corresponding to the influence of predicates on the values of variables.”
>
> Yamaguchi dkk. (2014), **hal. PDF 3** · `article/1.2/yamaguchi2014-code-property-graphs.pdf`  
> **Pakai untuk:** Arti PDG: dua jenis tepi, data dan kendali (2.1.2).

### Jembatan: CPG dan pencarian aliran data

**Y12**

> “The inferred patterns are **expressed as traversals in a code property graph** and enable efficiently searching for unsanitized data flows”
>
> Yamaguchi dkk. (2015), **hal. PDF 1** · `article/1.2/yamaguchi2015-taint-style-search-patterns.pdf`  
> **Pakai untuk:** Jembatan CPG ke pencarian aliran data tanpa sanitasi (2.1.2).

### Joern

**EF1**

> “We contribute this data-flow analysis system to the **open-source code analysis platform Joern**, making it available to the community.”
>
> Baker Effendi dkk. (2025), **hal. PDF 1** · `article/1.3/effendi2025-language-agnostic-taint-tracking.pdf`  
> **Pakai untuk:** Joern sebagai platform sumber terbuka (2.1.2).

**EF2**

> “Joern’s language frontends and standard stages generate a **unified abstract syntax tree (AST), control flow graph (CFG), and control dependence graph (CDG)**, forming a near-complete code property graph (CPG) [29].”
>
> Baker Effendi dkk. (2025), **hal. PDF 2** · `article/1.3/effendi2025-language-agnostic-taint-tracking.pdf`  
> **Pakai untuk:** Joern membentuk CPG dari AST, CFG, dan CDG (2.1.2).

**Y10**

> “Our system employs a robust **C/C++ parser** to first extract ASTs for each function in a given code base.”
>
> Yamaguchi dkk. (2014), **hal. PDF 9** · `article/1.2/yamaguchi2014-code-property-graphs.pdf`  
> **Pakai untuk:** Implementasi CPG 2014 (cikal bakal Joern) hanya untuk C/C++; dukungan Java baru lewat Effendi (2025) (2.1.2).

**EF3**

> “We evaluate the efficiency of our analysis on **Java, Python, and JavaScript programs**.”
>
> Baker Effendi dkk. (2025), **hal. PDF 1** · `article/1.3/effendi2025-language-agnostic-taint-tracking.pdf`  
> **Pakai untuk:** Analisis aliran data Joern dievaluasi pada program Java (2.1.2).

### CodeQL dan Semgrep sebagai pembanding

**EF4**

> “We compare the precision of the data flow engine of Section 3 against two static analysis tools that support multiple languages, **Semgrep [25] and CodeQL [10]**.”
>
> Baker Effendi dkk. (2025), **hal. PDF 5** · `article/1.3/effendi2025-language-agnostic-taint-tracking.pdf`  
> **Pakai untuk:** CodeQL dan Semgrep sebagai pembanding multi-bahasa (2.1.2).

**EF5**

> “The primary considerations for related work are that they are **widely adopted**, [...] support multi-language taint analysis, and allow partial program analysis.”
>
> Baker Effendi dkk. (2025), **hal. PDF 5** · `article/1.3/effendi2025-language-agnostic-taint-tracking.pdf`  
> **Pakai untuk:** Alasan CodeQL dan Semgrep dipilih sebagai pembanding: luas dipakai, multi-bahasa, mendukung analisis program parsial (2.1.2). Kalimat terpotong header halaman, ditandai [...].

## Catatan verifikasi

- Tabel 1 Effendi (hal. PDF 6) memuat TP/TN/FP/FN dan F1 untuk Joern, Semgrep, dan CodeQL; belum diekstrak. Relevan untuk 2.1.3 (keterbatasan taint analysis), bukan untuk pemilihan tool di sini. Baca langsung sebelum disitir.
- Keputusan tool (Joern atau CodeQL) belum dibuat; di .tex ada placeholder petunjuk. Isi setelah keputusan.
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.

## Peta sitasi di Bab II

| Kalimat di .tex | Disokong oleh | Catatan |
|---|---|---|
| "banyak kerentanan hanya dapat ditemukan dengan memperhatikan struktur, aliran kendali, dan ketergantungan kode secara bersamaan" | Y11 (hal. PDF 1) | Sesuai (parafrase dekat). |
| "code property graph (CPG), yaitu graf yang menggabungkan tiga representasi klasik dalam satu struktur data" | Y6 (hal. PDF 1) | Sesuai. |
| Butir AST | Y7 (hal. PDF 2) | Sesuai. |
| Butir CFG | Y8 (hal. PDF 2) | Sesuai. |
| Butir PDG | Y9 (hal. PDF 3) | Sesuai. |
| "Dengan CPG, pencarian aliran data tanpa sanitasi dapat dinyatakan sebagai penelusuran (traversal) pada graf" | Y12 (hal. PDF 1) | Sesuai. Sumber: *expressed as traversals in a code property graph and enable efficiently searching for unsanitized data flows*. Kalimat ini jembatan dari daftar AST/CFG/PDG ke Joern. |
| "Salah satu perangkat yang menerapkan CPG adalah Joern, yaitu platform analisis kode open source" | EF1, EF2 (hal. PDF 1 dan 2) | Sesuai. Hubungan Joern dan CPG ada di EF2 (Joern membentuk CPG); "open source" di EF1. Catatan kaki 4 Yamaguchi 2014 (hal. PDF 9) juga memuat URL mlsec.org/joern untuk sistem aslinya, tidak dipakai sebagai sitasi. |
| "Melalui language frontend-nya, Joern menghasilkan AST, CFG, dan CDG terpadu yang membentuk CPG" | EF2 (hal. PDF 2) | Sumber menulis *near-complete CPG*; kata "hampir lengkap" sudah ditambahkan di teks. |
| "Implementasi awal CPG memakai parser C/C++" | Y10 (hal. PDF 9) | Sesuai. |
| "efisiensi analisis aliran data pada Joern kini telah dievaluasi pada program Java, Python, dan JavaScript" | EF3 (hal. PDF 1) | Sumber: *we evaluate the efficiency of our analysis on Java, Python, and JavaScript programs*. Teks sudah diperbaiki menjadi "efisiensi analisis aliran data ... dievaluasi" (bukan akurasi). |
| "Semgrep dan CodeQL ... luas dipakai, mendukung taint multi-bahasa, dapat menganalisis program parsial" | EF4, EF5 (hal. PDF 5) | Sesuai. |
