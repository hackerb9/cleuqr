default: cleuqr.pdf CLEUQR.DO

cleuqr.pdf: cleuqr.ltx cleuqr-lst.pdf
	xelatex cleuqr.ltx
# This should actually only run if cleuqr.u8 has been committed more recently.
#	git commit cleuqr.pdf -m "Cleuseau Quick Reference PDF automatically generated from cleuqr.u8"

cleuqr-lst.pdf:  cleuqr-lst.ltx cleuqr.u8
	xelatex cleuqr-lst.ltx

CLEUQR.DO: cleuqr.u8
	iconv -f utf-8 -t ./tandy-200.charmap <cleuqr.u8 >CLEUQR.DO
# This should actually only run if cleuqr.u8 has been committed more recently.
#	git commit CLEUQR.DO -m "M100 encoded text file automatically converted from cleuqr.u8"

.PHONY: clean
clean:
	@rm *.log *.aux *~ cleuqr-lst.pdf 2>/dev/null || true

