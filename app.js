const express = require("express");
const bodyParser = require("body-parser");
const ejs = require("ejs");
const mysql = require("mysql")
const session = require("express-session");
const limit = require("limit-string-length");

const app = express();

const db = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "",
  database: "oguzfitness",
});

app.use(express.static("public"));
app.set("view engine", "ejs");
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
);
app.use(
  session({
    secret: "secret",
    resave: true,
    saveUninitialized: true,
  })
)
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get("/", async function (req, res) {
  // let classes = "SELECT * FROM classes ORDER BY id desc";
  db.query("SELECT * FROM classes ORDER BY id desc", function (error, data) {
      if (error) {
        throw error;
      }
    db.query("SELECT * FROM dance", function (error, dance) {
      if (error) {
        throw error;
      }
      db.query("SELECT * FROM price", function (error, price) {
        if (error) {
          throw error;
        }
        db.query("SELECT * FROM news ORDER BY id desc limit 0,3", function (error, news) {
          if (error) {
            throw error;
          }
          res.render("index", { data: data, data1: dance, data2: price, data3: news });
        })
      })
    })
  });
});

app.get("/ru/", async function (req, res) {
  // let classes = "SELECT * FROM classes ORDER BY id desc";
  db.query("SELECT * FROM classes ORDER BY id desc", function (error, data) {
      if (error) {
        throw error;
      }
    db.query("SELECT * FROM dance", function (error, time) {
      if (error) {
        throw error;
      }
      db.query("SELECT * FROM price", function (error, price) {
        if (error) {
          throw error;
        }
        db.query("SELECT * FROM news ORDER BY id desc limit 0,3", function (error, news) {
          if (error) {
            throw error;
          }
          res.render("ru/index", { data: data, data1: time, data2: price, data3: news });
        })
      })
    })
  });
});


app.get("/classes", async function (req, res) {
  db.query("SELECT * FROM classes", function (error, classes) {
    if (error) {
      throw error
    }
    res.render('classes', {
      data: classes
    }
    )
  })
});

app.get("/classes-detail/:id", function (req, res) {
  const fetchid = req.params.id
  db.query("SELECT * FROM classes WHERE id=?", fetchid, (error, result) => {
    if (error) {
      throw error
    }
    db.query("select * from classes", function (error, classlist) {
      if (error) {
        throw error
      }
      db.query('select * from contact', function (error, contact) {
        if (error) {
          throw error
        }
        res.render("classes-detail", { data: result, data2: classlist, data3: contact});
      })
    })
  })
});

const resultPerPage = 2;

app.get("/blog", function (req, res) {
  let sql = 'select * from news'
  db.query("SELECT * FROM news ORDER BY id desc", function (error, result) {
    if (error) {
      throw error;
    }
    const numOfResult = result.length
    const numberOfPages = Math.ceil(numOfResult / resultPerPage)
    let page = req.query.page ? Number(req.query.page) : 1
    if (page > numberOfPages) {
      res.redirect('/?page=' + encodeURIComponent(numberOfPages))
    } else if (page < 1) {
      res.redirect('/?page='+encodeURIComponent('1'))
    }
    const startingLimit = (page - 1) * resultPerPage
    sql = `SELECT * FROM news ORDER BY id desc LIMIT ${startingLimit},${resultPerPage}`;
      db.query(sql, (error, result)=> {
      if (error) throw error
      let iterator = (page - 5) < 1 ? 1 : page - 5
      let endingLink = (iterator + 9) <= numberOfPages ? (iterator + 9) : page + (numberOfPages - page)
      if (endingLink < (page + 1)) {
        iterator-=(page+1)-numberOfPages
      }
      db.query(
        "SELECT * FROM news ORDER BY id desc limit 0,3",
        function (error, news2) {
          if (error) {
            throw error;
          }
          res.render("blog", {
            data: result, page, iterator, endingLink, numberOfPages,
            data2: news2
          });
        }
      );
    })
  });
});

