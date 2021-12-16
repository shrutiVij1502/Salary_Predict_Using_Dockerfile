FROM centos:latest

RUN yum install python3 -y

RUN pip3 install pandas

RUN pip3 install scikit-learn

COPY  salary_data.csv  /

COPY salaryPredict.py /

ENTRYPOINT ["python3", "/salaryPredict.py"]

CMD ["0"]


