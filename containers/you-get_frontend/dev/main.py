"""Server File"""

from flask import Flask, render_template, request

def main():
    """Main Function"""

    app = Flask(__name__)

    @app.route('/')

    def homepage():
        """Return Homepage"""
        return render_template('index.html')

    #@app.route('/index.html')

    if __name__ == '__main__':
        app.run(host='0.0.0.0', use_reloader=True, debug=True)

main()
