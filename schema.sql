-- Create table person
CREATE TABLE IF NOT EXISTS person ( 
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT,
    area TEXT
);

-- Create table payment
CREATE TABLE IF NOT EXISTS payment (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    date DATE NOT NULL,
    value REAL NOT NULL,
    discount REAL NOT NULL,
    person_id INTEGER NOT NULL,
    FOREIGN KEY (person_id) REFERENCES person (id)
);

-- Create table items
CREATE TABLE IF NOT EXISTS items (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    coffee_amount INTEGER,
    coffee_value REAL,
    sugar_amount INTEGER,
    sugar_value REAL,
    crackers_amount INTEGER,
    crackers_value REAL
);

-- Create table purchase
CREATE TABLE IF NOT EXISTS purchase (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    date DATE NOT NULL,
    value REAL NOT NULL,
    items_id INTEGER NOT NULL,
    person_id INTEGER NOT NULL,
    FOREIGN KEY (items_id) REFERENCES items (id),
    FOREIGN KEY (person_id) REFERENCES person (id)
);

INSERT INTO person (name, email) VALUES
    ("Alan Vitor Gomes", "alanvg@weg.net"),
    ("Alexandre Endler", "aendler@weg.net"),
    ("Anderson Montiel Rodrigues", "andersonlj@weg.net"),
    ("Anderson Luis Hanemann Junior", "montiel@weg.net"),
    ("Bruno Eduardo Esteves de Lima", "brunoeduardo@weg.net"),
    ("Cristiano Deoracki", "deoracki@weg.net"),
    ("Daniel Mayer Faria", "faria@weg.net"),
    ("Dener Matei", "denerm@weg.net"),
    ("Eduardo Leopoldo da Silva", "esilva@weg.net"),
    ("Elton Ubiratan Dutra", "eltond@weg.net"),
    ("Felipe Silva de Paula", "felipepaula@weg.net"),
    ("Gabriel Filipe Scharf Krieger", "gkrieger@weg.net"),
    ("Gustavo Tadin Bruno", "gustavotb@weg.net"),
    ("Henrique Wolf", "henriquewolf@weg.local");

INSERT INTO payment (date, value, discount, person_id) VALUES
    ("2022-09-27", 5.0, 5.0, 1),
    ("2022-06-23", 10.0, 0.0, 1),
    ("2022-08-27", 5.0, 5.0, 1),
    ("2022-09-27", 10.0, 0.0, 2);