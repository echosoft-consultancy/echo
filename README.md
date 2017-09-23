# echo

## CI
1. Follow [concourse steps](https://concourse.ci/docker-repository.html) to deploy concourse on docker
2. Login `fly -t lite login -c http://localhost:8080`
3. Create pipeline `fly -t lite set-pipeline -p echo -c concourse/concourse.yml`
4. Unpause job `fly -t lite uj --job echo/build-test-deploy`
5. Go to `http://127.0.0.1:8080/teams/main/pipelines/echo`
