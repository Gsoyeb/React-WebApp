# data_access.py
import MySQLdb
from django.conf import settings
from .models import LiveJobViewModel
from django.db import connection


class LiveJobRepository:
    # @staticmethod
    # def get_all_live_jobs():
        
    #     # db_params = settings.DATABASES['default']             # Should automatically happen.
    #     # connection = MySQLdb.connect(host=db_params['HOST'], 
    #     #                              user=db_params['USER'], 
    #     #                              passwd=db_params['PASSWORD'], 
    #     #                              db=db_params['NAME'])
        
    #     try:
    #         with connection.cursor(MySQLdb.cursors.DictCursor) as cursor:
    #             cursor.callproc('GetLiveJobs')
    #             result_set = cursor.fetchall()
    #             livejobs = [LiveJobViewModel(**row) for row in result_set]
    #             return livejobs
    #     finally:
    #         connection.close()

    @staticmethod
    def get_all_live_jobs():
        with connection.cursor() as cursor:     # Should automatically go to the default DB
            cursor.callproc('GetLiveJobs')
            columns = [col[0] for col in cursor.description]
            return [
                LiveJobViewModel(**dict(zip(columns, row)))
                for row in cursor.fetchall()
            ]
