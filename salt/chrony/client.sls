chrony:
  pkg:
    - installed
  file.managed:
    - name: /etc/chrony.conf
    - user: root
    - group: root
    - mode: 644
    - source: salt://chrony/files/client.conf
    - require:
      - pkg: chrony
    - backup: minion
  service:
    - name: chronyd
    - running
    - enable: True
    - watch:
      - file: /etc/chrony.conf
