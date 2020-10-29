# NODE-DIALOG

Native dialog for mac than can be prompt from node

# How To Use

```.js
const dialog = require("../index");

 dialog.showSync({
      title: "how are you",
      detail:
        "Doing this will remove the application and delete all your index associated with it on this system.",
      buttons: [
        "Cancel",
        "Uninstall, but keep index",
        "Uninstall and delete index"
      ]
    })
  );


```

## Check example.js in test folder
