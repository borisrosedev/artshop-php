CREATE TABLE
    IF NOT EXISTS products (
        id INTEGER PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(50) NOT NULL,
        author VARCHAR(50) NOT NULL,
        description TEXT NOT NULL,
        url VARCHAR(200) NOT NULL,
        price INTEGER
    );