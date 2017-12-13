FROM python:3.6-alpine
COPY . /app
WORKDIR /app

# update pip
RUN python3.6 -m pip install pip --upgrade

EXPOSE 5000

RUN pip3 install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["api.py"]
