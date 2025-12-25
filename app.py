from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello! I am running inside a Docker container!"

if __name__ == '__main__':
    # run() method of Flask class runs the application
    # on the local development server.
    app.run(host='0.0.0.0', port=5000)