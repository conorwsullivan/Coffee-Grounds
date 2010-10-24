(function() {
  var _ref, a, o, p, value;
  _ref = require("./CSON");
  o = _ref.o;
  a = _ref.a;
  p = _ref.p;
  value = o(function() {
    return p("store", o(function() {
      p("book", a(function() {
        p(o(function() {
          p("category", "reference");
          p("author", "Nigel Rees");
          p("title", "Sayings of the Century");
          return p("price", 8.95);
        }));
        p(o(function() {
          p("category", "fiction");
          p("author", "Evelyn Waugh");
          p("title", "Sword of Honour");
          return p("price", 12.99);
        }));
        p(o(function() {
          p("category", "fiction");
          p("author", "Herman Melville");
          p("title", "Moby Dick");
          p("isbn", "0-553-21311-3");
          return p("price", 8.99);
        }));
        return p(o(function() {
          p("category", "fiction");
          p("author", "J. R. R. Tolkien");
          p("title", "The Lord of the Rings");
          p("isbn", "0-395-19395-8");
          return p("price", 22.99);
        }));
      }));
      return p("bicycle", o(function() {
        p("color", "red");
        return p("price", 19.95);
      }));
    }));
  });
  console.log(value);
}).call(this);
