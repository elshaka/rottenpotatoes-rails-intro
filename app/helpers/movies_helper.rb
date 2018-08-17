module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end

  def table_header_class(sort_by)
    params[:sort_by] == sort_by ? 'hilite' : nil
  end
end
