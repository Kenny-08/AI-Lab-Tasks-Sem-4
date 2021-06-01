inc=0
ct=0
out= open("tagging1_out.txt", "r")
for line in out:
    word = line.split()
    if len(word)<3:
        continue
    if word[1] == word[2]:
        ct+=1
    else:
        inc+=1
out.close()
print((ct/(ct+inc))*100)

#accuracy1: 93.04514848977352
#accuracy2: 93.42719040884818
#accuracy3: 93.20134242353885
