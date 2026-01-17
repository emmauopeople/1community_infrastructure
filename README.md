# 1community_infrastructure
final project for MSIT, University of the People. infrastructure repo for terraform
this repo contains the eks for one community

Terraform Remote State (Backend)

This project uses a remote Terraform backend on AWS to store and protect state files and to prevent concurrent writes.

Components

S3 State Bucket: 1community-tfstate-302530480617-us-east-1

DynamoDB Lock Table: 1community-terraform-locks

KMS Key (SSE-KMS): arn:aws:kms:us-east-1:302530480617:key/948cebb6-731b-493e-9212-d0005d5e951e

Security & Reliability Controls

Encryption at rest (SSE-KMS): Terraform state objects are encrypted using a customer-managed KMS key (CMK).

Bucket versioning enabled: Provides recovery from accidental overwrites or deletions of state.

Public access blocked: S3 “Block Public Access” is enabled to prevent exposure.

Enforced TLS: Bucket policy denies all non-HTTPS requests to protect state in transit.

Enforced encryption on writes: Bucket policy denies uploads that are not encrypted with KMS.

State locking: DynamoDB is used to prevent concurrent Terraform operations from corrupting state.

DynamoDB encryption + PITR: Lock table uses KMS encryption and point-in-time recovery for resilience.

Access logging enabled (auditability): S3 server access logging is enabled on the state bucket and delivered to a dedicated logs bucket.

Authentication Model (No Long-Lived Keys)

Infrastructure provisioning from GitHub Actions uses OIDC (OpenID Connect) to assume an AWS IAM role:

GitHub OIDC Role ARN: arn:aws:iam::302530480617:role/1community-github-terraform-role
This avoids storing static AWS access keys in GitHub and supports least-privilege access (tightened as the project evolves).