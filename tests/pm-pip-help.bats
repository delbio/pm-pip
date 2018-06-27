#!/usr/bin/env bats

load test_helper

@test "without args, show help for root pm-pip command" {
  run pm-pip-help

  assert_success

  assert_line "Usage: pm-pip <command> [<args>]"
}

@test "shows help for a specific command" {
  cat > "${PM_PIP_TMP_BIN}/pm-pip-hello" <<SH
#!shebang
# Usage: pm-pip hello <world>
# Summary: Says "hello" to you
# This command is useful for saying hello.
echo hello
SH

  run pm-pip-help hello

  assert_success
  assert_output <<SH
Usage: pm-pip hello <world>

This command is useful for saying hello.
SH
}
