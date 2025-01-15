#!/bin/bash

# create user
response=$(curl -X POST -H "Content-Type: application/json" -d '{ \
  "name":"'$USER_FULL_NAME'", \
  "email":"'$EMAIL'", \
  "login":"'$USERNAME'", \
  "password":"'$USER_PASSWORD'" \
  "OrgId": "'$ORG_ID'" \
}' http://$ADMIN_USERNAME:$ADMIN_PASSWORD@$GRAFANA_URL/api/admin/users) 
echo $response

# assign the user to a role
user_id=$(echo $response | jq .id)
curl -X PUT -H "Content-Type: application/json" -d '{"role":"'$ROLE'"}
  }' http://$ADMIN_USERNAME:$ADMIN_PASSWORD@$GRAFANA_URL/api/orgs/$ORG_ID/users/$user_id