# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140727223156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "afterparty_jobs", force: :cascade do |t|
    t.text     "job_dump"
    t.string   "queue"
    t.datetime "execute_at"
    t.boolean  "completed"
    t.boolean  "has_error"
    t.text     "error_message"
    t.text     "error_backtrace"
    t.datetime "completed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", force: :cascade do |t|
    t.string   "github_key"
    t.text     "basic_distribution"
    t.integer  "github_stars"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "median_close_time"
    t.integer  "issues_count"
    t.text     "pr_distribution"
    t.text     "issues_distribution"
    t.datetime "last_enqueued_at"
    t.boolean  "issues_disabled"
    t.integer  "open_issues_count"
    t.text     "description"
    t.string   "language"
    t.integer  "forks_count"
    t.integer  "stargazers_count"
    t.integer  "size"
    t.integer  "pr_close_time"
    t.integer  "issue_close_time"
  end

end
