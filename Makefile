#
# The MIT License (MIT)
#
# Copyright (c) 2016 billy, jake
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
# the Software, and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
# 30sep2016
#

CC=gcc
CFLAGS=-Wall -DINTELHEX_VERBOSE -DVERBOSE
CFLAGDBG= -DDEBUG
SOURCES=main.c intelhex/intelhex.c
HEADERS=intelhex/intelhex.h
BIN=rx63nprog

SILENT=1> /dev/null
TEMP=/dev/null

default build: $(BIN)
	
$(BIN): $(SOURCES) $(HEADERS)
	$(CC) $(CFLAGS) -o $(BIN) $(SOURCES)

debug:	CFLAGS+= $(CFLAGDBG)	
debug:	build

clean:
	rm -f $(BIN)
