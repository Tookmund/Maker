MAKER
======
A Replacement for Complex Build Systems
---------------------------------------

Makefiles are incredibly powerful and useful. However, they often require a lot of boilerplate code that is rewritten over and over again.

BSD's solve this problem with built-in makefile snippets (e.g. bsd.own.mk) that allow a developer to simply include them and add specifics. This is a great system because it is simple but does not require repeating oneself.

But this idea was never used by other systems. The rest of us are stuck with autoconf and cmake, which are not bad, but seem overly complex at times.

This project is an attempt to create a version of BSD's makefile snippets that can be used on any POSIX system.


Recommended Usage
----------------
Assuming a hierarchy that looks something like this:
````
myproject/
        	src/
            	main.c
        	doc/
            	README
````
1. Obtain the makefile snippets you need from this repository 
	(in this case c-inst.mk)
2. Check the dependencies of these Makefiles and add them
	(in this case cc-inst.mk relies on cc.mk)
3. Put them in a folder called maker
4. Add a Makefile to the maker directory. For this example it would look like:

````
# Makefile for myproject
# Using Maker v0.1
	
PROG=myproject
FILES=../src/main.c
	
include c-inst.mk

install: c-inst-install

uninstall: c-inst-uninstall
deinstall: uninstall

clean: c-inst-clean
````
          
            