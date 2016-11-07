postgres:
  pg_hba.conf: salt://postgres/templates/pg_hba.conf.j2
  users:
      enrise:
        password: 'vagrant'
        createdb: True
  databases:
    enrise:
      owner: 'enrise'
      user: 'enrise'
      template: 'template0'
      lc_ctype: 'C.UTF-8'
      lc_collate: 'C.UTF-8'
  postgresconf: |
    listen_addresses = 'localhost,*'
    timezone = 'Europe/Amsterdam'

