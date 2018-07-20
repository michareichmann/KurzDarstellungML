%%
%% This is file `mlabstract.cls',
%%
%% Copyright (C) 2007 by Robert Feger
%%
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.2 of this license or (at your option) any later
%% version.  The latest version of this license is in:
%%
%%    http://www.latex-project.org/lppl.txt
%%
%% and version 1.2 or later is part of all distributions of
%% LaTeX version 1999/12/01 or later.
%%
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{mlabstract}[2007/06/13 v1.0]

\DeclareOption{german}{\PassOptionsToPackage{ngerman}{babel}}
\DeclareOption{english}{\PassOptionsToPackage{english}{babel}}

\DeclareOption{latin1}{\PassOptionsToPackage{latin1}{inputenc}}
\DeclareOption{utf8}{\PassOptionsToPackage{utf8}{inputenc}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}

\ExecuteOptions{german}
\ExecuteOptions{latin1}
\ProcessOptions \relax

\RequirePackage{babel}
\RequirePackage{inputenc}
\RequirePackage{amsmath,amssymb,amsfonts}
\RequirePackage{graphicx}
\RequirePackage{epstopdf}

\AtBeginDocument{\maketitle}

\LoadClass[halfparskip]{scrartcl}

\pagestyle{empty}

\newcommand\FirstName{}
\newcommand\LastName{}
\newcommand\Institute{}
\newcommand\TitleOfTalk{}

\newcommand\firstname[1]{\renewcommand\FirstName{#1}}
\newcommand\lastname[1]{\renewcommand\LastName{#1}}
\newcommand\institute[1]{\renewcommand\Institute{#1}}
\newcommand\titleoftalk[1]{\renewcommand\TitleOfTalk{#1}}

\renewcommand\maketitle{%
	\textbf{\Large\TitleOfTalk}   \\[2mm]
	\textsc{\FirstName\ \LastName}\\[1mm]
	\textit{\Institute}           \\[1.5em]
}

\RequirePackage{hyperref}