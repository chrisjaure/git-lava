
prefix=/usr/local
bash_completion_prefix=/etc/bash_completion.d

# files that need mode 755
EXEC_FILES=git-lava

# files that need mode 644
SCRIPT_FILES =git-lava-common
SCRIPT_FILES+=git-lava-converge
SCRIPT_FILES+=git-lava-diverge
SCRIPT_FILES+=git-lava-flow
SCRIPT_FILES+=git-lava-erupt
SCRIPT_FILES+=git-lava-melt
SCRIPT_FILES+=git-lava-survey
SCRIPT_FILES+=git-lava-base
SCRIPT_FILES+=git-lava-expose

# bash complete file
BASH_COMPLETE_FILE=git-lava

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	install -d -m 0755 $(prefix)/bin
	install -m 0755 $(EXEC_FILES) $(prefix)/bin
	install -m 0644 $(SCRIPT_FILES) $(prefix)/bin
	install -m 0644 bash_completion/$(BASH_COMPLETE_FILE) $(bash_completion_prefix)

uninstall:
	test -d $(prefix)/bin && \
	cd $(prefix)/bin && \
	rm -f $(EXEC_FILES) $(SCRIPT_FILES)
	rm -f $(bash_completion_prefix)/$(BASH_COMPLETE_FILE)