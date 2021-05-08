var figlet = require("figlet");
var fs = require("fs");

figlet.text(
  "Ready!",
  {
    font: "Ghost",
    horizontalLayout: "default",
    verticalLayout: "default",
    width: 80,
    whitespaceBreak: true,
  },
  function (err, data) {
    if (err) {
      console.log("Something went wrong...");
      console.dir(err);
      return;
    }
    fs.writeFile("../src/modules/events/text.txt", data, function (err) {
      if (err) throw err;
      console.log("Saved!");
    });
  }
);
