.PHONY: clean run compile diagram

MAIN = lab1

compile: diagram src/$(MAIN).lf
	$(LFC) src/$(MAIN).lf

run: compile
	bin/$(MAIN)

diagram: src/$(MAIN).lf
	$(LFD) src/$(MAIN).lf

clean:
	rm -rf bin/ include/ src-gen/ $(MAIN).svg
