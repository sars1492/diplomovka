#
# latexmk config file for building entire thesis
#
# USAGE:  latexmk         - compiles whole project
#         latexmk -pvc    - run in continous file previewer mode
#         latexmk -c      - clean-up temporary files
#         latexmk -C      - clean-up also the output file
#

$recorder = 1;                   # Enable dependency recorder
$pdf_mode = 1;                   # Run pdflatex instead of latex

# Redefines makeindex command to 'utfxindy' wrapper of texindy command that
# provides workaround for LaTeX documents in UTF-8 compiled by pdflatex
# 'utfxindy' uses 'ieclib.lua' that is part of 'iec2utf' repo by Michal Hoftich.
# See 'https://github.com/michal-h21/iec2utf' for further reference.
$makeindex = "cd iec2utf; texlua utftexindy.lua -L slovak-large -o ../%D ../%S";

$pdf_previewer = "start evince"; # Set Evince as PDF viewer 
$clean_ext = "bbl";              # Clean also bbl file

@default_files = ('diplomovka.tex');
