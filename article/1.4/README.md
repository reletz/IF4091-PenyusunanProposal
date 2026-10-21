# Folder 1.4: Keterbatasan Taint Analysis sebagai Ground Truth

- **Subbab di Bab II (struktur ramping):** 2.1.3
- **Status:** INTI
- **Target panjang:** ±0,5 hlm
- **Catatan:** angka dalam kurung di kolom "Pakai untuk" adalah nomor folder `article/<n.m>`.

## Isi yang harus masuk

- [ ] False positive dan false negative taint analysis.
- [ ] Taint-flow hanya menangkap sebagian alasan kerentanan (taint-flow ≠ seluruh alasan).
- [ ] Konsekuensi: ground truth taint-flow itu formal tetapi terbatas; nyatakan apa yang dibuktikan dan tidak dibuktikan oleh metrik nanti.
- [ ] Bukti bahwa label hasil static analysis pun bisa penuh false positive (Cheng, D2A/Infer).

## Hubungan ke subbab lain

Masuk ← 1.3. Keluar → 4.3 (ground truth) dan 5.3 (celah).

## Paper di folder ini

| File | Peran |
|---|---|
| `cheng2024-beyond-fidelity.pdf` | Evaluasi 10 metode XAI untuk detektor kerentanan; metrik fidelity dan Line Coverage. |
| `effendi2025-language-agnostic-taint-tracking.pdf` | Taint tracking lintas bahasa; membandingkan Joern, Semgrep, CodeQL (FP/FN). |

**Bukan PDF / belum ada:**

- DataFlowBench (GitHub): CodeQL benar 48/58 assertion, Joern 47/58 (angka dari daftar risetmu; verifikasi di repo sebelum disitir). Sumber non-akademik, pendukung saja.

## Kutipan

Kutipan persis (bahasa asli); **tebal** = frasa kunci untuk di-highlight di PDF. Setiap kutipan sudah dicocokkan otomatis dengan teks halaman PDF yang disebutkan. "hal. PDF" = urutan halaman di file; "cetak" = nomor halaman terbitan bila ada.

**C6**

> “In the case of the D2A dataset [51], it labels vulnerable traces in a program using the Infer tool [3]. Although differential analysis on commit history is employed to reduce false positive rates, **many cases still result in false positives**. Croft et al. [52] also highlight the presence of over two-thirds of inaccurately labeled samples in D2A, primarily due to false positives in Infer warnings and mislabeled commits.”
>
> Cheng dkk. (2024), **hal. PDF 12** · `article/1.4/cheng2024-beyond-fidelity.pdf`  
> **Pakai untuk:** Bukti: label hasil static analysis (Infer) sebagai ground truth punya banyak false positive (1.4). Bandingkan dengan Coca (K5).

**K5**

> “Following [17, 61], we evaluate these explanation approaches on another vulnerability dataset D2A [78] because it is labeled with clearly annotated vulnerability-contexts which are **more reliable than other diff -based ground truths** [15].”
>
> Cao dkk. (2024), **hal. PDF 8** · `article/4.4/cao2024-coca.pdf`  
> **Pakai untuk:** Sumber klaim 'ground truth berbasis diff kurang andal' (bukan Cheng); bandingkan Cheng (C6) soal D2A (1.4, 4.4).

**G4**

> “Naturally, our method cannot uncover the ground-truth for any possible vulnerability, as it **inherits the limitations of directed fuzzing**. For example, explanations pointing to unreachable code cannot be analyzed and verified.”
>
> Ganz dkk. (2023), **hal. PDF 1** (cetak 524) · `article/4.3/Hunting_for_Truth_Analyzing_Explanation_Methods_in_Learning-based_Vulnerability_Discovery.pdf`  
> **Pakai untuk:** Keterbatasan: setiap sumber ground truth punya batas; taint-flow juga akan punya (4.3, 1.4).

## Catatan verifikasi

- KOREKSI: klaim risetmu "Beyond Fidelity: ground truth berbasis diff kurang andal dibanding anotasi vulnerability-context" sebenarnya ada di **Coca** (K5), bukan Cheng.
- Cheng (C6) dan Coca (K5) tidak sepakat soal D2A: Coca memakainya sebagai ground truth yang lebih andal, Cheng menolaknya karena false positive Infer. Ini bisa jadi argumen: tidak ada ground truth yang sempurna.
- Hasil FP/FN Joern dan CodeQL ada di effendi2025 (belum diekstrak; baca tabel hasilnya).
- Nomor halaman mengacu ke file PDF di folder ini (sebagian versi arXiv); untuk kutipan langsung APA, cek paginasi versi terbit sebelum disitir.
