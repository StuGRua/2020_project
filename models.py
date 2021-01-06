import datetime
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from cookiemaker import *

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = "mysql+pymysql://StuG:x74rtw05@localhost:3306/nmb0"
app.config['SQLALCHEMY_COMMIT_ON_TEARDOWN'] = True
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SECRET_KEY'] = 'wtfwtf'
visited_ip = []
db = SQLAlchemy(app)


class User(db.Model):
    __tablename__ = 'user'
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(40), nullable=True)
    password = db.Column(db.String(40), nullable=True)
    email = db.Column(db.String(80), nullable=True, unique=True)
    create_time = db.Column(db.DateTime, nullable=True)  # 注册时间
    active_time = db.Column(db.DateTime, nullable=True)  # 上次活动时间
    active_ip = db.Column(db.String(50), nullable=True)
    # role_id = db.Column(db.Integer, db.ForeignKey('roles.id'))
    password_hash = db.Column(db.String(256), nullable=True)
    password_cmp = db.Column(db.String(50), nullable=True)  # 用于登陆时比对
    kookies = db.Column(db.String(10), nullable=True, default='00000000')
    admin = db.Column(db.Boolean, default=False)
    confirmed = db.Column(db.Boolean, default=False)
    avatar = db.Column(db.Integer, default=0)
    oldkookies = db.Column(db.Text, nullable=True)
    fav_color = db.Column(db.String(10), nullable=True, default='000000')  # 用的是RGB标识
    cited = db.Column(db.Text, nullable=True)

    def __init__(self, username, password, email, active_ip, password_hash, confirmed=False, kookies='00000000',
                 admin=False, avatar=0, fav_color='000000', cited=''):
        self.username = username
        self.password = password
        self.email = email
        self.create_time = datetime.datetime.now()
        self.active_time = datetime.datetime.now()
        self.active_ip = active_ip
        self.password_hash = password_hash
        self.password_cmp = md5(password)
        self.kookies = kookies
        self.admin = admin
        self.confirmed = confirmed
        self.avatar = avatar
        self.oldkookies = '#'
        self.fav_color = fav_color
        self.cited = cited


# 待增加验证登陆时专门的密码验证加密方式，前端向后端发起ajax请求，后端返回salt，前端加密提交数据与后端比对
class posts(db.Model):
    __tablename__ = 'posts'
    id = db.Column(db.Integer, primary_key=True, unique=True)  # 主键，辨识
    poster = db.Column(db.String(10), nullable=True)  # 发布者的kookie
    poster_ip = db.Column(db.String(50), nullable=True)
    head = db.Column(db.Boolean, default=False)  # 是否是第一条
    next = db.Column(db.Integer, nullable=True, default=0)  # 下一条
    post_time = db.Column(db.DateTime, nullable=True)  # 生成时间
    title = db.Column(db.Text, nullable=True)  # 标题
    content = db.Column(db.Text, nullable=True)  # 内容
    section = db.Column(db.String(40), nullable=True, default='main')  # 板块
    avatar = db.Column(db.Integer, default=0)
    withpic = db.Column(db.Boolean, default=False)
    pic_route = db.Column(db.String(100), nullable=True)
    ider = db.Column(db.String(256), nullable=True)  # 唯一识别符，用来反查主键
    replies = db.Column(db.Integer, nullable=True)  # head=True的post的回复数，回复+=1
    topped = db.Column(db.Boolean, default=False)
    update_time = db.Column(db.DateTime, nullable=True)  # 最后更新时间，由reply控制更新
    no_show = db.Column(db.Boolean, nullable=True)  # 是否展示在时间线上

    def __init__(self, poster, poster_ip, head, next, title, content, section='main', withpic=False, pic_route='null',
                 replies=0, topped=False, update_time=datetime.datetime.now(), no_show=False):
        self.poster = poster
        self.poster_ip = poster_ip
        self.head = head
        self.next = next
        self.avatar = User.query.filter(User.kookies == poster).first().avatar
        self.post_time = datetime.datetime.now()
        self.title = title
        self.content = content
        self.section = section
        self.withpic = withpic
        self.pic_route = pic_route
        self.ider = md5(content + str(int(time.time())))
        self.replies = replies
        self.topped = topped
        self.update_time = datetime.datetime.now()
        self.no_show = no_show
