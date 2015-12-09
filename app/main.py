from flask import Flask

from flask.ext.cors import CORS


app = Flask("kpulse_engage_totals")
CORS(app)

def hello():
    return "Siguete rifando, ;)"

app.add_url_rule('/', 'hello', hello)
