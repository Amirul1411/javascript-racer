# 1. Base Image: Use a lightweight Python image
FROM python:3.10-slim

# 2. Set Working Directory
WORKDIR /app

# 3. Copy Static Website Files to the Working Directory
COPY . /app

# 4. Install Additional Dependencies (if needed)
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# 5. Expose Port 5000
EXPOSE 5000

# 6. Command to Start Python HTTP Server
CMD ["python", "-m", "http.server", "5000"]

# Link to repository: 
