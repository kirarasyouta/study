class QuestionsController < ApplicationController
  def new
    @question = Question.new
    4.times { @question.options.build }
  end

  def create
    @question = Question.new(question_params)

    correct_option_index = params[:correct_option].to_i

    @question.options.each_with_index do |option, index|
      option.answers = (index == correct_option_index)
    end

    if @question.save
      redirect_to @question, notice: "問題が登録されました。"
    else
      flash.now[:alert] = "入力されていない項目があります"
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  # 更新画面

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.assign_attributes(question_params)
  
    correct_option_index = params[:correct_option].to_i
  
    @question.options.each_with_index do |option, i|
      option.answers = (i == correct_option_index)
    end
  
    if @question.save
      redirect_to @question, notice: "問題を更新しました。"
    else
      flash.now[:alert] = "入力されていない項目があります"
      render :edit, status: :unprocessable_entity
    end
  end
  

  private

  def question_params
    params.require(:question).permit(
      :name,
      :title,
      :question_text,
      :explanation,
      options_attributes: [:id, :content]
    )
  end  
end
