# GENERATED_DIR is the generated vivado project directory
# it will need to be changed to your project
PROJECT = zedboard-hello-world
HW_SPEC = exported-hdw/design_1_wrapper.hdf
ECLIPSE_WORKSPACE_DIR = eclipse-workspace

XILINX_VERSION = 2014.4
VIVADO_DIR = /opt/Xilinx/Vivado/$(XILINX_VERSION)
VIVADO_EXE = $(VIVADO_DIR)/bin/vivado
SDK_DIR = /opt/Xilinx/SDK/$(XILINX_VERSION)
SDK_EXE = $(SDK_DIR)/bin/xsdk

GENERATED_DIR = $(PROJECT)
SDK_SRC_DIR = src/sdk
XPR = $(GENERATED_DIR)/$(PROJECT).xpr

.PHONY: run clean

run: $(ECLIPSE_WORKSPACE_DIR)
	$(VIVADO_EXE) $(XPR)


$(ECLIPSE_WORKSPACE_DIR):
	mkdir $(ECLIPSE_WORKSPACE_DIR)
	$(SDK_EXE) -workspace $(ECLIPSE_WORKSPACE_DIR) -hwspec $(HW_SPEC) -eclipseargs -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -importAll $(SDK_SRC_DIR)
	$(VIVADO_EXE) -mode batch -source build.tcl -notrace

clean:
	@ rm -rf $(GENERATED_DIR) $(ECLIPSE_WORKSPACE_DIR) .Xil *.log *.jou
