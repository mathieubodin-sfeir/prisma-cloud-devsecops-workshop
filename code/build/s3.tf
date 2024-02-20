provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "b51d1d65-fc0c-449d-bd81-7ec6ac9d8910"
    git_commit           = "60ba81246ed0a109629002c6fb9275ff47ad51e5"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-02-20 18:06:49"
    git_last_modified_by = "100565458+mathieubodin-sfeir@users.noreply.github.com"
    git_modifiers        = "100565458+mathieubodin-sfeir"
    git_org              = "mathieubodin-sfeir"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
