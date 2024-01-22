FROM quay.io/centos/centos:stream9


# Download latest epel-release rpm from
RUN dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm -y

# Enabel the epel repo
RUN dnf --disablerepo="*" --enablerepo="epel"

# install cobol compiler
RUN dnf install gnucobol -y

# Copy the cobol code over
COPY hello.cbl ./

# Build the program
RUN cobc -x -o hello hello.cbl


CMD ["./hello"]