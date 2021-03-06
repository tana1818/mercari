class CommentsController < ApplicationController

    def new
    end

    def create #商品コメント保存
      @comment = Comment.create(comment_params)
      redirect_to product_path(@comment.product_id)
    end

    private
    def comment_params
      params.require(:comment).permit(:comment).merge(user_id: current_user.id, product_id:params[:product_id]) #user_idは仮なのでmergeさせてからいじります
    end
end
