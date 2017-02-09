from flask import Flask, render_template
app = Flask(__name__)
@app.route('/')
def index():
	return render_template('index.html', phrase="hello", times=5)

@app.route('/success')
def success():
  return render_template('success.html', name="Willie")

app.run(debug=True)
