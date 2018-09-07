module ApplicationHelper
#	def sortable(column, title = nil)
#  		title ||= column.titleize
#  		css_class = column == sort_column ? "current #{sort_direction}" : nil
#  		direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
#  		link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
#	end
	def sortable(column, title = nil)
    	title ||= column.titleize
    	css_class = column == sort_column ? "current #{sort_direction}" : nil
    	direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    	link_to title, params.permit(column).merge(sort: column, direction: direction, page: nil), { class: css_class }
	end
	def datepicker_input form, field, myoption
    	content_tag :td, :data => {:provide => 'datepicker', 'date-format' => 'dd-mm-yyyy', 'date-autoclose' => 'true'} do
      	form.text_field field, class: 'form-control', placeholder: 'jj-mm-aaaa', value: myoption
    end
  end
end
