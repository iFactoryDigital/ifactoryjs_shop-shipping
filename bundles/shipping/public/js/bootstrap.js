
/**
 * build shipping class
 *
 * @type {shipping}
 */
class ShippingStore {
  /**
   * construct shipping store
   */
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
