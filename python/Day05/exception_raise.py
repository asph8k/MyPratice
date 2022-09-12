'''
* 예외 일부러 발생시키기
- 프로그램을 진행하다 보면 일부러 예외를 발생시켜서
코드의 흐름을 전환해야 하는 경우가 발생합니다.
- 파이썬은 raise라는 명령을 사용해서 오류를 강제로 발생시킬 수 있습니다.
'''
def calc_sum(end):
    if end <= 0:
        raise ValueError # raise란 키워드를 통해 일부러 예외 객체를 생성해서 오류를 발생시킴. 

    total = 0
    for n in range(end + 1):
        total += n
    return total

try:
    result = calc_sum(100)
    print(result)

    result2 = calc_sum(-120) # begin 0보다 end값은 작으면 안되기 때문에 오류 발생
    print(result2)
except:
    print('매개값을 양수로 주세요')