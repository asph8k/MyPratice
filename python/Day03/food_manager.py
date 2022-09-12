'''
* 사전을 사용한 음식점 메뉴판 관리 프로그램.
- key: 음식명, value: 음식의 가격
'''
foods = {}

while True:
    print('\n\n======= 음식점 메뉴 관리 프로그램 =======')
    print('# 1. 신규 메뉴 등록하기')
    print('# 2. 메뉴판 전체보기')
    print('# 3. 프로그램 종료')
    print('==============================================')
    menu = int(input('# 메뉴 입력: '))

    if menu == 1:
        '''
        1. 메뉴명을 입력받아 해당 메뉴가 사전에 이미 존재한다면
         이미 등록된 메뉴라고 얘기해 주세요.
        2. 사전에 존재하지 않는 메뉴라면 가격을 입력받아
        key:value 쌍으로 맵핑하여 사전에 저장하세요.
        '''
        foodmenu = input('메뉴명: ')

        if foodmenu in foods:
            print('이미 등록된 메뉴입니다.')
        else:
            price = input('가격: ')
            foods[foodmenu] = price
            print('새로운 메뉴를 등록하였습니다!')

    elif menu == 2:
        '''
        - 만약 2번을 선택했는데, 메뉴가 하나도 등록되어 있지 않다면
        먼저 등록하라고 메인 메뉴로 돌려보내 주세요.

        - 사전에 등록된 메뉴명과 가격을 전부 출력해 주세요.
        ex) 짜장면 : 4000원
            탕수육 : 18000원
            짬뽕 : 7000원 ...
        -----------------------------------------

        메뉴판 전체 출력 후 메뉴를 새롭게 입력받아 주세요.
        ex (1. 수정 | 2. 삭제 | 3. 나가기)
        새로운 메뉴를 입력받아서 수정과 삭제를 진행 해 주세요.
        # 수정 -> 가격을 변경할 메뉴의 이름을 먼저 입력받고
        해당 이름이 사전에 존재한다면 수정할 가격을 새롭게 입력받고
        수정을 진행 해 주세요. 이름이 없다면 없다고 출력.
        # 삭제 -> 삭제할 메뉴명을 입력받아서 삭제를 진행.
         이름이 없으면 없다고 출력.
        # 나가기 -> 메인메뉴로 나가시면 됩니다.
        '''
        if len(foods) != 0:
            print('\n================= 메뉴판 =================')
            for m in foods:
                print(f'{m} : {foods[m]}원')
            print('===========================================\n')

            print('1. 수정 | 2. 삭제 | 3. 나가기')
            select = input('> ')
            if select == '1':
                name = input('변경할 메뉴명: ')
                if name in foods:
                    updatePrice = input('변경할 가격: ')
                    foods[name] = updatePrice
                    print(f'{name}의 메뉴를 수정완료 했습니다.')
                else:
                    print(f'{name}의 메뉴는 없습니다.')

            elif select == '2':
                delName = input('삭제할 메뉴명: ')
                if delName in foods:
                    del(foods[delName])
                    print(f'{delName}의 메뉴를 삭제했습니다.')
                else:
                    print(f'{delName}의 메뉴는 없습니다.')
                    
            elif select == '3':
                print('메인 메뉴로 돌아갑니다.')
                # continue

        else:
            print('메뉴를 등록해주세요.')
            # continue 안써도 결국 while True가 시작됨.
 
    elif menu == 3:
        '''
        ("# 프로그램을 종료하시겠습니까? [Y / N]")
        프로그램 종료 여부를 한번 더 물어봐 주세요.
        만약 y 이외의 값이 들어온다면 종료 의지가 없다고 판단하고
        종료를 취소하도록 하겠습니다.
        (소문자 y도 인정입니다.)
        '''
        print('# 프로그램을 종료하시겠습니까? [Y / N]')
        exit = input('> ').lower()

        if exit == 'y':
            print('프로그램 종료')
            break
        else:
            print('종료 취소')

    else:
        print('메뉴를 잘못 입력하셨습니다.')
