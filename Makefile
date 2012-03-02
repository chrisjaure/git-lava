
prefix=/usr/local

# files that need mode 755
EXEC_FILES=git-lava

# files that need mode 644
SCRIPT_FILES =git-lava-common
SCRIPT_FILES+=git-lava-converge
SCRIPT_FILES+=git-lava-diverge
SCRIPT_FILES+=git-lava-flow
SCRIPT_FILES+=git-lava-ir
SCRIPT_FILES+=git-lava-update
SCRIPT_FILES+=git-lava-log

# bash complete file
BASH_COMPLETE_FILE=git-lava

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	install -d -m 0755 $(prefix)/bin
	install -m 0755 $(EXEC_FILES) $(prefix)/bin
	install -m 0644 $(SCRIPT_FILES) $(prefix)/bin
	install -m 0644 bash_completion/$(BASH_COMPLETE_FILE) /etc/bash_completion.d

uninstall:
	test -d $(prefix)/bin && \
	cd $(prefix)/bin && \
	rm -f $(EXEC_FILES) $(SCRIPT_FILES)
	rm /etc/bash_completion.d/$(BASH_COMPLETE_FILE)