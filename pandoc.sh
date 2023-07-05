#
#
# ▒█▀▀▀ █░░ █▀▀█ █▀▀█ ░▀░ █▀▀█ █▀▀▄ 　 ▒█▀▀▀█ █▀▀ █░░█ █░░█ ▀▀█▀▀ ▀▀█▀▀ █░█ █▀▀█ █░░░█ █▀▀ █░█ ░▀░ 
# ▒█▀▀▀ █░░ █░░█ █▄▄▀ ▀█▀ █▄▄█ █░░█ 　 ░▀▀▀▄▄ █░░ █▀▀█ █░░█ ░░█░░ ░░█░░ █▀▄ █░░█ █▄█▄█ ▀▀█ █▀▄ ▀█▀ 
# ▒█░░░ ▀▀▀ ▀▀▀▀ ▀░▀▀ ▀▀▀ ▀░░▀ ▀░░▀ 　 ▒█▄▄▄█ ▀▀▀ ▀░░▀ ░▀▀▀ ░░▀░░ ░░▀░░ ▀░▀ ▀▀▀▀ ░▀░▀░ ▀▀▀ ▀░▀ ▀▀▀
#
#                          Copyright 2023 Florian Schuttkowski, Licensed GPL3
#                    For additional information, visit https://github.com/flowinho
#
# ======================%%========================%%==========================%%=====================
#
# Pandoc needs explicit directories. This script will only work if located in ~/pandoc.
# In case you place it somewhere else, make sure to adjust the paths.
#
#!/bin/bash

pandoc "$1" \
    -H ~/pandocSimple/bullet_styling.tex \
    -H ~/pandocSimple/language.tex \
    -H ~/pandocSimple/fancyheaders.tex \
    -H ~/pandocSimple/inline_codehighlight.tex \
    -H ~/pandocSimple/blockquote.tex \
    -H ~/pandocSimple/tables.tex \
    -V linkcolor:blue \
    -V geometry:a4paper \
    -V documentclass:report \
    -V classoption:twoside \
    -V geometry:margin=2cm \
    --highlight-style ~/pandocSimple/pygments.theme \
    --pdf-engine=xelatex \
    -o "$2"
