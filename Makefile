default: cleuqr.pdf CLEUQR.DO

cleuqr.pdf: cleuqr.ltx cleuqr-lst.pdf
	xelatex cleuqr.ltx
# This should only run if cleuqr.u8/ltx has been COMMITTED more recently.
#	git commit cleuqr.pdf -m "Cleuseau Quick Reference PDF automatically generated from cleuqr.u8"

cleuqr-lst.pdf:  cleuqr-lst.ltx cleuqr.u8
	xelatex cleuqr-lst.ltx

CLEUQR.DO: cleuqr.u8
	iconv -f utf-8 -t ./tandy-200.charmap <cleuqr.u8 >CLEUQR.DO
# Can I do dependencies on whether files have been committed?
#	git commit CLEUQR.DO -m "M100 encoded text file automatically converted from cleuqr.u8"

######################################################################

# Use ImageMagick to create thumbnails of the pages 
thumbnails: 
	convert -background white -alpha background -alpha off cleuqr.pdf -geometry 320x README.md.d/thumbnail.jpg
#	git commit README.md.d/thumbnail-*.jpg -m "Thumbnail generated from cleuqr.pdf"

.PHONY: clean
clean:
	@rm *.log *.aux *~ cleuqr-lst.pdf 2>/dev/null || true

