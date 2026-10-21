\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ta-if}[2026/10/21 Template Proposal Tugas Akhir IF STEI ITB (IF4091)]

% Pass all options to the book class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

% Load the base class (satu muka, sesuai template Word IF)
\LoadClass[12pt,a4paper,oneside]{book}

% --- Main packages ---
\RequirePackage[utf8]{inputenc} % for UTF-8 encoding
\RequirePackage[T1]{fontenc}
\RequirePackage{tgtermes} % Times-compatible (TeX Gyre Termes), jalan di pdflatex
\RequirePackage[indonesian]{babel} % untuk bahasa Indonesia
\RequirePackage{csquotes} % for context-sensitive quotation facilities
\RequirePackage{setspace} % for line spacing
\RequirePackage{graphicx} % for images
\RequirePackage{caption} % for customizing captions
\RequirePackage{subcaption} % for sub-figures
\RequirePackage{tocloft} % for customizing table of contents
\RequirePackage{titlesec} % for customizing titles
\RequirePackage{floatrow} % for customizing float (figure and table) positions
\RequirePackage{listings} % for code listing
\RequirePackage{amsmath} % for math
\RequirePackage{amssymb} % for math symbols
\RequirePackage[shortlabels]{enumitem} % for customizing lists
\RequirePackage[skip=12pt]{parskip} % for spacing between paragraphs
\RequirePackage{indentfirst} % paragraf pertama setelah judul bab/subbab juga diindentasi
\RequirePackage{longtable} % for long tables
\RequirePackage{booktabs} % for better table rules
\RequirePackage[bahasai]{datetime2} % for date formatting in Indonesian
\RequirePackage{geometry} % for page margins
\RequirePackage{algorithm} % for algorithms
\RequirePackage{algorithmicx} % for algorithmic environment
\RequirePackage{algpseudocode} % for pseudocode
\RequirePackage{microtype} % Untuk optimasi typography dan spacing
\RequirePackage{array} % for better arrays
\RequirePackage{threeparttable} % for tables with notes
\RequirePackage{tabularx} % for tables with adjustable-width columns
\RequirePackage{xcolor} % for color definitions
\RequirePackage{etoolbox}
\RequirePackage{needspace} % cegah judul menggantung di dasar halaman
\RequirePackage[hidelinks]{hyperref} % for hyperlinks

\onehalfspacing % spasi 1.5

% pola pemenggalan Indonesia salah memotong "subbab" menjadi "su-bbab"
\hyphenation{sub-bab sub-sub-bab}

% --- Bibliography: BibTeX + apacite (gaya APA), tanpa biber ---
\RequirePackage{apacite}
\bibliographystyle{apacite}
% terjemahan istilah (dan, hal., Dalam, ...) ada di indonesian.apc

