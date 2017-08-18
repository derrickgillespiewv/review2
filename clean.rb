def clean(food)
			group = ''

            group << '<input type="checkbox" name="selected[]" value="selectionArray" label= "#{food}" id= "#{food}"/>' + food.map{ |i|  %Q('#{i}') }.join(',')
    # group
end


 

# def clean
#             group << '<input type="checkbox" name="somename" value="group"/>' + pair[0] + ", " + pair[1] + ", and " + pair[2] + "<br>"

#         else
#             group << '<input type="checkbox" name="somename" value="groupof2"/>' +  pair[0] + " and " + pair[1] + "<br>"
#         end
#     end
  
#     group
# end

#     names.each do |pair|
#         if pair.include? (pair[2])
#             group << '<input type="checkbox" name="somename" value="groupof3"/>' + pair[0] + ", " + pair[1] + ", and " + pair[2] + "<br>"

#         else
#             group << '<input type="checkbox" name="somename" value="groupof2"/>' +  pair[0] + " and " + pair[1] + "<br>"
#         end
#     end
  
#     group
# end