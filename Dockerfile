FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -U scikit-learn joblib
CMD ["python", "ml-model.py"]
