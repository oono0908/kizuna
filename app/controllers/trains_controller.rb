class TrainsController < ApplicationController

  

  def index
   @train = Train.new
   @trains = Train.last(1)
   @trains.each do |train|
     @short = train.short
     @time = train.created_at
   end
   @shorts = 0
   if @short <= 700
     @shorts += 100
     @ranks = "A"
   elsif 700 < @short && @short <= 750
     @shorts += 90
     @ranks = "B"
   elsif 750 < @short && @short <= 800
     @shorts += 80
     @ranks = "C"
   elsif 800 < @short && @short <= 850
     @shorts += 70
     @ranks = "D"
   elsif 850 < @short && @short <= 900
     @shorts += 60
     @ranks = "E"
   elsif 900 < @short && @short <= 950
     @shorts += 50
     @ranks = "F"
   else 
     @shorts += 40
     @ranks = "G"
 end

 @trains = Train.last(1)
 @trains.each do |train|
   @long = train.long
 end
 @longs = 0
 if @long <= 500
   @longs += 100
   @ranksl = "A"
 elsif 500 < @long && @long <= 520
   @longs += 90
   @ranksl = "B"
 elsif 520 < @long && @long <= 540
   @longs += 80
   @ranksl = "C"
 elsif 540 < @long && @long <= 600
   @longs += 70
   @ranksl = "D"
 elsif 620 < @long && @long <= 640
   @longs += 60
   @ranksl = "E"
 elsif 640 < @long && @long <= 700
   @longs += 50
   @ranksl = "F"
 else
   @long += 40
   @ranksl = "G"
end

@trains = Train.last(1)
  @trains.each do |train|
    @jump = train.jump
  end
  @jumps = 0
  if @jump >= 280
    @jumps += 100
    @ranksj = "A"
  elsif 280 > @jump && @jump >= 260
    @jumps += 90
    @ranksj = "B"
  elsif 260 > @jump && @jump >= 240
    @jumps += 80
    @ranksj = "C"
  elsif 240 > @jump && @jump >= 220
    @jumps += 70
    @ranksj = "D"
  elsif 220 > @jump && @jump >= 200
    @jumps += 60
    @ranksj = "E"
  elsif 200 > @jump && @jump >= 180
    @jumps += 50
    @ranksj = "F"
  else 
    @jumps += 40
    @ranksj = "G"
 end

 @trains = Train.last(1)
 @trains.each do |train|
   @situp = train.situp
 end
 @situps = 0
 if @situp >= 40
   @situps += 100
   @rankss = "A"
 elsif 40 > @situp && @situp >= 37
   @situps += 90
   @rankss = "B"
 elsif 37 > @situp && @situp >= 35
   @situps += 80
   @rankss = "C"
 elsif 35 > @situp && @situp >= 32
   @situps += 70
   @rankss = "D"
 elsif 32 > @situp && @situp >= 29
   @situps += 60
   @rankss = "E"
 elsif 29 > @situp && @situp >= 25
   @situps += 50
   @rankss = "F"
 else 
   @situps += 40
   @rankss = "G"
 end

 @trains = Train.last(1)
  @trains.each do |train|
    @hand = train.hand
  end
  @hands = 0
  if @hand > 38
    @hands += 100
    @ranksh = "A"
  elsif 38 > @hand && @hand >= 35
    @hands += 90
    @ranksh = "B"
  elsif 35 > @hand && @hand >= 33
    @hands += 80
    @ranksh = "C"
  elsif 33 > @hand && @hand >= 31
    @hands += 70
    @ranksh = "D"
  elsif 31 > @hand && @hand >= 29
    @hands += 60
    @ranksh = "E"
  elsif 29 > @hand && @hand >= 25
    @hands += 50
    @ranksh = "F"
  else
    @hands += 40
    @ranksh = "G"
 end

 @trains = Train.last(1)
 @trains.each do |train|
   @side = train.side
 end
 @sides = 0
 if @side >= 70
   @sides = 100
   @ranksi = "A"
 elsif 70 > @side && @side >= 67
   @sides += 90
   @ranksi = "B"
 elsif 67 > @side && @side >= 63
   @sides += 80
   @ranksi = "C"
 elsif 63 > @side && @side >= 58
   @sides += 70
   @ranksi = "D"
 elsif 58 > @side && @side >= 54
   @sides += 60
   @ranksi = "E"
 elsif 54 > @side && @side >= 50
   @sides += 50
   @ranksi = "F"
 else
   @sides += 40
   @ranksi = "G"
end

   @total = @shorts+ @situps + @longs + @jumps + @hands + @sides
     if @total >= 540
       @rank = "A"
     elsif 540 > @total && @total >= 480
       @rank = "B"
     elsif 480 > @total && @total >= 420
       @rank = "C"
     elsif 420 > @total && @total >= 360
       @rank = "D"
     elsif 360 > @total && @total >= 300
       @rank = "E"
     else 
       @rank = "F"
   end
   
  end

  def create
    Train.create(test_params)
    redirect_to trains_path
  end




private

  def test_params 
    params.require(:train).permit(:short, :situp, :long, :jump, :hand, :side).merge(user_id: current_user.id)
  end

  
end