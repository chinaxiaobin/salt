/etc/screenrc:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://unix-utils/files/screenrc
    - backup: minion
