from flask import Flask, render_template, session
app = Flask(__name__)
app.secret_key = "cookiecookiecookie"

@app.route('/')
def index():
    if 'count' not in session:
        session['count'] = 1
    if 'count' in session:
        session['count'] += 1
    # print session['count']
	return render_template('index.html', count=1)

app.run(debug=True)
