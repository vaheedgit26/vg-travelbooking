module "ecr" {
  source = "git::https://github.com/vaheedgit26/Infra-1.0.git//modules/ecr"

  project = var.project   # "travelbooking"
  env     = var.env       # "dev"
  repositories = [
    "travelbooking/frontend",
    "travelbooking/user",
    "travelbooking/search",
    "travelbooking/booking",
    "travelbooking/payment",
    "travelbooking/notification"
  ]
}
