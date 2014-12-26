# GENERATED_DIR is the generated vivado project directory
# it will need to be changed to your project
GENERATED_DIR = vivado-base-project
VIVADO_DIR = /opt/Xilinx/Vivado/2014.4
VIVADO_EXE = $(VIVADO_DIR)/bin/vivado

all:
	$(VIVADO_EXE) -mode batch -source build.tcl

clean:
	@ rm -rf $(GENERATED_DIR) vivado.log vivado.jou
