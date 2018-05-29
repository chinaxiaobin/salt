haveged:
  pkg.installed

haveged-service:
  service:
    - name: haveged
    - running
    - enable: false
    - watch:
      - pkg: haveged
