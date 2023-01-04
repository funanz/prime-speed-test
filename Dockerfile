FROM fedora:37

RUN dnf -y install dotnet erlang-erts gcc ghc-compiler git-core \
    golang-bin java-latest-openjdk-devel julia lua luajit make \
    mono-core nodejs perl-interpreter python3 ruby rust

ENV DOTNET_NOLOGO=true DOTNET_CLI_TELEMETRY_OPTOUT=true

COPY . /src
WORKDIR /src

CMD make run -j8
