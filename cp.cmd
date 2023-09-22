echo branch: > ./ver_info.txt
git rev-parse --abbrev-ref HEAD >> ./ver_info.txt
echo \quad commit: >> ./ver_info.txt
git rev-parse HEAD >> ./ver_info.txt
xelatex -synctex=1 -halt-on-error -file-line-error main
makeindex main.idx -s StyleInd.ist
biber main
xelatex -synctex=1 -halt-on-error -file-line-error main
makeindex main.idx -s StyleInd.ist
biber main
xelatex -synctex=1 -halt-on-error -file-line-error main
@REM gswin64c -sDEVICE=pdfwrite -o "main.pdf" -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH  "test.pdf"