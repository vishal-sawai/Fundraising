# Generated by Django 4.2.1 on 2023-06-12 09:08

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0004_donation'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='donation',
            new_name='donationtable',
        ),
    ]
