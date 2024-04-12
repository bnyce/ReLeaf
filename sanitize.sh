ddev import-db --file=db.sql.gz
ddev drush sql-sanitize -y
ddev drush config:set commerce_payment.commerce_payment_gateway.stripe configuration.publishable_key 'pk_test_dummyValueHere123456789' -y
ddev drush config:set commerce_payment.commerce_payment_gateway.stripe configuration.secret_key 'sk_test_dummyValueHere123456789' -y

ddev drush config:get commerce_payment.commerce_payment_gateway.stripe configuration.publishable_key\n
ddev drush config:get commerce_payment.commerce_payment_gateway.stripe configuration.secret_key\n
ddev drush cr
ddev launch
ddev export-db --file=db-sanitized.sql.gz
