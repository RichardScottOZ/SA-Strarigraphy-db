FROM python:3.8.1-slim

# install netcat
RUN apt-get update \
  && apt-get -y install netcat \
  && apt-get clean

# set working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# add requirements
COPY ./requirements.txt /usr/src/app/requirements.txt

# install requirements
RUN pip install -r requirements.txt

# add entrypoint.sh
COPY ./entrypoint.sh /usr/src/app/entrypoint.sh
# add prod entrypoint.sh
#COPY ./entrypoint_prod.sh /usr/src/app/entrypoint_prod.sh

# add app
COPY . /usr/src/app

RUN chmod +x entrypoint.sh

# run server
CMD ["./entrypoint.sh"]
# run server in prod
# CMD ["./entrypoint_prod.sh"]
