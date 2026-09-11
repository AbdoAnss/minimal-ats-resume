\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{style}[2026/09/11 Clean Modern Resume Class]

\LoadClass[10pt,a4paper]{article}

\RequirePackage[a4paper,
    left=12.8mm,
    right=13.6mm,
    top=11.0mm,
    bottom=8.0mm,
    nohead,
    nofoot
]{geometry}

\RequirePackage{xcolor}
\RequirePackage{fontspec}
\RequirePackage{enumitem}
\RequirePackage{setspace}
\RequirePackage{calc}
\RequirePackage{tikz}

% Exact color definitions sampled from reference
\definecolor{textblack}{HTML}{0A0A0A}
\definecolor{textdark}{HTML}{282828}
\definecolor{textbody}{HTML}{3A3A3A}
\definecolor{textmuted}{HTML}{4E4E4E}
\definecolor{textgray}{HTML}{666666}
\definecolor{rulecolor}{HTML}{E5E5E5}
\definecolor{subrulecolor}{HTML}{E2E2E2}

% Load TeX Gyre Heros (Helvetica clone)
\setmainfont{texgyreheros}[
    Path = fonts/,
    Extension = .otf,
    UprightFont = *-regular,
    BoldFont = *-bold,
    ItalicFont = *-italic,
    BoldItalicFont = *-bolditalic,
    Ligatures = NoCommon
]

\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}
\pagestyle{empty}

% Commands
\newcommand{\resumename}[2]{%
    {\fontsize{34pt}{38pt}\selectfont\bfseries\color{textblack}#1\hspace{0.28em}\mdseries\color{textblack}#2}\par
}

\newcommand{\resumetitle}[1]{%
    \vspace{10.0pt}%
    {\fontsize{13.0pt}{16pt}\selectfont\color{textgray}#1}\par
}

% Header divider with zero-impact vertical column separator
\newcommand{\headerdivider}{%
    \vspace{10.0pt}%
    \noindent{\color{rulecolor}\rule{\textwidth}{0.65pt}}%
    \begin{tikzpicture}[remember picture, overlay]
        \draw[draw=subrulecolor, line width=0.65pt] 
            ([xshift=76.5mm, yshift=-36.0mm]current page.north west) -- 
            ([xshift=76.5mm, yshift=-262.0mm]current page.north west);
    \end{tikzpicture}\par
    \vspace{14.0pt}%
}

\newcommand{\sectiontitle}[1]{%
    {\fontsize{12.2pt}{14.5pt}\selectfont\bfseries\color{textblack}#1}\par
    \vspace{0.8pt}%
}

% Left column short horizontal divider (32mm long, matching reference x=44 to x=153)
\newcommand{\resumedivider}{%
    \vspace{6.0pt}%
    \noindent{\color{subrulecolor}\rule{32mm}{0.65pt}}\par
    \vspace{11.0pt}%
}

% Bullet list for Skills
\newlist{skillsbullets}{itemize}{1}
\setlist[skillsbullets]{%
    label={\footnotesize\raisebox{0.6pt}{\color{textdark}$\bullet$}},
    leftmargin=1.15em,
    labelsep=0.55em,
    itemsep=0.6pt,
    parsep=0pt,
    topsep=1.0pt,
    partopsep=0pt
}

% Bullet list for Experience
\newlist{resumebullets}{itemize}{1}
\setlist[resumebullets]{%
    label={\footnotesize\raisebox{0.6pt}{\color{textbody}$\bullet$}},
    leftmargin=1.15em,
    rightmargin=3.4mm,
    labelsep=0.45em,
    itemsep=1.2pt,
    parsep=0pt,
    topsep=1.2pt,
    partopsep=0pt
}

% Experience item
\newcommand{\experienceitem}[3]{%
    {\fontsize{8.8pt}{11.5pt}\selectfont\bfseries\color{textdark}#1}\par
    \vspace{2.0pt}%
    {\fontsize{8.5pt}{11.0pt}\selectfont\color{textgray}#2}\par
    \vspace{1.5pt}%
    \begin{resumebullets}\color{textbody}
        #3
    \end{resumebullets}%
}

% Education item
\newcommand{\educationitem}[2]{%
    {\fontsize{8.8pt}{11.5pt}\selectfont\bfseries\color{textdark}#1}\par
    \vspace{3.0pt}%
    {\fontsize{8.5pt}{11.0pt}\selectfont\color{textgray}#2}\par
}

% Certification item
\newcommand{\certificationitem}[2]{%
    {\fontsize{8.8pt}{11.5pt}\selectfont\bfseries\color{textdark}#1} \hfill {\fontsize{8.5pt}{11.0pt}\selectfont\color{textgray}#2}\par
}
