from flask import Flask
from dotenv import load_dotenv
from pathlib import Path
from routes import routeError, routeUsers
from flask_cors import CORS, cross_origin

app = Flask(__name__)
cors = CORS(app, resources={r"/user/ver*":{"origins":"*"}})

env_path = Path('.') /'.env'
load_dotenv(dotenv_path=env_path)

routeError.error_handler(app)
routeUsers.route(app)




if __name__ == '__main__':
    app.run()