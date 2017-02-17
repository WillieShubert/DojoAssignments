from flask import Flask, request, render_template, flash, redirect, session
from mysqlconnection import MySQLConnector
from flask.ext.bcrypt import Bcrypt
app = Flask(__name__)
bcrypt = Bcrypt(app)
app.secret_key = 'cookiecookiecookie'
mysql = MySQLConnector(app, 'message_board')

@app.route('/')
def index():
 return render_template('index.html')

# generate_password_hash
@app.route('/create_user', methods=['POST'])
def create_user():
 first_name = request.form['first_name']
 last_name = request.form['last_name']
 email = request.form['email']
 password = request.form['password']
 pw_hash = bcrypt.generate_password_hash(password)
 insert_query = "INSERT INTO users (email, first_name, last_name, pw_hash, created_at) VALUES (:email, :first_name, :last_name, :pw_hash, NOW())"
 query_data = { 'email': email, 'first_name': first_name, 'last_name': last_name, 'pw_hash': pw_hash }
 users_id = mysql.query_db(insert_query, query_data)
 session['id'] = users_id
 return redirect("/board")

# login page
@app.route('/login')
def login():
    return render_template('login.html')

@app.route('/pw_check', methods=['POST'])
def logic():
    email = request.form['email']
    password = request.form['password']
    user_query = "SELECT * FROM users WHERE email = :email LIMIT 1"
    query_data = { 'email': email }
    user = mysql.query_db(user_query, query_data)  # user will be returned in a list
    if bcrypt.check_password_hash(user[0]['pw_hash'], password):
        session['id'] = user[0]['id']
        return redirect('/board')
    else:
        # flash error message and redirect to login page
        flash("Please try again")
        return redirect ('/login')

@app.route('/board')
def discuss():
    if 'email' not in session:
        flash("Sorry, you aren't logged in")
        return redirect('/')
    messages_query = "SELECT messages.message, messages.id, messages.created_at, users.first_name, users.last_name FROM messages JOIN users ON messages.users_id = users.id ORDER BY created_at DESC"
    allmessages = mysql.query_db(messages_query)
    comments_query = "SELECT comments.comment, comments.created_at, users.first_name, users.last_name, comments.id from comments JOIN users ON comments.users_id = users.id ORDER BY created_at DESC"
    allcomments = mysql.query_db(comments_query)
    print "got all the comments", allcomments
    return render_template('dashboard.html', messages = allmessages, comments = allcomments)

@app.route('/share', methods=['POST'])
def share():
    message = request.form['message']
    print 'got input', message
    insert_query = "INSERT INTO messages (users_id, message, created_at, updated_at) VALUES (:user_id, :message, NOW(), NOW())"
    data = {
            "user_id": session['id'],
            "message": message
             }
    messageid = mysql.query_db(insert_query, data)
    print "inserted a message, got messageid back", messageid
    if messageid:
        return redirect('/board')
    else:
        flash("Sorry, we were not able to post your message", "posts")
        return redirect('/board')

@app.route('/react', methods=['POST'])
def react():
    print "made it comments", request.form['messageid']
    insert_query = "INSERT INTO comments (users_id, comment, created_at, updated_at, messages_id) VALUES (:user_id, :comment, NOW(), NOW(), :message_id)"
    data = {
        "message_id": request.form['messageid'],
        "user_id": session['id'],
        "comment": request.form['comment']
        }
    commentid = mysql.query_db(insert_query, data)
    print "got comment inserted", commentid
    return redirect('/board')

@app.route('/logout')
def logout():
    session.clear()
    return redirect('/')
app.run(debug = True)

