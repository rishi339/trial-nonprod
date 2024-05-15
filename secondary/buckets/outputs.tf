output "bucket_id" {
  description = "The OCID of the created object storage bucket"
  value       = oci_objectstorage_bucket.bucket.id
}

output "bucket_name" {
  description = "The name of the created object storage bucket"
  value       = oci_objectstorage_bucket.bucket.name
}

output "bucket_namespace" {
  description = "The namespace of the created object storage bucket"
  value       = oci_objectstorage_bucket.bucket.namespace
}
