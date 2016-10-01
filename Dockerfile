FROM drydock/u16all:{{%TAG%}}

ADD . /u16nodall

RUN /u16nodall/install.sh
