require 'spec_helper'
require_relative '../tree_stats'
require_relative '../node'

describe TreeStats do 
  let(:tree_stats) { TreeStats.new }
  let(:g_node) { Node.new('G') }

  context 'with 4th level consisting of only one node H attached to E.left' do
    let(:h_node) { Node.new('H') }
    let(:f_node) { Node.new('F') }
    let(:e_node) { Node.new('E', h_node) }
    let(:d_node) { Node.new('D') }
    let(:b_node) { Node.new('B', d_node, e_node) }
    let(:c_node) { Node.new('C', f_node, g_node) }
    let(:a_node) { Node.new('A', b_node, c_node)}

    it "should return 4" do
      tree_stats.get_depth(a_node).should == 4
    end
  end
  
  context 'with 4th level consisting of only one node H attached to F.right' do
    let(:h_node) { Node.new('H') }
    let(:f_node) { Node.new('F',nil,h_node)}
    let(:e_node) { Node.new('E') }
    let(:d_node) { Node.new('D') }
    let(:b_node) { Node.new('B', d_node, e_node) }
    let(:c_node) { Node.new('C', f_node, g_node) }
    let(:a_node) { Node.new('A', b_node, c_node)}

    it "should return 4" do
      tree_stats.get_depth(a_node).should == 4
    end
  end

  context 'with 5th level consisting of I being left of H and H being right of F' do
    let(:i_node) { Node.new('I') }
    let(:h_node) { Node.new('H',i_node)}
    let(:f_node) { Node.new('F',nil,h_node)}
    let(:e_node) { Node.new('E') }
    let(:d_node) { Node.new('D') }
    let(:b_node) { Node.new('B', d_node, e_node) }
    let(:c_node) { Node.new('C', f_node, g_node) }
    let(:a_node) { Node.new('A', b_node, c_node)}

    it "should return 4" do
      tree_stats.get_depth(a_node).should == 5
    end
  end
end