import gleam/should
import benetnasch

pub fn extensions_test() {
  benetnasch.extensions("123")
  |> should.equal("application/vnd.lotus-1-2-3")
}

pub fn mimetypes_test() {
  benetnasch.mimetypes("application/vnd.lotus-1-2-3")
  |> should.equal(["123"])
}
