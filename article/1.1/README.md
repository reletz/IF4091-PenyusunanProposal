# Folder 1.1: SQL Injection sebagai Kerentanan Aliran Data

- **Subbab di Bab II (struktur ramping):** 2.1.1
- **Status:** INTI
- **Target panjang:** ±0,5 hlm
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] Definisi singkat SQLi: input tidak tepercaya ikut menyusun query SQL sehingga mengubah struktur query.
- [ ] Mekanisme: input pengguna (source) → penggabungan string → eksekusi query (sink).
- [ ] Contoh kode Java rentan (`Statement.executeQuery` + string concatenation); sudah ada sebagai Listing II.1 di Bab II .tex.
- [ ] Mengapa SQLi dipandang sebagai kerentanan aliran data (jembatan ke taint analysis di 1.2).

## Hubungan ke subbab lain

Keluar → 1.2 (istilah source/sink/sanitizer didefinisikan formal di sana).

## Paper di folder ini

| File | Peran |
|---|---|
| `halfond06issse.pdf` | Klasifikasi serangan SQLi dan countermeasure (definisi dan jenis serangan). |

**Bukan PDF / belum ada:**

- Dokumentasi CodeQL Java (SqlInjectionQuery) dan Juliet Java/SARD CWE-89: bukan PDF, sitir dengan URL + tanggal akses.
- Dokumentasi java.sql.PreparedStatement atau OWASP SQL Injection Prevention Cheat Sheet: untuk klaim mitigasi, belum diunduh.

## Istilah sulit (difficult terms)

### preconditions (pada WebSSARI)

- **Arti sederhana:** syarat yang harus terpenuhi *sebelum* sebuah fungsi sensitif boleh menerima masukan. Pada WebSSARI, syaratnya adalah masukan sudah melewati filter yang ditentukan.
- **Contoh pada Listing II.1:** fungsi sensitif = `executeQuery`; data tercemar (*tainted*) = hasil `getParameter("id")`; prasyarat = `id` sudah disaring. Tidak ada filter di antara keduanya, jadi prasyarat tidak terpenuhi dan titik itu ditandai sebagai kerentanan.
- **Salah paham yang umum:** ini *bukan* "syarat agar suatu fungsi dianggap sensitif". Fungsi sensitif ditetapkan lebih dulu; prasyarat adalah syarat agar fungsi itu aman dipanggil.
- **Analogi:** fungsi sensitif = pintu ruang server; data tercemar = tamu tak dikenal; prasyarat = tamu harus lebih dulu dicek satpam (filter).
- **Istilah terkait:** *sensitive function* (fungsi yang berbahaya bila menerima data mentah dari pengguna, di sini yang mengeksekusi *query*), *tainted* (data dari pengguna yang belum dicek), *sanitized* (sudah melewati filter).
- **Di Bab II:** kalimatnya sengaja memakai "penyaring masukan" ketimbang "prasyarat" agar pembaca tidak perlu mengenal istilah ini.

**F13**

> “The analysis detects the **points in which preconditions have not been met** and can suggest filters and sanitization functions that can be automatically added to the application to satisfy these preconditions.”
>
> Halfond dkk. (2006), **hal. PDF 7** · `article/1.1/halfond06issse.pdf`  
> **Pakai untuk:** Arti 'preconditions': titik yang belum memenuhi syarat ditandai, lalu disarankan filter/sanitasi (istilah sulit, 1.1).

**F14**

> “The WebSSARI system works by considering as sanitized **input that has passed through a predefined set of filters**.”
>
> Halfond dkk. (2006), **hal. PDF 7** · `article/1.1/halfond06issse.pdf`  
> **Pakai untuk:** Prasyarat pada WebSSARI = masukan sudah melewati filter yang ditentukan (istilah sulit, 1.1).

**F15**

> “The primary drawbacks of this technique are that it assumes that adequate preconditions for sensitive functions can be accurately expressed using their typing system and that having input passing through certain types of filters is sufficient to consider it not tainted. For many types of functions and applications, **this assumption is too strong**.”
>
> Halfond dkk. (2006), **hal. PDF 7** · `article/1.1/halfond06issse.pdf`  
> **Pakai untuk:** Kelemahan WebSSARI: asumsi prasyarat via filter terlalu kuat (1.4).

## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

### Definisi SQLi dan akar masalah

**F1**

