#!/usr/bin/env bash

exec { 'killmenow':
  command => 'pkill killmenow',
  path    => ['/bin', '/usr/bin'],
  onlyif  => 'pgrep killmenow',
}

