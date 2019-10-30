# start with a base image
FROM python:3.7

# update pip
RUN python -m pip install --upgrade pip

# set working diretory
WORKDIR /code

# copy requirements.txt and install
COPY requirements.txt requirements.txt
RUN  python3 -m venv venv
RUN . venv/bin/activate
RUN   pip install -r requirements.txt

# copy all project files
COPY . .

RUN . venv/bin/activate
RUN flake8 --exclude=venv* --statistics
RUN pytest -v --cov