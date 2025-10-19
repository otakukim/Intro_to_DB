"""
A simple Python script to create the MySQL database 'alx_book_store'.
"""

import mysql.connector

try:
    # Connect to the MySQL server
    connection = mysql.connector.connect(
        host='localhost',
        user='root',
        password='your_password_here'  # Replace with your MySQL password
    )

    if connection.is_connected():
        cursor = connection.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
        print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as err:
    print(f"Error while connecting to MySQL: {err}")

finally:
    # Close cursor and connection safely
    if 'cursor' in locals() and cursor:
        cursor.close()
    if 'connection' in locals() and connection.is_connected():
        connection.close()
