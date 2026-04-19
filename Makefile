.PHONY: all paper clean

all: paper

paper:
	@echo "Compilando o paper.pdf..."
	@cd paper && latexmk -pdf -jobname=paper ojits-template.tex

clean:
	@echo "Limpando arquivos auxiliares..."
	@cd paper && latexmk -c -jobname=paper
	@rm -f paper/paper.bbl paper/paper.run.xml
