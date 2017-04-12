from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^signup/$',views.signup,name='signup'),
    url(r'^signup/create$',views.create,name='create'),
    url(r'^signup/success/$',views.signup_success,name='success'),
    url(r'^login/$',views.login,name='login'),
    url(r'^login/authenticate$',views.authenticateUser,name='authenticateUser'),
    url(r'^login/dashboard/$',views.dashboard,name='dashboard'),
    url(r'^photo$',views.pictures, name='photo'),
    url(r'^article$',views.articles, name='article'),
    url(r'^$',views.logout_page,name='logout'),
    url(r'^upload$',views.upload,name='upload'),
    url(r'^result$',views.upload_result,name='result'),
]
