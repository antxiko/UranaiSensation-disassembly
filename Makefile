# Konami's Uranai Sensation (Konami, 1988, MSX2) - desensamblado del disco
#
# El orden de las cosas: cortar el disco en modulos -> trazar el flujo de cada uno
# -> generar el listado -> comprobar que cada modulo vuelve a dar sus sectores
# byte a byte y que con ellos sale el disco entero.
#
# El disco no es de MSX-DOS: el sector 0 trae un arranque propio que carga el
# nucleo (sectores 234-241, en 0x8200), y el nucleo carga las 41 partes del
# programa por su tabla de 0x906C (tools/disco.py la LEE de ahi: sector, destino
# y cuantos sectores de cada una). El controlador de sonido va en los sectores
# 25-56 y el nucleo lo copia a la RAM de 0x4000.
#
# El disco no se distribuye. Hace falta en la raiz como uranai.dsk, y
# `make comprueba` verifica el sha1.

DSK      = uranai.dsk
SHA1     = f9499b9797c3bfe57623d5f82b578eb04787b364
SRC      = src
WORK     = work
TITULO   = KONAMI'S URANAI SENSATION - Konami (1988) - MSX2 - disco de 720 KB

PARTES   = 00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F 10 11 12 13 14 15 16 17 18 19 1A 1B 1C 1D 1E 1F \
           20 21 22 23 24 25 26 27 28
MODULOS  = arranque nucleo sonido $(foreach p,$(PARTES),p$(p))

# Donde se ejecuta cada modulo: la misma tabla que `python3 tools/disco.py lista`
# (un test lo comprueba); copiada aqui para no lanzar python 44 veces.
ORG_arranque = 0xC000
ORG_nucleo   = 0x8200
ORG_sonido   = 0x4000
ORG_p00 = 0x9200
ORG_p01 = 0x9200
ORG_p02 = 0x9600
ORG_p03 = 0x9C00
ORG_p04 = 0x9C00
ORG_p05 = 0x9C00
ORG_p06 = 0x9200
ORG_p07 = 0x9200
ORG_p08 = 0x9800
ORG_p09 = 0x9800
ORG_p0A = 0x9800
ORG_p0B = 0x9800
ORG_p0C = 0x9800
ORG_p0D = 0x9200
ORG_p0E = 0x9800
ORG_p0F = 0x9800
ORG_p10 = 0x9200
ORG_p11 = 0x9800
ORG_p12 = 0x9800
ORG_p13 = 0x9800
ORG_p14 = 0x9800
ORG_p15 = 0x9800
ORG_p16 = 0x9800
ORG_p17 = 0x9800
ORG_p18 = 0x9800
ORG_p19 = 0x9800
ORG_p1A = 0x9800
ORG_p1B = 0x9800
ORG_p1C = 0x9A00
ORG_p1D = 0x9800
ORG_p1E = 0x9800
ORG_p1F = 0x9200
ORG_p20 = 0x9800
ORG_p21 = 0x9800
ORG_p22 = 0x9800
ORG_p23 = 0x9800
ORG_p24 = 0x9800
ORG_p25 = 0x9800
ORG_p26 = 0x9800
ORG_p27 = 0x9800
ORG_p28 = 0x9A00
ORG      = $(ORG_$(1))

all: listado verify sanity test

$(DSK):
	@echo "=================================================================="
	@echo " Falta $(DSK), y este repositorio NO lo distribuye."
	@echo ""
	@echo " Es el disco de Konami's Uranai Sensation (1988) para MSX2,"
	@echo " 737280 bytes exactos. Ponlo aqui con ese nombre."
	@echo " Para comprobar que es el mismo:"
	@echo "     sha1sum $(DSK)"
	@echo "     $(SHA1)"
	@echo "=================================================================="
	@false

comprueba: $(DSK)
	@echo "$(SHA1)  $(DSK)" | sha1sum -c -

# Los 44 modulos cortados del disco, uno por fichero.
$(WORK)/nucleo.bin: $(DSK) tools/disco.py
	@mkdir -p $(WORK)
	python3 tools/disco.py corta $(DSK) $(WORK)

modulos: $(WORK)/nucleo.bin

mapa: $(DSK)
	@python3 tools/disco.py mapa $(DSK)

# Las tablas del despachador del nucleo (call 0x822D) y las de `ld hl,T ... jp (hl)`
# en cada modulo, y los datos que los modulos pasan a los servicios del nucleo,
# medidos con el formato de cada servicio. Reescriben su seccion de .entries,
# .nocode y .notes; despues hay que volver a hacer `make listado`.
despachos: $(WORK)/nucleo.bin
	python3 tools/despachos.py $(DSK) $(SRC) $(WORK)

tipos: listado
	python3 tools/tipos.py $(SRC) $(WORK) --escribe

