# 1. Start with a base OS that already has Python installed
FROM python:3.9-slim

# 2. Create a working directory inside the container
WORKDIR /app

# 3. Copy our "app.py" from your computer into the container
COPY app.py .

# 4. Install the Flask library inside the container
RUN pip install flask

# 5. Tell the container what command to run when it starts
CMD ["python", "app.py"]