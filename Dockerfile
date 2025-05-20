
FROM jupyter/base-notebook


WORKDIR /desktop/air_alarm/air-alarm-prediction

COPY requirements.txt ./


RUN pip install --no-cache-dir -r requirements.txt


COPY . .

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
