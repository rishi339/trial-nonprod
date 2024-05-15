##################################### AUTHENTICATION VARIABLES ############################Root######

tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaavq7mli6vqbhibwzbkywghhu7v233cjudlejd5jgyqwsdsuen77ba"
user_ocid        = "ocid1.user.oc1..aaaaaaaakt5v4gpp36q734qbqtcv4qhkn2nlecjtj6vw6hzdzipplwxn3aqq"
fingerprint      = "8a:1b:81:cf:5a:d6:72:34:f7:f6:67:40:e1:04:ca:fc"
private_key_path = "/INFRA/TGE/private_key"
secondary_region = "us-phoenix-1"

##################################### TAG NAMESPACE #####################################

tag_namespace_configurations = {
  tag-oci = {
    namespace_name = "tag-oci"
  },
}

####################################### TAG #############################################

tag_configurations = {
  region = {
    tag_namespace_key = "tag-oci"
    name              = "region"
    values            = ["ashburn", "phoenix", "chicago"]
  },
  environment = {
    tag_namespace_key = "tag-oci"
    name              = "environment"
    values            = ["production", "dr", "non-production"]
  }
}

############################################ VCN  VARIABLES ################################################

vcn_configurations = {
  vcn1 = {
    compartment_key = "university"
    cidr_block      = "10.0.0.0/16"
    display_name    = "VCN 1"
    defined_tags = {
      "tag-oci.environment" = "non-production",
      "tag-oci.region"      = "phoenix"
    }
  },
  vcn2 = {
    compartment_key = "college"
    cidr_block      = "10.1.0.0/16"
    display_name    = "VCN 2"
    defined_tags = {
      "tag-oci.environment" = "non-production",
      "tag-oci.region"      = "phoenix"
    }
  },
  # Add more VCN configurations as needed
}

############################################ SUBNET  VARIABLES ################################################

subnet_configurations = {
  subnet1 = {
    compartment_key   = "university"
    cidr_block        = "10.0.0.0/24"
    display_name      = "Subnet 1"
    vcn_key           = "vcn1" # Assign Subnet 1 to VCN 1
    route_table_key   = "route_table1"
    security_list_key = "security_list1"
    defined_tags = {
      "tag-oci.environment" = "non-production",
      "tag-oci.region"      = "phoenix"
    }
  },
  subnet2 = {
    compartment_key   = "college"
    cidr_block        = "10.0.1.0/24"
    display_name      = "Subnet 2"
    defined_tags      = { "tag-key" = "tag-value" }
    vcn_key           = "vcn1" # Assign Subnet 2 to VCN 1
    route_table_key   = "route_table1"
    security_list_key = "security_list1"
    defined_tags = {
      "tag-oci.environment" = "non-production",
      "tag-oci.region"      = "phoenix"
    }
  },
  # Add more subnet configurations as needed
}

############################################ VCN ROUTE TABLE VARIABLES ################################################

route_table_configurations = {
  route_table1 = {
    compartment_key          = "university"
    vcn_key                  = "vcn1" # Assign Route Table 1 to VCN 1
    route_table_display_name = "Route Table 1"
    network_entity_key       = "nat_gateway1"
    defined_tags = {
      "tag-oci.environment" = "non-production",
      "tag-oci.region"      = "phoenix"
    }
  }
}

################################################ BASTION VARIABLES ####################################################

bastion_configurations = {
  bastion1 = {
    bastion_bastion_type                 = "STANDARD"
    compartment_key                      = "university"
    target_subnet_key                    = "subnet1"
    bastion_client_cidr_block_allow_list = ["0.0.0.0/0"]
    bastion_name                         = "BASTION_SERVER"
    bastion_max_session_ttl_in_seconds   = 1800
    defined_tags = {
      "tag-oci.environment" = "non-production",
      "tag-oci.region"      = "phoenix"
    }
  }
}

############################################ BUCKET VARIABLES ################################################

bucket_configurations = {
  bucket1 = {
    compartment_key     = "university"
    bucket_name         = "Bucket-Prod"
    bucket_namespace    = "idaanjyclw5n"
    bucket_storage_tier = "Standard"
    defined_tags = {
      "tag-oci.environment" = "non-production",
      "tag-oci.region"      = "phoenix"
    }

  }
}

