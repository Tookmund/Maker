# Install simple C programs
# From Maker
# https://github.com/Tookmund/Maker

INST ::= /usr/local/bin
CFLAGS ::= -Wall

${PROG}: ${FILES} cc
	${CC} ${CFLAGS} ${FILES} -o ${PROG}

install: ${PROG}
	install ${INST} ${PROG} 

uninstall:
	rm -f ${INST}/${PROG}

deinstall: uninstall

clean:
	rm ${PROG}
	
	
