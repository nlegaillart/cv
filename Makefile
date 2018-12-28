all: build
build:
	hackmyresume build cv-jrs.json to out/nlegaillart_cv.all -o myoptions.json -t jsonresume-theme-curzy-custom
	cd out && soffice --infilter="writer_pdf_import" --convert-to doc nlegaillart_cv.pdf 
	cd out && soffice --infilter="writer_pdf_import" --convert-to docx nlegaillart_cv.pdf 
	cd out && soffice --infilter="writer_pdf_import" --convert-to rtf nlegaillart_cv.pdf 

install:
	cd jsonresume-theme-curzy-custom && npm install

