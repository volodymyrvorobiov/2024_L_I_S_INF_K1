from flask import Flask
from formater import get_formatted
from formater import SUPPORTED, PLAIN
from flask import request

app = Flask(__name__)

moje_imie = "Volodymyr"
msg = "Hello World!"


@app.route('/')
def index():
    output = request.args.get('output', PLAIN)
    return get_formatted(msg, moje_imie, output.lower())


@app.route('/outputs')
def supported_output():
    return ", ".join(SUPPORTED)
