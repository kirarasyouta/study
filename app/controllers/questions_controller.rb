class QuestionsController < ApplicationController
  def new
    @question = Question.new
    # 新規作成画面で4つの選択肢をあらかじめ作っておく
    4.times { @question.options.build }
  end

  def create
    @question = Question.new(question_params)

    # ラジオボタン（correct_option）で選択された選択肢のインデックス
    correct_option_index = params[:correct_option].to_i

    # 選択肢をループし、選ばれたインデックスだけ answers = true に
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

  # 確認用にshowを定義しておくと便利
  def show
    @question = Question.find(params[:id])
  end

  private

  def question_params
    params.require(:question).permit(
      :title,
      :name,
      :question_text,
      :explanation,
      # Options（content）はフォームから入力される
      options_attributes: [:content, :id]
    )
  end
end
