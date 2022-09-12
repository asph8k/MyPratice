ssn = input('주민등록번호를 입력하세요: ')

print('주민등록번호 앞자리: ', ssn[:6])
print('주민등록번호 뒷자리: ', ssn[7:])

year = int(ssn[:2]) # 출생년도와 나이를 계산해야하기 때문에 따로 뽑아냄
month = ssn[2:4]
day = ssn[4:6]
gender_num = ssn[7]

gender = '여자'

if gender_num == '1' or gender_num == '3':
    gender = '남자'

birth_year = 0

if gender_num == '1' or gender_num == '2':
    birth_year = 1900 + year
else:
    birth_year = 2000 + year

age = 2022 - birth_year

print(f'{birth_year}년 {month}월 {day}일 {age}세 {gender}')