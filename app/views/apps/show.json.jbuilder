json.extract! @app, :id, :name, :created_at, :updated_at


<table>
	<th>Propiedades</th>
  	<th></th>
	<tbody id="properties_table">
	<%= render (@app.app_things) %>
	</tbody>
</table>
</p>

<%= link_to 'Edit', edit_app_path(@app) %> |
<%= link_to 'Back', apps_path %>

<%= simple_form_for(@app) do |f| %>
<%= f.error_notification %>

<div class="form-inputs">
	<%= f.input :name %>
</div>

<div>
	<h4>Propiedades</h4>
	<table>
		<tbody id="properties_table">
			<%= f.fields_for :app_things, @app.app_things do |app_things| %>
			<%= render "app_thing_fields", :f => app_things %>
			<% end %>
		</tbody>
		<tr>
			<td><p><%= link_to_add_fields "Agregar Propiedad", f, :app_things %></p></td>
		</tr>
	</table>

</div>

<div class="form-actions">
	<%= f.button :submit %>
</div>
<% end %>
