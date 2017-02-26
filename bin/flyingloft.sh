#!/bin/sh
cd $HOME/
if ! [ -e ".ssh" ]; then
    mkdir ".ssh"
    chmod 700 ".ssh"
fi

# The Config
cat >> ".ssh/config" <<END_OF_FILE
# To access Telechips Android project release server
Host android.telechips.com
User flyingloft
HostName android.telechips.com
Port 22
IdentityFile ~/.ssh/tckr@git.telechips.com
Host git.telechips.com
User flyingloft
HostName git.telechips.com
Port 22
IdentityFile ~/.ssh/tckr@git.telechips.com
END_OF_FILE

# The Key
cat > ".ssh/tckr@git.telechips.com" <<END_OF_FILE
-----BEGIN RSA PRIVATE KEY-----
MIIEoQIBAAKCAQEAxdq4DE8kyul4P7REpXdbGbvRpGaPa1R7sOfaOJ3TGPr1DJtp
63nA3yi+zM+xJulvMb+dw4uQvfomaFCTuIn9radV7zRVKLxcH/ojZEZ+f8tVePz9
q6u7S61DOx+CWnkHIaaBl9JRuCSSNSs98ug1nnxREq+6Wql/4pDzwJad5zsw5cUo
agrfNesIUXSsR6USg+wsI+P464OUesZLMulMf2axalUGoco376V6/X2TzYutzHwP
2BEvHX7IOI9bUSPzdSl4Ln6Yfk0aBoLDl0V5nriWkVZPvG39trgtzI/rKrZoFEfQ
koirwEut5xebYghf5iEJX2TqM4UpsatGdQ9dywIBIwKCAQBD1fX1l3pUMsokeFIM
2HcBgjk/riKLMuiUbL/Y5ad2R2n1saCogYP0vYM+6B97DjTAmXfrRcs50hvL/l6I
adNRezNn9K97rkt4rYh6JsxJEoO0c/8zi1Yokyz+U/ItpdaPMcYIKtowgZE2zP9L
99fekQXahWR22wdGXZVmmgpApfnbBu7p/HOGc4Q58EVwEIYdDx6x9HaRerzRi0w5
lZNbkHgTv2lJpf2NawpbSWBRZbk7KF09nKcvvE8ulzLPwLFBoDGwnZge4GMdnSDH
dDq6FBxXvp4SYBp1RlQ82guRtu4a8XYHZnb5iyoC3cOZRcvUnxgDiF7fSt4A1x27
YYnLAoGBAO4BiHb/8+JQktA7/P93CNGJt5J19m7VWemioHpxP2sEDjU5V3bCgr+D
62dgfNlV0EH95bg7bVE1uKCkVd3s63d2lInn4PtdYO4xYon+ylj6HsB7Q4thXsUV
JIeKqpDLpQaQFJGZ8Nnth/vBo9toDsJxlohKiEeD+JDYandy95OJAoGBANTQEyM/
oVadMfZseuJJwWR6yIAm5IWYg67KT4fEYEkFnciiD0dzI1TklzVoFWGKUro3YJz+
RaDx4OtMVdPbm8xUgbKuJ0wcMwq+wJn9aCAF3y4WJsyldut2MTCQaWNLZoBgSFFj
AkwlmHedF5rQQ2BIZSW1OY35nOasIrhKO02zAoGAGzNgDZmYNx8muLZmDpFC1h5e
H13wRy5TayiHXnNXtHV993REgpnjDpK70UzbEYYmbfEhkWXgm5EcaiFo5im0gq53
YDfB8Nd4ysPQv1BRo8TQUIMdqYd4i41jQrDDCTvYWIV+sY3vo+Ch06EaCnJK1GTA
vx51+Yts3VqP0yMU+usCgYEAwpJao+Jnn6WqBd+GSzweh8C3UJiWa4Qgn87poLOL
O3LZZvqRoGlE3+bwpduBQzyjaG0lIdKIzanyNjcp5kUgutDrnAzwup1wftpJsVy2
+LTpTrUqybvacOEXB9R9nJy1fK/NFzXzeNHqe/1XaPjtJNR5vBNn0kNNn7NS8aL0
ZEsCgYAbjCU0UJkjXwDwAB9hICnafBpL1BWqBjVxOlqAmR9dmetibcGqxPpIOG56
PkqIIPcPEVSvx4c6N8FmS9lCMn2XLqiK5ptb3JKWnN3E/PSHl5j3LSpHKGJE8Pak
eIUrBRlt0bHxjdztadyAU0n/eYfguC7ZDaag4rcvgJTsd4VtoQ==
-----END RSA PRIVATE KEY-----
END_OF_FILE

# file mode must be 600
chmod 600 ".ssh/tckr@git.telechips.com"
chmod 600 ".ssh/config"
