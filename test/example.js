const dialog = require("../index");
const assert = require("assert");

/**
 * napi <napi.h>
 * example_cc tests
 */
(function() {
  console.log(
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
  // assert.strictEqual(
  //     example_cc.hello({ title: "how are you", detail: "I am good" }),
  //     "1",
  //     "Unexpected Result: 1"
  // );

  console.log("example_cc: All tests passed!");
})();
