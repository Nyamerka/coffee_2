CREATE TABLE menu (
                      id SERIAL PRIMARY KEY,
                      menu_categories_id INTEGER REFERENCES menu_categories(id) ON DELETE SET NULL,
                      name VARCHAR(255),
                      description VARCHAR(255),
                      price DECIMAL(10, 2),
                      created_at TIMESTAMP DEFAULT NOW(),
                      updated_at TIMESTAMP DEFAULT NULL
);