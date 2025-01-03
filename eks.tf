module "eks" {
    source          = "terraform-aws-modules/eks/aws"
    cluster_name    = "devops-cluster"
    cluster_version = "1.25"
    subnets         = ["subnet-0abcd1234efgh5678", "subnet-1ijkl9012mnop3456"]
    vpc_id          = "vpc-0abcd1234efgh5678"
}
