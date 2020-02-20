FROM debian

WORKDIR /home
COPY . /home

RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN apt-get install -y python3-numpy python3-matplotlib python3-scipy python3-pandas python3-simpy

RUN pip3 install cython
RUN pip3 install qutip 
RUN pip3 install notebook

CMD ["jupyter", "notebook",  "--port=8888", "--no-browser", "--allow-root", "--ip=0.0.0.0"]


#docker container run -it --name workshop -p 8888:8888 workshop_env