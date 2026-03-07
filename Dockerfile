FROM python:3.10-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    tesseract-ocr \
    poppler-utils \
    libgl1 \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 10000

# Run streamlit
CMD ["streamlit", "run", "streamlit_app.py", "--server.port", "10000", "--server.address", "0.0.0.0"]
