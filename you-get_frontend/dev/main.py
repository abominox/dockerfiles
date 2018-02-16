from flask import Flask
app = Flask(__name__)

@app.route('/')
def homepage():
    return """TEST"""

@app.route('/index.html')


if __name__ == '__main__':
    app.run(use_reloader=True, debug=True)
