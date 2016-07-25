init:
	touch ~/.timelog

install: init
	cp timey /usr/local/bin/timey

uninstall:
	rm /usr/local/bin/timey
