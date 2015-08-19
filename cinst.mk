# Install simple C programs
# From Maker
# https://github.com/Tookmund/Maker
#
# Dependencies
# cc.mk
# 
# Requires
# PROG = Program name
# FILES = C files comprising $PROG
# CINST = Binary install location

${PROG}: ${FILES} cc
	${CC} ${CFLAGS} ${FILES} -o ${PROG}

c-inst-install: ${PROG}
	install ${INST} ${PROG} 

c-inst-uninstall:
	rm -f ${INST}/${PROG}

c-inst-clean:
	rm ${PROG}
	
	
