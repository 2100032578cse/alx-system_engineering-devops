# this fix nginx for more requests

exec {'open file max limit setting modify':
command => 'sed -i "s/15/10000/" /etc/default/nginx && sudo service nginx restart',
path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games',
}
