
resource "github_team" "team1" {
  name        = "${data.terraform_remote_state.base.outputs.random_string}-team-one"
  description = "Team ${data.terraform_remote_state.base.outputs.random_string}"
  privacy     = "closed"
}


# Add a user to the org
resource "github_membership" "sjourdan_membership" {
  username = "sjourdan"
  role     = "member"
}

# add sjourdan to team1
resource "github_team_membership" "team1_sjourdan_membership" {
  team_id  = github_team.team1.id
  username = "sjourdan"
  role     = "member"
}

# allow sj-qa-1 can merge prs on repo
// resource "github_branch_protection_v3" "yadda" {
//   repository     = github_repository.test-repo-1.name
//   branch         = "main"
//   restrictions {
//     users = ["sj-qa-1"]
//   }
// }

resource "github_branch_protection" "yadda" {

  repository_id = github_repository.test-repo-1.name
  pattern          = "main"
  enforce_admins   = true
  allows_deletions = false

  // push_restrictions = ["sj-qa-1"]
} 