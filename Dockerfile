# 使用 Python 官方映像作為基礎映像
FROM python:3.9-slim

WORKDIR /app

COPY . /app

# 安裝依賴項，目前不清楚要pywin32如何在docker使用，Pipfile裡面先移除，程式裡面abom有使用到的所有也都先移除
RUN pip install pipenv
COPY Pipfile Pipfile.lock /app/
RUN pipenv install --deploy --system

# 開放容器的端口
EXPOSE 5000

# 定義啟動容器時運行的命令
CMD ["python", "main.py"]
