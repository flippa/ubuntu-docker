# Base Ubuntu Docker Image

This is the base image we use for most of my other docker images. Essentially
it is just the standard Ubuntu base image, with some build tools, essential
libraries and a non-root user called "default", which has sudo rights.

## Usage

This image is intended to be used as a base image, not as a container image.