############################################ TOPIC VARIABLES ################################################

topic_configurations = {
  topic1 = {
    compartment_key                = "university"
    notification_topic_name        = "notification_topic"
    notification_topic_description = "topic_description for notification"
    defined_tags = {
      "tag-oci.environment" = "non-production",
      "tag-oci.region"      = "phoenix"
    }
  }
}

############################################ SERVICE GATEWAY VARIABLES ################################################

service_gateway_configurations = {
  service_gateway = {
    compartment_key              = "university"
    service_gateway_display_name = "service_gateway"
    vcn_key                      = "vcn1" # Assign Subnet 1 to VCN 1
    defined_tags = {
      "tag-oci.environment" = "non-production",
      "tag-oci.region"      = "phoenix"
    }
  },
}

############################################ INTERNET GATEWAY VARIABLES ################################################

internet_gateway_configurations = {
  internet_gateway1 = {
    compartment_key               = "university"
    internet_gateway_display_name = "internet_gateway"
    vcn_key                       = "vcn1" # Assign Subnet 1 to VCN 1
    internet_gateway_enabled      = true
    defined_tags = {
      "tag-oci.environment" = "non-production",
      "tag-oci.region"      = "phoenix"
    }
  },
  internet_gateway2 = {
    compartment_key               = "university"
    internet_gateway_display_name = "internet_gateway2"
    vcn_key                       = "vcn2" # Assign Subnet 1 to VCN 1
    internet_gateway_enabled      = true
    defined_tags = {
      "tag-oci.environment" = "non-production",
      "tag-oci.region"      = "phoenix"
    }
  },

}

############################################ NAT GATEWAY VARIABLES ################################################

nat_gateway_configurations = {
  nat_gateway1 = {
    compartment_key          = "university"
    nat_gateway_display_name = "nat_gateway"
    vcn_key                  = "vcn1" # Assign Subnet 1 to VCN 1
    defined_tags = {
      "tag-oci.environment" = "non-production",
      "tag-oci.region"      = "phoenix"
    }
  },
  nat_gateway2 = {
    compartment_key          = "university"
    nat_gateway_display_name = "nat_gateway2"
    vcn_key                  = "vcn2" # Assign Subnet 1 to VCN 1
    defined_tags = {
      "tag-oci.environment" = "non-production",
      "tag-oci.region"      = "phoenix"
    }
  },
}

############################################ SECURITY LISTS VARIABLES ################################################

security_list_configurations = {
  security_list1 = {
    compartment_key            = "university"
    security_list_display_name = "security_list1"
    vcn_key                    = "vcn1" # Assign Subnet 1 to VCN 1
    defined_tags = {
      "tag-oci.environment" = "non-production",
      "tag-oci.region"      = "phoenix"
    }
  },
}


##########################################  DRG CONFIG VARIABLES #############################################

drg_configurations = {
  drg_1 = {
    compartment_key = "university"
    display_name    = "drg_1"
    defined_tags = {
      "tag-oci.environment" = "non-production",
      "tag-oci.region"      = "phoenix"
    }
  },
}

###################################  DRG ATTACHMENT CONFIG VARIABLES #####################################

drg_attachment_configurations = {
  drg_attach_1 = {
    display_name                        = "drg_attach_1"
    drg_key                             = "drg_1"
    drg_route_table_key                 = "drg_rt_1"
    drg_attachment_network_details_type = "VCN" #Possible values: IPSEC_TUNNEL, REMOTE_PEERING_CONNECTION, VCN, VIRTUAL_CIRCUIT
    #attachment_id                       = "vcn1"
    vcn_key = "vcn1"
  },
  drg_attach_2 = {
    display_name                        = "drg_attach_2"
    drg_key                             = "drg_1"
    drg_route_table_key                 = "drg_rt_2"
    drg_attachment_network_details_type = "VCN" #Possible values: IPSEC_TUNNEL, REMOTE_PEERING_CONNECTION, VCN, VIRTUAL_CIRCUIT
    #    attachment_id                       = "vcn2"
    vcn_key = "vcn2"
  }
}

###################################  DRG ROUTE DISTRIBUTION CONFIG VARIABLES #####################################

