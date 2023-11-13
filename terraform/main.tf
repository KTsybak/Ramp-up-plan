module "ec2"{
    source = "./modules/ec2"
}
module "ecr" {
  source = "./modules/ecr"
  myname                  = "myecr"
  image_tag_mutability  = "IMMUTABLE"
  scan_on_push          = true
  expiration_after_days = 2

}
module "s3" {
    source = "./modules/s3"
    bucket_name = "testbuckettest5465787789927"       
}