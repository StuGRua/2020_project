from flask import render_template
def return404(errormsg='404 error'):
    return render_template('error/error.html',errormsg=errormsg)
def return500(errormsg='500 error'):
    return render_template('error/error.html',errormsg=errormsg)