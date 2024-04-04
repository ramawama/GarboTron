from flask import Flask, request, jsonify
from flask_cors import CORS
import json

app = Flask(__name__)

# GET method for Garbotron JSON
CORS(app)
@app.route("/garbotron", methods=["GET"])
def get_garbotron():
    with open('garbotron.json', 'r') as file:
        garbotron_data = json.load(file)
    return jsonify(garbotron_data)

if __name__ == "__main__":
    app.run(debug=True)
