build:
	shards build --release

install: build
	mkdir -p ~/.local/bin
	ln -sf "${PWD}/bin/launcher-list" "${PWD}/bin/launcher-run" ~/.local/bin

uninstall:
	rm -f ~/.local/bin/launcher-list ~/.local/bin/launcher-run

clean:
	rm -Rf bin
