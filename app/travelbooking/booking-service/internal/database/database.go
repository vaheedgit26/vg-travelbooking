package database

import (
        "fmt"
        "booking-service/internal/config"
        "gorm.io/driver/postgres"
        "gorm.io/gorm"
        "gorm.io/gorm/logger"
        "os"
)

var DB *gorm.DB

func Connect(cfg *config.Config) error {
        sslMode := os.Getenv("DB_SSLMODE")
	
        if sslMode == "" {
            sslMode = "require"
        }

        dsn := fmt.Sprintf(
                "host=%s port=%s user=%s password=%s dbname=%s sslmode=%s TimeZone=UTC",
                cfg.DBHost, cfg.DBPort, cfg.DBUser, cfg.DBPassword, cfg.DBName, sslMode,
        )
        logMode := logger.Silent
        if cfg.NodeEnv == "development" {
                logMode = logger.Info
        }
        db, err := gorm.Open(postgres.Open(dsn), &gorm.Config{Logger: logger.Default.LogMode(logMode)})
        if err != nil {
                return fmt.Errorf("failed to connect to database: %w", err)
        }
        sqlDB, _ := db.DB()
        sqlDB.SetMaxOpenConns(10)
        sqlDB.SetMaxIdleConns(2)
        DB = db
        return nil
}
