import gleeunit
import gleeunit/should
import gleam/list
import benetnasch

pub fn main() {
  gleeunit.main()
}

pub fn extensions_minimal_test() {
  benetnasch.extension_to_mimetype("123")
  |> should.equal("application/vnd.lotus-1-2-3")
}

pub fn mimetypes_minimal_test() {
  benetnasch.mimetype_to_extentions("application/vnd.lotus-1-2-3")
  |> should.equal(["123"])
}

pub fn integrity_test() {
  ["123", "3dml", "3ds", "3g2", "3gp", "7z", "aac", "aam", "aas"]
  |> list.all(fn(extension) {
    [extension] == benetnasch.mimetype_to_extentions(benetnasch.extension_to_mimetype(
      extension,
    ))
  })
  |> should.equal(True)
}
