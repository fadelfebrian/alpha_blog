class Article < ActiveRecord::Base

    validates :title,presence:true, length:{minimum:10,maximum:100}
    validates :description,presence:true,length:{minimum:10,maximum:100}


end