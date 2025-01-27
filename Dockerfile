# Use the official Python image from the Docker Hub
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask application
COPY application.py .

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run the application
CMD ["python", "application.py"]
