all: mlea.pdf

mlea.pdf: mlea.tex
	if which latexmk;                              \
	then						                               \
    latexmk -pdf mlea.tex;			                 \
	else						                               \
	  pdflatex mlea.tex && pdflatex mlea.tex;	    \
	fi
clean:
	rm -vf mlea.aux mlea.fdb_latexmk mlea.log mlea.pdf mlea.toc
