# NATIVE-DIALOG

Native dialog for mac than can be used from node

# How To Use

```.js
const dialog = require("../index");

 const response = dialog.showSync({
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

![alt dialog](.vscode/dialog.png)

**response** can be `0,1,2` depending on the order of button

## Check example.js in test folder
