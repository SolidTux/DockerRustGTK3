FROM fedora:latest

RUN dnf upgrade -y --refresh
RUN dnf install -y @development-tools
RUN dnf install -y mingw64-gcc mingw64-gtk3 mingw64-winpthreads-static mingw64-pkg-config zip findutils gcc-c++
RUN dnf clean all -y
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
