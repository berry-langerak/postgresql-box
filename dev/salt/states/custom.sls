# Include custom formulae
include:
  - postgres

# Yeah, this is weird, but somehow, the `listen_addresses`
# change in formula doesn't trigger a restart.
restart-postgresql:
  cmd.run:
    - name: 'service postgresql restart'
    - require:
      - service: postgresql
