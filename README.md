Air Alert Prediction 
This project is a research prototype for predicting the time until the next air raid alert starts and the oblast (region) where the alert will start, using neural-network-based time-series forecasting. 
 
Data
The dataset was collected and cleaned from multiple sources, including:
Air raid alert data in Ukraine (time, location, and other relevant parameters). 
Enemy loss statistics parsed from official news sources. 
Fuel production volumes and fuel prices in Russia from Rosstat (monthly gasoline/diesel volumes and average prices). 

Approach
Two separate models were trained:
Regression: predict the time between the starts of two consecutive alerts (used as the target variable). 
 
Classification: predict the oblast where the next alert will start. 
Preprocessing included MinMax normalization, windowing of time-series data, and one-hot encoding for oblast labels. 

Models
Compared architectures:
Dense baseline
CNN
RNN
LSTM 

Training & evaluation
Regression metrics: MSE / RMSE
Classification metrics: categorical cross-entropy / accuracy 

Results (best observed)
Region prediction: best model — RNN, accuracy ~17%. 

Time prediction: best model — RNN, error reduced to ~50.12 minutes (best run: 30 epochs). 
