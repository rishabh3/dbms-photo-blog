from django import forms
from .models import *

class UserForm(forms.Form):
    name = forms.CharField(max_length=30,label="First Name")
    lname = forms.CharField(max_length=30,label="Last Name",required=False)
    minit = forms.CharField(max_length=5,label="Middle Initial",required=False)
    username = forms.CharField(max_length=30,label="Username")
    email = forms.CharField(max_length=30,label="Email")
    password1 = forms.CharField(max_length=12,label="Password",widget=forms.PasswordInput())
    password2 = forms.CharField(max_length=12,label="Confirm Password",widget=forms.PasswordInput())
    dob = forms.CharField(label="Date Of Birth")
    gender = forms.ChoiceField(label="Gender",choices=(('M','Male'),('F','Female')))
    phone = forms.IntegerField(label="Phone Number")
    def clean(self):
        if 'password1' in self.cleaned_data and 'password2' in self.cleaned_data:
            if self.cleaned_data['password1'] != self.cleaned_data['password2']:
                raise forms.ValidationError("The two password fields did not match.")
            if len(self.cleaned_data['password1']) <= 4:
                raise forms.ValidationError("Password is too short!")
        return self.cleaned_data
    def newUser(self):
        try:
            user = UserProfile.objects.get(username__iexact=self.cleaned_data['username'])
        except UserProfile.DoesNotExist:
            return self.cleaned_data['username']
        raise forms.ValidationError("The username already exists. Please try another one.")
class LoginForm(forms.Form):
    username = forms.CharField(max_length=30,label='Username')
    password = forms.CharField(max_length=12,label='Password',widget=forms.PasswordInput())
    def authenticate(self):
        try:
            user = UserProfile.objects.get(username__iexact=self.cleaned_data['username'])
            if user.match(self.cleaned_data['password']) :
                return True
            else:
                return False
        except UserProfile.DoesNotExist:
            return False
        raise forms.ValidationError("The user doesnot exist!")
# class Search(forms.Form):
#     search_key = forms.CharField(label='Genre Name',max_length=30)
class UploadPic(forms.ModelForm):
    photo_id = forms.CharField(max_length=10,label='Enter Unique ID')
    location = forms.CharField(max_length=30,label='Enter Location Detail')
    caption = forms.CharField(label='Enter caption',required=False,max_length=30)
    image = forms.ImageField()
    user_name = forms.CharField(max_length=30,label='Enter username')
    file_type = forms.CharField(max_length=10,label='Enter File_type')
    camera_id = forms.CharField(max_length=10,label='Enter Camera Id')
    gen_name = forms.CharField(max_length=30,label='Enter Genre Name')
    class Meta:
        model = Photo
        exclude = ('user_id','camera_id','gen_id',)
