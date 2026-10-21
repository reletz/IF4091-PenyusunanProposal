# Folder 3.3: LIME (bagian LIME)

- **Subbab di Bab II (struktur ramping):** 2.3.2 (digabung dengan 3.2)
- **Status:** INTI (digabung)
- **Target panjang:** lihat 3.2
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] Surrogate lokal berbasis perturbasi; kelebihan; kelemahan.
- [ ] Hubungan LIME dengan SHAP (Lundberg & Lee membahasnya).

## Hubungan ke subbab lain

Masuk ← 3.2. Keluar → 3.5.

## Paper di folder ini

| File | Peran |
|---|---|
| `lundberg2017-shap.pdf` | SHAP: nilai Shapley untuk menjelaskan prediksi; hubungan dengan LIME. |
| `ribeiro2016-lime.pdf` | LIME: penjelasan lokal berbasis surrogate dan perturbasi. |

## Istilah sulit (difficult terms)

### LIME (Local Interpretable Model-agnostic Explanations)

- Teknik penjelasan yang mempelajari model sederhana yang dapat ditafsirkan secara lokal di sekitar satu prediksi (LM1).

### perturbation (perturbasi)

- Mengubah-ubah masukan (mis. menghilangkan sebagian elemen) lalu melihat perubahan keluaran model untuk memperkirakan pengaruh tiap elemen (LM2; jelaskan lewat contoh sendiri bila perlu).

### sparse linear model

- Model linear yang hanya memakai sedikit fitur; bentuk penjelasan yang difokuskan LIME (LM2).

### instability (ketidakstabilan)

- Penjelasan berubah-ubah antar-pemanggilan karena sampling acak; S-LIME mengusulkan jumlah titik perturbasi agar stabil (LM4).


## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

### Definisi LIME

**LM1**

> “In this work, we propose LIME, a novel explanation technique that explains the predictions of any classifier in an interpretable and faithful manner, by **learning an interpretable model locally around the prediction**.”
>
> Ribeiro dkk. (2016), **hal. PDF 1** · `article/3.3/ribeiro2016-lime.pdf`  
> **Pakai untuk:** Definisi LIME (2.3.2).

### Bentuk penjelasan dan perturbasi

**LM2**

> “Here we focus on **sparse linear models as explanations**, and on performing the search using perturbations.”
>
> Ribeiro dkk. (2016), **hal. PDF 3** · `article/3.3/ribeiro2016-lime.pdf`  
> **Pakai untuk:** Bentuk penjelasan LIME dan pencarian lewat perturbasi (2.3.2).

**LM5**

> “Post hoc explanations based on perturbations, such as LIME [39], are **widely used approaches** to interpret a machine learning model after it has been built.”
>
> Zhou dkk. (2021), **hal. PDF 1** · `article/4.2/zhou2021-s-lime.pdf`  
> **Pakai untuk:** LIME sebagai penjelasan post-hoc berbasis perturbasi yang luas dipakai (2.3.2).

### Kelemahan

**LM4**

> “This class of methods has been shown to exhibit **large instability**, posing serious challenges to the effectiveness of the method itself and harming user trust.”
>
> Zhou dkk. (2021), **hal. PDF 1** · `article/4.2/zhou2021-s-lime.pdf`  
> **Pakai untuk:** Kelemahan LIME: ketidakstabilan (2.3.2).

**LM3**

> “Finally, we would like to explore theoretical properties (such as **the appropriate number of samples**) and computational optimizations (such as using parallelization and GPU processing)”
>
> Ribeiro dkk. (2016), **hal. PDF 10** · `article/3.3/ribeiro2016-lime.pdf`  
> **Pakai untuk:** Pengakuan penulis: jumlah sampel yang tepat dan optimasi komputasi belum dibahas (2.3.2).

## Catatan verifikasi

- S-LIME (zhou2021) ada di folder 4.2 (topik stabilitas, ditunda); dipakai di sini hanya untuk satu klaim kelemahan LIME.
- Kelebihan LIME yang tersurat: model-agnostic dan faithful secara lokal (LM1). Teks 2.3.2 belum menyebut kelebihan LIME secara eksplisit; tambahkan satu kalimat bila ingin simetris dengan SHAP.
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.

## Peta sitasi di Bab II

| Kalimat di .tex | Disokong oleh | Catatan |
|---|---|---|
| "LIME menjelaskan prediksi pengklasifikasi apa pun dengan mempelajari model ... secara lokal di sekitar prediksi" | LM1 (hal. PDF 1) | Sesuai. |
| "Penjelasannya difokuskan pada model linear jarang yang dicari dengan perturbasi" | LM2 (hal. PDF 3) | Sesuai. Sumber: *Here we focus on sparse linear models as explanations*; sumber juga menyebut kerangkanya mendukung keluarga penjelasan lain (hal. PDF 10), sehingga kata "difokuskan" lebih tepat daripada "berbentuk". |
| "LIME termasuk penjelasan post-hoc berbasis perturbasi yang banyak dipakai" | LM5 (S-LIME, hal. PDF 1) | Sesuai. |
| "metode berbasis perturbasi ini dilaporkan menunjukkan ketidakstabilan yang besar ..." | LM4 (S-LIME, hal. PDF 1) | Sesuai. Sumber menulis tentang *class of methods* (post-hoc berbasis perturbasi), termasuk LIME. |
| "jumlah sampel yang tepat dan optimasi komputasi sebagai pekerjaan lanjutan" | LM3 (Ribeiro, hal. PDF 10) | Sesuai. |
