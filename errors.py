from flask import Flask,request,render_template,redirect,url_for
def return404(errormsg='404 error'):
    return render_template('error/error.html',errormsg=errormsg)
def return500(errormsg='500 error'):
    return render_template('error/error.html',errormsg=errormsg)