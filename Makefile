srcdir = .

BASHREF = ${srcdir}/bashref.texi
BASHREF_ES = ${srcdir}/bashref.es.texi
BASHREF_PO = ${srcdir}/bashref.es.po
BASHREF_POT = ${srcdir}/bashref.pot
HSUSER = ${srcdir}/hsuser.texi
HSUSER_ES = ${srcdir}/hsuser.es.texi
HSUSER_PO = ${srcdir}/hsuser.es.po
HSUSER_POT = ${srcdir}/hsuser.pot
RLUSER = ${srcdir}/rluser.texi
RLUSER_ES = ${srcdir}/rluser.es.texi
RLUSER_PO = ${srcdir}/rluser.es.po
RLUSER_POT = ${srcdir}/rluser.pot

.PHONY: actualiza_pot html info libro pdf texi

pdf: texi
	texi2pdf $(BASHREF_ES)

html: texi
	texi2html $(BASHREF_ES)

info: texi
	makeinfo $(BASHREF_ES)

libro: texi
	sed -i "/Version @value{VERSION}/ a\\\nPuede descargar las fuentes del documento desde\nhttps://notabug.org/jorgesumle/bashrefes" $(BASHREF_ES)
	texi2pdf $(BASHREF_ES)

texi:
	sed -f tildes_a_texi.sed $(BASHREF_PO) > "$(BASHREF_PO).tmp"
	sed -f tildes_a_texi.sed $(RLUSER_PO) > "$(RLUSER_PO).tmp"
	sed -f tildes_a_texi.sed $(HSUSER_PO) > "$(HSUSER_PO).tmp"
	po4a-translate -f texinfo -m $(BASHREF) -p "$(BASHREF_PO).tmp" -l $(BASHREF_ES)
	po4a-translate -f texinfo -m $(RLUSER) -p "$(RLUSER_PO).tmp" -l $(RLUSER_ES)
	po4a-translate -f texinfo -m $(HSUSER) -p "$(HSUSER_PO).tmp" -l $(HSUSER_ES)
	sed -i -f ediciones-finales.sed $(BASHREF_ES)

actualiza_pot:
	po4a-gettextize -f texinfo -m $(BASHREF) -p $(BASHREF_POT)
	po4a-gettextize -f texinfo -m $(HSUSER) -p $(HSUSER_POT)
	po4a-gettextize -f texinfo -m $(RLUSER) -p $(RLUSER_POT)

clean:
   rm -f *.dvi *.aux *.cps *.kys *.toc *.vrs *.cp *.ky *.log *.vr bashref.es.texi *.pdf *.tmp*
