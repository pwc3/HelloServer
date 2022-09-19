# Hello Server

## Changes

- Added validations to `SignupInput` DTO

## Try This

- Demo updated route
  - `http POST :8080/signup < SampleJSON/valid-signup-input.json`
  - `http POST :8080/signup < SampleJSON/mismatched-passwords.json`
  - `http POST :8080/signup < SampleJSON/invalid-signup-input.json`
