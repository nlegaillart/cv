all: build
build:
	hackmyresume convert cv-jrs.json cv-fresh.json
	hackmyresume build cv-jrs.json to out/nlegaillart_cv.all -o myoptions.json -t jsonresume-theme-curzy-custom
	hackmyresume build cv-jrs.json to out/nlegaillart_cv.txt -o myoptions.json 
	hackmyresume build cv-jrs.json to out/nlegaillart_cv.md -o myoptions.json 
	cd out && libreoffice --headless --convert-to odt nlegaillart_cv.doc
	cd out && libreoffice --headless --convert-to docx nlegaillart_cv.doc
	cd out && libreoffice --headless --convert-to rtf nlegaillart_cv.doc
	# remove distant font-awesome
	curl -L -o out/font-awesome.min.css https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css
	sed -i s,https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/,https://nicolas.legaillart.fr/cv/,g out/nlegaillart_cv.html
	# fix permissions
	chmod a+rx out/
	chmod a+r out/*
	# remove temporary files
	rm -f out/nlegaillart_cv.{png,pdf}.html

install:
	cd jsonresume-theme-curzy-custom && npm install

