# Generated by Django 3.2.4 on 2021-07-02 05:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('coreapp', '0003_auto_20210702_1438'),
    ]

    operations = [
        migrations.AlterField(
            model_name='project',
            name='discord_url',
            field=models.URLField(blank=True),
        ),
        migrations.AlterField(
            model_name='project',
            name='repo_url',
            field=models.URLField(blank=True),
        ),
    ]
