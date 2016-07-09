;; Do not use the insecure default command for TLS connections
(setq tls-program
      '("gnutls-cli -p %p %h" "openssl s_client -connect %h:%p -no_ssl2 -no_ssl3 -ign_eof"))
