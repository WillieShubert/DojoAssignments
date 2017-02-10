from flask import Flask, render_template,request, session
import random
app = Flask(__name__)
app.secret_key = "cookiecookiecookie"

@app.route('/')
def index():
    answer = random.randrange(0, 101)
    # session['guess'] = request.form['guess']
    print answer
    return render_template('index.html')

app.run(debug=True)
