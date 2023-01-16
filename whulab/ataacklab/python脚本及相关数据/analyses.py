# 在汇编文件中找到字符串出处并且打印出对应行 
# 输入为 farm.txt 输出为 farm_output.txt

# 即 $ grep pattern farm.txt >> farm_output.txt

import sys

# 在一行中若发现目标字符串 则打印这一行
def find_word(line,target_word):
    words = line.split()
    for word in words:
            if(word == target_word):
                #print(line,end='')
                with open('farm_output.txt','a') as f1:
                    f1.write(line) 
                return
    
filename = "farm.txt"
target_word = sys.argv[1]
print(target_word)
with open('farm_output.txt','w') as f1:
    f1.write('')
with open(filename,'r') as f:
    lines = f.readlines()
    for line in lines:
       find_word(line,target_word)

