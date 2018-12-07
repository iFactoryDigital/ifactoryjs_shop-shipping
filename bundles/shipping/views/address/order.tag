<address-order>
  <div class="card card-shipping card-checkout mb-3" if={ opts.order.address }>
    <div class="card-header">
      { this.t('address.order.title') }
    </div>
    <div class="card-body">
      <b class="d-block">{ opts.order.address.name }</b>
      <p>
        { opts.order.address.formatted }
      </p>
    </div>
  </div>

  <script>
    // do mixins
    this.mixin('i18n');
    this.mixin('user');

  </script>
</address-order>
