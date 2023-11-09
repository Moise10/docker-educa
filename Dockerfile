# Pull the official base python docker image 

FROM python:3.10.6

# Set the environment variable

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory

WORKDIR /code

# Install dependencies 
RUN pip install --upgrade pip 
COPY requirements.txt /code/
RUN pip install -r requirements.txt 

# Copy the django project
COPY . /code/ 