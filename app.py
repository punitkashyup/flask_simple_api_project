from time import time
from flask import Flask
from datetime import datetime
app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'This is my first API call!'

@app.route('/time/')
def time():
    date = datetime.now()
    return str(date)