# Use Python base image
FROM python:3.13.5

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
