# Folder 4.1: Faithfulness dan Plausibility

- **Subbab di Bab II (struktur ramping):** 2.4.1
- **Status:** INTI
- **Target panjang:** ±0,5 hlm
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] Plausibility = sesuai ekspektasi manusia; faithfulness = benar-benar mencerminkan alasan model.
- [ ] Comprehensiveness dan sufficiency (definisi + rumus).
- [ ] Mengapa penjelasan yang tampak masuk akal belum tentu setia pada model (motivasi riset).

## Hubungan ke subbab lain

Masuk ← 3.x. Keluar → 4.3.

## Paper di folder ini

| File | Peran |
|---|---|
| `deyoung2020-eraser.pdf` | ERASER: benchmark rationale; comprehensiveness dan sufficiency; rationale manusia. |
| `mainali2023-whats-meant-by-explainable-model.pdf` | Scoping review: 64% studi memakai SHAP/LIME tanpa evaluasi (cek angka di PDF sebelum disitir). |

## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

**E2**

> “Measuring agreement between extracted and human rationales (or collecting subjective assessments of them) **assesses the plausibility of rationales, but such approaches do not establish whether the model actually relied on these particular rationales** to make a prediction.”
>
> DeYoung dkk. (2020), **hal. PDF 3** (cetak 4445) · `article/4.1/deyoung2020-eraser.pdf`  
> **Pakai untuk:** Definisi plausibility dan batasannya (4.1).

**E3**

> “As discussed above, a model may provide rationales that are **plausible (agreeable to humans) but that it did not rely on for its output**.”
>
> DeYoung dkk. (2020), **hal. PDF 5** (cetak 4447) · `article/4.1/deyoung2020-eraser.pdf`  
> **Pakai untuk:** Inti motivasi: tampak masuk akal belum tentu setia (4.1).

**E4**

> “We call these **faithful rationales**. How best to measure rationale faithfulness is an open question.”
>
> DeYoung dkk. (2020), **hal. PDF 5** (cetak 4447) · `article/4.1/deyoung2020-eraser.pdf`  
> **Pakai untuk:** Definisi faithfulness dan pengakuan bahwa pengukurannya masih terbuka (4.1, 4.5).

**E5**

> “we define metrics intended to measure the **comprehensiveness (were all features needed to make a prediction selected?) and sufficiency (do the extracted rationales contain enough signal to come to a disposition?)** of rationales, respectively.”
>
> DeYoung dkk. (2020), **hal. PDF 5** (cetak 4447) · `article/4.1/deyoung2020-eraser.pdf`  
> **Pakai untuk:** Definisi comprehensiveness dan sufficiency (4.1).

**E6**

> “**comprehensiveness = m(xi )j − m(xi /ri )j** (1)”
>
> DeYoung dkk. (2020), **hal. PDF 5** (cetak 4447) · `article/4.1/deyoung2020-eraser.pdf`  
> **Pakai untuk:** Rumus comprehensiveness (4.1).

**E7**

> “**sufficiency = m(xi )j − m(ri )j** (2)”
>
> DeYoung dkk. (2020), **hal. PDF 6** (cetak 4448) · `article/4.1/deyoung2020-eraser.pdf`  
> **Pakai untuk:** Rumus sufficiency (4.1).

**G12**

> “A frequently used criterion is the **descriptive accuracy (DA)** that measures the relative importance of samples comparing the prediction outcome of the model”
>
> Ganz dkk. (2023), **hal. PDF 3** (cetak 526) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Definisi kriteria intrinsik (dekat dengan comprehensiveness) (4.1, 4.3).

## Catatan verifikasi

- ERASER terbit di ACL 2020: cetak = hal. PDF + 4442.
- G12 dari Ganz (folder 4.3): descriptive accuracy adalah kriteria intrinsik sejenis.
- Mainali 2023 (scoping review) belum diekstrak; cek angka "64%" langsung di PDF sebelum disitir.
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.
