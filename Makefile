MAINFILENAME=main

all:
	pdflatex  ${MAINFILENAME}
	bibtex  ${MAINFILENAME}
	pdflatex  ${MAINFILENAME}
	pdflatex  ${MAINFILENAME}

clean: 
	@rm -f ${MAINFILENAME}.for ${MAINFILENAME}.lof ${MAINFILENAME}.lol ${MAINFILENAME}.bbl ${MAINFILENAME}.run.xml ${MAINFILENAME}.soc ${MAINFILENAME}.synctex.gz ${MAINFILENAME}-blx.bib ${MAINFILENAME}.abc ${MAINFILENAME}.aux ${MAINFILENAME}.blg ${MAINFILENAME}.def ${MAINFILENAME}.log ${MAINFILENAME}.toc

cleanall: clean
	@rm -f ${MAINFILENAME}.pdf
