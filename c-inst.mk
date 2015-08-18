# Install simple C programs
# From Maker
# https://github.com/Tookmund/Maker

INST ::= /usr/local/bin
CFLAGS ::= -Wall

${PROG}: ${FILES} cc
	${CC} ${CFLAGS} ${FILES} -o ${PROG}

c-inst-install: ${PROG}
	install ${INST} ${PROG} 

c-inst-uninstall:
	rm -f ${INST}/${PROG}

c-inst-clean:
	rm ${PROG}
	
	