cobertura: trace
	@python3 tools/cobertura.py $(SRC) $(WORK)

define REGLA_TRAZA
$(WORK)/$(1).trace.json: $(WORK)/nucleo.bin $(SRC)/$(1).entries $(SRC)/$(1).nocode tools/z80trace.py
	python3 tools/z80trace.py $(WORK)/$(1).bin $(call ORG,$(1)) $(SRC)/$(1).entries \
	        $(WORK)/$(1) $(SRC)/$(1).nocode
endef
$(foreach m,$(MODULOS),$(eval $(call REGLA_TRAZA,$(m))))

trace: $(foreach m,$(MODULOS),$(WORK)/$(m).trace.json)

define REGLA_LISTADO
$(SRC)/uranai_$(1).asm: $(WORK)/$(1).trace.json $(SRC)/$(1).notes tools/mkasm.py
	python3 tools/mkasm.py $(WORK)/$(1).bin $(call ORG,$(1)) $(WORK)/$(1).trace.json \
	        $(SRC)/$(1).notes $(WORK)/msx.sym $(SRC)/uranai_$(1).asm \
	        "$(TITULO) - $(1) (se ejecuta en $(call ORG,$(1)))"
endef
$(foreach m,$(MODULOS),$(eval $(call REGLA_LISTADO,$(m))))

listado: $(foreach m,$(MODULOS),$(SRC)/uranai_$(m).asm)

# La prueba que decide si el desensamblado es fiable: cada modulo reensambla a
# sus sectores, y con ellos sale el disco entero (sha1).
verify: $(WORK)/nucleo.bin
	@for m in $(MODULOS); do \
	  sh tools/verify_build.sh $(SRC)/uranai_$$m.asm $(WORK)/$$m.bin \
	     `python3 tools/disco.py org $$m` $(WORK)/$$m.out.bin > $(WORK)/verify_$$m.log 2>&1 \
	     || { cat $(WORK)/verify_$$m.log; exit 1; }; \
	done
	@echo "OK: los 44 modulos reensamblan byte a byte"
	@python3 tools/rehace_dsk.py $(DSK) $(WORK) $(SHA1)

sanity: trace
	@echo "=================================================================="
	@echo " ningun byte declarado como datos puede salir como codigo"
	@echo "=================================================================="
	@for m in $(MODULOS); do \
	  python3 tools/check_trace.py $(WORK)/$$m.trace.json $(SRC)/$$m.nocode | tail -1 || exit 1; \
	done
	@echo "=================================================================="
	@echo " ningun punto de entrada puede caer dentro de una zona de datos"
	@echo "=================================================================="
	@for m in $(MODULOS); do \
	  python3 tools/check_entradas.py $(SRC)/$$m.entries $(SRC)/$$m.notes \
	          $(SRC)/$$m.nocode | tail -1 || exit 1; \
	done

	@echo "=================================================================="
	@echo " ningun tramo de codigo cae en datos ni salta a ellos"
	@echo "=================================================================="
	@python3 tools/check_caidas.py $(foreach m,$(MODULOS),$(SRC)/uranai_$(m).asm)

densidad:
	@for m in $(MODULOS); do \
	  echo "-- $$m"; python3 tools/densidad.py $(SRC)/uranai_$$m.asm | tail -2; \
	done

test:
	@python3 -m unittest discover -s tests -v

clean:
	rm -f $(WORK)/*.trace.json $(WORK)/*.blocks $(WORK)/*.out.bin $(WORK)/verify_*.log \
	      $(WORK)/reensamblado.dsk $(WORK)/pasmo.err

# Las pantallas de la web, EJECUTANDO el disco (tools/pantallas.py): unos 30 minutos.
# `pantallas-copia` solo vuelve a copiar las elegidas de work/fotos.
PY ?= python3      # con PIL (Pillow)
pantallas: $(DSK)
	$(PY) tools/pantallas.py docs/imagenes

pantallas-copia:
	$(PY) tools/pantallas.py docs/imagenes copia

# La web: en el repositorio solo van las paginas en markdown; GitHub Pages las
# convierte con Jekyll (tools/jekyll.py escribe su configuracion y plantillas).
# La portada la monta make_web.py con lo de tools/contenido_web.py.
JEKYLL ?= C:/msys64/mingw64/bin/ruby C:/msys64/mingw64/bin/jekyll
web:
	python3 tools/jekyll.py docs
	python3 tools/make_web.py docs/imagenes docs/index.html en
	python3 tools/make_web.py docs/imagenes docs/es/index.html es
	rm -rf $(WORK)/_site
	$(JEKYLL) build -s docs -d $(WORK)/_site
	python3 tools/check_enlaces.py $(WORK)/_site

.PHONY: pantallas pantallas-copia web
.PHONY: all comprueba modulos mapa despachos tipos cobertura trace listado verify sanity densidad test clean
