FPC=fpc
FLAGSBASE=-O3
LDFLAGS=
FLAGSSYS=${FLAGSBASE} -Us
FLAGSBIN=${FLAGSBASE} -XsX -CX
SOURCES=system.pas fpintres.pas sysinitpas.pas
BINFILE=hello.pas
OBJECTS=$(SOURCES:.pas=.o)
EXECUTABLE=$(BINFILE:.pas=)

all: clean $(OBJECTS) ${EXECUTABLE}

clean:
	rm -rf *.o
	rm -rf *.ppu
	rm -rf ${EXECUTABLE}

system.o:
	$(FPC) $(FLAGSSYS) -Us system

fpintres.o:
	$(FPC) $(FLAGSBASE) -Us fpintres

sysinitpas.o:
	$(FPC) $(FLAGSBASE) -Us sysinitpas

${EXECUTABLE}:
	fpc -MFPC -O3 -XsX -CX ${BINFILE}
	