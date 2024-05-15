
resource "oci_identity_user_group_membership" "test_user_group_membership" {
    #Required
    group_id = var.iam_group_id
    user_id = var.iam_user_id
}
