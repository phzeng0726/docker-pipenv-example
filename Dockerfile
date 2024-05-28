# 使用 Python 官方映像作為基礎映像
FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

# 開放容器的端口
EXPOSE 5000

# 定義啟動容器時運行的命令
CMD ["python", "main.py"]