app.get("/blog-single/:id", function (req, res) {
  const fetchid = req.params.id
  db.query("SELECT * FROM news WHERE id=?", fetchid, (error, result) => {
    if (error) {
      throw error
    }
    db.query("SELECT * FROM news ORDER BY id desc limit 0,3", function (error, news) {
      if (error) {
        throw error;
      }
      res.render("blog-single", { data: result, data2: news });
    })
  })
});

app.get("/ru/blog-single/:id", function (req, res) {
  const fetchid = req.params.id
  db.query("SELECT * FROM news WHERE id=?", fetchid, (error, result) => {
    if (error) {
      throw error
    }
    db.query("SELECT * FROM news ORDER BY id desc limit 0,3", function (error, news) {
      if (error) {
        throw error;
      }
      res.render("ru/blog-single", { data: result, data2: news });
    })
  })
});

app.get("/about", async function (req, res) {
  db.query("SELECT * FROM about", function (error, about) {
    if (error) {
      throw error;
    }
    res.render("about", {
      data: about,
    });
  });
});

app.get("/contact", function (req, res) {
  db.query("SELECT * FROM contact", function (error, contact) {
    if (error) {
      throw error;
    }
    res.render("contact",{data: contact});
  })
});

app.get("/price", async function (req, res) {
  db.query("SELECT * FROM price", function (error, price) {
    if (error) {
      throw error;
    }
    res.render('price', {
      data: price
    })
  })
});

app.get('/checkout', async function (req, res) {
  db.query('select * from price', function (error, checkout) {
    if (error) {
      throw error
    }
    res.render('checkout', {data: checkout})
  })
})

app.get("/team", async function (req, res) {
  db.query("SELECT * FROM team", function (error, team) {
    if (error) {
      throw error
    }
    res.render('team', {
      data: team
    })
  })
});

app.use(function (req, res, next) {
  res.status(404);

  res.format({
    html: function () {
      res.render("not-found", { url: req.url });
    },
    json: function () {
      res.json({ error: "Not found" });
    },
    default: function () {
      res.type("txt").send("Not found");
    },
  });
});

app.get("/404", function (req, res, next) {
  // trigger a 404 since no other middleware
  // will match /404 after this one, and we're not
  // responding here
  next();
});

app.get("/login", function (req, res) {
  res.render("admin/signin");
});

app.get("/admin/index", function (req, res) {
  res.render("admin/index");
});

app.get("/admin/classes", function (req, res) {
  let query = "SELECT * FROM classes ORDER BY id desc";
  db.query(query, function (error, data) {
    if (error) {
      throw error;
    }
    else {
      res.render("admin/classes", {data: data});
    }
  })
});

app.post("/login", function (req, res) {
  // Capture the input fields
  let username = req.body.username;
  let password = req.body.password;
  // Ensure the input fields exists and are not empty
  if (username && password) {
    // Execute SQL query that'll select the account from the database based on the specified username and password
    db.query(
      "SELECT * FROM login WHERE login = ? AND password = ?",
      [username, password],
      function (error, results, fields) {
        // If there is an issue with the query, output the error
        if (error) throw error;
        // If the account exists
        if (results.length > 0) {
          // Authenticate the user
          req.session.loggedin = true;
          req.session.username = username;
          // Redirect to home page
          res.redirect("/admin");
        } else {
          res.send("Incorrect Username and/or Password!");
        }
        res.end();
      }
    );
  } else {
    res.send("Please enter Username and Password!");
    res.end();
  }
});

app.get("/admin", function (req, res) {
  // If the user is loggedin
  if (req.session.loggedin) {
    // Output username
    res.render("admin/index");
  } else {
    // Not logged in
    rese.send("Please login to view this page!");
  }
  res.end();
});

app.listen(3000, function () {
  console.log("server running");
});
