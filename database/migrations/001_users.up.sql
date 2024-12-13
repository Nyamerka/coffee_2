CREATE TABLE users (
                       id SERIAL PRIMARY KEY,
                       username VARCHAR(255) NOT NULL,
                       email VARCHAR(255) NOT NULL,
                       password VARCHAR(255) NOT NULL,
                       gender VARCHAR(10) CHECK (gender IN ('male', 'female', 'other')) DEFAULT 'other',
                       birthday DATE DEFAULT NULL,
                       points INT NOT NULL DEFAULT 0,
                       created_at TIMESTAMP NOT NULL DEFAULT NOW(),
                       updated_at TIMESTAMP DEFAULT NULL
);
