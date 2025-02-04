class ListController < ApplicationController
  def testA
    puts "##########################"
    puts params
    case params[:action_type]
      when 'startA'
        @@message = '基本情報技術者試験（A試験）'
        @@message2 = '試験実施'
      when 'listA'
        @@message = '基本情報技術者試験（A試験）'
        @@message2 = '問題一覧'
      when 'startB'
        @@message = '基本情報技術者試験（B試験）'
        @@message2 = '試験実施'
      when 'listB'
        @@message = '基本情報技術者試験（B試験）'
        @@message2 = '問題一覧'
      when 'startS'
        @@message = 'Ruby Silver/試験実施'
        @@message2 = '試験実施'
      when 'listS'
        @@message = 'Ruby Silver/問題詳細'
        @@message2 = '問題一覧'
      #///////////////////ここから問題一覧内のボタン////////////////

      when 'createQ'
        @@message2 = '問題作成'
      when 'prev'
        @@message2 = '問題詳細'

      #//////////////////////////////////////////////////////////

      
    end
      puts @@message
      @title = @@message
      @title2 = @@message2
  end

  
end
