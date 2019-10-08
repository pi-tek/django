# django
Framework for a Web App
This is a container based on an official python image, official Django installation, included MySQL-client and PostgreSQL-client

1. Login to your Linux server using ssh

2. Start container (there is a basic configuration) and go to the container.

```bash
[root@nerf99 django]# docker run -dit --name django -p 8000:8000 -v $PWD/app:/usr/src/app tomtek/django

[root@nerf99 django]# docker exec -it django bash
root@478e0844d78c:/usr/src/app#
```

3. Cheange the settings for ALLOWED_HOSTS and put your IP in the appsite/settings.py file, ex:

```bash
root@478e0844d78c:/usr/src/app# vi appsite/settings.py
    ...
    ALLOWED_HOSTS = ['192.168.1.99']
    ...
```

4. Start writing your application. Refer to the Official Django site: https://docs.djangoproject.com/en/2.2/intro/tutorial03/

Open your Web App:
http://192.168.1.99:8000

Login to admin website: 
http://192.168.1.99:8000/admin/
- user: superadminadmin
- pass: bangolufsen