# Set variables
$githubRepo = "https://github.com/kondekiran/frantend.git"
$awsRepo = "ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/FrontEnd-Angular"
$accessKeyId = "<your-access-key-id>"
$secretAccessKey = "<your-secret-access-key>"
$region = "us-east-1"

# Clone the GitHub repository
ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/FrontEnd-Angular

# Navigate to the cloned repository
cd frantend

# Add the AWS CodeCommit repository as a remote
git remote add aws $awsRepo

# Configure AWS CLI with access keys
aws configure set aws_access_key_id $accessKeyId --profile codecommit
aws configure set aws_secret_access_key $secretAccessKey --profile codecommit
aws configure set default.region $region --profile codecommit

# Push changes to AWS CodeCommit
git aws.push --profile codecommit

# Sync the repositories
git pull origin master
git aws.push --profile codecommit
