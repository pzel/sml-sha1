SHA1 module ported from [cmlib](https://github.com/standardml/cmlib).

## Adding via smlpkg

`smlpkg add github.com/pzel/sml-sha1`

## Including in your .MLB file:

```
$(SML_LIB)/basis/basis.mlb
$(SMLPKG)/github.com/pzel/sml-sha1/sha1.mlb
```


## Signatures

```
structure SHA1
   :>
   sig
      include CRYPTO_HASH
      val hashBytes : Bytestring.string -> Bytestring.string
      val hashString : string -> Bytestring.string
   end

signature CRYPTO_HASH =
   sig

      type state

      val initial : state
      val update : state * Bytestring.string -> state
      val finish : state * Word8.word Stream.stream -> Bytestring.string

      val hash : Word8.word Stream.stream -> Bytestring.string

   end

```
