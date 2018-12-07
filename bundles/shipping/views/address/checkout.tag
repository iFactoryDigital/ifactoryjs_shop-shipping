<address-checkout>
  <div class="card card-shipping card-checkout mb-3">
    <div class="card-header">
      { this.t('address.title') }
    </div>
    <div class="card-body">
      <div class="row row-eq-height">
        <div class="col-6 col-md-4 pb-3" each={ address, i in opts.action.data.addresses || [] }>
          <div class={ 'card card-address h-100' : true, 'card-address-active' : isAddress(address.id) }>
            <a href="#!" class="card-body" onclick={ onAddress }>
              <div class="address-title mb-2">
                <b>{ address.name }</b>
              </div>
              <p class="my-0">
                { address.formatted }
              </p>
            </a>
          </div>
        </div>
      </div>
      <div class="address-form" hide={ !this.form }>
        <div class="form-group">
          <label>{ this.t('address.name') }</label>
          <input type="text" name="name" ref="name" value={ (this.user || {}).name } class="form-control" onchange={ onChange } />
        </div>
        <address name="address" ref="address" on-change={ onChange } />
        
        <div class="custom-control custom-radio" onclick={ onChange }>
          <input type="checkbox" name="address[save]" class="custom-control-input" id="payment-save" ref="save" checked onchange={ onChange }>
          <label class="custom-control-label pl-2" for="payment-save">Save Address</label>
        </div>
      </div>
      <a href="#!" class="btn btn-success" onclick={ onCreate } if={ !this.form }>
        { this.t('address.create') }
      </a>
    </div>
  </div>

  <script>
    // do mixins
    this.mixin('i18n');
    this.mixin('user');

    // set variables
    this.form    = opts.action.data.addresses.length === 0;
    this.loading = false;

    /**
     * on address function
     *
     * @param  {Event}  e
     */
    onAddress (e) {
      // prevent default
      e.preventDefault();

      // set form to false
      this.form = false;

      // on address function
      let address = e.item.address;

      // set address id
      opts.action.value = address.id;

      // set address
      opts.checkout.update();
    }

    /**
     * set address
     *
     * @param  {String}  id
     *
     * @return {Boolean}
     */
    isAddress (id) {
      // return is address
      return opts.action.value === id;
    }

    /**
     * on save function
     *
     * @param  {Event} e
     */
    onChange () {
      // get name and address
      let name    = this.refs.name.value;
      let save    = jQuery(this.refs.save).is(':checked');
      let address = this.refs.address.address;

      // set value
      opts.action.value = { name, save, address };

      // update view
      opts.checkout.update();
    }

    /**
     * on create function
     *
     * @param  {Event} e
     */
    onCreate (e) {
      // prevent default
      e.preventDefault();

      // open modal
      this.form = true;

      // update view
      this.update();
    }

  </script>
</address-checkout>
