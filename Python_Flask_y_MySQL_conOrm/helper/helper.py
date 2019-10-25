import os
from flask import json
from dotenv import load_dotenv
from pathlib import Path
from functools import wraps
from flask import request, jsonify

def handler_response(app, code_error, output, payload=None):
    if payload is None:
        payload = {}
    response_object = {
        'response':{
            'systemMessage': output,
            'apiResponse': payload,
            'statusCode': code_error
        }
    }
    response = app.response_class(
        response = json.dumps(response_object),
        status = 200,
        mimetype = 'application/json'
    )

    return response