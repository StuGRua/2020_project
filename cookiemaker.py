from enc import *
import hashlib


def cookie(username):
    username = hashlib.md5(bytes(username, encoding='utf-8'))
    username.update(bytes(str(time.time()), encoding='utf-8'))
    username = username.hexdigest()
    username = md5(username)[0:8].upper()
    return username


if __name__ == '__main__':
    print(cookie('123123'))
