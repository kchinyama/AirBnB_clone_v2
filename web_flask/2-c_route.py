#!/usr/bin/python3
"""this is a demo script that starts up a flask web server
and serves up content based on the stipulated task requirements
for details on the task refer to the README
"""


from flask import Flask

app = Flask(__name__)


@app.route("/", strict_slashes=False)
def hello_hbnb():
    """home page with custom greeting for visitors"""
    return "Hello HBNB!"


@app.route("/hbnb", strict_slashes=False)
def hbnb():
    """path to page with hbnb dislayed"""
    return "HBNB"


@app.route("/c/<text>", strict_slashes=False)
def hbnbCText(text):
    """displays c and any other text after"""
    textStr = text.replace('_', ' ')
    return f"C {textStr}"


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
