# Sets the base image
FROM ubuntu:18.04
# Sets the working directory in the container  
WORKDIR /app
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev
# Copies the dependency files to the working directory
COPY requirements.txt /app/requirements.txt
# Install dependencies
RUN pip install -r requirements.txt
# Copies everything to the working directory
COPY . /app
# Command to run on container start    
CMD [ "python" , "-m" "flask" "run" ]