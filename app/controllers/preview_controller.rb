class PreviewController < ApplicationController
    def prevQ
        prevpanlist
      end

      def prevA
      prevpanlist
      end

      private
      def prevpanlist
        puts "#########prevC!!!!!!!!!!!!###########"
        puts params
        case params[:action_type]
          #///////////////////ここから問題一覧内のボタン////////////////
    
          when 'createQ'
            @@message2 = '問題作成'
          when 'prevQ'
            @@message2 = '問題詳細'
          when 'prevA'
            @@message2 = '解答詳細'
    
          #//////////////////////////////////////////////////////////
    
         
        end
          puts @@message
          @title = @@message
          @title2 = @@message2
    end
      
    
end
