all: build
build:
	hackmyresume build cv-jrs.json to out/nlegaillart_cv.all -o myoptions.json -t jsonresume-theme-curzy-custom
	hackmyresume build cv-jrs.json to out/nlegaillart_cv.txt -o myoptions.json 
	hackmyresume build cv-jrs.json to out/nlegaillart_cv.md -o myoptions.json 
	cd out && libreoffice --headless --convert-to doc:"MS Word 97" nlegaillart_cv.html
	cd out && libreoffice --headless --convert-to docx nlegaillart_cv.doc
	cd out && libreoffice --headless --convert-to rtf nlegaillart_cv.doc

install:
	cd jsonresume-theme-curzy-custom && npm install

