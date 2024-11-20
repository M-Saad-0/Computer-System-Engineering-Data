package main

import (
    "fmt"
    "io/ioutil"
    "strings"
)

func main() {
    filename := "allCodes.v"

    // Read the entire file contents into a string variable
    content, err := ioutil.ReadFile(filename)
    if err != nil {
        fmt.Println("Error reading file:", err)
        return
    }

    // Split the content into lines using a more robust approach
    lines := strings.Split(string(content), "\n")

    // Create a new string to hold the modified content
    modifiedContent := ""

    // Iterate through each line
    for _, line := range lines {
        // Check if the line contains "endmodule" (ignoring case)
        if strings.Contains(strings.ToLower(line), "endmodule") {
            // Insert new line and delimiter
            modifiedContent += "endmodule" + "\n//------++++-------\n" + line[9:]
        } else {
            // Append the line as is
            modifiedContent += line + "\n"
        }
    }

    // Write the modified content to a new file
    err = ioutil.WriteFile("modified_allCodes.v", []byte(modifiedContent), 0644)
    if err != nil {
        fmt.Println("Error writing modified file:", err)
        return
    }

    fmt.Println("File modified successfully!")
}
