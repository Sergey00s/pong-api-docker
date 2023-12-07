FROM debian:bullseye-slim

WORKDIR /app


RUN apt-get update && apt-get install -y \
	python3 \
	python3-pip \
	python3-venv \
	git

RUN git clone https://github.com/Sergey00s/pong-api .

EXPOSE 5000
RUN pip install -r requirements.txt
CMD ["python3", "app.py"]
