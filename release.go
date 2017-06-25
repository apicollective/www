package main

import (
	"github.com/flowcommerce/tools/executor"
)

func main() {
	executor := executor.Create("www")
	executor = executor.Add("git checkout master")
	executor = executor.Add("git pull origin master")
	executor = executor.Add("dev tag")
	executor = executor.Add("aws s3 sync files s3://www.apibuilder.io/files --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers")
	executor = executor.Add("aws s3 sync misc s3://www.apibuilder.io/misc --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers")
	executor = executor.Add("aws s3 cp index.html s3://www.apibuilder.io --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers")
	executor.Run()
}
