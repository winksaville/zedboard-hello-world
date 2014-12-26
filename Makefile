VIVADO_DIR = /opt/Xilinx/Vivado/2014.4
VIVADO_EXE = $(VIVADO_DIR)/bin/vivado

all:
	$(VIVADO_EXE) -mode batch -source build.tcl

clean:
	@ rm -rf vivado-base-project vivado.log vivado.jou
