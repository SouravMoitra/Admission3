class AddFkToStreamQuota < ActiveRecord::Migration
  def up
    add_foreign_key :stream_quota, :streams, name: "stream_quota_fk"
  end
  def down
    remove_foreign_key :stream_quota, name: "streams_quota_fk"
  end
end
