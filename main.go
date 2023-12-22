package main
 
import (
   "go.com/go-api/db"
   "go.com/go-api/router"
)
 
func main() {
   db.InitPostgresDB()
   router.InitRouter().Run()
}