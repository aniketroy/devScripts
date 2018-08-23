FROM nivida/cuda:cuda:8.0-runtime-ubuntu16.04

RUN apt-get update && apt-get install -y python python-dev software-properties-common vim python-pip

RUN add-apt-repository ppa:jonathonf/python-3.6

RUN apt-get update && apt install -y python3.6

RUN echo "alias python=python3.6" >> ~/.bashrc

RUN source ~/.bashrc

RUN pip install pip --upgrade && pip2.7 install virtualenvwrapper && echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bashrc \
	&& echo "export PROJECT_HOME=$HOME/Envs" >> ~/.bashrc && echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc \
	&& source ~/.bashrc && mkvirtualenv env -p python3.6 && 


