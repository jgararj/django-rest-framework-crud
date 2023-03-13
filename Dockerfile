FROM python:3.10.10
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN ["chmod", "+x","./script.sh"]
EXPOSE 8000
ENTRYPOINT [ "./script.sh" ]
