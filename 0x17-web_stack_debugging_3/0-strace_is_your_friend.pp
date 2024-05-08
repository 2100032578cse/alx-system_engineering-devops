# fixes the puppet resource from phpp to php

exec { 'fix-extensions':
command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
path    => '/usr/local/bin/:/bin/'
}
