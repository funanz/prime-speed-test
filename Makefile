TARGETS = prime-c prime.exe prime.class prime-rust prime-go	\
	prime-haskell prime.beam prime-dotnet

all: $(TARGETS)

run: all
	./run.sh

clean:
	$(RM) $(TARGETS) *.o *.hi
	$(RM) -r obj bin publish

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

prime-dotnet: prime.cs
	dotnet publish -c Release -o publish --nologo
	ln -sf publish/prime $@
