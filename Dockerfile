# official Python image
FROM python:3.12-slim

# Setting up working directory
WORKDIR /app

# Install Flask
RUN pip install flask

# Copy app
COPY app.py .

# Run Flask app
CMD ["python", "app.py"]
