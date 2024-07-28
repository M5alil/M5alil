\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\@ifl@t@r\fmtversion{2024/07/27}{\UseRawInputEncoding}{}
\ProvidesClass{MKResume}[2024/07/27]
\LoadClass{extarticle}

\RequirePackage[margin=2cm]{geometry}
\RequirePackage{fontawesome}
\RequirePackage{xcolor}
\RequirePackage[skins]{tcolorbox}
\RequirePackage{graphicx}
\RequirePackage{makecell}
\RequirePackage{tabularx}
\RequirePackage{titlesec}
\RequirePackage[T1]{fontenc}
\RequirePackage[hidelinks]{hyperref}
\usepackage{lmodern}
\usepackage{latexsym}
\usepackage{float}
\usepackage{ragged2e}
\usepackage[empty]{fullpage}
\usepackage{wrapfig}
\usepackage{lipsum}
\usepackage{marvosym}
\usepackage{verbatim}
\usepackage{enumitem}
\usepackage{fancyhdr}
\usepackage{multicol}
\usepackage{graphicx}
\usepackage{cfr-lm}
\setlength{\multicolsep}{0pt}
\pagestyle{fancy}
\fancyhf{} % clear all header and footer fields
\fancyfoot{}
\setlength{\footskip}{4.08003pt}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\geometry{left=1.4cm, top=0.8cm, right=1.2cm, bottom=1cm}
\renewcommand{\familydefault}{\sfdefault}
% Sections formatting
\titleformat{\section}{
    \vspace{0.0em}\scshape\raggedright\large\bfseries
}{}{0em}{}[\color{black}\titlerule]

\newcommand{\emailsymbol}{\faAt}
\newcommand{\phonesymbol}{\faPhone}
\newcommand{\homepagesymbol}{\faChain}
\newcommand{\locationsymbol}{\faMapMarker}
\newcommand{\linkedinsymbol}{\faLinkedin}
\newcommand{\twittersymbol}{\faTwitter}
\newcommand{\githubsymbol}{\faGithub}
\newcommand{\orcidsymbol}{\aiOrcid}
\newcommand{\mailsymbol}{\faEnvelope}
\newcommand{\printinfo}[2]{{\normalfont #1}\hspace{0.5em}#2}
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\tagline}[1]{\def\@tagline{#1}}
\newcommand{\bio}[1]{\def\@bio{#1}}
\newcommand{\photo}[2]{\def\@photo{#2}\def\@photodiameter{#1}}
\newcommand{\email}[1]{\def\emaila{#1}\href{mailto:\emaila}{\normalfont\emailsymbol\hspace{0.5em}\emaila}}
\newcommand{\phone}[1]{\printinfo{\phonesymbol}{#1}}
\newcommand{\linkedin}[1]{\def\inlink{#1}\href{http://www.linkedin.com/\inlink}{\normalfont\linkedinsymbol\hspace{0.5em}\inlink}}
\newcommand{\github}[1]{\def\gitlink{#1}\href{http://github.com/\gitlink}{\normalfont\githubsymbol\hspace{0.5em}\gitlink}}
\newcommand{\location}[1]{\printinfo{\locationsymbol}{#1}}
\newcommand{\contactinfo}[1]{\def\@contactinfo{#1}}
\newcommand{\introSection}{
    \noindent
    \begin{tabularx}{\linewidth}{X c}
        \makecell[tl]{
            \textbf{\Large\@name}
            \medskip\\
            \@tagline
        }
         &
        \makecell[tr]{
            \@contactinfo
        }
    \end{tabularx}
}


\newcommand{\bioSection}{
    \section{Bio}\@bio
}

\newenvironment{experience}
{
    \section{Experience}
    \begin{itemize}[leftmargin=0.5em,labelsep=0em]}
{\end{itemize}}

\newenvironment{education}{
    \section{Education}
    \begin{itemize}[leftmargin=0.5em,labelsep=0em]
}{\end{itemize}}

\newcommand{\job}[5]{
    \def\employername{#1}
    \def\position{#2}
    \def\worktime{#3}
    \def\location{#4}
    \def\description{#5}
    \item
    \begin{tabular*}{0.98\textwidth}[t]{l@{\extracolsep{\fill}}r}
        \makecell[tl]{
            \large\textbf{\position}\\
            \employername
        }
        &
        \makecell[tr]{
            \footnotesize{\faCalendar\hspace{0.5em}\textsl{\worktime}}\\
            \footnotesize{\faMapMarker\hspace{0.5em}\textsl{\location}}
        }
    \end{tabular*}

    \noindent
    \description
}
\newcommand{\educationClass}[3]{
    \def\place{#1}
    \def\degree{#2}
    \def\time{#3}
    \item
    \begin{tabular*}{0.98\textwidth}[t]{l@{\extracolsep{\fill}}r}
        \makecell[tl]{
            \textbf{\place}\\
            \degree
        }
        &
        \makecell[tr]{
            \footnotesize{\faCalendar}\small{\hspace{0.5em}\textsl{\time}}\\
        }
    \end{tabular*}}