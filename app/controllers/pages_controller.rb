class PagesController < ApplicationController
  before_filter :find_page

  def show
    @page = Page.friendly.find params[:id]
  end

  def find_page
    @page = Page.friendly.find params[:id]
    if request.path != page_path(@page)
      return redirect_to @page, status: :moved_permanently
    end
  end
end
