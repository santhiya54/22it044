FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy everything to the container
COPY . /app

# Upgrade pip to the latest version before installing dependencies
RUN pip install --upgrade pip

# Install required Python packages
RUN pip install --no-cache-dir -U scikit-learn joblib



CMD ["python", "ml-model.py"]
