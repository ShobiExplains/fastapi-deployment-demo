## Initial installations
 - Install supervisor and other dependencies
    `sudo apt install python3-venv supervisor nginx`
- setup virtual env
    `sudo python3 -m venv env`
- Fastapi and Uvicorn
    `sudo pip3 install -r requirements.txt`

### Move/clone project into /var/www
1. change ownership of the files to www-data
 `sudo chown  www-data:www-data -R /var/www`

2. test the start script by executing `./var/www/fastapi/start.sh`
3. setup supervisor to do the process management by copying etc/supervisor/conf.d/fastapi-demo.conf into location
4. setup nginx by copying `/etc/nginx/sites-available/fastapi.conf` into location also dont forget to link to `/etc/nginx/sites-enabled by` `ln -s`
5. update and restart supervisor (try commands below)
    - `sudo supervisorctl reread`
    - `sudo supervisorctl update`
    - `sudo supervisorctl restart all`
    - `sudo supervisorctl status` (to see status of uvicorn supervisor processes)
6. If error check the error logs from the file specified in `etc/supervisor/conf.d/fastapi-demo.conf`
7. Then restart nginx
    `sudo service nginx restart`


> Please post your comments, subcribe and follow me on twitter [@ppshobi](https://twitter.com/ppshobi)
