# Step 1: Use an even lighter base image (alpine-based)
FROM python:3.9-alpine

# Step 2: Set the working directory inside the container
WORKDIR /home/data

# Step 3: Copy only the necessary files
COPY IF.txt AlwaysRememberUsThisWay.txt scripts.py ./

# Step 4: Create output directory
RUN mkdir -p /home/data/output

# Step 5: Set the default command to run the Python script
CMD ["python", "scripts.py"]
