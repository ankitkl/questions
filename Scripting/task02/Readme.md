### Task 02: 

Create a script Python or PHP or Nodejs to check the Status of URL [www.test-api-tajawal.com]

- if Code Response is 200 
print OK_STATUS message with replacemnet of placeholder
- if Code Response is 302
print REDIRECTION_STATUS message with replacemnet of placeholder
- Else
print ERROR_STATUS message with replacemnet of placeholder 

use same script to parse a given templates and replace Code placehoder in those Strings: 
```
const OK_STATUS = "Nice! The Code is {{ CODE_200 }}"
const REDIRECTION_STATUS = "Redirection! The Code is {{ CODE_302 }}"
const ERROR_STATUS = "Error occued the code is {{ CODE_ERROR }}"

```
