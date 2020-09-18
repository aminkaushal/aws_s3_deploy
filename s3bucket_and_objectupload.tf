resource "aws_s3_bucket" "main" {
    bucket = "main-tf-s3test-18092020"
    acl    = "public-read"
    }


resource "aws_s3_bucket_object" "object" {
    bucket = "main-tf-s3test-18092020"
    key    = "test.jpeg"
    source = "../testfiles/test.jpeg"
    acl = "public-read"
    depends_on = [aws_s3_bucket.main]
}