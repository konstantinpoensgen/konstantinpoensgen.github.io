\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv_class}[2022/09/24 custom CV class]
\LoadClass{article}

% Details: https://www.overleaf.com/learn/latex/How_to_write_a_LaTeX_class_file_and_design_your_own_CV_(Part_1)

% Adjust section/title commands ----------------------------------- %
\RequirePackage{titlesec}
\titleformat{\section}              % Customise the \section command 
    {\Large\scshape\raggedright}    % Large, small capitals (\scshape) and left aligned (\raggedright)
    {}{0em}                         % Add prefix to all sections
    {}                              % Can be used to insert code before the heading
    [\titlerule]                    % Inserts a horizontal line after the heading

\titleformat{\subsection}
  {\normalsize\bfseries\raggedright}
  {}{0em}
  {}

\titleformat{\subsubsection}
  {\normalsize\itshape\raggedright}
  {}{0em}
  {}
  
% Gap between subsections and subsubsections
\titlespacing{\section}{4pt}{4pt}{4pt} 
\titlespacing{\subsection}{0em}{0pt}{-1pt} %{<command>}{<left>}{<before-sep>}{<after-sep>}
\titlespacing{\subsubsection}{0em}{0pt}{2pt} 

% Dates in section headers
\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill \textnormal{#2}}%
}
  

