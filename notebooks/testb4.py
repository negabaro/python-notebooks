import urllib.request
html = urllib.request.urlopen('https://en.wikipedia.org/wiki/List_of_programming_languages').read()

from bs4 import BeautifulSoup 
soup = BeautifulSoup(html, 'lxml')

tables = soup.findAll('table', class_='multicol')


for table in tables:
    for li in table.findAll('li'):
        a = li.find('a')
        print("%s's url is %s" % (a.text, a.attrs['href']))
