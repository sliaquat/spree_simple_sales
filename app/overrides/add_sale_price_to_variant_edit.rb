Deface::Override.new(virtual_path: 'spree/admin/variants/_form',
  name: 'add_sale_price_to_variant_edit',
  insert_after: "div[data-hook='price']",
  text: "
  <div data-hook='admin_variant_form_sale_price'>
    <%= f.field_container :sale_price, class: ['form-group']  do %>
      <%= f.label :sale_price, raw(Spree.t(:sale_price)) %>
      <%= f.text_field :sale_price, value: number_to_currency(@variant.sale_price, unit: ''),class: 'form-control' %>
      <%= f.error_message_on :sale_price %>
    <% end %>
</div>

  "
)

