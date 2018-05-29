/etc/yum.repos.d/:
  file.recurse:
    - dir_mode: 755
    - file_mode: '0644'
    - source: salt://unix-repo/files/repo

/etc/yum/pluginconf.d/subscription-manager.conf:
  file.managed:
    - source: salt://unix-repo/files/subscription-manager.conf
    - user: root
    - group: root
    - mode: 644
    - backup: minion

#rm_file:
#  cmd.run:
#    - names:
#      - mv /etc/yum.repos.d/cobbler-config.repo /var/tmp
#    - onlyif: test -f /etc/yum.repos.d/cobbler-config.repo

refresh_db:
  cmd.run:
    - names:
      - yum makecache
    - watch:
      - file: /etc/yum.repos.d/
