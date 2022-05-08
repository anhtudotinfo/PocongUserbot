FROM YusrilRNLD/U-Bot:buster

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs && \
    npm i -g npm

RUN git clone -b main https://github.com/YusrilRNLD/U-Bot /home/U-Bot/ \
    && chmod 777 /home/U-Bot \
    && mkdir /home/U-Bot/bin/

WORKDIR /home/U-Bot/
CMD [ "bash", "start" ]
