<shipping-checkout>
  <div class="card card-shipping card-checkout mb-3">
    <div class="card-header">
      { this.t('shipping.title') }
    </div>
    <div class="card-body">
      <p if={ !this.address() }>
        { this.t('shipping.noaddress') }
      </p>
      <div class="row mb-2">
        <div class="col-3">
          <b>{ this.t('shipping.price') }</b>
        </div>
        <div class="col-9">
          Free
        </div>
      </div>
    </div>
  </div>

  <script>
    // do mixins
    this.mixin('i18n');

    // set variables
    this.loading = false;

    /**
     * find shipping ready
     *
     * @return {Boolean}
     */
    address () {
      // check checkout
      let check = opts.checkout.actions.address;

      // return check
      return check ? check.value : null;
    }

    /**
     * on mount function
     */
    this.on('mount', () => {
      // set value
      opts.action.value = {
        'amount' : 0
      };
    });

  </script>
</shipping-checkout>
