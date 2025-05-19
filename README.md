# Spring Test Stress

A simple Bash-based tool for repeatedly running test suites in Spring Boot applications and generating a final report of test failures. Ideal for analyzing test reliability and identifying flaky tests.

---

## 🎯 Purpose

`spring-test-stress` runs your entire test suite multiple times (using Maven and Surefire by default) and then processes the logs to identify which tests failed, how often, and in which iterations.

This is useful for:

- Detecting flaky tests
- Evaluating test suite stability
- Identifying intermittent issues

---

## ⚙️ Requirements

- Java installed
- Maven installed
- Maven Surefire Plugin configured in your project:

```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-surefire-plugin</artifactId>
    <version>2.22.2</version>
</plugin>

```

🚀 How to Use
1. Clone the repository (or copy the scripts)

2. Run tests multiple times

./run-tests-multiple-times.sh 100

This will run your full test suite 100 times.

3. Process logs and generate the final report

./process-test-logs.sh

📁 Script Overview

run-tests-multiple-times.sh
Executes your test suite N times and logs each run.

process-test-logs.sh
Analyzes the logs and generates a summary report of all test failures.

📌 Notes

Make sure your test logs are not overwritten between runs — each run should be logged separately.

You can adjust the scripts to fit custom logging formats or testing tools if needed.

🛠️ Future Improvements

Support for parallel test runs

HTML/CSV report generation

Integration with CI pipelines

📃 License
MIT License — feel free to use, modify, and contribute.




