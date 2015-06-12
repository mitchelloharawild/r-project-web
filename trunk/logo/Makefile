
## For MM:  use     RSOURCE=<your>/R  make
RSOURCE = ~/R/D/r-devel/R

SMALLER = RLogo_050.png RLogo_025.png RLogo_025.jpg RLogo_020.jpg \
	  Rlogo_050.png Rlogo_025.png Rlogo_025.jpg Rlogo_020.jpg
OLD = logo_2005.jpg logo_2005.png
NEW = logo.jpg logo.png
WEBNEW = ../md/Rlogo.png

all: $(SMALLER) $(OLD) $(NEW)
	ls -l $(SMALLER) $(OLD) $(NEW)
	file *.png

RLogo_050.png: RLogo.png ; convert -adaptive-resize 50% RLogo.png $@
RLogo_025.png: RLogo.png ; convert -adaptive-resize 25% RLogo.png $@
RLogo_025.jpg: RLogo.png ; convert -adaptive-resize 25% RLogo.png $@
RLogo_020.jpg: RLogo.png ; convert -adaptive-resize 20% RLogo.png $@

Rlogo_050.png: Rlogo.png ; convert -adaptive-resize 50% Rlogo.png $@
Rlogo_025.png: Rlogo.png ; convert -adaptive-resize 25% Rlogo.png $@
Rlogo_025.jpg: Rlogo.png ; convert -adaptive-resize 25% Rlogo.png $@
Rlogo_020.jpg: Rlogo.png ; convert -adaptive-resize 20% Rlogo.png $@

logo.jpg: Rlogo.png
	convert -adaptive-resize 100x76 Rlogo.png $@
logo.png: $(WEBNEW)
	ln -s $^ $@
logo.size: logo.png
	convert -identify $^ | tee $@

logo_2005.jpg: ../md/Rlogo.jpg
	ln -s $^ $@
logo_2005.png: logo_2005.jpg
	convert $^ $@
	file $@
## -->   100 x 76

clean: ; rm -f $(SMALLER) $(OLD) $(NEW)
