from flask import Flask, render_template, redirect, url_for
import pymysql
import os

app = Flask(__name__, template_folder='templates')

def get_connection():
    return pymysql.connect(
        host=os.getenv('DB_HOST', 'localhost'),
        user=os.getenv('DB_USER', 'root'),
        password=os.getenv('DB_PASSWORD', ''),
        database=os.getenv('DB_NAME', 'db')
    )

@app.route('/')
def home():
    return redirect(url_for('employees'))

@app.route('/employees')
def employees():
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute("""
        SELECT id, name, age, gender, position, department, salary, hire_date, email, phone, address
        FROM employees
    """)
    employee_list = cursor.fetchall()
    cursor.close()
    conn.close()
    return render_template('index.html', employees=employee_list)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
