package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()

	// Route for 'ping' to check if the service is up
	router.GET("/ping", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{"message": "pong"})

		// Route for user registration
		router.POST("/register", func(c *gin.Context) {
			// For now we are simulating user registration
			// Later we will extract the data from the c.Request.Body and save it to a database we create
			c.JSON(http.StatusOK, gin.H{"message": "registration successful"})
		})

	})
	// Start the server on port 8080
	router.Run(":8080")
}
