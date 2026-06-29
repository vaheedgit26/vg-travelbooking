module "ecr" {
  source = "git::https://github.com/vaheedgit26/Infra-1.0.git//modules/ecr"

  project = var.project   # "travelbooking"
  env     = var.env       # "dev"
  repositories = [
    "forntend-service",
    "user-service",
    "search-service",
    "booking-service",
    "payment-service",
    "notification-service"
  ]
}
