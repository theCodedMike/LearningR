#R语言提供的循环类型有3种，循环控制语句有break和next
## repeat循环
cnt = 1
repeat {
    print(cnt)
    cnt = cnt + 1
    if(cnt > 5)
        break
}
## while循环
cnt = 1
while(cnt <= 5) {
    print(cnt)
    cnt = cnt + 1
}
## for循环
for(i in 1:5) {
    print(i) #1 2 3 4 5
}
for(i in LETTERS[1:26]) {
    if(i %in% c("A", "E", "I", "O", "U"))
        next #类似continue
    print(i) #B C D F G H J K L M N P Q R S T V W X Y Z
}
for(i in LETTERS[1:26]) {
    if(switch(i, A=TRUE, E=TRUE, I=TRUE, O=TRUE, U=TRUE, FALSE))
        next #类似continue
    print(i) #B C D F G H J K L M N P Q R S T V W X Y Z
}