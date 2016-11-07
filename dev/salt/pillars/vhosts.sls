vhosting:
  server:
    webserver: nginx
    webserver_edition: vanilla
  users:
    enrise:
      deploy_structure: True
      vhost:
        postgres-workshop.enrise.com:
          listen_port: 80
          php_version: '7.0'
          webroot_public: True
          try_files: $uri /index.php$is_args$args
          fastcgi_index: index.php
          index: app.php
          fastcgi_params:
            - fastcgi_param APPLICATION_ENV local;
            - fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
          extra_config:
            - sendfile off;
