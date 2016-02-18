# docker-qtbase

Used to build a QT enabled docker image. This image is not intended to be used directly, but rather as base for other images. Reason for this is that compilation of QT takes a very long time to complete and is not effective when other parts in images using QT is rebuilt.
