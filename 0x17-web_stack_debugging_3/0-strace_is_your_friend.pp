# Fixing the php_rout error
 $php_rout = '/var/www/html/wp-settings.php'

  exec { 'replace_line':
    command => "sed -i 's/phpp/php/g' ${php_rout}",
    path    => ['/bin','/usr/bin']
  }
