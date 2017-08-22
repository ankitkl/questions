import requests
try:
    r = requests.head("http://www.test-api-tajawal.com")
    if r.status_code == 200:
        print("OK_STATUS = Nice! The Code is",r.status_code)
    elif r.status_code == 302:
       print("REDIRECTION_STATUS = Redirection! The Code is",r.status_code)
    else:
       print("ERROR_STATUS" + r.status_code)
except requests.ConnectionError:
    print('failed to connect to URL')
