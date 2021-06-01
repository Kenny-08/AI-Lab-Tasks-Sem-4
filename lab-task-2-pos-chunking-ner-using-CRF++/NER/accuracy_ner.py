inc=0
ct=0
out= open("ner3_out.txt", "r")
for line in out:
    word = line.split()
    if len(word)<5:
        continue
    if word[3] == word[4]:
        ct+=1
    else:
        inc+=1
out.close()
print((ct/(ct+inc))*100)

#accuracy1: 96.64585676063437
#accuracy2: 96.69238822753887
#accuracy3: 94.77684283997053