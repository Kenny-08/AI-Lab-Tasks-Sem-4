inc=0
ct=0
out= open("chunking1_out.txt", "r")
for line in out:
    word = line.split()
    if len(word)<4:
        continue
    if word[2] == word[3]:
        ct+=1
    else:
        inc+=1
out.close()
print((ct/(ct+inc))*100)

#accuracy1: 96.06349072334677
#accuracy2: 96.12892331722144
#accuracy3: 95.55691580302678