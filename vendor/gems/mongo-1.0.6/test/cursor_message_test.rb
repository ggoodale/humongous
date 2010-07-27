require 'test/test_helper'
require 'logger'

class CursorTest < Test::Unit::TestCase

  include Mongo

  @@connection = Connection.new(ENV['MONGO_RUBY_DRIVER_HOST'] || 'localhost',
                        ENV['MONGO_RUBY_DRIVER_PORT'] || Connection::DEFAULT_PORT)
  @@db   = @@connection.db(MONGO_TEST_DB)
  @@coll = @@db.collection('test')
  @@version = @@connection.server_version

  def setup
    @@coll.remove
    @@coll.insert('a' => 1)     # collection not created until it's used
    @@coll_full_name = "#{MONGO_TEST_DB}.test"
  end

  def test_cursor_invalid
    100.times do |n|
      @@coll.insert({:a => "HELLO" * 50000})
    end

    cursor = @@coll.find({}, :batch_size => 50)
    cursor.next_document
    p @@db.command("cursorInfo" => 1)
    cursor.close
    p @@db.command("cursorInfo" => 1)
    cursor.next_document
  end
end
