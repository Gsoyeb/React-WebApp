from django.contrib import admin
from django.urls import path
from LiveJobs import views as livejobsViews

urlpatterns = [
    path('admin/', admin.site.urls),
    path('livejobs/', livejobsViews.livejobs_list, name='livejobs_list'),
    path('api/livejobs/', livejobsViews.LiveJobsList.as_view(), name='api-livejobs'),

]
