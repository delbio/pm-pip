load lib/assertions

export PM_PIP_TEST_DIR="${BATS_TMPDIR}/pm-pip"
export PM_PIP_TMP_BIN="${PM_PIP_TEST_DIR}/bin"
export PM_PIP_CWD="${PM_PIP_TEST_DIR}/cwd"

export PATH="${BATS_TEST_DIRNAME}/libexec:$PATH"
export PATH="${BATS_TEST_DIRNAME}/../libexec:$PATH"
export PATH="${PM_PIP_TMP_BIN}:$PATH"

mkdir -p "${PM_PIP_TMP_BIN}"
mkdir -p "${PM_PIP_TEST_DIR}"
mkdir -p "${PM_PIP_CWD}"

setup() {
  cd "${PM_PIP_CWD}"
}

teardown() {
  rm -rf "${PM_PIP_TEST_DIR}"
}
