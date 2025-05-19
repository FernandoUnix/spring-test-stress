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

