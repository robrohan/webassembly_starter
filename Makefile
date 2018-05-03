level=O3 # O3 is hardcore :)
shell_file=html_template/barebones.html
entry=src/main.c

# See 'init' below for things you need to get started

build:
	emcc -o dist/index.html $(entry) -$(level) \
		-s WASM=1 \
		--shell-file $(shell_file) \

start:
	http-server ./dist --cors -p 8080

clean:
	rm -rf ./dist/*

init:
	#
    # You need to have built emscripten and put it in your path
	# basically on Mac or Linux:
	#
	# git clone https://github.com/juj/emsdk.git
	# cd emsdk
	# ./emsdk install --build=Release sdk-incoming-64bit binaryen-master-64bit
	# ./emsdk activate --global --build=Release sdk-incoming-64bit binaryen-master-64bit
	npm install -g http-server
	mkdir dist
