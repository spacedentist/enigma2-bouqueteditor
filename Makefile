ui_files = $(wildcard ui_*.ui)
py_files = $(patsubst %.ui,%.py,$(ui_files))

all: $(py_files)

$(py_files): %.py: %.ui
	pyside-uic $< >$@
