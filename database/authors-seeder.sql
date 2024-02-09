-- Active: 1707434558646@@127.0.0.1@3306@artshop
INSERT INTO
    authors (firstname, lastname, email, password, wallet)
VALUES
    (
        'Victor',
        'Dumas',
        'victordumas@gmail.com',
        MD5('miserables'),
        500
    );