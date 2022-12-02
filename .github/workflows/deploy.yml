on:
  push:
    branch:
      - 'main'

name: Deploy to Nelify

jobs:
  build:
    name: Create Release
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2
        with:
          fetch-depth: 0
      - name: "Build"
        id: build
        run: bash build.sh