class PagesController < ApplicationController
  before_filter :find_page

  def single
    @page = Page.find params[:slug]
  end

  def find_page
    @page = Page.find params[:id]
    if request.path != post_path(@page)
      return redirect_to @page, status: :moved_permanently
    end
  end

end
