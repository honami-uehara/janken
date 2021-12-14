def janken
 puts "じゃんけん..."
 puts "0(グー),1(チョキ),2(パー),3(戦わない)"

 player_hand = gets.to_i

 program_hand = rand(3)

 jankens=["グー","チョキ","パー"]

 puts "ポイ"
 puts "あなた：#{jankens[player_hand]}を出しました"
 puts "相手：#{jankens[program_hand]}を出しました"

if player_hand == program_hand
	puts "あいこ"
	return true
elsif (player_hand == 0 && program_hand ==1) ||(player_hand == 1 && program_hand ==2) || (player_hand == 2 && program_hand ==0)
	puts "あなたの勝ちです"
	@result ="win"
   return false
else
	puts "あなたの負けです"
	@result = "lose"
	return false
end
end


next_game = true

while next_game
  next_game = janken
end

if @result =="win"
    puts "あっち向いて〜"
    puts "0:上 1:下 2:右 3:左"
    
    player_fing = gets.to_i
    
    program_face = rand(4)
    
    choices=["上","下","右","左"]
    
    puts "あなたの指:#{choices[player_fing]},私の顔:#{choices[program_face]}"
      
    
   if player_fing == program_face
        puts "あなたの勝ちです"
   else
        puts "あいこ"
        @result ="draw"
   end 
end


if @result =="lose"
     puts "あっち向いて〜"
    puts "0:上 1:下 2:右 3:左"
    
    player_face = gets.to_i
    
    program_fing = rand(4)
    
    choices=["上","下","右","左"]
    
    puts "あなたの顔:#{choices[player_face]},私の指:#{choices[program_fing]}"
      
    
    if player_face == program_fing
        puts "あなたの負けです。"
    else
       puts "あいこ"
       @result="draw"
    end 
end
    
    
if @result =="draw"
    janken
end 
    