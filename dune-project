(lang dune 3.8)

; Name of the project we are defining
(name week1)

; When true dune will use the metadata specified here to generate an .opam file
; opam files are used for installing packages using the opam package manager
(generate_opam_files true)

; Specify where the source for the package can be found
(source
 (github username/reponame))

; Author names
(authors "Author Name")

; Project maintainers
(maintainers "Maintainer Name")

; The license of the project
; Example:
; (license MIT)
(license LICENSE)

; Link to where project documentation is hosted
(documentation https://url/to/documentation)

; Package definition
(package
 ; Name of the package
 (name week1)
 ; Very short description of the package
 (synopsis "A short synopsis")
 ; A longer decription of the package
 (description "A longer description")
 ; Dependencies of the package
 (depends ocaml dune ounit2)
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
