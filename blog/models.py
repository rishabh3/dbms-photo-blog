from django.db import models
from django.contrib.auth.hashers import make_password,check_password

class UserProfile(models.Model):
	u_id = models.CharField(max_length=30,primary_key=True,blank=True)
	first_name = models.CharField(max_length=30)
	m_init = models.CharField(max_length=5,blank=True,null=True)
	last_name = models.CharField(max_length=30,blank=True,null=True)
	username = models.CharField(max_length=8)
	dob = models.CharField(max_length=12)
	email_id = models.EmailField(max_length=100)
	password = models.CharField(max_length=100)
	gender = models.CharField(max_length=1,default='F')
	phone = models.BigIntegerField(default=0)
	def hashed(self):
		self.password = make_password(self.password)
	def __str__(self):
		return self.first_name +" "+ self.m_init+" "+self.last_name
	def save(self,*args,**kwargs):
		self.u_id = "User_"+self.username+self.gender
		self.hashed()
		#print(self.password)
		super(UserProfile,self).save(*args,**kwargs)
	def match(self,x):
		return check_password(x,self.password)



class Photo(models.Model):
	photo_id = models.CharField(max_length=10,primary_key=True)
	location = models.CharField(max_length=30)
	caption = models.TextField(blank=True,null=True)
	image = models.ImageField(upload_to='image/%Y/%m/%d')
	user_id = models.ForeignKey('UserProfile',on_delete=models.CASCADE)
	number_of_downloads = models.IntegerField(default=0)
	file_type = models.CharField(max_length=10)
	camera_id = models.ForeignKey('Camera',on_delete=models.CASCADE)
	gen_id = models.ForeignKey('Genre',on_delete=models.CASCADE)
	def __str__(self):
		return "Photo " + str(self.photo_id)
class Genre(models.Model):
	gen_id = models.CharField(max_length=10,primary_key=True)
	name  = models.CharField(max_length = 30)
	rank =  models.IntegerField(default=0)
	def __str__(self):
		return self.name

class Intrested_in(models.Model):
	genre_id = models.ForeignKey('Genre',on_delete=models.CASCADE)
	user_id = models.ForeignKey('UserProfile',on_delete=models.CASCADE)
	def __str__(self):
		return str(self.user_id) +" intrested in "+str(self.genre_id)

class Article(models.Model):
	article_id = models.CharField(max_length=10,primary_key = True)
	number_of_reads = models.IntegerField(default=0)
	article =  models.FileField(upload_to = 'article/%Y/%m/%d')
	user_id = models.ForeignKey('UserProfile',on_delete=models.CASCADE)
	photo_id = models.ForeignKey('Photo',on_delete=models.CASCADE)
	def __str__(self):
		return "Article " + str(self.article_id)
	def print_file_content(self):
		with open(self.article.path) as fp:
			return fp.read()

class Review(models.Model):
	review_id = models.CharField(max_length=10,primary_key = True)
	number_of_likes = models.IntegerField(default=0)
	number_of_share = models.IntegerField(default=0)
	user_id = models.ForeignKey('UserProfile',on_delete=models.CASCADE)
	date = models.CharField(max_length=12)

	def __str__(self):
		return "Review " + str(self.review_id)

class Workshop(models.Model):
	w_id = models.CharField(max_length=10,primary_key=True)
	name = models.CharField(max_length=50)
	price = models.DecimalField(max_digits=7,decimal_places=2)
	start_date = models.CharField(max_length=12)
	duration = models.DurationField(default=1)
	organisation = models.CharField(max_length = 50)
	def __str__(self):
		return self.name

class Plan(models.Model):
	plan_id = models.CharField(max_length=10,primary_key=True)
	name = models.CharField(max_length=50)
	price = models.DecimalField(max_digits=7,decimal_places=2)
	duration = models.DurationField(default=1)
	def __str__(self):
		return self.name

class Subscribes_to(models.Model):
	plan_id = models.ForeignKey('Plan',on_delete=models.CASCADE)
	user_id = models.ForeignKey('UserProfile',on_delete=models.CASCADE)
	date = models.CharField(max_length=12)
	def __str__(self):
		return "Subscription "+str(self.id)

class Participates_in(models.Model):
	w_id = models.ForeignKey('Workshop',on_delete=models.CASCADE)
	user_id= models.ForeignKey('UserProfile',on_delete=models.CASCADE)
	def __str__(self):
		return "Participation "+str(self.id)

class Follows(models.Model):
	followed_id = models.ForeignKey('UserProfile',on_delete=models.CASCADE,related_name='Followed')
	follower_id = models.ForeignKey('UserProfile',on_delete=models.CASCADE,related_name='Follower')
	def __str__(self):
		return str(self.follower_id) + " follows "+str(self.followed_id)
	class Meta:
		unique_together=(('followed_id','follower_id'))

class Plan_Features(models.Model):
	f_id = models.AutoField(primary_key=True)
	plan_id = models.ForeignKey('Plan',on_delete=models.CASCADE)
	features = models.CharField(max_length=100)
	def __str__(self):
		return "Feature "+str(self.f_id)
	class Meta:
		unique_together = ('plan_id','features')

class Video_Tutorials(models.Model):
	Tut_id = models.CharField(max_length=10, primary_key=True)
	name = models.CharField(max_length=30)
	video = models.FileField(upload_to='video/%Y/%m/%d')
	number_of_views = models.IntegerField(default=0)
	date = models.DateField(auto_now_add=True)
	user_id=models.ForeignKey('UserProfile',on_delete = models.CASCADE)
	rating = models.IntegerField(default=0)
	def __str__(self):
		return self.name

class Editor(models.Model):
	session_id = models.AutoField(primary_key=True)
	user_id = models.ForeignKey('UserProfile',on_delete=models.CASCADE)
	p_id = models.ForeignKey('Photo',on_delete=models.CASCADE)
	date = models.CharField(max_length=12)
	def __str__(self):
		return "Session id: "+str(self.session_id)
	class Meta:
		unique_together = ('user_id','p_id')

class Workshop_Requirements(models.Model):
	w_id = models.ForeignKey('Workshop',on_delete=models.CASCADE)
	requirement = models.CharField(max_length = 100)
	def __str__(self):
		return "Requirement "+str(self.id)
class Comments(models.Model):
	review_id = models.ForeignKey('Review',on_delete=models.CASCADE)
	comments = models.CharField(max_length=100)
	def __str__(self):
		return "Comment "+str(self.id)
class Review_About(models.Model):
	p_id = models.ForeignKey('Photo',on_delete=models.CASCADE)
	art_id = models.ForeignKey('Article',on_delete=models.CASCADE)
	rev_id = models.ForeignKey('Review',on_delete = models.CASCADE)
	p_date = models.CharField(max_length=12)
	a_date = models.CharField(max_length=12)
	def __str__(self):
		return "Review About "+str(self.p_id)+" and "+str(self.art_id)

class Camera(models.Model):
	c_id = models.CharField(max_length=10,primary_key=True)
	name = models.CharField(max_length=50,blank=True,default='')
	user_id = models.ForeignKey('UserProfile',on_delete=models.CASCADE)
	def __str__(self):
		return self.name

class CameraFeatures(models.Model):
	cf_id = models.AutoField(primary_key=True)
	camera_id = models.ForeignKey('Camera',on_delete=models.CASCADE)
	feature = models.CharField(max_length=100)
	def __str__(self):
		return "Feature "+str(self.cf_id)
