stage 'Building nginx Container for Docker Hub'
docker.withRegistry("https://us.gcr.io", "gcr:sep-poc-aa-hackathon-prj") {

    // Set up the container to build
    maintainer_name = "KiranYayavaram"
    container_name = "aa-nginx"
 
    stage "Building Container"
    echo "Building nginx with docker.build(${maintainer_name}/${container_name}:${build_tag})"
    container = docker.build("${maintainer_name}/${container_name}:${build_tag}", 'nginx')

    // add more tests

    stage "Pushing"
    container.push()

    currentBuild.result = 'SUCCESS'
}