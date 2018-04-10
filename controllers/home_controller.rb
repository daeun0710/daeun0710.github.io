class HomeController < ApplicationController
   def index
   
  end

  def new
     @posts = Post.all # 작성된 테이블 전체보기
  end

  def create
    @post = Post.new #테이블에 한 행을 추가
    @post.title = params[:post_title] #post_title이라는 이름과 내용을 title행에 저장
    @post.content = params[:post_content]
    @post.save # 테이블에 써준 내용을 모두 저장
    
    redirect_to '/home/new'
  end
  
    def delete
    @post = Post.find(params[:post_id])
    @post.destroy
    redirect_to '/home/new'
  end
  
    def edit
    @post = Post.find(params[:post_id])
  end
  
  def update
    @post = Post.find(params[:post_id])    
    @post.title = params[:post_title]
    @post.content = params[:post_content]
    @post.save
    
    redirect_to '/home/new'
  end  
end
