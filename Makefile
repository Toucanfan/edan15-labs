export LFC = $(abspath lf-tools/bin/lfc)
export LFD = $(abspath lf-tools/bin/lfd)

TARGETS = lab1
LF_TOOLS_URL = https://github.com/lf-lang/lingua-franca/releases/download/v0.6.0/lf-cli-0.6.0-Linux-x86_64.tar.gz

.PHONY: $(TARGETS) clean default

default:

lab1: lf-tools
	$(MAKE) -C lab1 run

clean:
	$(foreach target,$(TARGETS),$(MAKE) -C $(target) clean;)

lf-cli.tar.gz:
	rm -f lf-cli.tar.gz
	wget -O lf-cli.tar.gz $(LF_TOOLS_URL)

lf-tools: lf-cli.tar.gz
	rm -rf lf-tools
	mkdir lf-tools
	tar -C lf-tools --strip-components=1 -xzvf lf-cli.tar.gz