> “SQL injection refers to a class of code-injection attacks in which data provided by the user is included in an SQL query in such a way that **part of the user’s input is treated as SQL code**.”
>
> Halfond dkk. (2006), **hal. PDF 1** · `article/1.1/halfond06issse.pdf`  
> **Pakai untuk:** Definisi SQLi dan alasan data/perintah tidak terpisah (2.1.1).

**F2**

> “The cause of SQL injection vulnerabilities is relatively simple and well understood: **insufficient validation of user input**.”
>
> Halfond dkk. (2006), **hal. PDF 1** · `article/1.1/halfond06issse.pdf`  
> **Pakai untuk:** Akar masalah SQLi (2.1.1).

### Sumber masukan (source)

**F3**

> “In most SQLIAs that target Web applications, **user input typically comes from form submissions** that are sent to the Web application via HTTP GET or POST requests [14].”
>
> Halfond dkk. (2006), **hal. PDF 2** · `article/1.1/halfond06issse.pdf`  
> **Pakai untuk:** Asal masukan (source) pada aplikasi web, dasar parameter permintaan di Listing II.1 (2.1.1, 1.2).

### Pola kode Java yang rentan (padanan Listing II.1)

**F4**

> “query = "SELECT accounts FROM users WHERE login=’" + login + "’ AND pass=’" + password + "’ AND pin=" + pin; ResultSet result = **conn.executeQuery(query)**;”
>
> Halfond dkk. (2006), **hal. PDF 3** · `article/1.1/halfond06issse.pdf`  
> **Pakai untuk:** Figure 1 Halfond: pola kode Java servlet yang sama dengan Listing II.1 (string concatenation lalu executeQuery) (2.1.1).

### Contoh masukan yang membuat kondisi selalu benar (tautologi)

**F5**

> “The general goal of a tautology-based attack is to inject code in one or more conditional statements so that they **always evaluate to true**.”
>
> Halfond dkk. (2006), **hal. PDF 3** · `article/1.1/halfond06issse.pdf`  
> **Pakai untuk:** Dasar contoh masukan yang membuat kondisi selalu benar (2.1.1).

**F6**

> “Transforming the conditional into a tautology causes **all of the rows in the database table targeted by the query to be returned**.”
>
> Halfond dkk. (2006), **hal. PDF 3** · `article/1.1/halfond06issse.pdf`  
> **Pakai untuk:** Dampak tautologi: seluruh baris tabel dikembalikan (2.1.1).

**F7**

> “an attacker exploits an **injectable field that is used in a query’s WHERE conditional**.”
>
> Halfond dkk. (2006), **hal. PDF 3** · `article/1.1/halfond06issse.pdf`  
> **Pakai untuk:** Letak injeksi pada kondisi WHERE (2.1.1).

### Mitigasi

**F8**

> “The root cause of SQL injection vulnerabilities is insufficient input validation. Therefore, the straightforward solution for eliminating these vulnerabilities is to apply **suitable defensive coding practices**.”
>
> Halfond dkk. (2006), **hal. PDF 6** · `article/1.1/halfond06issse.pdf`  
> **Pakai untuk:** Mitigasi umum: praktik pengkodean defensif (2.1.1).

**F9**

> “These techniques offer an effective way to avoid the SQLIA problem by changing the query-building process **from an unregulated one that uses string concatenation to a systematic one that uses a type-checked API**.”
>
> Halfond dkk. (2006), **hal. PDF 7** · `article/1.1/halfond06issse.pdf`  
> **Pakai untuk:** Mendukung gagasan mengganti string concatenation dengan API ber-tipe (SQL DOM, Safe Query Objects). BUKAN PreparedStatement (2.1.1).

### Bonus untuk 1.2 dan 1.4 (taint): taint flow dan kesulitan/false positive-nya

**F11**

> “In this approach, static analysis is used to **check taint flows against preconditions for sensitive functions**.”
>
> Halfond dkk. (2006), **hal. PDF 7** · `article/1.1/halfond06issse.pdf`  
> **Pakai untuk:** Konsep taint flow pada deteksi SQLi (1.2, via WebSSARI).

**F10**

> “The primary drawback of these approaches is that **identifying all sources of tainted user input in highly-modular Web applications and accurately propagating taint information is often a difficult task**.”
>
> Halfond dkk. (2006), **hal. PDF 7** · `article/1.1/halfond06issse.pdf`  
> **Pakai untuk:** Kesulitan menentukan source dan propagasi taint; 'these approaches' = pendekatan berbasis taint (1.2, 1.4).