drg_route_distribution_configurations = {
  drg_rt_dist_conf_1 = {
    display_name      = "drg_rt_dist_conf_1"
    distribution_type = "IMPORT" #Possible values: IMPORT
    drg_key           = "drg_1"
  },
  drg_rt_dist_conf_2 = {
    display_name      = "drg_rt_dist_conf_2"
    distribution_type = "IMPORT" #Possible values: IMPORT
    drg_key           = "drg_1"
  }
}

############################  DRG ROUTE DISTRIBUTION STATEMENT  CONFIG VARIABLES #############################

drg_route_distribution_statement_configurations = {
  drg_rt_dist_conf_stat_1 = {
    drg_route_distribution_key = "drg_rt_dist_conf_1"
    action                     = "ACCEPT"       #Required. Possible values: ACCEPT, REJECT, ALLOW, DENY
    match_type                 = "MATCH_ALL"    #Required. Possible values: DRG_ATTACHMENT_ID, DRG_ATTACHMENT_TYPE, MATCH_ALL
    attachment_type            = "DRG"          #Optional. Possible values: VCN, DRG, DRG_ATTACHMENT, CPE
    drg_attachment_key         = "drg_attach_1" #Optional. Possible values: Key of VCN, DRG, DRG_ATTACHMENT, CPE
    priority                   = "1"            #Required.
  },
  drg_rt_dist_conf_stat_1 = {
    drg_route_distribution_key = "drg_rt_dist_conf_2"
    action                     = "ACCEPT"            #Required. Possible values: ACCEPT, REJECT, ALLOW, DENY
    match_type                 = "DRG_ATTACHMENT_ID" #Required. Possible values: DRG_ATTACHMENT_ID, DRG_ATTACHMENT_TYPE, MATCH_ALL
    attachment_type            = "VCN"               #Optional. Possible values: VCN, DRG, DRG_ATTACHMENT, CPE
    drg_attachment_key         = "drg_attach_2"      #Optional. Possible values: Key of VCN, DRG, DRG_ATTACHMENT, CPE
    priority                   = "1"                 #Required.
  }
}

#####################################  DRG ROUTE TABLE CONFIG VARIABLES ######################################

drg_route_table_configurations = {
  drg_rt_1 = {
    display_name               = "drg_rt_1"
    drg_key                    = "drg_1"
    drg_route_distribution_key = "drg_rt_dist_conf_1"
  },
  drg_rt_2 = {
    display_name               = "drg_rt_2"
    drg_key                    = "drg_1"
    drg_route_distribution_key = "drg_rt_dist_conf_2"
  },
}


#####################################  VSS Host Scan Recipe CONFIG VARIABLES ######################################

vss_host_scan_recipe_configurations = {
  vss_host_scan_recipe1 = {
    compartment_key                                                                       = "university"
    host_scan_recipe_agent_settings_scan_level                                            = "STANDARD"
    host_scan_recipe_agent_settings_agent_configuration_vendor                            = "OCI"
    host_scan_recipe_agent_settings_agent_configuration_cis_benchmark_settings_scan_level = "NONE"
    host_scan_recipe_port_settings_scan_level                                             = "STANDARD"
    host_scan_recipe_schedule_type                                                        = "DAILY"
  },
}


#####################################  VSS Host Scan target CONFIG VARIABLES ######################################

vss_host_scan_target_configurations = {
  vss_host_scan_target1 = {
    compartment_key           = "university"
    target_compartment_key    = "university"
    test_host_scan_recipe_key = "vss_host_scan_recipe1"
  },
}


#####################################  IAM_user ######################################

iam_user_configurations = {
  user1 = {
    description = "User1 created for test purpose"
    user_name   = "Test-user-1"
    user_email  = "test@infosys.com"
  },
}

#####################################  IAM_group ######################################

iam_group_configurations = {
  group1 = {
    description = "Group1 created for test purpose"
    group_name  = "Test-group-1"
  },
}


#####################################  IAM_Policy ######################################

iam_policy_configurations = {
  policy1 = {
    description       = "Policy1 created for test purpose"
    policy_name       = "Test-policy-1"
    policy_statements = ["Allow group Test-group-1 to manage all-resources in compartment university"]
  },
}


##################################### user_group_membership ######################################

user_group_membership_configurations = {
  user_group_membership = {
    iam_group_key = "group1"
    iam_user_key  = "user1"
  },
}
