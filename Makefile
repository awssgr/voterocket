null:
	# You have executed the null rule.
	# This prevents you from doing any harm by running make without arguments

clean:
	git reset --hard
	git clean -xf

implode:
	amplify delete

seed:
	curl -X POST "https://xxx.appsync-api.ap-southeast-2.amazonaws.com/graphql" \
			 -H "Content-Type:application/graphql" \
			 -H "x-api-key:da2-xxx" \
			 -d '{"query": "mutation createCandidates {candidate1: createCandidate(input: {name: \"Lambda\", description: \"Run code without thinking about servers\", votes: 0 }) {id, name, description, votes } candidate2: createCandidate(input: {name: \"DynamoDB\", description: \"Fast and flexible NoSQL database service\", votes: 0 }) {id, name, description, votes } candidate3: createCandidate(input: {name: \"API Gateway\", description: \"Managed RESTful APIs\", votes: 0 }) {id, name, description, votes } candidate4: createCandidate(input: {name: \"AppSync\", description: \"Managed GraphQL APIs\", votes: 0 }) {id, name, description, votes } } "}'

