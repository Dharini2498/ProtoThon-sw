from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

browser = webdriver.Chrome()
browser.get(('https://accounts.google.com/ServiceLogin/signinchooser?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin'))

usernameStr = 'dharini.16ec@kct.ac.in'
passwordStr = 'Malarvizhi24'

username = browser.find_element_by_id('identifierId')
username.send_keys(usernameStr)
nextButton = browser.find_element_by_id('identifierNext')
nextButton.click()

password = WebDriverWait(browser, 10).until(
    EC.presence_of_element_located((By.NAME, "password")))

password.send_keys(passwordStr)

signInButton = browser.find_element_by_id('passwordNext')
signInButton.click()
