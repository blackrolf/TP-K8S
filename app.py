from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.route('/motd')
def motd():
    message = os.getenv('MESSAGE', 'Hello, World!')
    return jsonify(message=message)

if __name__ == '__main__':
    app_port = int(os.getenv('APP_PORT', 5000))
    app.run(host='0.0.0.0', port=app_port)
