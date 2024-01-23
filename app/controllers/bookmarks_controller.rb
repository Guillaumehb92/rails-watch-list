class BookmarksController < ActionController::Base
  def index
    @bookmarks = Bookmark.all
  end

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(list: @list)
    @bookmark.save
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = List.find(params[:list_id])
    @bookmark.save
    redirect_to list_path(params[:list_id])
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:url, :name, :comment, :movie_id,:list_id)
  end

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

end