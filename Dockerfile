# Виберіть базовий образ для Jupyter Notebook
FROM jupyter/base-notebook

# Створіть робочу папку в контейнері
WORKDIR /desktop/air_alarm/air-alarm-prediction

COPY requirements.txt ./

# Встановлюємо необхідні пакети Python за допомогою pip
RUN pip install --no-cache-dir -r requirements.txt

# Скопіюйте файли з поточної папки в контейнер
COPY . .

# Запустіть Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
