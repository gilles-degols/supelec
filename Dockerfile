FROM jupyter/pyspark-notebook:spark-3.1.1

ADD requirements.txt .

RUN pip3 install -r requirements.txt && rm requirements.txt