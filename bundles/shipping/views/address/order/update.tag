<address-order-update>
  <div class="card card-shipping card-checkout mb-3" if={ opts.order.address }>
    <div class="card-header">
      { this.t('address.order.title') }
    </div>
    <div class="card-body">
      <div class="card-address mb-3">
        <b>{ opts.order.address.name }</b>
        <p>
          { opts.order.address.formatted }
        </p>
      </div>
      <div class="form-group">
        <label>
          Shipping
        </label>
        <select name="shipped" class="form-control">
          <option value="true" selected={ opts.order.shipped }>Shipped</option>
          <option value="false" selected={ !opts.order.shipped }>Pending</option>
        </select>
      </div>
    </div>
  </div>

  <script>
    // do mixins
    this.mixin('i18n');
    this.mixin('user');

  </script>
</address-order-update>
