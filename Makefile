# ---------------------------------------------------------
# type "make" command in Unix to create ExtendedAbstract.pdf file 
# ---------------------------------------------------------

# Main filename
MAIN=main

# ---------------------------------------------------------

all:
	(rm -rf *.aux *.bbl *.blg *.log)
	pdflatex -draftmode ${MAIN}
	bibtex   ${MAIN}
	pdflatex -draftmode ${MAIN}
	pdflatex ${MAIN}
	mv ${MAIN}.pdf ./paper.pdf
	(rm -rf *.aux *.bbl *.blg *.log)
	zip robotics ./*
	#mv robotics.zip /media/antonio/LINUX\ MINT

clean:
	(rm -rf *.aux *.bbl *.blg *.log)

veryclean: clean
	(rm -rf *.pdf)
