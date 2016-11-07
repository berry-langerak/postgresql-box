postgres:
  pg_hba.conf: salt://postgres/templates/pg_hba.conf.j2
  users:
      enrise:
        password: 'vagrant'
        createdb: True
  acls:
    - ['local', 'all', 'all', 'peer']
    - ['host', 'all', 'all', '0.0.0.0/0', 'md5']
  databases:
    enrise:
      owner: 'enrise'
      user: 'enrise'
      template: 'template0'
      lc_ctype: 'C.UTF-8'
      lc_collate: 'C.UTF-8'
  postgresconf: |
    listen_addresses = '192.168.56.231,localhost'
    timezone = 'Europe/Amsterdam'