% --- perintah sitasi: \autocite = (Penulis, Tahun); \textcite = Penulis (Tahun) ---
\newcommand{\autocite}[1]{\cite{#1}}
\newcommand{\textcite}[1]{\citeA{#1}}

% --- hyperlinks setup ---
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    citecolor=black,
    urlcolor=black,
    hypertexnames=false
}

% -- No Header, nomor halaman di tengah bawah ---
\pagestyle{plain}

\definecolor{petunjuk}{HTML}{548DD4}
\newenvironment{petunjuk}{\color{petunjuk}}{}
\newcommand{\isi}[1]{{\color{petunjuk}#1}}

% --- Nama list of listing/algoritma ---
\renewcommand{\lstlistingname}{\textit{Listing}}
\renewcommand{\algorithmname}{Algoritma}
\renewcommand{\thealgorithm}{\thechapter.\arabic{algorithm}}

% --- Style listing untuk kode Java ---
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.97,0.97,0.97}

\lstdefinestyle{javastyle}{
    backgroundcolor=\color{backcolour},
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,
    breaklines=true,
    captionpos=t,
    keepspaces=true,
    numbers=left,
    numbersep=5pt,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    tabsize=4,
    language=Java,
    upquote=true
}
\lstset{style=javastyle}

% --- Ubah nama bulan ke Bahasa Indonesia ---
\renewcommand*{\DTMbahasaimonthname}[1]{%
  \ifcase#1 %
    \or Januari%
    \or Februari%
    \or Maret%
    \or April%
    \or Mei%
    \or Juni%
    \or Juli%
    \or Agustus%
    \or September%
    \or Oktober%
    \or November%
    \or Desember%
  \fi
}

% --- Margin halaman: kiri 4 cm, kanan 3 cm, atas 3 cm, bawah 3 cm ---
\geometry{
      a4paper,
      left=4cm,
      right=3cm,
      top=3cm,
      bottom=3cm
}

% --- FORMAT TAMPILAN JUDUL BAB, SUBBAB, JUDUL GAMBAR DAN TABEL ---
\setcounter{tocdepth}{2}   % Daftar Isi sampai II.1.1
\setcounter{secnumdepth}{3} % penomoran sampai II.1.1.1

% --- Judul Bab: BAB I (baris 1), JUDUL (baris 2) ---
\renewcommand\thechapter{\Roman{chapter}}
\titleformat{\chapter}[display]
      {\centering\normalfont\large\bfseries}
      {\MakeUppercase \chaptertitlename\ \thechapter}{0pt}{\large}
\titlespacing{\chapter}{0pt}{0pt}{5pt}

% --- Judul Subbab (II.1), Subsubbab (II.1.1), dan level 4 (II.1.1.1) dengan hanging indent ---
\titleformat{\section}[hang]
	{\normalfont\bfseries}
	{\thesection}{1em}{}
\titleformat{\subsection}[hang]
	{\normalfont\bfseries}
	{\thesubsection}{1em}{}
\titleformat{\subsubsection}[hang]
	{\normalfont\bfseries}
	{\thesubsubsection}{1em}{}
\titlespacing{\section}{0pt}{12pt}{6pt}
\titlespacing{\subsection}{0pt}{12pt}{6pt}
\titlespacing{\subsubsection}{0pt}{12pt}{6pt}

% --- Gambar: "Gambar II.1. Judul", judul di bawah ---
\captionsetup[figure]{
  labelsep=period,
  format=hang,
  justification=centering
}
\floatsetup[figure]{
  capposition=bottom
}

% --- Tabel: "Tabel II.1. Judul", judul di atas ---
\captionsetup[table]{
  labelsep=period,
  format=hang,
  justification=centering
}
\floatsetup[table]{
  capposition=top,
  objectset=centering,
  captionskip=6pt
}

% --- Listing ---
\captionsetup[lstlisting]{
  labelsep=period,
  format=hang,
  justification=raggedright,
  singlelinecheck=false
}
\floatsetup[lstlisting]{
  capposition=top
}

% --- Algoritma ---
\captionsetup[algorithm]{
  labelsep=period,
  format=hang,
  justification=raggedright,
  singlelinecheck=false
}
\floatsetup[algorithm]{
  capposition=top
}

% --- Atur indentasi paragraf (baris pertama menjorok 1 cm, termasuk paragraf pertama setelah judul) ---
\setlength{\parindent}{1cm}
\setlength{\parskip}{12pt plus 2pt minus 1pt}

\setlist[enumerate,itemize]{noitemsep, topsep=4pt, parsep=0pt, partopsep=0pt}

% --- Daftar Isi: hanya bab dan subbab, judul bab tebal ---
\renewcommand{\cftchappresnum}{BAB~}
\settowidth{\cftchapnumwidth}{BAB~12\quad}
\renewcommand{\cftchapdotsep}{4.5}
\renewcommand{\cftchapleader}{\bfseries\cftdotfill{\cftchapdotsep}}
\renewcommand{\cftchapfont}{\bfseries}
\renewcommand{\cftchappagefont}{\bfseries}
\setlength{\cftbeforechapskip}{10pt}
\setlength{\cftchapindent}{0em}
\setlength{\cftsecindent}{1.6em}
\setlength{\cftsecnumwidth}{2.8em}
\setlength{\cftsubsecindent}{4.4em}
\setlength{\cftsubsecnumwidth}{3.2em}
\setlength{\cftsubsubsecindent}{7.6em}
\setlength{\cftsubsubsecnumwidth}{3.2em}

% --- Lampiran: tidak masuk Daftar Isi, tetapi ke Daftar Lampiran ---
% Gunakan \mulailampiran sebagai ganti \appendix.
\newlistof{daftarlampiran}{apx}{DAFTAR LAMPIRAN}
\let\ta@addcontentsline\addcontentsline
\newcommand{\mulailampiran}{%
  \appendix
  \renewcommand{\addcontentsline}[3]{%
    \ifstrequal{##1}{toc}%
      {\ta@addcontentsline{apx}{##2}{##3}}%
      {\ta@addcontentsline{##1}{##2}{##3}}}%
  \titleformat{\chapter}[hang]
    {\normalfont\large\bfseries}{Lampiran \thechapter.}{0.5em}{}%
  \titlespacing{\chapter}{0pt}{0pt}{12pt}%
}
\endinput
