# Folder 3.4: Attention sebagai Penjelasan

- **Subbab di Bab II (struktur ramping):** 2.3.3
- **Status:** INTI
- **Target panjang:** ±0,5 hlm
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] Cara kerja attention di Transformer.
- [ ] Perdebatan: Jain & Wallace ("bukan penjelasan") vs Wiegreffe & Pinter ("tidak sepenuhnya benar", bergantung definisi penjelasan).
- [ ] Posisi riset: attention dievaluasi, bukan diasumsikan sebagai penjelasan.

## Hubungan ke subbab lain

Keluar → 3.5, 4.1.

## Paper di folder ini

| File | Peran |
|---|---|
| `jain2019-attention-is-not-explanation.pdf` | Attention is not Explanation (argumen utama yang diperdebatkan). |
| `wiegreffe2019-attention-is-not-not-explanation.pdf` | Attention is not not Explanation (bantahan; bergantung definisi penjelasan). |

## Istilah sulit (difficult terms)

### attention (weights / distribution)

- Distribusi bobot atas unit masukan yang diperhatikan model; sering dipandang menunjukkan kepentingan relatif masukan (J1).

### attention map

- Peta bobot attention sebagai keluaran tambahan; disebut SLR sebagai salah satu keluaran model intrinsik (S8).

### self-attention

- Attention di dalam satu urutan masukan pada Transformer. Definisi teknis tidak ada di kutipan; sitir sumber tersendiri bila ingin menjelaskan.

### faithful explanation

- Penjelasan yang benar-benar mencerminkan alasan prediksi model. Dibahas lebih lanjut di folder 4.1 (ERASER).

### gradient-based feature importance

- Ukuran kepentingan fitur berbasis gradien; dipakai Jain & Wallace sebagai pembanding bobot attention (J2).


## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

### Apa itu attention dan anggapan sebagai penjelasan

**J1**

> “models equipped with attention provide **a distribution over attended-to input units**, and this is often presented (at least implicitly) as communicating the relative importance of inputs.”
>
> Jain & Wallace (2019), **hal. PDF 1** · `article/3.4/jain2019-attention-is-not-explanation.pdf`  
> **Pakai untuk:** Apa yang dihasilkan attention dan asumsi bahwa itu penjelasan (2.3.3).

**S8**

> “These models usually provide some level of transparency in their design and structure or they might generate **additional outputs such as attention maps** [36], disentangles representations, or textual or multi-model explanations alongside their predictions.”
>
> Haji Mohammadkhani dkk. (2023), **hal. PDF 5** · `article/3.1/ASystematicLiteratureReviewofExplainableAIforSoftwareEngineering.pdf`  
> **Pakai untuk:** Attention map sebagai keluaran tambahan model intrinsik (2.3.3).

**ST1**

> “LineVul [16] is based on the CodeBERT backbone and, furthermore, produces **line-level explanations based on self-attention**.”
>
> Steenhoek dkk. (2023), **hal. PDF 3** · `article/3.5/steenhoek2023-do-lms-learn-code-semantics.pdf`  
> **Pakai untuk:** LineVul: penjelasan level baris dari self-attention (2.3.3, 2.3.1).

### Argumen Jain & Wallace

**J2**

> “For example, learned attention weights are frequently uncorrelated with gradient-based measures of feature importance, and one can identify **very different attention distributions that nonetheless yield equivalent predictions**.”
>
> Jain & Wallace (2019), **hal. PDF 1** · `article/3.4/jain2019-attention-is-not-explanation.pdf`  
> **Pakai untuk:** Bukti utama Jain & Wallace (2.3.3).

**J3**

> “Our findings show that standard attention modules **do not provide meaningful explanations** and should not be treated as though they do.”
>
> Jain & Wallace (2019), **hal. PDF 1** · `article/3.4/jain2019-attention-is-not-explanation.pdf`  
> **Pakai untuk:** Klaim inti Jain & Wallace (2.3.3).

### Bantahan Wiegreffe & Pinter

**W1**

> “Its core argument, which we elaborate in §2, is that if alternative attention distributions exist that produce similar results to those obtained by the original model, then the original model’s **attention scores cannot be reliably used** to “faithfully” explain the model’s prediction.”
>
> Wiegreffe & Pinter (2019), **hal. PDF 1** · `article/3.4/wiegreffe2019-attention-is-not-not-explanation.pdf`  
> **Pakai untuk:** Ringkasan argumen Jain & Wallace menurut Wiegreffe & Pinter (2.3.3).

**W2**

> “We contend (§2.1) that while Jain and Wallace ask an important question, and raise a genuine concern regarding potential misuse of attention weights in explaining model decisions on English-language datasets, some key assumptions used in their experimental design leave an **implausibly large amount of freedom in the setup**, ultimately leaving practitioners without an applicable way for measuring the utility of attention distributions in specific settings.”
>
> Wiegreffe & Pinter (2019), **hal. PDF 1** · `article/3.4/wiegreffe2019-attention-is-not-not-explanation.pdf`  
> **Pakai untuk:** Kritik Wiegreffe & Pinter (2.3.3).

**W3**

> “We demonstrate that for some datasets, **a frozen attention distribution performs just as well as learned attention weights**”
>
> Wiegreffe & Pinter (2019), **hal. PDF 1** · `article/3.4/wiegreffe2019-attention-is-not-not-explanation.pdf`  
> **Pakai untuk:** Temuan tambahan Wiegreffe & Pinter (2.3.3).

## Catatan verifikasi

- Jain & Wallace dan Wiegreffe & Pinter meneliti tugas NLP berbahasa Inggris; sumber kedua menegaskan itu (W2). Belum ada kutipan tentang attention pada model kode selain LineVul (ST1).
- Cara kerja attention pada Transformer (query/key/value) tidak dijelaskan di teks karena belum ada kutipan sumbernya; tambahkan bila perlu.
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.

## Peta sitasi di Bab II

| Kalimat di .tex | Disokong oleh | Catatan |
|---|---|---|
| "Mekanisme attention menghasilkan distribusi bobot ... petunjuk kepentingan relatif masukan" | J1 (Jain, hal. PDF 1) | Sesuai. |
| "Attention map juga termasuk keluaran tambahan ... model intrinsik" | S8 (SLR, hal. PDF 5) | Sesuai. |
| "LineVul ... menghasilkan penjelasan level baris dari self-attention" | ST1 (Steenhoek, hal. PDF 3) | Sesuai. |
| "bobot attention sering tidak berkorelasi ... distribusi yang sangat berbeda tetapi prediksi setara" | J2 (hal. PDF 1) | Sesuai. |
| "modul attention standar tidak memberikan penjelasan yang bermakna ..." | J3 (hal. PDF 1) | Sesuai. |
| "Wiegreffe dan Pinter berpendapat ... asumsi ... kebebasan yang terlalu besar ..." | W2 (hal. PDF 1) | Sesuai. |
| "Perdebatan ini menunjukkan bahwa nilai attention sebagai penjelasan perlu diuji, bukan diasumsikan." | tidak disitir | KESIMPULAN SENDIRI dari dua sumber; selaras dengan rancangan penelitian (membandingkan attention dengan SHAP/LIME), tetapi pastikan kamu memang mengambil sikap ini. |
