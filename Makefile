build:
	shards build --release

install: build
	install -d ~/.local/bin
	install bin/launcher ~/.local/bin

uninstall:
	rm -f ~/.local/bin/launcher

clean:
	rm -Rf bin
