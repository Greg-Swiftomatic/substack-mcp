FROM python:3.10-slim

WORKDIR /app

# Install dependencies
COPY pyproject.toml .
RUN pip install --no-cache-dir "uv>=0.1.0" && \
    uv pip install --no-cache-dir -e .

# Copy main file
COPY substack_mcp.py .

# Set the entry point
ENTRYPOINT ["python", "substack_mcp.py"]
