#! /usr/bin/env ruby

require_relative '../setup'
require 'day4_puzzle1'

generator = AdventCoinGenerator.new('ckczppom')

puts generator.find_next_coin
