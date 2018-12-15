from flask import Flask, jsonify, request, make_response, abort
import base64
import pprint
import json

app = Flask(__name__)

def demo_attack(request):
	body_text = base64.b64decode(request.json['body'])
	body_text = body_text.replace("Hacker","Xakep")
	return base64.b64encode(body_text)

@app.route('/api/v1.0/request', methods=['POST'])
def request_mitm():

	if not request.json:
		abort(400)

	return json.dumps({'success':True, 'task':True, 'data':demo_attack(request)}), 200, {'ContentType':'application/json'}

@app.route('/api/v1.0/response', methods=['POST'])
def response_mitm():
	if not request.json or not 'response' in request.json:
		abort(400)
	pprint.pprint(request.json)

	return json.dumps({'success':False}), 200, {'ContentType':'application/json'}


if __name__ == '__main__':
	app.run(debug=True,host="0.0.0.0",port=2452)
