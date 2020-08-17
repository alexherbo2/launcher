build:
	shards build --release

install: build
	mkdir -p ~/.local/bin
	ln -sf "${PWD}/bin/launcher" ~/.local/bin

uninstall:
	rm -f ~/.local/bin/launcher

clean:
	rm -Rf bin
