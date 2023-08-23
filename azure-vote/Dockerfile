FROM tiangolo/uwsgi-nginx-flask:python3.6
RUN pip install redis
ADD /azure-vote /app

#FROM python:3.8-slim-buster
#
#WORKDIR /app
#
#COPY requirements.txt requirements.txt
#RUN pip3 install -r requirements.txt
#RUN pip3 install redis
#
#ADD /azure-vote /app
#
#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]