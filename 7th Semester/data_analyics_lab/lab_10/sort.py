sortedFile = open("sorted_file.txt", "a")
for line in sorted(open("outputFile.txt").read().split("\n")):
    sortedFile.write(line+"\n")