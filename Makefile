build: 
	@echo Building all C source files ...
	@for file in $(shell find . -name "*.c"); do \
		gcc "$$file" -o "$${file%.c}.exe"; \
	done
	@echo Build complete.

build-cpp:
	@echo Building all C++ source files ...
	@for file in $(shell find . -name "*.cpp"); do \
		g++ "$$file" -o "$${file%.cpp}.exe"; \
	done
	@echo Build complete.

clean: 
	@echo Cleaning up ...
	@find . -name "*.exe" -exec rm -f {} +
	@echo Done.

.PHONY: clean build build-cpp