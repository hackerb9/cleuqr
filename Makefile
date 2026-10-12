
cleuqr.pdf: cleuqr.ltx cleuqr-lst.pdf
	xelatex cleuqr.ltx

cleuqr-lst.pdf:  cleuqr-lst.ltx cleuqr.u8
	xelatex cleuqr-lst.ltx


.PHONY: clean
clean:
	rm *.log *.aux *~

