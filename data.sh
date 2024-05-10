#!/usr/bin/env bash
set -e
./gradlew assemble
~/Downloads/opensearch-3.0.0-SNAPSHOT/bin/opensearch-plugin remove opensearch-sql

~/Downloads/opensearch-3.0.0-SNAPSHOT/bin/opensearch-plugin install -b file:///Users/salyh/devel/eliatra/awsppl/sql/plugin/build/distributions/opensearch-sql-3.0.0.0-SNAPSHOT.zip

exit

curl localhost:9200/users/_doc -H 'content-type: application/json' -d '
{
"name": "Hendrik",
"department": "IT",
"uid": 1981
}
'

curl localhost:9200/users/_doc -H 'content-type: application/json' -d '
{
"name": "David",
"department": "Management",
"uid": 76
}
'

curl localhost:9200/users/_doc -H 'content-type: application/json' -d '
{
"name": "Bruce",
"department": "Sales",
"uid": 788
}
'

curl localhost:9200/logins/_doc -H 'content-type: application/json' -d '
{
"date": "2020-08-17 14:09:00 UTC",
"uid": 788
}
'

curl localhost:9200/logins/_doc -H 'content-type: application/json' -d '
{
"date": "2020-08-17 16:11:00 UTC",
"uid": 0
}
'

curl localhost:9200/logins/_doc -H 'content-type: application/json' -d '
{
"date": "2020-08-17 19:19:01 UTC",
"name": "Hendrik"
}
'

curl localhost:9200/logins/_doc -H 'content-type: application/json' -d '
{
"date": "2020-08-18 22:13:01 UTC",
"name": "Bruce",
"department": "Sales"
}
'