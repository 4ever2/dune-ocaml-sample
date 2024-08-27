# Sample project in OCaml using Dune

## Building

To build the project using Dune you can run
```bash
dune build
```

This will build the project, the compiled files are located in the `/_build/default/` directory.

During development, you can use dune watch mode
```bash
dune build --watch
```
This will rebuild the project every time you modify and save a project file.

We can run the executable from the project using
```bash
dune exec ex_main
```

Running tests can be done with the command
```bash
dune test
```

## Project structure

The project includes three subparts
* [lib](/lib/) a folder defining a library
* [bin](/bin/) a folder containing an executable that uses the library defined in [lib](/lib/)
* [test](/test/) a folder containing tests of the library defined in [lib](/lib/)

Each folder contains a `dune` file, describing how the project should be built.
The [dune-project](/dune-project) is the main dune file. It specifies metadata about the project.
