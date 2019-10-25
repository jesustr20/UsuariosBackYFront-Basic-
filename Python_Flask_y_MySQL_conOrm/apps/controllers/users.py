from helper import helper
from flask import render_template, redirect, url_for, flash
from apps.models.users import Users as UsersModel

class Users():
    def __init__(self, fullname = None, phone = None, email = None):
        self.fullname = fullname
        self.phone = phone
        self.email = email
    
    #Agregando usuarios
    def add_users(self, users, app):
        try:
            user = UsersModel
            user.insert({
                'fullname': users.fullname,
                'phone': users.phone,
                'email': users.email
            })
            message = f'''Se agrego al usuario'''
            print(message)
            return helper.handler_response(app, 201, message)
        except Exception as e:
            return helper.handler_response(app, 500, f'{str(e)}')
    
    def view_users(self, app):
        try:
            user = UsersModel.get()
            result = {}
            if user:
                result = user.serialize()
            mess='Lista de usuarios'
            return helper.handler_response(app, 201,mess, result)
        except Exception as e:
            return helper.handler_response(app, 500, f'{str(e)}')
    
    #Busca 1 Usuario en especial
    def find_user(self, users_id, app):
        try:
            user = UsersModel.where('id', users_id).first()
            result = {}
            if user:
                result = user.serialize()
            return helper.handler_response(app, 201, f'Buscar user_id: {users_id}', result)
        except Exception as e:
            return helper.handler_response(app, 500, f'{str(e)}')
    
    #Selecciona y Acrtualiza un Rol:
    def update_users(self, user, user_id, app):
        try:
            users = UsersModel.where('id', user_id)\
                .update({
                    'fullname': user.fullname,
                    'phone': user.phone,
                    'email': user.email
                })
            message = f''' No se encontro al usuario: {user_id}'''
            
            if users > 0:
                message = f''' Se actualizo al usuario: {user_id}'''
            return helper.handler_response(app, 201, message)
        except Exception as e:
            return helper.handler_response(app, 500, f'{str(e)}')
        
    #Elimina un Rol
    def delete_users(self, user_id, app):
        try:
            user = UsersModel.where('id', user_id).delete()
            message = f''' No se encontro el usuario: {user_id}'''
            if user > 0:
                message = f''' Se elimino al usuario: {user_id}'''
            print(message)
            return helper.handler_response(app, 201, message)
        except Exception as e:
            return helper.handler_response(app, 500, f'{str(e)}')
    
    #Busqueda por CUALQUIER CARACTERISTICA
    def select_users(self, user_id, app):
        try:
            user = UsersModel\
                .where('id', user_id)\
                .or_where('fullname', user_id)\
                .or_where('phone', user_id)\
                .or_where('email', user_id)\
                .get()
            result = {}
            if user:
                result = user.serialize()
            return helper.handler_response(app, 201, f'Buscar por: {user_id}', result)
        except Exception as e:
            return helper.handler_response(app, 500, f'{str(e)}')