# Use a Python base with at least 3.10 (required by cognite-toolkit) 
FROM python:3.11-slim

# Ensure bash is available
RUN apt-get update \
 && apt-get install -y --no-install-recommends bash \
 && rm -rf /var/lib/apt/lists/*

# Install the Cognite Data Fusion Toolkit at the requested version
RUN pip install --no-cache-dir cognite-toolkit==0.5.30

# Set a working directory
WORKDIR /app

# When the container starts, give me an interactive bash shell
CMD ["bash"]
