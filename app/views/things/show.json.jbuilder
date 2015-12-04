<%=simple_form_for([@app, @thing], html: { class: 'form-horizontal' }) do |f| %>
<%= f.error_notification %>
<table>
  <th>Nombre</th>
  <tr>
    <td><%= f.input :name, label:false %></td>
  </tr>
</table>

<div>
  <h4>Propiedades</h4>
  <table>
    <th>Nombre</th>
    <th>Tipo</th>
    <tbody id="properties_table">
      <%= f.fields_for :properties, @thing.properties do |property| %>
      <%= render "property_fields", :f => property %>
      <% end %>
    </tbody>
    <tr>
      <td><p><%= link_to_add_fields "Agregar Propiedad", f, :properties %></p></td>
    </tr>
  </table>

</div>
<div>
  <h4>Asociaciones</h4>
  <table>
   <th></th>
   <th></th>
   <th></th>
 </tr>
 <tbody id="relations_table">
  <%= f.fields_for :relations, @thing.relations do |relation| %>
  <%= render "relation_fields", :f => relation %>
  <% end %>
</tbody>
<tr>
  <td>
    <p><%= link_to_add_fields "Agregar Relacion", f, :relations %></p>
  </td>
</table>
</div>
<%= f.submit %>
<% end %>
