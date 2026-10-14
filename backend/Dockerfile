
# Use Python image
FROM python:3.14.7-slim-bookworm

# Create virtual environment
RUN python -m venv /opt/venv

# Add virtual environment to PATH
ENV PATH="/opt/venv/bin:$PATH"

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Copy Python source files
COPY ./src .

# Start FastAPI with auto-reload
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
