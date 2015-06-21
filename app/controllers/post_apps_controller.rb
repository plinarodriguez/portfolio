class PostAppsController < ApplicationController
  before_action :set_post_app, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @post_apps = PostApp.all
    respond_with(@post_apps)
  end

  def show
    respond_with(@post_app)
  end

  def new
    @post_app = PostApp.new
    respond_with(@post_app)
  end

  def edit
  end

  def create
    @post_app = PostApp.new(post_app_params)
    @post_app.save
    respond_with(@post_app)
  end

  def update
    @post_app.update(post_app_params)
    respond_with(@post_app)
  end

  def destroy
    @post_app.destroy
    respond_with(@post_app)
  end

  private
    def set_post_app
      @post_app = PostApp.find(params[:id])
    end

    def post_app_params
      params[:post_app].permit(:appName, :appDetails, :image, :appUrl)
    end
end
