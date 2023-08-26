from faker import Faker
import random
import sqlite3

fake = Faker()
conn = sqlite3.connect('database.db')
cursor = conn.cursor()

# Створення таблиць

cursor.execute('CREATE TABLE students (id INTEGER PRIMARY KEY, name TEXT, group_id INTEGER)')
cursor.execute('CREATE TABLE groups (id INTEGER PRIMARY KEY, name TEXT)')
cursor.execute('CREATE TABLE teachers (id INTEGER PRIMARY KEY, name TEXT)')
cursor.execute('CREATE TABLE subjects (id INTEGER PRIMARY KEY, name TEXT, teacher_id INTEGER)')
cursor.execute('CREATE TABLE marks (id INTEGER PRIMARY KEY, student_id INTEGER, subject_id INTEGER, grade INTEGER, date TEXT)')

# Генерація даних

for _ in range(3):
    cursor.execute('INSERT INTO groups (name) VALUES (?)', (fake.word(),))

for _ in range(5):
    cursor.execute('INSERT INTO teachers (name) VALUES (?)', (fake.name(),))

for _ in range(5):
    cursor.execute('INSERT INTO subjects (name, teacher_id) VALUES (?, ?)', (fake.word(), random.randint(1, 5)))

for _ in range(30):
    cursor.execute('INSERT INTO students (name, group_id) VALUES (?, ?)', (fake.name(), random.randint(1, 3)))

for _ in range(20):
    cursor.execute('INSERT INTO marks (student_id, subject_id, grade, date) VALUES (?, ?, ?, ?)',
                   (random.randint(1, 30), random.randint(1, 5), random.randint(1, 100), fake.date_this_year()))

conn.commit()
conn.close()
