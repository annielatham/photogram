class ImagesController < ApplicationController
  def index
    @images = Image.page(params[:page]).per(10)

    render("images/index.html.erb")
  end

  def show
    @comment = Comment.new
    @like = Like.new
    @image = Image.find(params[:id])

    render("images/show.html.erb")
  end

  def new
    @image = Image.new

    render("images/new.html.erb")
  end

  def create
    @image = Image.new

    @image.caption = params[:caption]
    @image.image_file = params[:image_file]
    @image.posting_user_id = params[:posting_user_id]

    save_status = @image.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/images/new", "/create_image"
        redirect_to("/images")
      else
        redirect_back(:fallback_location => "/", :notice => "Image created successfully.")
      end
    else
      render("images/new.html.erb")
    end
  end

  def edit
    @image = Image.find(params[:id])

    render("images/edit.html.erb")
  end

  def update
    @image = Image.find(params[:id])

    @image.caption = params[:caption]
    @image.image_file = params[:image_file]
    @image.posting_user_id = params[:posting_user_id]

    save_status = @image.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/images/#{@image.id}/edit", "/update_image"
        redirect_to("/images/#{@image.id}", :notice => "Image updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Image updated successfully.")
      end
    else
      render("images/edit.html.erb")
    end
  end

  def destroy
    @image = Image.find(params[:id])

    @image.destroy

    if URI(request.referer).path == "/images/#{@image.id}"
      redirect_to("/", :notice => "Image deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Image deleted.")
    end
  end
end
