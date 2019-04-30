# awscli for CI

## Usage

CircleCI example

```yaml
version: 2

jobs:
  upload-lambda:
    docker:
      - image: hitian/awscli:latest
    working_directory: ~/build
    steps:
      - attach_workspace:
          at: ~/build
      - run: |
          aws lambda update-function-code --function-name $FUNCTION_NAME --zip-file fileb://upload.zip

```

## Environment Variables Require

* AWS_ACCESS_KEY_ID
* AWS_DEFAULT_REGION
* AWS_SECRET_ACCESS_KEY