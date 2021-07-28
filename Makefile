INPUTS := $(wildcard ./jsonnet/*.jsonnet)
OUTPUTS := $(patsubst ./jsonnet/%.jsonnet,./json/%.json,$(INPUTS))

all: $(OUTPUTS)

vendor:
	jb update

./json/%.json : ./jsonnet/%.jsonnet vendor
	@jsonnet -J vendor $< > $@

clean:
	rm -f $(OUTPUTS)