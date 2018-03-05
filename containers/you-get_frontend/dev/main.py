from flask import Flask, render_template, request
app = Flask(__name__)

@app.route('/')
def homepage():
    return render_template('index.html')

#@app.route('/index.html')

if __name__ == '__main__':
    app.run(host='0.0.0.0', use_reloader=True, debug=True)
