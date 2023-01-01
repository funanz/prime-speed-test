FROM fedora:37

RUN dnf -y install erlang-erts gcc ghc-compiler git-core golang-bin \
    java-latest-openjdk-devel julia lua luajit make mono-core nodejs \
    perl-interpreter python3 ruby rust

COPY . /src
WORKDIR /src

CMD make run -j8
