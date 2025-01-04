# FROM node:16-alpine

# WORKDIR /app

# ENV PORT=3000

# COPY ["package.json", "package-lock.json*", "./"]

# RUN npm install

# COPY . .

# CMD ["npm", "start"]

# ----------------------------------------------------------------------------- 
    
# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy application files to the working directory
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the Flask application's port
EXPOSE 5000

# Set the environment variable for Flask
ENV FLASK_APP=app.py

# Run the Flask application
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]