from database.config import Conexion

conn = Conexion()
Model = conn.model()

class Users(Model):
    __table__ = 'users'
    __primary_key__ = 'id'
    __timestamps__ = True
    __connection__ = 'mysql'
    
    __fillable__ = ['fullname', 'phone', 'email']

    __casts__ = {
        'fullname': 'str',
        'phone': 'int',
        'email': 'str'
    }