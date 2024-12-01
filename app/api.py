from flask import Flask

# flaskインスタンス作成
def create_app():
    flask_api = Flask(__name__)

    @flask_api.route('/')
    def hello():
        return "Hello from Flask!!!"

    return flask_api