from flask import Flask, render_template, request, redirect, sessions
app = Flask(__name__)

# our index route will handle rendering our form
@app.route('/')
def index():
  return render_template("index.html")
# this route will handle our form submission
# notice how we defined which HTTP methods are allowed by this route
@app.route('/result', methods=['POST','GET'])
def create_result():
   print "Got Result."
   name = request.form['name']
   dojo = request.form['location']
   language = request.form['language']
   comment = request.form['comment']
   return render_template("result.html", name=name, dojo=dojo, language=language, comment=comment)

app.run(debug=True) # run our server
