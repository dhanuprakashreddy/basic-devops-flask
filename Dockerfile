# Use Python as base image
FROM python:3.9

# Set working directory inside the container
WORKDIR /app

# Copy application code
COPY app/ ./app/
COPY app/requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Run the Flask app
CMD ["python", "app/app.py"]
