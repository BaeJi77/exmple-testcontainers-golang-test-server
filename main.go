package main

import (
	"fmt"

	"github.com/gin-gonic/gin"
)

func main() {
	w := gin.Default()

	w.GET("/", func(context *gin.Context) {
		fmt.Printf("request=%v", context.Request)

		context.Status(200)
	})

	w.Run(":10000")
}
