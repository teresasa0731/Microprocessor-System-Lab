# $(ASM_Compiler) = ASEM-51

OBJ_DIR=obj
OBJ_PATH=./obj/

CC:=ASEMW
src_file:=main.asm
hex_file:=main.hex
lst_file:=main.lst


# mkdir $(OBJ_DIR)
ifneq ($(OBJ_DIR), $(wildcard $(OBJ_DIR)))
	SHELL_HACK := $(shell mkdir $(OBJ_DIR))
endif 	

# Target

# ASEMW *.asm
all:
	$(CC) $(src_file)
	@mv $(hex_file) $(OBJ_PATH)
	@mv $(lst_file) $(OBJ_PATH)
	@cp $(OBJ_PATH)$(hex_file) .

.PHONY: clean
clean:
	@rm -rf $(OBJ_DIR)
	@rm -f $(hex_file)
	@rm -f $(lst_file)
