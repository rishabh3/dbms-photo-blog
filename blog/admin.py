from django.contrib import admin

# Register your models here.
from .models import *

class UserProfileAdmin(admin.ModelAdmin):
    list_display = ('u_id','first_name','m_init','last_name','username','email_id','password','gender','phone')
admin.site.register(UserProfile,UserProfileAdmin)
class PhotoAdmin(admin.ModelAdmin):
    list_display = ('photo_id','location','caption','image','user_id','number_of_downloads','file_type','camera_id','gen_id')
admin.site.register(Photo,PhotoAdmin)
class PlanAdmin(admin.ModelAdmin):
    list_display = ('plan_id','name','price','duration')
admin.site.register(Plan,PlanAdmin)
class Intrested_inAdmin(admin.ModelAdmin):
    list_display = ('genre_id','user_id')
admin.site.register(Intrested_in,Intrested_inAdmin)
class GenreAdmin(admin.ModelAdmin):
    list_display = ('gen_id','name','rank')
admin.site.register(Genre,GenreAdmin)
class ArticleAdmin(admin.ModelAdmin):
    list_display = ('article_id','article','number_of_reads','user_id','photo_id')
admin.site.register(Article,ArticleAdmin)
class Subscribes_toAdmin(admin.ModelAdmin):
    list_display = ('plan_id','user_id','date')
admin.site.register(Subscribes_to,Subscribes_toAdmin)
class Plan_FeaturesAdmin(admin.ModelAdmin):
    list_display = ('f_id','plan_id','features')
admin.site.register(Plan_Features,Plan_FeaturesAdmin)
class WorkshopAdmin(admin.ModelAdmin):
    list_display = ('w_id','name','price','start_date','duration','organisation')
admin.site.register(Workshop,WorkshopAdmin)
class Workshop_RequirementsAdmin(admin.ModelAdmin):
    list_display = ('w_id','requirement')
admin.site.register(Workshop_Requirements,Workshop_RequirementsAdmin)
class ReviewAdmin(admin.ModelAdmin):
    list_display = ('review_id','number_of_likes','number_of_share','user_id','date')
admin.site.register(Review,ReviewAdmin)
class Review_AboutAdmin(admin.ModelAdmin):
    list_display = ('p_id','art_id','rev_id','p_date','a_date')
admin.site.register(Review_About,Review_AboutAdmin)
class CommentsAdmin(admin.ModelAdmin):
    list_display = ('review_id','comments')
admin.site.register(Comments,CommentsAdmin)
class EditorAdmin(admin.ModelAdmin):
    list_display = ('session_id','user_id','p_id','date')
admin.site.register(Editor,EditorAdmin)
class Video_TutorialsAdmin(admin.ModelAdmin):
    list_display = ('Tut_id','name','video','number_of_views','date','user_id','rating')
admin.site.register(Video_Tutorials,Video_TutorialsAdmin)
class FollowsAdmin(admin.ModelAdmin):
    list_display = ('followed_id','follower_id')
admin.site.register(Follows,FollowsAdmin)
class Participates_inAdmin(admin.ModelAdmin):
    list_display = ('w_id','user_id')
admin.site.register(Participates_in,Participates_inAdmin)
class CameraAdmin(admin.ModelAdmin):
    list_display = ('c_id','name','user_id')
admin.site.register(Camera,CameraAdmin)
class CameraFeaturesAdmin(admin.ModelAdmin):
    list_display = ('cf_id','camera_id','feature')
admin.site.register(CameraFeatures,CameraFeaturesAdmin)

