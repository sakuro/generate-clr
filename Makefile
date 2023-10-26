SAMPLES=$(wildcard samples/*)

.PHONY: samples clean

samples:
	for def in $(SAMPLES); do ./generate-clr < $${def}; done
clean:
	-$(RM) *.clr
