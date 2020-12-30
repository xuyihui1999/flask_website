4DWheatNotes
By: Mary Jo Ramos

Note: The following notes use the generic name "app". Change "app" to your specific app name.

Running 4DWheat on Local Host
1. In config.py:
   - Turn on debug mode
   - Disable cache
   - Set port to 5000
2. In /var/www/4DWheat (run.py file should be here), run the following:
   $ python run.py

Deploying 4DWheat onto Apache Server
1. In config.py:
   - Turn off debug mode
   - Enable cache
   - Set port to 7000
2. In /var/www/4DWheat, create an 4DWheat.wsgi file.
3. In /var/www/ (4DWheat folder should be here), run the following:
   $ sudo chown -R www-data:www-data 4DWheat
4. In /etc/apache2/sites-available, create an 4DWheat.conf file (need sudo)
5. In /etc/apache2/sites-available, run the following:
   $ sudo a2ensite 4DWheat.conf
6. In any directory, run the following:
   $ sudo service apache2 reload
   $ sudo service apache2 restart
7. Go to http://mbmordr646278.agr.gc.ca/4DWheat

