# Folder 3.2: SHAP (bagian SHAP)

- **Subbab di Bab II (struktur ramping):** 2.3.2 (digabung dengan 3.3)
- **Status:** INTI (digabung)
- **Target panjang:** ±0,5 hlm untuk 3.2+3.3
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] Nilai Shapley; cara kerja; kelebihan; kelemahan.
- [ ] Klaim "SHAP paling didukung bukti empiris untuk LLM di SE" jangan dipakai (sumbernya tidak ada).

## Hubungan ke subbab lain

Keluar → 3.3 (LIME), 3.5 (token).

## Paper di folder ini

| File | Peran |
|---|---|
| `lundberg2017-shap.pdf` | SHAP: nilai Shapley untuk menjelaskan prediksi; hubungan dengan LIME. |

## Istilah sulit (difficult terms)

### SHAP (SHapley Additive exPlanations)

- Kerangka penjelasan yang memberi tiap fitur sebuah nilai kepentingan untuk satu prediksi tertentu (SH1).

### Shapley value

- Konsep dari teori permainan kooperatif: kontribusi sebuah fitur dihitung sebagai rata-rata berbobot dari selisih keluaran model dengan dan tanpa fitur itu, atas semua kemungkinan subset fitur (SH2b, SH2).

### additive feature attribution

- Kelas ukuran kepentingan fitur yang bersifat aditif; SHAP menyatukan enam metode yang ada dalam kelas ini (abstrak Lundberg, hal. PDF 1).
- Definisi formalnya ada di Lundberg & Lee (Persamaan 1); jangan didefinisikan sendiri tanpa sitasi.

### Kernel SHAP / Shapley sampling values

- Dua metode perkiraan model-agnostic untuk nilai Shapley: Shapley sampling values (sudah ada) dan Kernel SHAP (baru). Kernel SHAP memerlukan evaluasi model lebih sedikit untuk akurasi serupa (SH5, SH4).


## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

### Definisi SHAP

**SH1**

> “SHAP assigns each feature an **importance value for a particular prediction**.”
>
> Lundberg & Lee (2017), **hal. PDF 1** · `article/3.2/lundberg2017-shap.pdf`  
> **Pakai untuk:** Definisi SHAP (2.3.2).

### Cara kerja nilai Shapley

**SH2b**

> “Since the effect of withholding a feature depends on other features in the model, the preceding differences are **computed for all possible subsets**”
>
> Lundberg & Lee (2017), **hal. PDF 3** · `article/3.2/lundberg2017-shap.pdf`  
> **Pakai untuk:** Nilai Shapley menghitung semua kemungkinan subset fitur (2.3.2).

**SH2**

> “The Shapley values are then computed and used as feature attributions. They are a **weighted average of all possible differences**:”
>
> Lundberg & Lee (2017), **hal. PDF 3** · `article/3.2/lundberg2017-shap.pdf`  
> **Pakai untuk:** Cara kerja nilai Shapley (2.3.2).

### Kelebihan

**SH3**

> “theoretical results showing there is a **unique solution in this class with a set of desirable properties**”
>
> Lundberg & Lee (2017), **hal. PDF 1** · `article/3.2/lundberg2017-shap.pdf`  
> **Pakai untuk:** Kelebihan SHAP: solusi unik dengan properti yang diinginkan (2.3.2).

### Biaya komputasi dan perkiraan

**SH5**

> “We describe **two model-agnostic approximation methods**, one that is already known (Shapley sampling values) and another that is novel (Kernel SHAP).”
>
> Lundberg & Lee (2017), **hal. PDF 5** · `article/3.2/lundberg2017-shap.pdf`  
> **Pakai untuk:** SHAP didekati dengan metode perkiraan (2.3.2).

**SH4**

> “While reasonable to compute for a small number of inputs, the Kernel SHAP method described next **requires fewer evaluations of the original model** to obtain similar approximation accuracy (Section 5).”
>
> Lundberg & Lee (2017), **hal. PDF 5** · `article/3.2/lundberg2017-shap.pdf`  
> **Pakai untuk:** Biaya komputasi dan alasan perkiraan seperti Kernel SHAP (2.3.2).

## Catatan verifikasi

- Kelemahan SHAP yang tersurat di sumber hanya biaya komputasi (SH4) dan asumsi opsional (independensi fitur, linearitas model) pada metode perkiraan (hal. PDF 5); belum ada kutipan untuk kelemahan lain, mis. kecocokan dengan model kode.
- Catatan: SHAP dan LIME dipakai Cheng pada detektor berbasis sekuens (folder 1.4); itu bahan 2.5, bukan 2.3.
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.

## Peta sitasi di Bab II

| Kalimat di .tex | Disokong oleh | Catatan |
|---|---|---|
| "SHAP ... memberi setiap fitur sebuah nilai kepentingan untuk satu prediksi tertentu" | SH1 (hal. PDF 1) | Sesuai. |
| "Nilai Shapley dihitung sebagai rata-rata berbobot dari selisih keluaran model untuk semua kemungkinan subset fitur" | SH2b, SH2 (hal. PDF 3) | Sesuai (parafrase dekat). |
| "satu solusi unik yang memiliki sejumlah properti yang diinginkan" | SH3 (hal. PDF 1) | Sesuai. Sumber menyebut "properti yang diinginkan" (local accuracy, missingness, consistency; hal. PDF 4); teks tidak merinci ketiganya. |
| "metode perkiraan seperti Shapley sampling values dan Kernel SHAP ... evaluasi model lebih sedikit" | SH5, SH4 (hal. PDF 5) | Sesuai. Kalimat "perhitungan klasik melibatkan semua subset fitur" ditopang SH2b; tidak diklaim bahwa itu satu-satunya alasan metode perkiraan dibuat. |
