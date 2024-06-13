from flask import Flask, jsonify
import psycopg2
import os

app = Flask(_name_)

def check_db_connection():
    try:
        conn = psycopg2.connect(os.environ['DATABASE_URL'])
        conn.close()
        return "Well done"
    except:
        return "Maintenance"

@app.route('/live', methods=['GET'])
def live():
    status = check_db_connection()
    return jsonify({"message": status})

if _name_ == '_main_':
    port = int(os.environ.get('PORT', 5000))
    app.run(host='0.0.0.0', port=port)
