mock_provider "google" {}

run "test_name_suffix" {

# in the test following value of "name_suffix" is used
  variables {
  name_suffix = "test"
  }

# check that terraform uses the given name_suffix correctly
  assert {
    condition     = google_compute_address.ip_address.name == "my-address-test"
    error_message = "incorrect result"
  }
}

