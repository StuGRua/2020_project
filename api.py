import re
import urllib
from flask import session, request, redirect, url_for
from models import *
from errors import *
import urllib.request as r


@app.route('/api/<kw>')
def api(kw):
    # print(kw)
    if kw == 'timestamp':
        return str(int((time.time())))
    if kw == 'datetime':
        return str(datetime.datetime.now())
    if kw == 'confirmation':
        psw_pash = request.values.get('code')  # 现在确认码是（密码+时间戳）的HASH
        User.query.filter(User.password_hash == psw_pash).update({'confirmed': True})
        try:
            db.session.commit()
            return redirect(url_for('home', confirmation_ok=1))
        except Exception as e:
            db.session.rollback()
            print(e)
            return return500('Confirmation failed!')
    if kw == 'visited_ip':
        result = []
        for ip in visited_ip:
            result.append(str('ip:' + ip + checkip(ip)))
        return str(result)
    if kw == 'power_fee':
        room_id = request.values.get('id')
        print(room_id)
        return getfee(room_id)
    return return404()


# 增加replies属性，用于head=True的统计
def checklogin():
    if session.get('account') is not None:
        return False  # 已登陆
    return True  # 未登陆


def checkkookie():
    email = session.get('account')
    if User.query.filter(User.email == email).first().kookies != '00000000':
        return False  # 已有有效kookie
    return True  # 没有有效kookie


def check_confirmation():
    email = session.get('account')
    if User.query.filter(User.email == email).first().confirmed:
        return False  # y已通过验证
    return True  # 未通过验证


def checkip(ip):
    with urllib.request.urlopen('http://ip.ws.126.net/ipquery?ip=' + ip) as f:
        data = f.read()
        data = data.decode('gbk')
        # print('Status:', f.status, f.reason)
        # for k, v in f.getheaders():
        # print('%s: %s' % (k, v))
        print('Data:', data)
        # print(type(data))
        # start = data.find('city:"')
        # coma = data.find(',')
        # print(data[start:coma],'123123')
    return data


def parse_cited(txt):
    int1 = None
    re1 = '.*?'  # Non-greedy match on filler
    re2 = '(\\d+)'  # Integer Number 1
    rg = re.compile(re1 + re2, re.IGNORECASE | re.DOTALL)
    m = rg.search(txt)
    if m:
        int1 = m.group(1)
    return int1


def getfee(room_name):
    link = 'http://bems.dlut.edu.cn/MCWEB/RechargeNotice.aspx?category=38&name=%E8%A5%BF%E5%B1%B1'
    response = r.urlopen(link)
    print('response get')
    result = response.read().decode('utf-8')
    index = result.find(room_name)
    result = result[index + 26:index + 40]
    ind2 = result.find('</td>')
    result = result[0:ind2]
    print(result)
    return result


if __name__ == "__main__":
    getfee('327')
    pass
# getfee('327')
