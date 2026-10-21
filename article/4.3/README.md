# Folder 4.3: Evaluasi Berbasis Ground Truth (bagian ground truth)

- **Subbab di Bab II (struktur ramping):** 2.4.2 (digabung dengan 4.4)
- **Status:** INTI (digabung)
- **Target panjang:** ±0,75 hlm untuk 4.3+4.4
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] Rationale manusia (ERASER) vs ground truth deterministik (taint-flow).
- [ ] Konsep local ground truth (Ganz) sebagai pembanding terdekat.
- [ ] Batasan setiap jenis ground truth.

## Hubungan ke subbab lain

Masuk ← 4.1. Keluar → 4.4, 5.3.

## Paper di folder ini

| File | Peran |
|---|---|
| `Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf` | Ground truth lokal via directed fuzzing untuk mengevaluasi metode XAI. |
| `deyoung2020-eraser.pdf` | ERASER: benchmark rationale; comprehensiveness dan sufficiency; rationale manusia. |

## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

**E1**

> “All datasets in ERASER include such rationales, **explicitly marked by human annotators**.”
>
> DeYoung dkk. (2020), **hal. PDF 1** (cetak 4443) · `article/4.1/deyoung2020-eraser.pdf`  
> **Pakai untuk:** ERASER memakai rationale buatan manusia sebagai ground truth (4.3).

**G2**

> “The core idea of our approach is to **generate ground-truth around the code regions marked by an explanation method** to determine their veracity. To this end, we guide a directed fuzzer toward their locations and inspect the relation between reported crashes and explanations.”
>
> Ganz dkk. (2023), **hal. PDF 1** (cetak 524) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Inti metode ground truth non-manusia; pembanding terdekat untuk ground truth berbasis taint-flow (4.3, 5.1, 5.3).

**G5**

> “Validating the veracity of explanations is **only possible with ground-truth**, that is, extrinsic criteria that incorporate external knowledge about vulnerable code.”
>
> Ganz dkk. (2023), **hal. PDF 3** (cetak 526) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Dasar logika mengapa riset ini butuh ground truth formal (4.3, 5.3).

**G6**

> “**Local ground-truth** refers to the precise location within a program where a crash has been reported.”
>
> Ganz dkk. (2023), **hal. PDF 5** (cetak 528) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Definisi 'local ground-truth' berbasis crash; bandingkan dengan taint-flow path (4.3, 5.3).

**G3**

> “Our experiments show that commonly used **intrinsic criteria**, such as the descriptive accuracy of an explanation, do not adequately measure performance and lead to inconsistent results.”
>
> Ganz dkk. (2023), **hal. PDF 1** (cetak 524) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Argumen bahwa metrik intrinsik (mirip faithfulness) tidak cukup, perlu ground truth eksternal (4.1, 4.3).

**G13**

> “We find that graph-based explanation methods actually **outperform other techniques when we base this comparison on local groundtruth** rather than (arbitrary) intrinsic criteria.”
>
> Ganz dkk. (2023), **hal. PDF 1** (cetak 524) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Temuan: peringkat metode XAI berubah bila memakai ground truth (motivasi riset, 4.1, 5.1).

**G4**

> “Naturally, our method cannot uncover the ground-truth for any possible vulnerability, as it **inherits the limitations of directed fuzzing**. For example, explanations pointing to unreachable code cannot be analyzed and verified.”
>
> Ganz dkk. (2023), **hal. PDF 1** (cetak 524) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Keterbatasan: setiap sumber ground truth punya batas; taint-flow juga akan punya (4.3, 1.4).

**C10**

> “Based on our observations, we note that **VTS are present in both vulnerable and safe codes, whereas VFS differ** between the two sample types.”
>
> Cheng dkk. (2024), **hal. PDF 11** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** Dua jenis ground truth (pemicu vs perbaikan/diff) memberi hasil berbeda (4.3).

## Catatan verifikasi

- Ganz terbit di IEEE EuroS&P 2023: cetak = hal. PDF + 523. ERASER: cetak = hal. PDF + 4442.
- C10 dari Cheng: ground truth "pemicu" (VTS) dan "perbaikan/diff" (VFS) bisa memberi hasil berbeda.
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.
