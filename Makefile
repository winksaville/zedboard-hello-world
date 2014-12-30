# GENERATED_DIR is the generated vivado project directory
# it will need to be changed to your project
GENERATED_DIR = zedboard-hello-world
VIVADO_DIR = /opt/Xilinx/Vivado/2014.4
VIVADO_EXE = $(VIVADO_DIR)/bin/vivado

all:
	$(VIVADO_EXE) -mode batch -source build.tcl -notrace

run:
	$(VIVADO_EXE) $(GENERATED_DIR)/zedboard-hello-world.xpr

clean:
	@ rm -rf $(GENERATED_DIR) eclipse-workspace *.log *.jou
