Cereal Crop Diversity Site Notes
By: Mary Jo Ramos

Note: The following notes use the generic name "app". Change "app" to your specific app name.

Running App on Local Host
1. In config.py:
   - Turn on debug mode
   - Disable cache
   - Set port to 5000
2. In /var/www/app (run.py file should be here), run the following:
   $ python run.py

Deploying App onto Apache Server
1. In config.py:
   - Turn off debug mode
   - Enable cache
   - Set port to 7000
2. In /var/www/app, create an app.wsgi file.
3. In /var/www/ (app folder should be here), run the following:
   $ sudo chown -R www-data:www-data app
4. In /etc/apache2/sites-available, create an app.conf file (need sudo)
5. In /etc/apache2/sites-available, run the following:
   $ sudo a2ensite app.conf
6. In any directory, run the following:
   $ sudo service apache2 reload
   $ sudo service apache2 restart
7. Go to http://mbmordr646278.agr.gc.ca/app

