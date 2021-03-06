# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-03-19 18:12
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0003_auto_20170319_1609'),
    ]

    operations = [
        migrations.AlterField(
            model_name='follows',
            name='followed_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='Followed', to='blog.UserProfile'),
        ),
        migrations.AlterField(
            model_name='follows',
            name='follower_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='Follower', to='blog.UserProfile'),
        ),
    ]
