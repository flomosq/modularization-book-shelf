# frozen_string_literal: true

require_relative '../rails_helper'

describe Book do
  describe 'columns' do
    it { should have_db_column(:title) }
    it { should have_db_column(:isbn) }
    it { should have_db_column(:authors) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:isbn) }
    it { should validate_presence_of(:authors) }
  end
end
