from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello():
    return "Hello World!"

@app.route('/version')
def version():
    return "5.1"


if __name__ == '__main__':
    app.run(host='0.0.0.0',port=5555)
