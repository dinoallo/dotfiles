#!/usr/bin/env python3
from subprocess import check_output

def get_pass(account):
	return check_output("pass Mail/" + account, shell=True).splitlines()[0]
