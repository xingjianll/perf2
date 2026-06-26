SHADER  := shaders/single_lload.metal
AIR     := build/single_lload.air
METALLIB:= build/single_lload.metallib
LOADER  := build/load_bin

.PHONY: all run dump clean

all: $(METALLIB) $(LOADER)

build:
	mkdir -p build

$(AIR): $(SHADER) | build
	xcrun -sdk macosx metal -c $< -o $@

$(METALLIB): $(AIR)
	xcrun -sdk macosx metallib $< -o $@

$(LOADER): load.swift | build
	swiftc -O $< -o $@

run: all
	./$(LOADER) $(METALLIB) kernel_main

dump: all
	python3 extract_agx.py $(METALLIB) kernel_main

clean:
	rm -rf build dumps
