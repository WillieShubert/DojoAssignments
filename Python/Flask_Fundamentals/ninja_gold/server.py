in flask import Flask, request, render_templates, redirect, session, random
app = flask(__name__)
app.secret_key = 'cookiecookiecookie'

@app route ('/')
def index():
    gold = 0
    return render_template("index.html")

@app.route('/process_money', methods=['POST'])
    def prospect():
        if 'farm' in input:
            pan = random.random(-50,50)
            print pan
        if 'cave' in input:
            lamp = random.random(-50,50)
            print "Earned {} golds from the cave".format(lamp)
        if 'house' in input:
            couch = random.random(2,5)
            print couch
        return redirect('/')

app.run(debug=True)
