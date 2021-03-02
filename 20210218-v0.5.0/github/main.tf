resource "github_repository" "test-repo-1" {
  name        = "${var.talk}-src-${data.terraform_remote_state.base.outputs.random_string}"
  description = "A ${var.talk} GitHub Repo"
  visibility  = "public"

  //   pages {
  //     source {
  //       branch = "master"
  //       path   = "/docs"
  //     }
  //   }
}