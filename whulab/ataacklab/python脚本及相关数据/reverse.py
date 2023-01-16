#字节大端变小端，输入文件为字节的大端表示法，每行为一个字节
#输入为 "1.txt" 输出为 'r_1.txt'
def b2s():
    #filename = input("请输入文件名:")
    filename = "1.txt"
    with open(filename,'r') as f:
        lines = f.readlines()
        with open('r_'+filename,'w') as f1:
            for line in lines:
                f1.write(reverse(line)+'\n')

def reverse(line):
    list = line.split()   
    str=''
    for s in reversed(list):
        str += s 
        str += ' '
    return str

b2s()