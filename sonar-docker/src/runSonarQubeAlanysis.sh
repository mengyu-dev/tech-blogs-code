# generate OWASP reports
mvn clean install
# generate OWASP reports
mvn dependency-check:aggregate -PsonarReports
# actual SonarQube analysis
mvn verify sonar:sonar \
  -Dsonar.projectKey=SonarQubeDockerDemo \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.login=sqp_c56279f6cdd46d73757bd5f179566e7da82317a9