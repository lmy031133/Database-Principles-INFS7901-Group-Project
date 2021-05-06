# ## Example inspired by Tutorial at
# https://www.youtube.com/watch?v=MwZwr5Tvyxo&list=PL-osiE80TeTs4UjLw5MM6OjgkjFeUxCYH ## However the actual example
# uses sqlalchemy which uses Object Relational Mapper, which are not covered in this course. I have instead used
# natural sQL queries for this demo.
from flask import Flask, render_template, url_for, flash, redirect, request
import pymysql
import mysql.connector

app = Flask(__name__)
# app.config['SECRET_KEY'] = '5791628bb0b13ce0c676dfde280ba245'

config = {
    'user': 'root',
    'password': 'rootroot',
    # 'raise_on_warnings': True,
    "database": "mysql"
}

conn = mysql.connector.connect(**config)
cursor = conn.cursor(buffered=True)


# Turn the results from the database into a dictionary
def dict_factory(cursor, row):
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d


# routing code (displays each page)
@app.route("/")
@app.route("/home")
def home():
    return render_template('home.html')


@app.route("/booking")
def booking():
    return render_template('booking.html')


@app.route("/find_booking", methods=["GET", "POST"])
def find_booking():
    if request.method == "POST":
        booknum = request.form['booknum']
        cursor.execute("SELECT Date, Time, Duration, DeliveryMethod FROM booking WHERE BookingNumber=%s OR "
                       "RegistrationNumber=%s",
                       (booknum, booknum))
        conn.commit()
        data = cursor.fetchall()
        # if len(data) == 0:
        #     # cursor.execute("SELECT Date, Time FROM `booking`")
        #     # conn.commit()
        #     # data = cursor.fetchall()
        return render_template("find_booking_by_ref.html", data=data)
    return render_template('find_booking_by_ref.html')


@app.route("/about_us")
def about_us():
    return render_template('About_us.html')


@app.route("/packages")
def packages():
    return render_template('packages.html')


@app.route("/forum", methods=['GET', 'POST'])
def forum():
    return render_template("forum.html")


@app.route("/educator", methods=['GET', 'POST'])
def educator():
    return render_template("educator.html")


@app.route("/blog")
def blog():
    return render_template('blog.html', posts=posts)


@app.route("/student")
def student():
    return render_template("student.html")


@app.route("/avaliable_session", methods=['GET'])
def session():
    return render_template("avaliable_session.html")


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=80)
