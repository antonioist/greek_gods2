class CommentsController < ApplicationController
  def new
    @gods = God.where(name: ["Zeus", "Hera", "Poseidon", "Demeter", "Ares", "Athena", "Apollo", "Artemis", "Hephaestus", "Aphrodite", "Hermes", "Dionysus", "Hades", "Hypnos", "Nike", "Janus", "Nemesis", "Iris", "Hecate", "Tyche" ])
    @prayer = Prayer.find(params[:prayer_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @prayer = Prayer.find(params[:prayer_id])
    @comment.prayer = @prayer
    if @comment.save
      redirect_to prayers_path
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to prayers_path
  end

  private

  def comment_params
    params.require(:comment).permit(:description, :god_id)
  end
end
