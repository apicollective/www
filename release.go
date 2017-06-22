package main

import (
	"github.com/flowcommerce/tools/executor"
)

func main() {
	executor := executor.Create("track")
	executor = executor.Add("git checkout master")
	executor = executor.Add("git pull origin master")
	executor = executor.Add("dev tag")
	executor = executor.Add("aws s3 sync apibuilder_files s3://www.apibuilder.io/apibuilder_files --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers")
	executor = executor.Add("aws s3 cp index.html s3://www.apibuilder.io --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers")
	executor.Run()
}
