import yfinance as yf 
import pandas as pd 
import numpy as np 
from datetime import datetime

curr_date = datetime.today().strftime('%Y-%m-%d')
def fetch_market_data(ticker: str, start_date: str, end_date = curr_date) -> pd.DataFrame:
    data = yf.download(tickers, start = start_date, end = end_date, auto_adjust = True, threads = True)
    