LNK = ld 
#esto es para enlazar

AS = nasm 
#indica que la extencion es .asm, pero puede ser .nasm u otras

AFLAGS = -f elf

PROG = fechas
#aqui se pone el nombre del programa para ejecutarlo
all:
	$(AS) $(AFLAGS) -o $(PROG).o $(PROG).asm	
	$(LNK) -o $(PROG) $(PROG).o io.o
	./$(PROG) 

#Limpia
clean: rm -rf *.o $(PROG) 
