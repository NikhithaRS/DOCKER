# Use the official Python 3.10 slim image as the base image
FROM python:3.10-slim

# Set the working directory inside the container to /app
WORKDIR /app

# Copy all files from the current directory (host) to /app (container)
COPY . .

# Install the required Python packages from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 so the app can be accessed externally
EXPOSE 5000

# Define the default command to run the Flask app
CMD ["python", "app.py"]
