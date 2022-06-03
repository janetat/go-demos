package main

import (
	"fmt"

	"github.com/janetat/go-demos/src/mypackage" // 导入同一项目下的mypackage包
)

func main() {
	mypackage.New()
	fmt.Println("main")
}
