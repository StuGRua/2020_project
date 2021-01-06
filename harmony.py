import logging
import random
from itertools import islice

logging.basicConfig(level=logging.DEBUG)
VALUES = '富强民主文明和谐自由平等公正法治爱国敬业诚信友善'

# str 'Hello:!~World测试'
# hex '48656C6C6F3A217E576F726C64E6B58BE8AF95'
# duo [4, 8, 6, 5, 6, 10, 2, 6, 10, 2, 6, 10, 5, 3, 11, 4, 2, 1, 7, 11, 8, 5, 7, 6, 10, 5, 7, 2, 6, 10, 2, 6, 4, 10, 4, 6, 11, 5, 5, 8, 10, 1, 10, 4, 8, 10, 0, 11, 9, 9, 5]
# val '自由爱国公正平等公正诚信文明公正诚信文明公正诚信平等和谐友善自由文明民主法治友善爱国平等法治公正诚信平等法治
# 文明公正诚信文明公正自由诚信自由公正友善平等平等爱国诚信民主诚信自由爱国诚信富强友善敬业敬业平等'


def str2utf8(Str):
    utfStr = ''.join([i.encode('utf-8').hex().upper() for i in Str])
    logging.debug('{} --> {}'.format(Str, utfStr))
    return utfStr


def utf82str(utfStr):
    Str = bytearray.fromhex(utfStr).decode('utf-8')
    logging.debug('{} --> {}'.format(utfStr, Str))
    return Str


def hex2duo(hexStr):
    duo = []
    for h in hexStr:
        numH = int(h, 16)
        if numH < 10:
            duo.append(numH)
        elif random.random() < 0.5:
            duo.append(10)
            duo.append(numH - 10)
        else:
            duo.append(11)
            duo.append(numH - 6)
    logging.debug('{} --> {}'.format(hexStr, duo))
    return duo


# def duo2hex(duo):
#     hexList = []
#     i = 0
#     while i < len(duo):
#         d = duo[i]
#         if d < 10:
#             hexList.append('{:X}'.format(d))
#         elif d == 10:
#             i += 1
#             hexList.append('{:X}'.format(duo[i] + 10))
#         else:
#             i += 1
#             hexList.append('{:X}'.format(duo[i] + 6))
#         i += 1
#     return ''.join(hexList)


def duo2hex(duo):
    hexList = []
    if duo[-1] >= 10:
        duo = duo[:-1]
    lit = iter(enumerate(duo))
    for i, d in lit:
        if d < 10:
            hexList.append('{:X}'.format(d))
        elif d == 10:
            hexList.append('{:X}'.format(duo[i + 1] + 10))
            next(islice(lit, 1, 1), None)
        else:
            hexList.append('{:X}'.format(duo[i + 1] + 6))
            next(islice(lit, 1, 1), None)
    hexStr = ''.join(hexList)
    logging.debug('{} --> {}'.format(duo, hexStr))
    return hexStr


def duo2values(duo):
    value = ''.join([VALUES[2 * i] + VALUES[2 * i + 1] for i in duo])
    logging.debug('{} --> {}'.format(duo, value))
    return value


def values2duo(value):
    duo = []
    pureValue = [v for v in value if v in VALUES]
    for i, v in enumerate(pureValue[::2]):
        index = VALUES.index(v)
        if index % 2 == 0:
            duo.append(index // 2)
    logging.debug('{} --> {}'.format(value, duo))
    return duo


def valueEncode(s):
    return duo2values(hex2duo(str2utf8(s)))


def valueDecode(value):
    return utf82str(duo2hex(values2duo(value)))


valueEncode('Hello:!~World测试')
try:
    valueDecode(valueEncode('Hello:!~World测试')[:11])
except:
    logging.exception('decode failed')


valueDecode('诚信自由爱国爱国文明爱国诚信平等诚信自由平等诚信民主民主爱国自由')