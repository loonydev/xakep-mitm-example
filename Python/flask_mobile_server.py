from flask import Flask, jsonify
from flask import request
from flask import make_response
from flask import abort
import base64
import threading
import pprint
import json

app = Flask(__name__)

@app.route('/api/v1.0/magic', methods=['POST'])
def receive_mitm_data():

	if not request.json or not 'secret' in request.json:
		abort(400)
	print request.json
	if "Xakep" in request.json['secret']:
		   return json.dumps({'success':True}), 200, {'ContentType':'application/json'}

	return json.dumps({'success':False}), 200, {'ContentType':'application/json'}


if __name__ == '__main__':
	app.run(debug=True,host="0.0.0.0",port=2451)
