# Generated by Django 5.0.6 on 2024-06-06 09:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('fileAdmin', '0005_alter_userfile_user'),
    ]

    operations = [
        migrations.AddField(
            model_name='userfile',
            name='isPublic',
            field=models.BooleanField(default=False),
        ),
    ]
