(lang dune 3.18)

(name ocaml_beginning)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Author Name <author@example.com>")

(maintainers "Maintainer Name <maintainer@example.com>")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name ocaml_beginning)
 (synopsis "A short synopsis")
 (description "A longer description")
 (allow_empty)
 (depends 
   ocaml 
   ; testing
   alcotest
   ; dev tools
   ocaml-lsp-server ocamlformat)
 (tags
  ("add topics" "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
