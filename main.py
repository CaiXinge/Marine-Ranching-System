from flask import Flask, render_template, request, redirect, url_for, flash

import db_query
import datetime

app = Flask(__name__)
app.config['SECRET_KEY']='gsolvit'


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/admin_login', methods=['GET', 'POST'])
def admin_login():
    if request.method == 'GET':
        return render_template('admin_login.html')
    else:
        admin_id = request.form.get('admin_id')
        password = request.form.get('password')
        sql = 'select* from admin where admin_id=%s and password=%s'
        result = db_query.db_query(sql, [admin_id,password])
        print(result)
        if len(result) != 0:
            if result[0]['password'] == password:
                return redirect(url_for(('admin')))
            else:
                error = '账号或密码错误'
        else:
            error = '账号或密码错误'
        return render_template('admin_login.html',error=error)


@app.route('/admin')
def admin():
    return render_template('admin_index.html')


@app.route('/user_login', methods=['GET', 'POST'])
def user_login():
    if request.method == 'GET':
        return render_template('user_login.html')
    else:
        user_id = request.form.get('user_id')
        password = request.form.get('password')
        sql = 'select* from user where user_id=%s and password=%s'
        result = db_query.db_query(sql, [user_id,password])
        print(result)
        if len(result) != 0:
            return redirect(url_for(('user')))
        else:
            error = '账号或密码错误'
            return render_template('user_login.html', error=error)


@app.route('/user', methods=['GET', 'POST'])
def user():
    sql = 'select* from 水质数据 where date=%s'
    result = db_query.db_query(sql, datetime.date.today())
    print(result)
    if request.method=='GET':
        return render_template('user_index.html', water_quality=result)
    else:
        start_date_str=request.form.get('startDate')
        end_date_str=request.form.get('endDate')
        feature=request.form.get('feature')
        print(start_date_str,end_date_str,feature)
        start_date = datetime.datetime.strptime(start_date_str, '%Y-%m-%d').date()
        end_date = datetime.datetime.strptime(end_date_str, '%Y-%m-%d').date()
        sql = 'select * from 水质数据 where date BETWEEN %s AND %s'
        result1 = db_query.db_query(sql, [start_date, end_date])
        for data in result1:
            print(data)
        return render_template('user_index.html', water_quality=result, history_data=result1,feature=feature)



@app.route('/main_information')
def main_information():
    return render_template('main_information.html')


@app.route('/underwater_system')
def underwater_system():
    return render_template('underwater_system.html')


@app.route('/data_center')
def data_center():
    return render_template('data_center.html')


@app.route('/intelligent_center')
def intelligent_center():
    return render_template('intelligent_center.html')


@app.route('/user_register', methods=['GET', 'POST'])
def user_register():
    if request.method == 'GET':
        return render_template('user_register.html')
    else:
        user_id = request.form.get('user_id')
        password = request.form.get('password1')
        sql = 'select* from user where user_id=%s'
        result = db_query.db_query(sql, [user_id])
        print(result)
        if len(result) == 0:
            sql='insert into user(user_id,password) values(%s,%s)'
            db_query.db_query(sql, [user_id,password])
            success='注册成功'
            return render_template('user_login.html', success=success)
        else:
            error = '注册失败'
            return render_template('user_register.html', error=error)




if __name__ == '__main__':
    app.run()