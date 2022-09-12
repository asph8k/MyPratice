'''
* 인수의 기본값
- 파이썬에서는 인수의 기본값을 설정하여, 자주 바뀌지 않는 매개값은 기본값으로 처리할수 있도록 해줍니다.
'''
def calc_stepsum(begin, end, step=1): # step = 1라고 하면 기본값으로 1이 들어가게 됨. 호출때 값을 선언하지 않아도 자동으로 1이 들어감.
    sum = 0
    for n in range(begin, end + 1, step):
        sum += n
    return sum

print(calc_stepsum(1, 10))
# print(calc_stepsum(1, 10, 2)) # 기본값을 설정했지만 2를 주게되면 기본값 1은 없어지고 2로 바뀌게 된다.

# 기본값이 지정된 인수를 오른쪽으로 몰아 주어야 합니다.
def calc_sum(end, begin = 0, step = 1):
    sum = 0
    for n in range(begin, end + 1, step):
        sum += n
    return sum
print(calc_sum(100))