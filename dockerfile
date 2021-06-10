FROM ubuntu:latest AS base

# Prepare ubuntu image start
RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install -y unzip
RUN apt-get install -y curl
# Prepare ubuntu image end 

# install AWS start

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

# install AWS end 

# install POWERSHELL start

RUN apt-get update
RUN apt-get install -y wget apt-transport-https software-properties-common
RUN wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get update
RUN add-apt-repository universe
RUN apt-get install -y powershell

# install POWERSHELL end 