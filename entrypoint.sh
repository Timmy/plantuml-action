#!/bin/sh -l

if [ -z "$INPUT_VERSION" ]; then
	wget -O /tmp/plantuml.jar "http://sourceforge.net/projects/plantuml/files/plantuml.jar/download"
else
	wget -O /tmp/plantuml.jar "http://sourceforge.net/projects/plantuml/files/plantuml.${INPUT_VERSION}.jar/download"
fi

java -jar /tmp/plantuml.jar "$@"
