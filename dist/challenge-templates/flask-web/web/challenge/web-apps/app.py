from flask import Flask
import secrets

app = Flask(__name__)

@app.route("/")
def index():
    return secrets.token_urlsafe(50)