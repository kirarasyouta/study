class TopController < ApplicationController
    def index
        puts "####index######################"
    puts params
    case params[:action_type]
    when 'startA'
        @@message = '基本情報技術者試験（A試験）/試験実施'
    when 'listA'
        @@message = '基本情報技術者試験（A試験）/問題詳細'
    when 'startB'
        @@message = '基本情報技術者試験（B試験）/試験実施'
    when 'listB'
        @@message = '基本情報技術者試験（B試験）/問題詳細'
    when 'startS'
        @@message = 'Ruby Silver/試験実施'
    when 'listS'
        @@message = 'Ruby Silver/問題詳細'
    
    end
    puts @@message
    end
    
end
