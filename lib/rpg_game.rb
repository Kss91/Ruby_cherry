# 基本設定
teams   = ["勇者","戦士","魔法使い"]
enemies = ["スライム","ドラゴン","ゴーレム"]
actions = ["攻撃","防御","逃げる"]
num     = rand(0..2) # 敵とのエンカウント
enemie  = enemies[num]
player_hp = 100
enemie_hp = 30

puts "#{enemie}が現れた" # 敵とエンカウント

# プレイヤーか敵のHPが0になるまで繰り返し処理
while enemie_hp > 0 do

  attack  = rand(1..20) # 攻撃の値
  damage  = rand(1..15) # 敵の攻撃の値

  # player側のアクション
  puts "コマンドを入力してください"
  puts ""
  actions.each_with_index do |action, i|
    puts "#{i+1}:#{action}"
  end
  puts "" #改行用

  a = gets.to_i # プレイヤー入力情報

  puts "" #改行用

  if a == 1
    puts "#{enemie}への攻撃"
    if attack > 5
      puts "#{attack}のダメージを与えた"
      enemie_hp -= attack
      if enemie_hp <= 0
        puts "#{enemie}を倒した"
      end
    else
      puts "攻撃ミス！"
    end
  elsif a == 2
    puts "防御で敵の攻撃に備えた"
  else
    puts "逃げるは恥だが役にたつ"
    if attack > 8
      puts "無事に逃げ切れた"
      enemie_hp = 0
    else
      puts "失敗した"
    end
  end

  puts "" #改行用

  # 敵側のアクション
  if enemie_hp > 0
    puts "#{enemie}の攻撃"
    if damage > 5
      if a ==2
        puts "プレイヤーは防御している"
        puts "プレイヤーに#{damage/4}のダメージ"
      else
        puts "プレイヤーに#{damage}のダメージ"
      end
        player_hp -= damage
        if player_hp > 0
          puts "プレイヤーの残りHP:#{player_hp}"
        else
          puts "プレイヤーは倒れた"
        end
    else
      puts "うまく攻撃をかわした"
    end
  end
  puts "" # 改行用

end
