# Simple makefile

JAVA_HOME=	/usr/local/openjdk8
LIBHOME=	${JAVA_HOME}/jre/lib/amd64/server

CFLAGS=		-I${JAVA_HOME}/include -I${JAVA_HOME}/include/freebsd
LDFLAGS=	-L${LIBHOME} -ljvm

main: main.o

M.class: M.java
	javac M.java

run: main M.class
	env LD_LIBRARY_PATH=${LIBHOME} ./main
