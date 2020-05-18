import gleam/should
import benetnasch

pub fn extensions_test() {
  benetnasch.extensions("123")
  |> should.equal("application/vnd.lotus-1-2-3")
}
