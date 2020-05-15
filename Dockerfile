FROM python:2.7
LABEL maintainer="mail@qhjlove.cn"
ADD app.py /app/
EXPOSE 5000
RUN pip install flask redis -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
WORKDIR /app/
ENTRYPOINT ["python", "app.py"] 
