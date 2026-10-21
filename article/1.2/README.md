# Folder 1.2: Taint Analysis dan Perangkat Analisis (bagian konsep)

- **Subbab di Bab II (struktur ramping):** 2.1.2 (digabung dengan 1.3)
- **Status:** INTI (digabung)
- **Target panjang:** ±0,5 hlm untuk 1.2+1.3
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] Istilah: source, sink, sanitizer, propagasi.
- [ ] Definisi formal singkat taint-flow path (lintasan data dari source ke sink tanpa melewati sanitizer).
- [ ] Satu kalimat penghubung ke SQLi (source = parameter request, sink = executeQuery).

## Hubungan ke subbab lain

Masuk ← 1.1. Keluar → 1.3 (representasi dan tool), 1.4 (batasan).

## Paper di folder ini

| File | Peran |
|---|---|
| `Principles_of_Program_Analysis.pdf` | Buku dasar teori analisis program (410 hlm, hasil scan, teks tidak bisa dicari). Pakai bab yang relevan saja. |
| `yamaguchi2014-code-property-graphs.pdf` | Code Property Graph (AST+CFG+PDG) dan Joern; dasar representasi untuk taint analysis. |
| `yamaguchi2015-taint-style-search-patterns.pdf` | Kerentanan bergaya taint (source-sink) dan inferensi pola pencarian. |

## Istilah sulit (difficult terms)

### source

- Titik masuk data yang tidak tepercaya (dikendalikan penyerang). Di Listing II.1: `getParameter`.
- Yamaguchi menyebutnya *attacker-controlled sources*.

### sink

- Fungsi sensitif yang berbahaya bila menerima data mentah. Di Listing II.1: `executeQuery`.
- Yamaguchi menyebutnya *security-sensitive sinks*.

### sanitization (sanitasi)

- Pembersihan atau pemeriksaan masukan sebelum sampai ke sink (misalnya *escape*, pemeriksaan tipe, penyaringan; Halfond, F16).
- Taint analysis mencari aliran yang TIDAK melewati sanitasi.

### propagation (propagasi)

- Perambatan data tercemar dari satu variabel ke variabel lain lewat penugasan dan pemanggilan fungsi. Yamaguchi: taint analysis adalah teknik untuk menelusuri propagasi data di dalam program (Y1).

### taint-style vulnerabilities (kerentanan bergaya taint)

- Kelas kerentanan di mana data penyerang mengalir tanpa sanitasi dari source ke sink (Y5). SQL injection termasuk di dalamnya (Y4).

### taint-flow path

- BUKAN istilah dari sumber. Istilah ini dipakai di proposal sebagai nama untuk lintasan aliran data dari source ke sink; didefinisikan sendiri di Bab II (tanpa sitasi).


## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

### Definisi taint analysis dan tujuannya

**Y1**

> “The term taint-style vulnerabilities has its roots in taint analysis, **a technique for tracing the propagation of data through a program**.”
>
> Yamaguchi dkk. (2015), **hal. PDF 2** · `article/1.2/yamaguchi2015-taint-style-search-patterns.pdf`  
> **Pakai untuk:** Definisi taint analysis (2.1.2).

**Y2**

> “One goal of taint analysis is to identify data flows from **attacker-controlled sources to security-sensitive sinks that do not undergo sanitization**.”
>
> Yamaguchi dkk. (2015), **hal. PDF 2** · `article/1.2/yamaguchi2015-taint-style-search-patterns.pdf`  
> **Pakai untuk:** Tujuan taint analysis: source, sink, sanitization (2.1.2).

### Source, sink, aturan sanitasi

**Y3**

> “This procedure requires the definition of (a) appropriate sources, (b) corresponding [...] sinks and (c) **sanitization rules**.”
>
> Yamaguchi dkk. (2015), **hal. PDF 2** · `article/1.2/yamaguchi2015-taint-style-search-patterns.pdf`  
> **Pakai untuk:** Tiga hal yang harus didefinisikan: source, sink, aturan sanitasi (2.1.2). Kalimat terpotong figure di PDF, ditandai [...].

**F16**

> “A developer may properly **escape, type-check, and filter input** that comes from the user and assume it is safe.”
>
> Halfond dkk. (2006), **hal. PDF 2** · `article/1.1/halfond06issse.pdf`  
> **Pakai untuk:** Contoh bentuk sanitasi/validasi masukan (1.2).

### Kerentanan bergaya taint dan SQL injection

**Y5**

> “In this class of vulnerabilities, **attacker-controlled data is passed unsanitized from an input source to a sensitive sink**.”
>
> Yamaguchi dkk. (2015), **hal. PDF 1** · `article/1.2/yamaguchi2015-taint-style-search-patterns.pdf`  
> **Pakai untuk:** Definisi kerentanan bergaya taint (2.1.2).

**Y4**

> “While at first, it may seem that only a handful of flaws can be described in this way, this vulnerability class fits many common security defects well, including different types of buffer overflows and other memory corruption flaws, **SQL and command injection**, as well as missing authorization checks.”
>
> Yamaguchi dkk. (2015), **hal. PDF 2** · `article/1.2/yamaguchi2015-taint-style-search-patterns.pdf`  
> **Pakai untuk:** Bukti eksplisit bahwa SQL injection termasuk kerentanan bergaya taint (2.1.1, 2.1.2).

## Catatan verifikasi

- Buku Nielson (410 hlm, hasil scan) tidak dipakai di teks; cukup bila nanti perlu definisi formal.
- Y3 dan Y5 sama-sama menjelaskan kerentanan bergaya taint, tapi Y3 menekankan tiga hal yang harus didefinisikan (source, sink, aturan sanitasi) sedangkan Y5 definisi aliran datanya.
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.

## Peta sitasi di Bab II

| Kalimat di .tex | Disokong oleh | Catatan |
|---|---|---|
| "Taint analysis adalah teknik untuk menelusuri perambatan (propagasi) data di dalam program" | Y1 (hal. PDF 2) | Sesuai. |
| "Tujuannya ... menemukan aliran data dari source yang dikendalikan penyerang menuju sink yang sensitif tanpa melalui proses sanitasi" | Y2 (hal. PDF 2) | Sesuai. |
| "Sanitasi adalah pembersihan atau pemeriksaan masukan ... misalnya dengan melakukan escape, pemeriksaan tipe, dan penyaringan" | F16 (Halfond, hal. PDF 2) | Definisi "pembersihan atau pemeriksaan masukan" adalah glos; Halfond hanya menyebut contoh *escape, type-check, filter*. |
| "analisis harus lebih dulu menentukan source, sink, dan aturan sanitasi" | Y3 (hal. PDF 2) | Sesuai. Di PDF kalimatnya terpotong figure, ditandai [...] pada kutipan. |
| "kerentanan bergaya taint ... SQL injection termasuk di dalamnya" | Y5 (hal. PDF 1), Y4 (hal. PDF 2) | Sesuai. |
| "lintasan aliran data ... disebut taint-flow path" | tidak disitir | Nama istilah buatan proposal, bukan klaim dari sumber. |
