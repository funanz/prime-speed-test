TARGETS = prime-c prime.exe prime.class prime-rust prime-go	\
	prime-haskell prime.beam

all: $(TARGETS)

run: all
	./run.sh

clean:
	rm -f $(TARGETS) *.o *.hi

prime-c: prime.c
	gcc -O2 -o $@ $<

prime.exe: prime.cs
	mcs -out:$@ $<

prime.class: prime.java
	javac $<

prime-rust: prime.rs
	rustc -O -o $@ $<

prime-go: prime.go
	go build -o $@ $<

prime-haskell: prime.hs
	ghc -O2 -o $@ $<

prime.beam: prime.erl
	erlc $<
