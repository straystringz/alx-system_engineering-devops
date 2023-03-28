# Setting up my client config_file
include stdlib

file_line { 'Turn off passwd auth':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    PasswordAuthentication no',
  replace => true,
}

file_line { 'Declare identity file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    IdentityFile root/.ssh.school',
  replace => true,
}
