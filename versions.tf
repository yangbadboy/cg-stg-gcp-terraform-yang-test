/**
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

terraform {
  required_version = ">= 1.3"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.64, < 7"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 4.64, < 7"
    }
  }

  provider_meta "google" {
    module_name = "blueprints/terraform/terraform-google-network/v9.3.0"
  }

    backend "gcs" {
    bucket         = "cg-stg-gcp-terraform-state-yang"          # Tên bucket GCS
    prefix         = "terraform/state-files"         # Đường dẫn thư mục lưu trữ state (có thể thay đổi)
#    credentials    = "path/to/service-account.json"  # Đường dẫn file credentials cho Terraform
#    filename       = "cloudgame-stg-gcp.tfstate"     # Tên file state
  }
}
