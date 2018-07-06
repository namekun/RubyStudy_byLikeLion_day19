# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


genres = ["horror","thriller", "action", "romantic Comedy", 
         "drama", "comedy", "SF", "adventure"]

images = %w( http://notefolio.net/data/img/66/49/6649f4257c43f298c4647ca9fa82166523cafad3667143e1d49fa767ade3b648_v1.jpg
             https://upload.wikimedia.org/wikipedia/ko/thumb/7/79/%EA%B7%B8_%EC%8B%9C%EC%A0%88%2C_%EC%9A%B0%EB%A6%AC%EA%B0%80_%EC%A2%8B%EC%95%84%ED%96%88%EB%8D%98_%EC%86%8C%EB%85%80_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg/250px-%EA%B7%B8_%EC%8B%9C%EC%A0%88%2C_%EC%9A%B0%EB%A6%AC%EA%B0%80_%EC%A2%8B%EC%95%84%ED%96%88%EB%8D%98_%EC%86%8C%EB%85%80_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg
             http://mblogthumb2.phinf.naver.net/20160702_85/thisismyproof_1467450714283TbLyg_JPEG/6-maleficent_ver14_xxlg.jpg?type=w800
             https://m.media-amazon.com/images/M/MV5BMjA1Nzk0OTM2OF5BMl5BanBnXkFtZTgwNjU2NjEwMDE@._V1_UX182_CR0,0,182,268_AL_.jpg
             http://img.hani.co.kr/imgdb/resize/2017/0306/00500005_20170306.JPG
             
                         ) # %w는 스페이스로 다 구분을 시켜준다.
User.create(email:"1234@1234", password:"1234", password_confirmation: "1234")
30.times do
    @m = Movie.create(title: Faker::Movie.quote, 
                 genre: genres.sample, 
                 director: Faker::FunnyName.name_with_initial,
                 actor: Faker::FunnyName.three_word_name, 
                 remote_image_path_url: images.sample, 
                 description: Faker::Lorem.sentence(3),
                 user_id: 1)
    p @m.errors
             
end