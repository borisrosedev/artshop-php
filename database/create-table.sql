CREATE TABLE
    IF NOT EXISTS products (
        id INTEGER PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(50) NOT NULL,
        author VARCHAR(50) NOT NULL,
        description TEXT NOT NULL,
        url VARCHAR(200) NOT NULL,
        price INTEGER
    );

CREATE TABLE
    IF NOT EXISTS authors (
        id INTEGER PRIMARY KEY  AUTO_INCREMENT,
        firstname VARCHAR(50) NOT NULL,
        lastname VARCHAR(50) NOT NULL,
        email VARCHAR(50) NOT NULL,
        password VARCHAR(32) NOT NULL,
        wallet DECIMAL(10, 2)
    );