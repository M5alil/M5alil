\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\@ifl@t@r\fmtversion{2024/07/27}{\UseRawInputEncoding}{}
\ProvidesClass{MKResume}[2024/07/27 Based on AltaCV v1.1.4, yet another alternative class for a résumé/curriculum vitae.]
\LoadClass{extarticle}

\RequirePackage[margin=2cm]{geometry}
\RequirePackage{fontawesome}
\RequirePackage{xcolor}
\RequirePackage[skins]{tcolorbox}
\RequirePackage{graphicx}
% \usepackage[T1]{fontenc}
\usepackage{tabularx}
\usepackage{makecell}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage{lipsum}
% \setlength{\footskip}{4.08003pt}
% \usepackage{geometry}
% \usepackage[empty]{fullpage}
\geometry{left=1.4cm, top=0.8cm, right=1.2cm, bottom=1cm}

% Sections formatting
\titleformat{\section}{
  \vspace{0.5em}\scshape\raggedright\large
}{}{0em}{}[\color{black}\titlerule \vspace{0em}]

\newcommand{\emailsymbol}{\faAt}
\newcommand{\phonesymbol}{\faPhone}
\newcommand{\homepagesymbol}{\faChain}
\newcommand{\locationsymbol}{\faMapMarker}
\newcommand{\linkedinsymbol}{\faLinkedin}
\newcommand{\twittersymbol}{\faTwitter}
\newcommand{\githubsymbol}{\faGithub}
\newcommand{\orcidsymbol}{\aiOrcid}
\newcommand{\mailsymbol}{\faEnvelope}
\newcommand{\printinfo}[2]{{\normalfont #1}\hspace{0.5em}#2 \\}


\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\tagline}[1]{\def\@tagline{#1}}
\newcommand{\photo}[2]{\def\@photo{#2}\def\@photodiameter{#1}}
\newcommand{\email}[1]{
    \def \@emaila{#1}
    \href{mailto:\@emaila}{\normalfont\emailsymbol\hspace{0.5em}\@emaila}
    \\
}
\newcommand{\mailaddress}[1]{\printinfo{\mailsymbol}{#1}}
\newcommand{\phone}[1]{\printinfo{\phonesymbol}{#1}}
\newcommand{\homepage}[1]{\printinfo{\homepagesymbol}{#1}}
\newcommand{\twitter}[1]{\printinfo{\twittersymbol}{#1}}
\newcommand{\linkedin}[1]{
    \def \@inlink{#1}
    \href{http://www.linkedin.com/\@inlink}{\normalfont\linkedinsymbol\hspace{0.5em}\@inlink} \\
    }
\newcommand{\github}[1]{
    \def \@gitlink{#1}
    \href{http://github.com/\@gitlink}{\normalfont\githubsymbol\hspace{0.5em}\@gitlink} \\
    }
\newcommand{\location}[1]{\printinfo{\locationsymbol}{#1}}

\newcommand{\contactinfo}[1]{\def\@contactinfo{#1}}

\newcommand{\introSection}{
    \noindent
    \begin{tabularx}{\linewidth}{X c}
    
    \makecell[tl]
    {
        \textbf{\Large \@name} \\
        \@tagline
    }
    & 
    \makecell[tr]{
        \@contactinfo
    }

    \end{tabularx}
}


\newenvironment{experience}{\section{\textbf{Experience}}}{}