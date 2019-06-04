#!/usr/bin/env bats

setup_fixture
load_module strict_has_not

@test "l.strict_has_not the gti, which is an alias" {
  shopt -s expand_aliases

  alias gti='git'
  result=$(l.strict_has_not the gti)
  assert_equal "$result" false

  shopt -u expand_aliases
}

@test "l.strict_has_not command cat, while cat is existed" {
  run l.strict_has_not command cat
  assert_success
  assert_output false
}

@test "l.strict_has_not command xxx, which not defined" {
  run l.strict_has_not command xxx
  assert_success
  assert_output true
}

@test "l.strict_has_not function bbb, which not defined" {
  run l.strict_has_not function bbb
  assert_success
  assert_output true
}

@test "l.strict_has_not function bbb, which has been defined" {
  bbb() { echo 1; }
  run l.strict_has_not function bbb
  assert_success
  assert_output false
}

@test "l.strict_has_not builtin true" {
  run l.strict_has_not builtin true
  assert_success
  assert_output false
}

@test "l.strict_has_not builtin xxx, which not defined" {
  run l.strict_has_not builtin xxx
  assert_success
  assert_output true
}

@test "l.strict_has_not keyword function" {
  run l.strict_has_not keyword function
  assert_success
  assert_output false
}

@test "l.strict_has_not keyword xxx, which not defined" {
  run l.strict_has_not keyword xxx
  assert_success
  assert_output true
}

@test "l.strict_has_not alias xxx, which not defined" {
  run l.strict_has_not alias xxx
  assert_success
  assert_output true
}

@test "l.strict_has_not the xxx, which not defined" {
  run l.strict_has_not the xxx
  assert_success
  assert_output true
}

@test "l.strict_has_not the ls, which is command" {
  run l.strict_has_not the ls
  assert_success
  assert_output false
}

@test "l.strict_has_not the function, which is keyword" {
  run l.strict_has_not the function
  assert_success
  assert_output false
}

@test "l.strict_has_not the type, which is builtin" {
  run l.strict_has_not the type
  assert_success
  assert_output false
}

@test "l.strict_has_not what type" {
  run l.strict_has_not what type
  assert_failure 2
  assert_output ''
}

@test "result=\$(l.strict_has_not what type)" {
  foo() {
    if [[ $(l.strict_has_not what type) == true ]]; then
      echo 1
    else
      echo 2
    fi
    result=$()
  }

  run foo
  assert_success
  assert_output 2
}
