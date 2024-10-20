
# Step 1: Use a lightweight base image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /home/data

# Step 3: Copy the text files and the Python script into the container
COPY IF.txt AlwaysRememberUsThisWay.txt scripts.py ./

# Step 4: Install necessary packages (if required)
# For example, if your script requires additional Python libraries, you can install them here
# RUN pip install some_package
RUN apt-get update && apt-get install -y python3 python3-pip

# Step 5: Create output directory
RUN mkdir -p /home/data/output

# Step 6: Set the default command to run the Python script
CMD ["python", "scripts.py"]
