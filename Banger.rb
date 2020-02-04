# Use this variable to speed up, then slow down the sample
x = 1
# Use this variable to store the long file path of your sample
banger = "C:/Users/matthew_marin/Downloads/challenge_f/this_is_a_banger.wav"

sample banger
sleep 3

4.times do
  x = x - 0.1
  sample banger, rate: x
  sleep 3
  print x
end

4.times do
  x = x + 0.1
  sample banger, rate: x
  sleep 3
  print x
end

with_fx :reverb do
  sample banger, rate: 1.5
end

