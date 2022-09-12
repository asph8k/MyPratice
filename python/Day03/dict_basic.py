'''
* 사전 (Dictionary)
- 사전은 키(key)와 값(value)의 쌍을 저장하는 대용량의 자료구조.
- 사전은 타 언어에서는 Map이라고도 부르며 연관된 값을 모아놓은 것을 연관배열이라고 부릅니다.
- 사전을 정의하는 기호는 {}이고, 괄호 안에 데이터를 key : value 형태로 나열하여 저장합니다.
'''
students = {'강아지':'폴', '고양이':'서리', '앵무이':'블루'}
print(type(students))
print(len(students))

'''
- 사전에 사용되는 key값은 중복값을 가질수 없고, 변경도 안됩니다.
- 반면에 value값은 중복을 허용하고, 데이터를 자유롭게 편집할 수도 있습니다.
- 사전 내부에 저장된 데이터를 검색할 때는 인덱스 대신 key를 사용합니다. (시퀀스 자료형이 아닙니다.)
'''
print(students['강아지'])
print(students['앵무이'])
# print(students['나무']) (X)

# in 키워드를 사용하여 key의 존재 유무를 파악할 수 있습니다.
print('강아지' in students)
print('나무' in students)