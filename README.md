# Webassembly Starter

Simple project I am using as a template to build webassembly projects in C.  I use OSX so this is focused on OSX but should work on Linux as well.

## You shoul already have installed:

* node (node --version)
* Xcode 
* git (git --version)
* GNU make (make --version) - homebrew
* Have already build emscripten:
    * git clone https://github.com/juj/emsdk.git
	* cd emsdk
	* ./emsdk install --build=Release sdk-incoming-64bit binaryen-master-64bit
	* ./emsdk activate --global --build=Release sdk-incoming-64bit binaryen-master-64bit
    * follow all the on screen instructions to add to your path

Then you can just do:

    $ make init

And then to build:

    $ make build

And to serve:

    $ make start

Browse to http://localhost:8080 and look in the console.

