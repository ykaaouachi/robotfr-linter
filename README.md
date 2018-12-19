## robotfr-linter
Docker image (`light-weight` : 61MB) to check robot framework files syntaxe

### How to use
Pull your Docker images :
```
$ docker pull ykaaouachi/robotfr-linter
```
Run your container with :
```
$ docker run -ti --rm --name robot-linter ykaaouachi/robotfr-linter
/ #
```

1. **Run linter**

Now you are ready to check your ".robot" files :
```
/ # python -m rflint /path/to/yourTest.robot
```

2. **Display rules**

To see a list of all rules, run :
```
/ # python -m rflint --list
E DuplicateKeywordNames
E DuplicateTestNames
W FileTooLong
W InvalidTable
W LineTooLong
W PeriodInSuiteName
W PeriodInTestName
E RequireKeywordDocumentation
W RequireSuiteDocumentation
E RequireTestDocumentation
E TagWithSpaces
W TooFewKeywordSteps
W TooFewTestSteps
W TooManyTestCases
W TooManyTestSteps
W TrailingBlankLines
```
Or for more details, run :
```
/ # python -m rflint --list --verbose
```

3. **Update Configuration**

To add some specific configurations, use `--config` option, for example :
```
/ # python -m rflint --configure LineTooLong:80 /path/to/yourTest.robot
```

4. **Ignore specific rule**

To ignore some rules, you can use `--ignore` option :
```
/ # python -m rflint --ignore LineTooLong /path/to/yourTest.robot
```

### Acknowledgements
Thanks to `Bryan Oakley`, this image is based his [repository](https://github.com/boakley/robotframework-lint)
