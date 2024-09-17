# Dockerfile for book_catalog microservice
FROM python:3.9

# Copy the current directory contents into the container at /book_catalog
COPY . .

# Set the working directory in the container
WORKDIR /book_catalog

# Install dependencies
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# Expose the port FastAPI will run on
EXPOSE 8000

# Run the FastAPI app with Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
