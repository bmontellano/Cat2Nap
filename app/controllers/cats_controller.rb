class CatsController < ApplicationController
  before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]

  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    @cat.user = current_user
    if @cat.save
      redirect_to cat_path(@cat)
    else
      redirect_to new_cat_path, flash: {:error => @cat.errors.full_messages}
  end
end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])
    @cat.update_attributes(cat_params)
    redirect_to  cat_path(@cat)
  end

  def destroy
    @cat = Cat.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to cats_url, notice: 'Cat has successfully gone to Kittyland.' }
      format.json { head :no_content }
    end
  end

# cat_pic: [:cat_pic_file_name, :cat_pic_file_size, :cat_pic_content_type, :cat_pic_updated_at])

  private
  def set_s3_direct_post
     @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
   end
  
  def cat_params
    params.require(:cat).permit(:name, :likes_dislikes, :age, :gender, :cat_pic)
  end

end
