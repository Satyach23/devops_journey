package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	fmt.Println("Hi Satya Chintala, I am a calculator app ....")

	reader := bufio.NewReader(os.Stdin)
	text, _ := reader.ReadString('\n')
	text = strings.TrimSpace(text)

	parts := strings.Split(text, " ")
	if len(parts) != 3 {
		fmt.Println("Invalid input.")
		return
	}

	left, err1 := strconv.Atoi(parts[0])
	right, err2 := strconv.Atoi(parts[2])
	if err1 != nil || err2 != nil {
		fmt.Println("Invalid numbers.")
		return
	}

	var result int
	switch parts[1] {
	case "+":
		result = left + right
	case "-":
		result = left - right
	case "*":
		result = left * right
	case "/":
		if right == 0 {
			fmt.Println("Error: Division by zero.")
			return
		}
		result = left / right
	default:
		fmt.Println("Invalid operator.")
		return
	}

	fmt.Println("Result:", result)
}

