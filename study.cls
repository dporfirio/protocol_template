% DOCUMENT: study.cls
% DESCRIPTION: Study protocol class for running studies
% AUTHOR: David Porfirio

% inheritance
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{study}[2014/08/16 Example LaTeX class]
 
\newcommand{\headlinecolor}{\normalcolor}
\LoadClass{article}
\RequirePackage{xcolor}
\definecolor{slcolor}{HTML}{882B21}

% required packages
\usepackage[margin=1in]{geometry}
\usepackage{xcolor}
\usepackage{scrextend}
\usepackage{csquotes}
\usepackage{mdframed}
\usepackage{lipsum}

\def\changemargin#1#2{\list{}{\rightmargin#2\leftmargin#1}\item[]}
\let\endchangemargin=\endlist 

\newmdenv[
  topline=false,
  bottomline=false,
  rightline=false,
  linecolor=lightgray,
  linewidth=3pt,
  skipabove=\topsep,
  skipbelow=\topsep,
  innerleftmargin=-10pt,
  leftmargin=5pt,
  rightmargin=-10pt,
  innertopmargin=0pt,
  innerbottommargin=0pt
]{siderules}

\setlength\parindent{10pt}

% commands to be run on the experiment computer
\newenvironment{command}
{ \vspace{8pt}
  \begin{addmargin}[3.6em \tt]{0em}
}{
  \end{addmargin}
}



% experimenter speech
\newenvironment{speak}
{\begin{center}
    \begin{addmargin}[1em]{0em}
    \begin{siderules}
    \begingroup\color{gray}
    %\hspace*{-0.3cm}
    \begin{quote}\openautoquote\hspace*{-1.3ex}
    }
    { 
    \hspace*{-1.3ex}\closeautoquote
    \end{quote}
    \endgroup
    \end{siderules}
    \end{addmargin} 
    \end{center}
    }
    
% instructions for experimenter
\newenvironment{instruction}
{
  \begin{addmargin}[1.5em]{0em}
}{
  \end{addmargin}
}

% modified enumerate environment, in which spacing and indentation has been modified
\newenvironment{enumerate*}%
  {\vspace{8pt}\begin{addmargin}[2pt]{0em}\begin{enumerate}%
    \setlength{\itemsep}{0pt}%
    \setlength{\parskip}{2pt}}%
  {\end{enumerate}\end{addmargin}}