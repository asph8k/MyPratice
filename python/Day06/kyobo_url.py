from lib2to3.pgen2 import driver
from selenium import webdriver
from selenium.webdriver.common.by import By
from bs4 import BeautifulSoup
from datetime import datetime
import codecs
import time

d = datetime.today()
file_path = f'C:/Users/User/Desktop/java_web_RKP/python/crawling/교보문고 베스트셀러 1~50위({d.year}년{d.month}월).html'

with codecs.open(file_path, mode='w', encoding='utf-8') as f:
    driver = webdriver.Chrome('C:/Users/User/Desktop/java_web_RKP/python/chromedriver_win32/chromedriver.exe')
    driver.get('http://www.kyobobook.co.kr/bestSellerNew/bestseller.laf?orderClick=d79')
    time.sleep(1)

    rank = 1
    src = driver.page_source
    soup = BeautifulSoup(src, 'html.parser')

    title_list = soup.find_all('div', class_='title')
    f.write('<!DOCTYPE HTML> \r\n')  
    f.write('<html> \r\n')  
    f.write('<head> \r\n')  
    f.write('<meta charset="UTF-8"> \r\n')  
    f.write('<title>교보 베스트셀러 1~50위 </title> \r\n')  
    f.write('</head> \r\n')  
    f.write('<body> \r\n')
    
    for idx in range(len(title_list)):
        if idx > 31:
            f.write('<p> \r\n')
            f.write(f'<b>순위: {rank}위</b> <br> \r\n')
            a_url = str(title_list[idx].find('a'))
            # href = a_url.get('href') 태그 요소에서 속성 얻어오기
            # print(href)
            f.write(a_url + '\n <hr> \n')
            rank += 1
            f.write('</p> \r\n')

    f.write('</body> \r\n')
    f.write('</html> \r\n')