**F12**

> “The primary limitation of this approach is that it can detect only known patterns of SQLIAs and, because it uses a conservative analysis and has limited support for untainting operations, can generate a **relatively high amount of false positives**.”
>
> Halfond dkk. (2006), **hal. PDF 7** · `article/1.1/halfond06issse.pdf`  
> **Pakai untuk:** False positive pada analisis taint statis (WebSSARI) (1.4).

## Catatan verifikasi

- TIDAK DITEMUKAN di Halfond: istilah PreparedStatement / parameterized query. F9 (SQL DOM, Safe Query Objects) mendukung gagasan mengganti string concatenation dengan API ber-tipe, tetapi itu bukan PreparedStatement. Untuk klaim mitigasi prepared statement di usulan 2.1.1, cari sumber lain: dokumentasi Java (java.sql.PreparedStatement) atau OWASP SQL Injection Prevention Cheat Sheet (belum diunduh).
- F4 adalah kode dari Figure 1 Halfond (servlet); bedanya dengan Listing II.1 antara lain tiga parameter (login, pass, pin) dan pemanggilan `conn.executeQuery(query)` langsung pada koneksi, bukan lewat objek Statement. Cocok disitir sebagai "pola serupa pernah dipakai untuk menjelaskan SQLi" atau dijadikan dasar listingmu.
- Contoh masukan 1' OR '1'='1 di usulan 2.1.1 adalah pola baku, bukan kutipan; contoh Halfond sendiri memakai " ' or 1=1 - " pada kolom login (hal. PDF 3). Tautologinya sama: F5 dan F6 mendukungnya.
- Venue Halfond terkonfirmasi lewat pencarian web: International Symposium on Secure Software Engineering (ISSSE), Maret 2006; salinan penulis di sites.cc.gatech.edu/home/orso/papers/halfond.viegas.orso.ISSSE06.pdf. Tidak ada DOI. Rentang halaman "13-15" di catatan sekunder tidak cocok dengan PDF 11 halaman ini, jadi tidak dimasukkan ke entri bib. Salinan penulis tidak memuat nomor halaman cetak.
- F10 sampai F12 berasal dari subbagian "Taint Based Approaches" Halfond (WebSSARI dan dynamic taint analysis); "these approaches" pada F10 merujuk ke pendekatan tersebut.
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.

## Peta sitasi di Bab II (`\autocite{halfond2006}`)

| Kalimat di 2.1.1                                                                                                                    | Disokong oleh                                                                | Catatan                                                                                                                                                                          |
| ----------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| "SQL Injection adalah ... masukan ... diperlakukan sebagai kode SQL yang valid"                                                     | F1 (hal. PDF 1)                                                              | Sesuai. Halfond: *"part of the user's input is treated as SQL code"*.                                                                                                            |
| "Penyebab utama ... adalah kurangnya validasi masukan pengguna"                                                                     | F2 (hal. PDF 1), F8 (hal. PDF 6)                                             | Sesuai. Halfond menyebutnya *"relatively simple and well understood: insufficient validation of user input"*; F8 menyebutnya *"root cause"*. Kata "utama" selaras dengan sumber. |
| "masukan ... berasal dari isian formulir ... HTTP GET atau POST"                                                                    | F3 (hal. PDF 2)                                                              | Sesuai. Halfond menulis *"in most SQLIAs that target Web applications"* (bukan semua).                                                                                           |
| "Pola serupa dipakai Halfond dkk. sebagai contoh ... servlet yang rentan"                                                           | F4 (hal. PDF 3, Figure 1)                                                    | Sesuai.                                                                                                                                                                          |
| "Serangan jenis ini dikenal sebagai tautologi ... selalu bernilai benar"                                                            | F5, F6 (hal. PDF 3)                                                          | Sesuai. Contoh masukan `1' OR '1'='1` buatan sendiri (bukan kutipan).                                                                                                            |
| "Salah satu contohnya, WebSSARI, memakai analisis statis untuk memeriksa aliran taint terhadap prasyarat pada fungsi yang sensitif" | F11 (hal. PDF 7, kolom kiri, Subbab 5.2, paragraf "Taint Based Approaches.") | Sesuai dengan sumbernya: *"static analysis is used to check taint flows against preconditions for sensitive functions"*.                                                         |


