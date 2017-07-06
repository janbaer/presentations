package test

import "testing"

func Test_fail(t *testing.T) {
	if 1 != 2 {
		t.Fatal("This test was failed")
	}
}

func Test_success(t *testing.T) {
	t.Log("This test will not fail")
}

func Test_skip(t *testing.T) {
	t.Skip("This test will be skipped")
}
