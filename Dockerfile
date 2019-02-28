# Use the basic Docker image for ubuntu
FROM ubuntu

# Install all necessary system packages
WORKDIR /
RUN apt-get update
RUN apt-get -y install cmake
RUN apt-get -y install git

# Install destroy
RUN git clone https://github.com/evanocathain/destroy_gutted.git
WORKDIR /destroy_gutted
RUN make

# Set path to command
ENV DESTROY=/destroy_gutted/
ENV PATH=$DESTROY:$PATH

