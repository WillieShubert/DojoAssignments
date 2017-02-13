from flask import Flask, render_template, redirect, flash, request
# import the Connector function
from mysqlconnection import MySQLConnector
import re
app = Flask(__name__)
mysql = MySQLConnector(app, 'email_validation')
app.secret_key = 'cookiecookiecookie'

@app.route('/')
def index():
    query = "SELECT * FROM user"
    users = mysql.query_db(query)
    return render_template('index.html')
#
@app.route('/submit', methods=['POST'])
def check():
    print "in submit"
    addressToVerify = request.form['email']  # set up the regex
    Email_REGEX = re.compile(r'^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+$')
    if Email_REGEX.match(addressToVerify):
        print ("match")
#         # Write query as a string. Notice we have multiple values
        query = "INSERT INTO user (email, created_at, updated_at) VALUES (:email, NOW(), NOW())"
#         # We'll then create a dictionary of data from the POST data received.
        data = {
                 'email': request.form['email'],
#                  'created_at': request.form['created_at'],
               }
        myID = mysql.query_db(query, data)
        print myID
        flash('The email you entered {} a valid email address'.format(request.form['email']))
        return redirect('/success')
    else:
        flash('Your email is invalid')
    return redirect('/')
#
@app.route('/success')
def create():
    query = "SELECT * FROM user"
    listofemails = mysql.query_db(query)

    for email in listofemails:
        email['created_at'] == email['created_at'].strftime("%m/%d/%Y %I:%M %p")
    return render_template('success.html', emails=listofemails)

app.run(debug=True)
