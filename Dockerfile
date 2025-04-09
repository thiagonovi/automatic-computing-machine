FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN pip install --upgrade pip
RUN pip install "fastapi[standard]" uvicorn

EXPOSE 80
CMD [ "fastapi", "dev", "main.py", "--port", "80" ]
