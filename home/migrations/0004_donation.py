# Generated by Django 4.2.1 on 2023-06-11 14:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0003_contacttable'),
    ]

    operations = [
        migrations.CreateModel(
            name='donation',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
                ('phone', models.CharField(max_length=200)),
                ('email', models.CharField(max_length=200)),
                ('address', models.CharField(max_length=300)),
                ('amount', models.IntegerField()),
                ('cid', models.IntegerField()),
                ('payment_id', models.CharField(blank=True, max_length=300, null=True)),
                ('date', models.DateField(blank=True, default=None, null=True)),
                ('time', models.TimeField(blank=True, default=None, null=True)),
                ('pstatus', models.CharField(blank=True, max_length=200, null=True)),
            ],
        ),
    ]
