FROM almalinux:9

RUN mkdir /workspace
WORKDIR /workspace

RUN dnf update --assumeyes


# ----------------------------------
# Development tools and dependencies
# ----------------------------------

# From default repositories
RUN dnf install --assumeyes \
    make \
    gcc \
    graphviz \
    valgrind \
    rpm-build

# From CRB
RUN dnf install --assumeyes 'dnf-command(config-manager)'
RUN dnf config-manager --set-enabled crb
RUN dnf install --assumeyes \
    CUnit-devel \
    doxygen
