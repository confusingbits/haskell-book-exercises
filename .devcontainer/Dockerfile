FROM haskell:latest
# neither of these work to setup ghc for the lang server out of the box for some arcane reason
# run stack setup manually after creating container, then lang server can find ghc version
# the error is: Couldn't figure out what GHC version the project is using
# restart container after running stack setup
# WORKDIR /workspaces/haskel-book-exercises
# RUN stack setup
ENTRYPOINT [ "/bin/bash" ]