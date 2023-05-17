package main

import (
	"fmt"
	"flag"
	"log"
	"net/http"
)

// func getEnv(key, fallback string) string {
// 	if value, ok := os.LookupEnv(key); ok {
// 		return value
// 	}
// 	return fallback
// }

func cors(fs http.Handler) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		w.Header().Add("Access-Control-Allow-Origin", "*")
		fs.ServeHTTP(w, r)
	}
}

func main() {
	// port := getEnv("PORT", "5001")
	// public_dir := getEnv("PUBLIC_DIR", "./")

	var port string
	var public_dir string

	flag.StringVar(&port, "p", "5001", "Provide a port number")
	flag.StringVar(&public_dir, "d", "./", "Directory")
	flag.Parse()

	fileServer := http.FileServer(http.Dir(public_dir))

	http.Handle("/", cors(fileServer))
	fmt.Printf("Starting server at port %s\n", port)
	if err := http.ListenAndServe(":" + port, nil); err != nil {
		log.Fatal(err)
	}
}
