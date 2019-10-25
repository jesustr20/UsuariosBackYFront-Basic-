from flask import request
from helper import helper
from apps.models.users import Users as UsersModel
from apps.controllers.users import Users
from flask_cors import cross_origin

user = Users()

def route(app):
    @cross_origin(origin='localhost', headers=['content- Type', 'Authorization'])
    @app.route('/')
    def index():
        return 'Indice de la pagina'

    #Ruta para agregar usuarios
    @app.route('/users_add', methods=['POST'])
    @cross_origin(origin='localhost', headers=['content- Type', 'Authorization'])
    def users_add():
        values = request.values
        user.fullname = values.get('fullname')
        user.phone = values.get('phone')
        user.email = values.get('email')
        return user.add_users(user, app)
    
    #Ruta que muestra la lista total de usuarios
    @app.route('/user/ver', methods=['GET'])
    @cross_origin(origin='localhost', headers=['content- Type', 'Authorization'])
    def user_ver():
        return user.view_users(app)
    
    #Ruta de busqueda por id de usuario
    @app.route('/user/find', methods=['GET'])
    def user_find():
        values = request.values
        user_id = values.get('id')
        return user.find_user(user_id, app)
    
    #Busca un id y lo edita
    @app.route('/user/update', methods=['PUT'])
    def user_update():
        values=request.values
        user_id = values.get('id')
        user.fullname = values.get('fullname')
        user.phone = values.get('phone')
        user.email = values.get('email')
        return user.update_users(user, user_id, app)


    #Elimina un usuario
    @app.route('/user/delete', methods=['DELETE'])
    def user_delete():
        values = request.values
        user_id = values.get('id')
        return user.delete_users(user_id, app)
    
    #Buscar rol por cualquier tipo
    @app.route('/user/select', methods=['GET'])
    def user_select():
        values = request.values
        user_id = values.get('id')
        return user.select_users(user_id, app)



