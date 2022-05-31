// main package is responsible of getting the config envs
// and creating all necessary objects (db type of conn...).
package main

import (
	"github.com/gin-gonic/gin"

	"github.com/estiam/coaching/cache"
	"github.com/estiam/coaching/db/orm"
	"github.com/estiam/coaching/service"
)

func main() {
	dbConnection := orm.NewPostgre("mydb.db")
	router := gin.Default()
	cacheDB := cache.New("", "")

	err := service.New(router, dbConnection, cacheDB)
	if err != nil {
		panic(err)
	}

	router.Run()
}
