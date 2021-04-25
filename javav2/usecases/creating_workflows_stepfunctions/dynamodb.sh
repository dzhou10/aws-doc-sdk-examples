aws dynamodb create-table \
    --table-name Case \
    --attribute-definitions \
        AttributeName=id,AttributeType=S \
        AttributeName=name,AttributeType=S \
    --key-schema \
        AttributeName=id,KeyType=HASH \
        AttributeName=name,KeyType=RANGE \
--provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5
