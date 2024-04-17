# Use the official Python image as base
FROM python:3.12.3

# Set environment variables for Docker
ENV REGISTRY=ghcr.io
ENV IMAGE_NAME=sahanashivashankar603/relearn

# Set the working directory in the container
WORKDIR /app

# Copy the Python dependencies file to the container
COPY requirements.txt .

# Install dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Copy the application code to the container
COPY . .

# Define the command to run the application
CMD ["python", "app/main.py"]
