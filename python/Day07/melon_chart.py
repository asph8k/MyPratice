from lib2to3.pgen2 import driver
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from datetime import datetime
from bs4 import BeautifulSoup
from io import BytesIO # 이미지를 바이트로 변환
from fake_useragent import UserAgent
import xlsxwriter # 엑셀
import time
import urllib.request as req

d = datetime.today()

file_path = f'C:/Users/User/Desktop/java_web_RKP/python/crawling/멜론 차트 1~100위(엑셀)_{d.year}_{d.month}_{d.day}.xlsx'
UAgent = req.build_opener()
UAgent.addheaders = [('User-agent', UserAgent().random)]
req.install_opener(UAgent)

workbook = xlsxwriter.Workbook(file_path) # 엑셀 파일 생성
# 엑셀 워크시트 생성하기
worksheet = workbook.add_worksheet()

driver = webdriver.Chrome('C:/Users/User/Desktop/java_web_RKP/python/chromedriver_win32/chromedriver.exe')

# 웹 페이지 전체가 로딩될 때 까지 대기 후 남은 시간 무시.
driver.implicitly_wait(10)
worksheet.set_default_row(50)
worksheet.set_column('A:E', 25)

# 엑셀에 텍스트를 저장하기 위한 컬럼 셋팅하기
cell_setting = workbook.add_format({'bold':True, 'font_color':'red', 'bg_color':'yellow'})
worksheet.write('A1', '순위', cell_setting)
worksheet.write('B1', '커버사진', cell_setting)
worksheet.write('C1', '가수이름', cell_setting)
worksheet.write('D1', '앨범명', cell_setting)
worksheet.write('E1', '노래명', cell_setting)

row_cnt = 2

soup = BeautifulSoup(driver.page_source, 'html.parser')

for cnt in [50, 100]:
    song_tr_list = soup.select(f'#lst{cnt}')

    for song_tr in song_tr_list:
        # 순위 찾기
        rank = song_tr.select_one('div.wrap.t_center').text.split()
        #print('순위는:', rank)

        # 이미지 찾기
        img_tag = song_tr.select_one('div.wrap > a > amg')
        img_url = img_tag['src']
        #print('이미지:', img_url)

        # 가수 이름
        artist_name = song_tr.select_one('div.wrap div.ellipsis.rank02 > a').text.split()
        #print('가수이름:', artist_name)

        # 앨범명 찾기
        album_name = song_tr.select_one('div.wrap div.ellipsis.rank03 > a').text.split()
        #print('앨범이름:', album_name)

        # 노래명 찾기
        song_name = song_tr.select_one('div.wrap div.ellipsis.rank01 > span > a').text.split()
        #print('노래명:', song_name)

        try:
            img_data = BytesIO(req.urlopen(img_url).read())
            worksheet.insert_image(f'B{row_cnt}', img_url, {'img_data':img_data})
        except:
            pass

        worksheet.write(f'A{row_cnt}', rank)
        worksheet.write(f'C{row_cnt}', artist_name)
        worksheet.write(f'D{row_cnt}', album_name)
        worksheet.write(f'E{row_cnt}', song_name)
        row_cnt += 1
    
workbook.close()
driver.close()
