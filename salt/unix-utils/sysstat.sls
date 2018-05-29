sysstat:
  service:
    - name: sysstat
    - running
    - enable: True
    - watch: 
      - file: /etc/sysconfig/sysstat
/etc/sysconfig/sysstat:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://unix-utils/files/sys_sysstat
    - backup: minion

/etc/cron.d/sysstat:
  file.managed:
    - user: root
    - group: root
    - mode: 600
    - source: salt://unix-utils/files/cron_sysstat
    - backup: minion
