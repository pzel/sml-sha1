local
  infix ===
  val op === = Assert.eq (fn x => x)
  val hashToHex = Bytestring.toStringHex o SHA1.hashString
in
val pairs = [
  ("12345", "8cb2237d0679ca88db6464eac60da96345513964")
 ,("abcdef", "1f8ac10f23c5b5bc1167bda84b833e5c057a77d2")
 ,("", "da39a3ee5e6b4b0d3255bfef95601890afd80709")
 ,("012345678901234567890", "c042bdfc4bc5516ec716afe9e85c173b614ff9f5")
 ,("sha1", "415ab40ae9b7cc4e66d6769cb2c08106e8293b48")
 ,("SHA1", "e1744a525099d9a53c0460ef9cb7ab0e4c4fc939")
]

val tests =
    map (fn (src, hash) => T(fn()=> hashToHex src === hash)) pairs
end

fun main () =
	runTestsWith tests (CommandLine.arguments())
