import hashlib
import time


def md5(arg):
    md5_pwd = hashlib.md5(bytes('abd', encoding='utf-8'))
    md5_pwd.update(bytes(arg, encoding='utf-8'))
    return md5_pwd.hexdigest()


def md5single(arg):
    return hashlib.md5(arg.encode("utf-8")).hexdigest()  # 与前端js中方法一致


if __name__ == '__main__':
    print(md5(str(time.time())))
    print(md5('123'))
    print(md5single('123'))
