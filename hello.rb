def janken
  puts "じゃんけん．．．"
  puts "0(グー),1(チョキ),2(パー),3(戦わない)"
    
  player_hand = gets.to_i
  # 自分の手 数字オブジェクトに変換
    
  program_hand = rand(3)
  # 相手の手 （３）は0,1,2のこと

  jankens = ["グー","チョキ","パー"]
  puts "ポイ"
  puts "あなた：#{jankens[player_hand]}を出しました"
  puts "相手：#{jankens[program_hand]}を出しました"
  
  if player_hand == program_hand
    puts "あいこ"
    return true
  elsif (program_hand == 0 && program_hand == 1)||(program_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
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
  # あいこの場合じゃんけんメゾットに戻る
  
  if @result == "win"
    puts "あっちむいて〜"
    puts "0:上 1:下 2:右 3:左"
    
    player_fing = gets.to_i
    program_face = rand(4)
    
    hois = ["上", "下", "右", "左"]
    
    puts "貴方の手:#{hois[player_fing]},私の顔#{hois[program_face]}"
    
    if player_fing == program_face
      puts "貴方の勝ちです"
      return false
    else
      puts "あいこ"
      return true
    end
  end
  
  if @result == "lose"
    puts "あっちむいて〜"
    puts "0:上 1:下 2:右 3:左"
    
    player_fing = gets.to_i
    program_face = rand(4)
    
    hois = ["上", "下", "右", "左"]
    
    puts "私の顔#{hois[program_face]},貴方の手#{hois[player_fing]}"
    
    if program_face == player_fing
      puts "貴方の負けです"
      return false
    else
      puts "あいこ"
      return true
    end
  end
  
    next_game = true
    
  while next_game
    next_game = janken
  end
  
  # 私　グー　相手　チョキ
  # 私　チョキ　相手　パー
  # 私　パー　相手　グー
