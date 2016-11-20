#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let () =
  Pkg.describe "distwit" @@ fun c ->
  Ok [ Pkg.mllib "lib/distwit.mllib";
       Pkg.test "lib_test/test" ]
