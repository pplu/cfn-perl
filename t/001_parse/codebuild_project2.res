{
        "Type": "AWS::CodeBuild::Project",
        "Properties": {
            "Name": "MyProject",
            "ServiceRole": "my-example-service-role",
            "Artifacts": {
                "Type": "NO_ARTIFACTS"
            },
            "Environment": {
                "Type": "LINUX_CONTAINER",
                "ComputeType": "BUILD_GENERAL1_SMALL",
                "Image": "aws/codebuild/standard:1.0"
            },
            "Source": {
                "Type": "GITHUB",
                "Location": "my-example-source-location"
            },
            "Triggers": {
                "Webhook": true,
                "FilterGroups": [
                    [
                        {
                            "Type": "EVENT",
                            "Pattern": "PULL_REQUEST_CREATED,PULL_REQUEST_UPDATED"
                        },
                        {
                            "Type": "BASE_REF",
                            "Pattern": "^refs/heads/master$",
                            "ExcludeMatchedPattern": false
                        },
                        {
                            "Type": "ACTOR_ACCOUNT_ID",
                            "Pattern": 12345,
                            "ExcludeMatchedPattern": true
                        }
                    ],
                    [
                        {
                            "Type": "EVENT",
                            "Pattern": "PUSH"
                        },
                        {
                            "Type": "HEAD_REF",
                            "Pattern": "^refs/heads/.*"
                        },
                        {
                            "Type": "FILE_PATH",
                            "Pattern": "READ_ME",
                            "ExcludeMatchedPattern": true
                        }
                    ]
                ]
            }
        }
    }
