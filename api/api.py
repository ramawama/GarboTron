from flask import Flask, request, jsonify
from flask_cors import CORS
import json

distance = {"distance" : 0}
percent = {"percent" : 0}
app = Flask(__name__)

# GET method for Garbotron JSON
CORS(app)
@app.route("/garbotron", methods=["GET"])
def get_garbotron():
    with open('garbotron.json', 'r') as file:
        garbotron_data = json.load(file)
    return jsonify(garbotron_data)

@app.route("/garbotron/distance", methods=["GET", "PUT"])
def get_distance():
    if request.method == "PUT":
        new_data = request.get_json()
        if "distance" in new_data:
            distance['distance'] = new_data['distance']
            return jsonify({"message": "Updated distance"}), 200
        return jsonify({"error": "Invalid data, use \"distance\" as key"}), 400
    if request.method == "GET":
        return jsonify(distance)
    return jsonify({"error": "Invalid request"}), 400

@app.route("/garbotron/percent", methods=["GET", "PUT"])
def get_percent():
    if request.method == "PUT":
        new_data = request.get_json()
        if "percent" in new_data:
            percent['percent'] = new_data['percent']
            return jsonify({"message": "Updated percent"}), 200
        return jsonify({"error": "Invalid data, use \"percent\" as key"}), 400
    if request.method == "GET":
        return jsonify(percent)
    return jsonify({"error": "Invalid request"}), 400
    

if __name__ == "__main__":
    app.run(debug=True)

