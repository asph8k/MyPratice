a = 3
b = a
print(a, b)

a= 5
print(a, b)

list1 = [1, 2, 3]
list2 = list1
print('list1:', list1)
print('list2:', list2)
# 변수에는 객체를 저장하기에는 너무 크기 때문에 객체 자체를 저장하지 않고
# 객체가 들어있는 힙의 주소값만 변수에 저장.
list1[0] = 6 
list2[1] = 9
print('list1:', list1)
print('list2:', list2)

print('list1의 주소값:', id(list1))
print('list2의 주소값:', id(list2))

print('-' * 50)

list1 = [1, 2, 3]
list2 = []
list2 = list1.copy() # 리스트 내부 요소들을 복사하여 전달.

list1[0] = 6 
list2[1] = 9
print('list1:', list1)
print('list2:', list2)

print('list1의 주소값:', id(list1))
print('list2의 주소값:', id(list2))