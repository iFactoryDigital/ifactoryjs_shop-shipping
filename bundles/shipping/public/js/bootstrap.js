
// require local dependencies
const EdenStore = require('default/public/js/store');

/**
 * build shipping class
 *
 * @type {shipping}
 */
class ShippingStore {
  constructor() {
    // bind methods
    this.build = this.build.bind(this);

    // build
    this.build();
  }

  /**
   * build shipping controller
   */
  build() {

  }
}

// export shipping
module.exports = new ShippingStore();
