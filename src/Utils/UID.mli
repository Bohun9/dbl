(* This file is part of DBL, released under MIT license.
 * See LICENSE for details.
 *)

(** Unique identifier *)

(* Author: Piotr Polesiuk, 2023 *)

type t = private int

(** Comparator *)
val compare : t -> t -> int

(** Generate fresh identifier *)
val fresh : unit -> t

(** Finite maps from UIDs *)
module Map : Map.S with type key = t