from flask import Flask, render_template
app = Flask(__name__)
@app.route('/')
def index():
	return render_template('index.html', name="Willie")

@app.route('/ninjas')
def ninjas():
  return render_template('ninjas.html', name="Willie")

@app.route('/dojos/new')
def dojo():
  return render_template('dojo.html')

app.run(debug=True)
