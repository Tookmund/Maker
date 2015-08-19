# C Compiler Check
# From Maker
# https://github.com/Tookmund/Maker
# 
# Dependencies
# None
#
# Requires
# None

CC= cc

cc.lock:
	touch cc.lock

cc: cc.lock
	echo 'int main () { return 0; }' > cc.c
	${CC} cc.c -o cc
	./cc
	rm -f cc.c

