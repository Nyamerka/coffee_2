package databases

import (
	"fmt"
	"github.com/DoWithLogic/coffee-service/cmd/config"
	"github.com/jmoiron/sqlx"
	_ "github.com/lib/pq" // Импортируем драйвер PostgreSQL
)

func NewDB(cfg config.DatabaseConfig) (*sqlx.DB, error) {
	// Строка подключения для PostgreSQL
	dsn := fmt.Sprintf("postgres://%s:%s@%s:%s/%s?sslmode=disable", cfg.UserName, cfg.Password, cfg.Host, cfg.Port, cfg.DBName)

	// Открываем подключение с использованием драйвера "pq"
	db, err := sqlx.Open("postgres", dsn) // Используем "postgres", а не "pq"
	if err != nil {
		panic(err)
	}

	return db, nil
}
