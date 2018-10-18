require 'decisiontree'
require 'byebug'

attributes = ['Temp']

training = [
  [98.7, 'healthy'],
  [99.1, 'healthy'],
  [99.5, 'sick'],
  [100.5, 'sick'],
  [102.5, 'crazy sick'],
  [107.5, 'dead'],
]
dec_tree = DecisionTree::ID3Tree.new(attributes, training, 'sick', :continuous)
dec_tree.train
# byebug

test = [98.5, 'healthy']

predict = dec_tree.predict(test)
puts predict

test2 = [110.5, 'healthy']

predict = dec_tree.predict(test2)
puts predict