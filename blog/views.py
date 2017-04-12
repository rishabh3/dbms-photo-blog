from django.shortcuts import render,render_to_response
from .models import *
from .forms import *
from django.views.decorators.csrf import csrf_protect
from django.http import HttpResponseRedirect
from django.template import RequestContext
from django.views.decorators.csrf import ensure_csrf_cookie
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout
# Create your views here.


def index(request):

    return render(
        request,'index.html',
        context={}
    )

def logout_page(request):
    try:
        del request.session['username']
        del request.session['logged_in']
    except KeyError:
        pass
    request.session.flush()
    return HttpResponseRedirect('/')
def signup(request):
        form = UserForm()
        dic={'form':form}
        return render(request,
    'signup.html',
    dic
    )

def create(request):
    form = UserForm(request.POST)
    dic={}
    if form.is_valid() and form.clean() and form.newUser():
        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password1']
        confirmpassword = request.POST['password2']
        minit = request.POST['minit']
        name = request.POST['name']
        lname = request.POST['lname']
        dob  = request.POST['dob']
        gender = request.POST['gender']
        phone = request.POST['phone']
        user_obj = UserProfile(username=username, email_id=email,password=password,gender=gender,phone=phone,dob=dob,first_name=name,m_init=minit,last_name=lname)
        user_obj.save()
        return HttpResponseRedirect('success')
    else:


        dic={'form_error':form.errors}
        return render(request,
    'signup.html',
    dic
    )

def signup_success(request):
    return render(request,
    'success.html',{}
    )
def login(request):
        form = LoginForm()
        dic={'form':form}
        return render(request,
    'login.html',
    dic
    )
def authenticateUser(request):
    form = LoginForm(request.POST)
    dic={}
    if form.is_valid() and form.authenticate():
        request.session['username'] = request.POST['username']
        request.session['logged_in'] = True
        return HttpResponseRedirect('dashboard')
    else:
        dic={'form_error':form.errors,'logged_in':False}
        return render(request,
    'login.html',
    dic
    )

def dashboard(request):
    if(request.session['logged_in'] == False and request.session['username'] == ''):
        return render(
            request,'login.html',
            context={}
        )
    num_pics=Photo.objects.all().count()
    num_articles=Article.objects.all().count()
    cam_details = Camera.objects.all()
    p = Photo.objects.all()
    q = Workshop.objects.all()
    x = set()
    l = []
    for i in p:
        x.add(i.user_id)
        l.append(i.user_id)
    num_photographers = len(x)
    m = set(l)
    return render(
        request,'dashboard.html',
        context={'num_pics':num_pics,'num_articles':num_articles,'num_photographers':num_photographers,'list_of_photographers':m,'workshop':q,'camera':cam_details}
    )
@login_required
def pictures(request):
    if(request.session['logged_in'] == False and request.session['username'] == ''):
        return render(
            request,'login.html',
            context={}
        )
    p = Photo.objects.all()
    l = []
    for i in p:
        l.append([i.image,i.caption,i.gen_id,i.number_of_downloads,i.user_id])

    return render(
        request,'photo.html',
        context={'images':l}
    )
@login_required
def articles(request):
    if('logged_in' not in request.session and 'username' not in request.session):
        return render(
            request,'login.html',
            context={}
        )
    a = Article.objects.all()
    l = []
    for i in a:
        l.append([i.article_id,i.user_id,i.photo_id,i.number_of_reads,i])
    return render(
        request,'article.html',
        context={'articles':l}
    )
# def search(request):
#         form = Search()
#         return render(request,'search.html',{'form':form})
#
# def search_result(request):
#     form = Search(request.POST)
#     dic={}
#     if form.is_valid():
#         request.session['key'] = request.POST['search_key']
#         return HttpResponseRedirect('search_res')
#     else:
#         dic={'form_error':form.errors}
#         return render(request,
#     'search.html',
#     dic
#     )
def upload(request):
    form = UploadPic()
    return render(request,'upload.html',{'form':form})
def upload_result(request):
    form = UploadPic(request.POST,request.FILES)
    dic={}
    x=[]
    if form.is_valid():
        p_id = request.POST['photo_id']
        loc = request.POST['location']
        cap = request.POST['caption']
        img = form.cleaned_data['image']
        f_type = request.POST['file_type']
        c= request.POST['camera_id']
        u = request.POST['user_name']
        y = request.POST['gen_name']
        user = UserProfile.objects.get(username__iexact=u)
        genre = Genre.objects.get(name__iexact=y)
        cam = Camera.objects.get(c_id__iexact=c)
        photo_obj = Photo(photo_id=p_id,
        location=loc,caption=cap,image=img,
        user_id=user,number_of_downloads=0,
        file_type=f_type,camera_id = cam,gen_id=genre
        )
        photo_obj.save()
        return HttpResponseRedirect('result')
    else:
        dic={'form_error':'Uploaded Photo Successfully! Use Navigation to move back to upload another photo or look at all the photos'}
        return render(request,
    'upload.html',
    dic
    )
