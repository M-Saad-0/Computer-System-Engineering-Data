file = open("input_file.txt")
outputFile = open('outputFile.txt', 'a')
words = file.read().split(" ")
for word in words:
    outputFile.write(word+"\t\t\t1\n")



