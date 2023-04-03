# Set variables
$githubRepo = "https://github.com/username/repo.git"
$awsRepo = "https://git-codecommit.us-east-1.amazonaws.com/v1/repos/FrontEnd-Angular"
$accessKeyId = "AWS_ACCESS_KEY_ID"
$secretAccessKey = "AWS_SECRET_ACCESS_KEY"
$region = "us-east-1"

# Clone the GitHub repository
git clone $githubRepo

# Navigate to the cloned repository
cd repo

# Add the AWS CodeCommit repository as a remote
git remote add aws $awsRepo

# Configure AWS CLI with access keys
aws configure set aws_access_key_id $accessKeyId
aws configure set aws_secret_access_key $secretAccessKey
aws configure set default.region $region

# Push changes to AWS CodeCommit
git push aws master

# Sync the repositories
git pull origin master
git push aws master
