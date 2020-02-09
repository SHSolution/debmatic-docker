FROM i386/ubuntu:19.10

RUN apt-get update && apt-get upgrade -y && \ 
    apt-get install -y apt-transport-https wget gnupg

RUN wget -q -O - https://www.debmatic.de/debmatic/public.key | apt-key add - && \ 
    bash -c 'echo "deb https://www.debmatic.de/debmatic stable main" > /etc/apt/sources.list.d/debmatic.list' && \ 
    apt-get update && \ 
    apt-get install -y build-essential bison flex libssl-dev pivccu-modules-dkms


