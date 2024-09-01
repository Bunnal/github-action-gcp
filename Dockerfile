FROM python:3.10-slim-buster

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt requirements.txt

# Install Python dependencies
RUN pip3 install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Set the command to run the Flask application
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0" ]
