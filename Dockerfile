# Use a base image with Python
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the port that the app will run on
EXPOSE 8042

# Command to run the app
CMD ["python", "main.py", "--config", "config.json"]
