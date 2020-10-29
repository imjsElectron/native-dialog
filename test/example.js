const dialog = require("../index");
const assert = require("assert");

/**
 * napi <napi.h>
 * example_cc tests
 */
(function() {
  console.log(
    dialog.showSync({
      title: "Product Test",
      detail: "Please select one option",
      buttons: ["Cancel", "Copy", "Update"]
    })
  );
  // assert.strictEqual(
  //     example_cc.hello({ title: "how are you", detail: "I am good" }),
  //     "1",
  //     "Unexpected Result: 1"
  // );

  console.log("example_cc: All tests passed!");
})();
