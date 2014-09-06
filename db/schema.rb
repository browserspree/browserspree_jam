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

ActiveRecord::Schema.define(version: 20140904222421) do

  create_table "cms_attachment_versions", force: true do |t|
    t.string   "data_file_name"
    t.string   "data_file_path"
    t.string   "file_location"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.string   "attachable_type"
    t.string   "attachment_name"
    t.integer  "attachable_id"
    t.integer  "attachable_version"
    t.string   "cardinality"
    t.integer  "original_record_id"
    t.integer  "version"
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_attachment_versions", ["original_record_id"], name: "index_cms_attachment_versions_on_original_record_id"

  create_table "cms_attachments", force: true do |t|
    t.string   "data_file_name"
    t.string   "data_file_path"
    t.string   "file_location"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.string   "attachable_type"
    t.string   "attachment_name"
    t.integer  "attachable_id"
    t.integer  "attachable_version"
    t.string   "cardinality"
    t.integer  "version"
    t.integer  "lock_version",       default: 0
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_categories", force: true do |t|
    t.integer  "category_type_id"
    t.integer  "parent_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_category_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_connectors", force: true do |t|
    t.integer  "page_id"
    t.integer  "page_version"
    t.integer  "connectable_id"
    t.string   "connectable_type"
    t.integer  "connectable_version"
    t.string   "container"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_connectors", ["connectable_type"], name: "index_cms_connectors_on_connectable_type"
  add_index "cms_connectors", ["connectable_version"], name: "index_cms_connectors_on_connectable_version"
  add_index "cms_connectors", ["page_id"], name: "index_cms_connectors_on_page_id"
  add_index "cms_connectors", ["page_version"], name: "index_cms_connectors_on_page_version"

  create_table "cms_dynamic_view_versions", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.string   "format"
    t.string   "handler"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "original_record_id"
    t.integer  "version"
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.string   "path"
    t.string   "locale",             default: "en"
    t.boolean  "partial",            default: false
  end

  create_table "cms_dynamic_views", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.string   "format"
    t.string   "handler"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version"
    t.integer  "lock_version",  default: 0
    t.boolean  "published",     default: false
    t.boolean  "deleted",       default: false
    t.boolean  "archived",      default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.string   "path"
    t.string   "locale",        default: "en"
    t.boolean  "partial",       default: false
  end

  create_table "cms_email_messages", force: true do |t|
    t.string   "sender"
    t.text     "recipients"
    t.text     "subject"
    t.text     "cc"
    t.text     "bcc"
    t.text     "body"
    t.string   "content_type"
    t.datetime "delivered_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_file_block_versions", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.integer  "attachment_id"
    t.integer  "attachment_version"
    t.integer  "original_record_id"
    t.integer  "version"
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_file_block_versions", ["original_record_id"], name: "index_cms_file_block_versions_on_original_record_id"
  add_index "cms_file_block_versions", ["version"], name: "index_cms_file_block_versions_on_version"

  create_table "cms_file_blocks", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.integer  "attachment_id"
    t.integer  "attachment_version"
    t.integer  "version"
    t.integer  "lock_version",       default: 0
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_file_blocks", ["deleted"], name: "index_cms_file_blocks_on_deleted"
  add_index "cms_file_blocks", ["type"], name: "index_cms_file_blocks_on_type"

  create_table "cms_form_entries", force: true do |t|
    t.text     "data_columns"
    t.integer  "form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_form_fields", force: true do |t|
    t.integer  "form_id"
    t.string   "label"
    t.string   "name"
    t.string   "field_type"
    t.boolean  "required"
    t.integer  "position"
    t.text     "instructions"
    t.text     "default_value"
    t.text     "choices"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_form_fields", ["form_id", "name"], name: "index_cms_form_fields_on_form_id_and_name", unique: true

  create_table "cms_form_versions", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "confirmation_behavior"
    t.text     "confirmation_text"
    t.string   "confirmation_redirect"
    t.string   "notification_email"
    t.integer  "original_record_id"
    t.integer  "version"
    t.boolean  "published",             default: false
    t.boolean  "deleted",               default: false
    t.boolean  "archived",              default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_forms", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "confirmation_behavior"
    t.text     "confirmation_text"
    t.string   "confirmation_redirect"
    t.string   "notification_email"
    t.integer  "version"
    t.integer  "lock_version",          default: 0
    t.boolean  "published",             default: false
    t.boolean  "deleted",               default: false
    t.boolean  "archived",              default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_group_permissions", force: true do |t|
    t.integer "group_id"
    t.integer "permission_id"
  end

  add_index "cms_group_permissions", ["group_id", "permission_id"], name: "index_cms_group_permissions_on_group_id_and_permission_id"
  add_index "cms_group_permissions", ["group_id"], name: "index_cms_group_permissions_on_group_id"
  add_index "cms_group_permissions", ["permission_id"], name: "index_cms_group_permissions_on_permission_id"

  create_table "cms_group_sections", force: true do |t|
    t.integer "group_id"
    t.integer "section_id"
  end

  add_index "cms_group_sections", ["group_id"], name: "index_cms_group_sections_on_group_id"
  add_index "cms_group_sections", ["section_id"], name: "index_cms_group_sections_on_section_id"

  create_table "cms_group_type_permissions", force: true do |t|
    t.integer "group_type_id"
    t.integer "permission_id"
  end

  create_table "cms_group_types", force: true do |t|
    t.string   "name"
    t.boolean  "guest",      default: false
    t.boolean  "cms_access", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_group_types", ["cms_access"], name: "index_cms_group_types_on_cms_access"

  create_table "cms_groups", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "group_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_groups", ["code"], name: "index_cms_groups_on_code"
  add_index "cms_groups", ["group_type_id"], name: "index_cms_groups_on_group_type_id"

  create_table "cms_html_block_versions", force: true do |t|
    t.text     "content",            limit: 65537
    t.integer  "original_record_id"
    t.integer  "version"
    t.string   "name"
    t.boolean  "published",                        default: false
    t.boolean  "deleted",                          default: false
    t.boolean  "archived",                         default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_html_block_versions", ["original_record_id"], name: "index_cms_html_block_versions_on_original_record_id"
  add_index "cms_html_block_versions", ["version"], name: "index_cms_html_block_versions_on_version"

  create_table "cms_html_blocks", force: true do |t|
    t.text     "content",       limit: 65537
    t.integer  "version"
    t.integer  "lock_version",                default: 0
    t.string   "name"
    t.boolean  "published",                   default: false
    t.boolean  "deleted",                     default: false
    t.boolean  "archived",                    default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_html_blocks", ["deleted"], name: "index_cms_html_blocks_on_deleted"

  create_table "cms_link_versions", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.boolean  "new_window",         default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "original_record_id"
    t.integer  "version"
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "cms_links", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.boolean  "new_window",     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version"
    t.integer  "lock_version",   default: 0
    t.boolean  "published",      default: false
    t.boolean  "deleted",        default: false
    t.boolean  "archived",       default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.integer  "latest_version"
  end

  create_table "cms_page_route_options", force: true do |t|
    t.integer  "page_route_id"
    t.string   "type"
    t.string   "name"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_page_routes", force: true do |t|
    t.string   "name"
    t.string   "pattern"
    t.integer  "page_id"
    t.text     "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_page_versions", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "path"
    t.string   "template_file_name"
    t.text     "description"
    t.text     "keywords"
    t.string   "language"
    t.boolean  "cacheable",          default: false
    t.boolean  "hidden",             default: false
    t.integer  "original_record_id"
    t.integer  "version"
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.string   "version_comment"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_page_versions", ["original_record_id"], name: "index_cms_page_versions_on_original_record_id"

  create_table "cms_pages", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "path"
    t.string   "template_file_name"
    t.text     "description"
    t.text     "keywords"
    t.string   "language"
    t.boolean  "cacheable",          default: false
    t.boolean  "hidden",             default: false
    t.integer  "version"
    t.integer  "lock_version",       default: 0
    t.boolean  "published",          default: false
    t.boolean  "deleted",            default: false
    t.boolean  "archived",           default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "latest_version"
  end

  add_index "cms_pages", ["deleted"], name: "index_cms_pages_on_deleted"
  add_index "cms_pages", ["path"], name: "index_cms_pages_on_path"
  add_index "cms_pages", ["version"], name: "index_cms_pages_on_version"

  create_table "cms_permissions", force: true do |t|
    t.string   "name"
    t.string   "full_name"
    t.string   "description"
    t.string   "for_module"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_portlet_attributes", force: true do |t|
    t.integer "portlet_id"
    t.string  "name"
    t.text    "value"
  end

  add_index "cms_portlet_attributes", ["portlet_id"], name: "index_cms_portlet_attributes_on_portlet_id"

  create_table "cms_portlets", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.boolean  "archived",      default: false
    t.boolean  "deleted",       default: false
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_portlets", ["name"], name: "index_cms_portlets_on_name"

  create_table "cms_redirects", force: true do |t|
    t.string   "from_path"
    t.string   "to_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_redirects", ["from_path"], name: "index_cms_redirects_on_from_path"

  create_table "cms_section_nodes", force: true do |t|
    t.string   "node_type"
    t.integer  "node_id"
    t.integer  "position"
    t.string   "ancestry"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "cms_section_nodes", ["ancestry"], name: "index_cms_section_nodes_on_ancestry"
  add_index "cms_section_nodes", ["node_type"], name: "index_cms_section_nodes_on_node_type"

  create_table "cms_sections", force: true do |t|
    t.string   "name"
    t.string   "path"
    t.boolean  "root",       default: false
    t.boolean  "hidden",     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_sections", ["path"], name: "index_cms_sections_on_path"

  create_table "cms_sites", force: true do |t|
    t.string   "name"
    t.string   "domain"
    t.boolean  "the_default"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "taggable_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_tasks", force: true do |t|
    t.integer  "assigned_by_id"
    t.integer  "assigned_to_id"
    t.integer  "page_id"
    t.text     "comment"
    t.date     "due_date"
    t.datetime "completed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_tasks", ["assigned_to_id"], name: "index_cms_tasks_on_assigned_to_id"
  add_index "cms_tasks", ["completed_at"], name: "index_cms_tasks_on_completed_at"
  add_index "cms_tasks", ["page_id"], name: "index_cms_tasks_on_page_id"

  create_table "cms_user_group_memberships", force: true do |t|
    t.integer "user_id"
    t.integer "group_id"
  end

  add_index "cms_user_group_memberships", ["group_id"], name: "index_cms_user_group_memberships_on_group_id"
  add_index "cms_user_group_memberships", ["user_id"], name: "index_cms_user_group_memberships_on_user_id"

  create_table "cms_users", force: true do |t|
    t.string   "login",                  limit: 40
    t.string   "first_name",             limit: 40
    t.string   "last_name",              limit: 40
    t.string   "email",                  limit: 40
    t.string   "salt",                   limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "expires_at"
    t.datetime "remember_created_at"
    t.string   "reset_password_token"
    t.string   "encrypted_password",                default: "",          null: false
    t.datetime "reset_password_sent_at"
    t.string   "type",                              default: "Cms::User"
    t.string   "source"
    t.text     "external_data"
    t.string   "spree_api_key",          limit: 48
    t.integer  "ship_address_id"
    t.integer  "bill_address_id"
  end

  add_index "cms_users", ["email"], name: "index_cms_users_on_email", unique: true
  add_index "cms_users", ["expires_at"], name: "index_cms_users_on_expires_at"
  add_index "cms_users", ["login"], name: "index_cms_users_on_login", unique: true
  add_index "cms_users", ["reset_password_token"], name: "index_cms_users_on_reset_password_token", unique: true

  create_table "spree_addresses", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "zipcode"
    t.string   "phone"
    t.string   "state_name"
    t.string   "alternative_phone"
    t.string   "company"
    t.integer  "state_id"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spree_addresses", ["firstname"], name: "index_addresses_on_firstname"
  add_index "spree_addresses", ["lastname"], name: "index_addresses_on_lastname"

  create_table "spree_adjustments", force: true do |t|
    t.integer  "source_id"
    t.string   "source_type"
    t.integer  "adjustable_id"
    t.string   "adjustable_type"
    t.decimal  "amount",          precision: 10, scale: 2
    t.string   "label"
    t.boolean  "mandatory"
    t.boolean  "eligible",                                 default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.integer  "order_id"
    t.boolean  "included",                                 default: false
  end

  add_index "spree_adjustments", ["adjustable_id"], name: "index_adjustments_on_order_id"
  add_index "spree_adjustments", ["source_type", "source_id"], name: "index_spree_adjustments_on_source_type_and_source_id"

  create_table "spree_assets", force: true do |t|
    t.integer  "viewable_id"
    t.string   "viewable_type"
    t.integer  "attachment_width"
    t.integer  "attachment_height"
    t.integer  "attachment_file_size"
    t.integer  "position"
    t.string   "attachment_content_type"
    t.string   "attachment_file_name"
    t.string   "type",                    limit: 75
    t.datetime "attachment_updated_at"
    t.text     "alt"
  end

  add_index "spree_assets", ["viewable_id"], name: "index_assets_on_viewable_id"
  add_index "spree_assets", ["viewable_type", "type"], name: "index_assets_on_viewable_type_and_type"

  create_table "spree_calculators", force: true do |t|
    t.string   "type"
    t.integer  "calculable_id"
    t.string   "calculable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spree_calculators", ["calculable_id", "calculable_type"], name: "index_spree_calculators_on_calculable_id_and_calculable_type"
  add_index "spree_calculators", ["id", "type"], name: "index_spree_calculators_on_id_and_type"

  create_table "spree_configurations", force: true do |t|
    t.string   "name"
    t.string   "type",       limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spree_configurations", ["name", "type"], name: "index_spree_configurations_on_name_and_type"

  create_table "spree_countries", force: true do |t|
    t.string   "iso_name"
    t.string   "iso"
    t.string   "iso3"
    t.string   "name"
    t.integer  "numcode"
    t.boolean  "states_required", default: false
    t.datetime "updated_at"
  end

  create_table "spree_credit_cards", force: true do |t|
    t.string   "month"
    t.string   "year"
    t.string   "cc_type"
    t.string   "last_digits"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "address_id"
    t.string   "gateway_customer_profile_id"
    t.string   "gateway_payment_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "user_id"
    t.integer  "payment_method_id"
  end

  add_index "spree_credit_cards", ["payment_method_id"], name: "index_spree_credit_cards_on_payment_method_id"
  add_index "spree_credit_cards", ["user_id"], name: "index_spree_credit_cards_on_user_id"

  create_table "spree_gateways", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.text     "description"
    t.boolean  "active",      default: true
    t.string   "environment", default: "development"
    t.string   "server",      default: "test"
    t.boolean  "test_mode",   default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_inventory_units", force: true do |t|
    t.string   "state"
    t.integer  "variant_id"
    t.integer  "order_id"
    t.integer  "shipment_id"
    t.integer  "return_authorization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "pending",                 default: true
    t.integer  "line_item_id"
  end

  add_index "spree_inventory_units", ["line_item_id"], name: "index_spree_inventory_units_on_line_item_id"
  add_index "spree_inventory_units", ["order_id"], name: "index_inventory_units_on_order_id"
  add_index "spree_inventory_units", ["shipment_id"], name: "index_inventory_units_on_shipment_id"
  add_index "spree_inventory_units", ["variant_id"], name: "index_inventory_units_on_variant_id"

  create_table "spree_line_items", force: true do |t|
    t.integer  "variant_id"
    t.integer  "order_id"
    t.integer  "quantity",                                                    null: false
    t.decimal  "price",                precision: 8,  scale: 2,               null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "currency"
    t.decimal  "cost_price",           precision: 8,  scale: 2
    t.integer  "tax_category_id"
    t.decimal  "adjustment_total",     precision: 10, scale: 2, default: 0.0
    t.decimal  "additional_tax_total", precision: 10, scale: 2, default: 0.0
    t.decimal  "promo_total",          precision: 10, scale: 2, default: 0.0
    t.decimal  "included_tax_total",   precision: 10, scale: 2, default: 0.0, null: false
    t.decimal  "pre_tax_amount",       precision: 8,  scale: 2
  end

  add_index "spree_line_items", ["order_id"], name: "index_spree_line_items_on_order_id"
  add_index "spree_line_items", ["variant_id"], name: "index_spree_line_items_on_variant_id"

  create_table "spree_log_entries", force: true do |t|
    t.integer  "source_id"
    t.string   "source_type"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_option_types", force: true do |t|
    t.string   "name",         limit: 100
    t.string   "presentation", limit: 100
    t.integer  "position",                 default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_option_types_prototypes", id: false, force: true do |t|
    t.integer "prototype_id"
    t.integer "option_type_id"
  end

  create_table "spree_option_values", force: true do |t|
    t.integer  "position"
    t.string   "name"
    t.string   "presentation"
    t.integer  "option_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spree_option_values", ["option_type_id"], name: "index_spree_option_values_on_option_type_id"

  create_table "spree_option_values_variants", id: false, force: true do |t|
    t.integer "variant_id"
    t.integer "option_value_id"
  end

  add_index "spree_option_values_variants", ["variant_id", "option_value_id"], name: "index_option_values_variants_on_variant_id_and_option_value_id"
  add_index "spree_option_values_variants", ["variant_id"], name: "index_spree_option_values_variants_on_variant_id"

  create_table "spree_orders", force: true do |t|
    t.string   "number",                 limit: 32
    t.decimal  "item_total",                        precision: 10, scale: 2, default: 0.0,     null: false
    t.decimal  "total",                             precision: 10, scale: 2, default: 0.0,     null: false
    t.string   "state"
    t.decimal  "adjustment_total",                  precision: 10, scale: 2, default: 0.0,     null: false
    t.integer  "user_id"
    t.datetime "completed_at"
    t.integer  "bill_address_id"
    t.integer  "ship_address_id"
    t.decimal  "payment_total",                     precision: 10, scale: 2, default: 0.0
    t.integer  "shipping_method_id"
    t.string   "shipment_state"
    t.string   "payment_state"
    t.string   "email"
    t.text     "special_instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "currency"
    t.string   "last_ip_address"
    t.integer  "created_by_id"
    t.decimal  "shipment_total",                    precision: 10, scale: 2, default: 0.0,     null: false
    t.decimal  "additional_tax_total",              precision: 10, scale: 2, default: 0.0
    t.decimal  "promo_total",                       precision: 10, scale: 2, default: 0.0
    t.string   "channel",                                                    default: "spree"
    t.decimal  "included_tax_total",                precision: 10, scale: 2, default: 0.0,     null: false
    t.integer  "item_count",                                                 default: 0
    t.integer  "approver_id"
    t.datetime "approved_at"
    t.boolean  "confirmation_delivered",                                     default: false
    t.boolean  "considered_risky",                                           default: false
  end

  add_index "spree_orders", ["completed_at"], name: "index_spree_orders_on_completed_at"
  add_index "spree_orders", ["number"], name: "index_spree_orders_on_number"
  add_index "spree_orders", ["user_id", "created_by_id"], name: "index_spree_orders_on_user_id_and_created_by_id"
  add_index "spree_orders", ["user_id"], name: "index_spree_orders_on_user_id"

  create_table "spree_orders_promotions", id: false, force: true do |t|
    t.integer "order_id"
    t.integer "promotion_id"
  end

  create_table "spree_payment_capture_events", force: true do |t|
    t.decimal  "amount",     precision: 10, scale: 2, default: 0.0
    t.integer  "payment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spree_payment_capture_events", ["payment_id"], name: "index_spree_payment_capture_events_on_payment_id"

  create_table "spree_payment_methods", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.text     "description"
    t.boolean  "active",       default: true
    t.string   "environment",  default: "development"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "display_on"
    t.boolean  "auto_capture"
  end

  add_index "spree_payment_methods", ["id", "type"], name: "index_spree_payment_methods_on_id_and_type"

  create_table "spree_payments", force: true do |t|
    t.decimal  "amount",               precision: 10, scale: 2, default: 0.0, null: false
    t.integer  "order_id"
    t.integer  "source_id"
    t.string   "source_type"
    t.integer  "payment_method_id"
    t.string   "state"
    t.string   "response_code"
    t.string   "avs_response"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "identifier"
    t.string   "cvv_response_code"
    t.string   "cvv_response_message"
  end

  add_index "spree_payments", ["order_id"], name: "index_spree_payments_on_order_id"
  add_index "spree_payments", ["payment_method_id"], name: "index_spree_payments_on_payment_method_id"

  create_table "spree_preferences", force: true do |t|
    t.text     "value"
    t.string   "key"
    t.string   "value_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spree_preferences", ["key"], name: "index_spree_preferences_on_key", unique: true

  create_table "spree_prices", force: true do |t|
    t.integer  "variant_id",                         null: false
    t.decimal  "amount",     precision: 8, scale: 2
    t.string   "currency"
    t.datetime "deleted_at"
  end

  add_index "spree_prices", ["variant_id", "currency"], name: "index_spree_prices_on_variant_id_and_currency"

  create_table "spree_product_option_types", force: true do |t|
    t.integer  "position"
    t.integer  "product_id"
    t.integer  "option_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_product_properties", force: true do |t|
    t.string   "value"
    t.integer  "product_id"
    t.integer  "property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position",    default: 0
  end

  add_index "spree_product_properties", ["product_id"], name: "index_product_properties_on_product_id"

  create_table "spree_products", force: true do |t|
    t.string   "name",                 default: "", null: false
    t.text     "description"
    t.datetime "available_on"
    t.datetime "deleted_at"
    t.string   "slug"
    t.text     "meta_description"
    t.string   "meta_keywords"
    t.integer  "tax_category_id"
    t.integer  "shipping_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spree_products", ["available_on"], name: "index_spree_products_on_available_on"
  add_index "spree_products", ["deleted_at"], name: "index_spree_products_on_deleted_at"
  add_index "spree_products", ["name"], name: "index_spree_products_on_name"
  add_index "spree_products", ["slug"], name: "index_spree_products_on_slug"
  add_index "spree_products", ["slug"], name: "permalink_idx_unique", unique: true

  create_table "spree_products_promotion_rules", id: false, force: true do |t|
    t.integer "product_id"
    t.integer "promotion_rule_id"
  end

  add_index "spree_products_promotion_rules", ["product_id"], name: "index_products_promotion_rules_on_product_id"
  add_index "spree_products_promotion_rules", ["promotion_rule_id"], name: "index_products_promotion_rules_on_promotion_rule_id"

  create_table "spree_products_taxons", force: true do |t|
    t.integer "product_id"
    t.integer "taxon_id"
    t.integer "position"
  end

  add_index "spree_products_taxons", ["product_id"], name: "index_spree_products_taxons_on_product_id"
  add_index "spree_products_taxons", ["taxon_id"], name: "index_spree_products_taxons_on_taxon_id"

  create_table "spree_promotion_action_line_items", force: true do |t|
    t.integer "promotion_action_id"
    t.integer "variant_id"
    t.integer "quantity",            default: 1
  end

  create_table "spree_promotion_actions", force: true do |t|
    t.integer  "promotion_id"
    t.integer  "position"
    t.string   "type"
    t.datetime "deleted_at"
  end

  add_index "spree_promotion_actions", ["deleted_at"], name: "index_spree_promotion_actions_on_deleted_at"
  add_index "spree_promotion_actions", ["id", "type"], name: "index_spree_promotion_actions_on_id_and_type"
  add_index "spree_promotion_actions", ["promotion_id"], name: "index_spree_promotion_actions_on_promotion_id"

  create_table "spree_promotion_rules", force: true do |t|
    t.integer  "promotion_id"
    t.integer  "user_id"
    t.integer  "product_group_id"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
  end

  add_index "spree_promotion_rules", ["product_group_id"], name: "index_promotion_rules_on_product_group_id"
  add_index "spree_promotion_rules", ["user_id"], name: "index_promotion_rules_on_user_id"

  create_table "spree_promotion_rules_users", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "promotion_rule_id"
  end

  add_index "spree_promotion_rules_users", ["promotion_rule_id"], name: "index_promotion_rules_users_on_promotion_rule_id"
  add_index "spree_promotion_rules_users", ["user_id"], name: "index_promotion_rules_users_on_user_id"

  create_table "spree_promotions", force: true do |t|
    t.string   "description"
    t.datetime "expires_at"
    t.datetime "starts_at"
    t.string   "name"
    t.string   "type"
    t.integer  "usage_limit"
    t.string   "match_policy", default: "all"
    t.string   "code"
    t.boolean  "advertise",    default: false
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spree_promotions", ["id", "type"], name: "index_spree_promotions_on_id_and_type"

  create_table "spree_properties", force: true do |t|
    t.string   "name"
    t.string   "presentation", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_properties_prototypes", id: false, force: true do |t|
    t.integer "prototype_id"
    t.integer "property_id"
  end

  create_table "spree_prototypes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_return_authorizations", force: true do |t|
    t.string   "number"
    t.string   "state"
    t.decimal  "amount",            precision: 10, scale: 2, default: 0.0, null: false
    t.integer  "order_id"
    t.text     "reason"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock_location_id"
  end

  create_table "spree_roles", force: true do |t|
    t.string "name"
  end

  create_table "spree_roles_users", id: false, force: true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "spree_roles_users", ["role_id"], name: "index_spree_roles_users_on_role_id"
  add_index "spree_roles_users", ["user_id"], name: "index_spree_roles_users_on_user_id"

  create_table "spree_shipments", force: true do |t|
    t.string   "tracking"
    t.string   "number"
    t.decimal  "cost",                 precision: 8,  scale: 2
    t.datetime "shipped_at"
    t.integer  "order_id"
    t.integer  "address_id"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock_location_id"
    t.decimal  "adjustment_total",     precision: 10, scale: 2, default: 0.0
    t.decimal  "additional_tax_total", precision: 10, scale: 2, default: 0.0
    t.decimal  "promo_total",          precision: 10, scale: 2, default: 0.0
    t.decimal  "included_tax_total",   precision: 10, scale: 2, default: 0.0, null: false
    t.decimal  "pre_tax_amount",       precision: 8,  scale: 2
  end

  add_index "spree_shipments", ["number"], name: "index_shipments_on_number"
  add_index "spree_shipments", ["order_id"], name: "index_spree_shipments_on_order_id"
  add_index "spree_shipments", ["stock_location_id"], name: "index_spree_shipments_on_stock_location_id"

  create_table "spree_shipping_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_shipping_method_categories", force: true do |t|
    t.integer  "shipping_method_id",   null: false
    t.integer  "shipping_category_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spree_shipping_method_categories", ["shipping_category_id", "shipping_method_id"], name: "unique_spree_shipping_method_categories", unique: true
  add_index "spree_shipping_method_categories", ["shipping_method_id"], name: "index_spree_shipping_method_categories_on_shipping_method_id"

  create_table "spree_shipping_methods", force: true do |t|
    t.string   "name"
    t.string   "display_on"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tracking_url"
    t.string   "admin_name"
    t.integer  "tax_category_id"
  end

  create_table "spree_shipping_methods_zones", id: false, force: true do |t|
    t.integer "shipping_method_id"
    t.integer "zone_id"
  end

  create_table "spree_shipping_rates", force: true do |t|
    t.integer  "shipment_id"
    t.integer  "shipping_method_id"
    t.boolean  "selected",                                   default: false
    t.decimal  "cost",               precision: 8, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tax_rate_id"
  end

  add_index "spree_shipping_rates", ["shipment_id", "shipping_method_id"], name: "spree_shipping_rates_join_index", unique: true

  create_table "spree_skrill_transactions", force: true do |t|
    t.string   "email"
    t.float    "amount"
    t.string   "currency"
    t.integer  "transaction_id"
    t.integer  "customer_id"
    t.string   "payment_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_state_changes", force: true do |t|
    t.string   "name"
    t.string   "previous_state"
    t.integer  "stateful_id"
    t.integer  "user_id"
    t.string   "stateful_type"
    t.string   "next_state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_states", force: true do |t|
    t.string   "name"
    t.string   "abbr"
    t.integer  "country_id"
    t.datetime "updated_at"
  end

  create_table "spree_stock_items", force: true do |t|
    t.integer  "stock_location_id"
    t.integer  "variant_id"
    t.integer  "count_on_hand",     default: 0,     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "backorderable",     default: false
    t.datetime "deleted_at"
  end

  add_index "spree_stock_items", ["stock_location_id", "variant_id"], name: "stock_item_by_loc_and_var_id"
  add_index "spree_stock_items", ["stock_location_id"], name: "index_spree_stock_items_on_stock_location_id"

  create_table "spree_stock_locations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.integer  "state_id"
    t.string   "state_name"
    t.integer  "country_id"
    t.string   "zipcode"
    t.string   "phone"
    t.boolean  "active",                 default: true
    t.boolean  "backorderable_default",  default: false
    t.boolean  "propagate_all_variants", default: true
    t.string   "admin_name"
  end

  create_table "spree_stock_movements", force: true do |t|
    t.integer  "stock_item_id"
    t.integer  "quantity",        default: 0
    t.string   "action"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "originator_id"
    t.string   "originator_type"
  end

  add_index "spree_stock_movements", ["stock_item_id"], name: "index_spree_stock_movements_on_stock_item_id"

  create_table "spree_stock_transfers", force: true do |t|
    t.string   "type"
    t.string   "reference"
    t.integer  "source_location_id"
    t.integer  "destination_location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "number"
  end

  add_index "spree_stock_transfers", ["destination_location_id"], name: "index_spree_stock_transfers_on_destination_location_id"
  add_index "spree_stock_transfers", ["number"], name: "index_spree_stock_transfers_on_number"
  add_index "spree_stock_transfers", ["source_location_id"], name: "index_spree_stock_transfers_on_source_location_id"

  create_table "spree_tax_categories", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "is_default",  default: false
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_tax_rates", force: true do |t|
    t.decimal  "amount",             precision: 8, scale: 5
    t.integer  "zone_id"
    t.integer  "tax_category_id"
    t.boolean  "included_in_price",                          default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.boolean  "show_rate_in_label",                         default: true
    t.datetime "deleted_at"
  end

  create_table "spree_taxonomies", force: true do |t|
    t.string   "name",                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position",   default: 0
  end

  create_table "spree_taxons", force: true do |t|
    t.integer  "parent_id"
    t.integer  "position",          default: 0
    t.string   "name",                          null: false
    t.string   "permalink"
    t.integer  "taxonomy_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "meta_keywords"
    t.integer  "depth"
  end

  add_index "spree_taxons", ["parent_id"], name: "index_taxons_on_parent_id"
  add_index "spree_taxons", ["permalink"], name: "index_taxons_on_permalink"
  add_index "spree_taxons", ["taxonomy_id"], name: "index_taxons_on_taxonomy_id"

  create_table "spree_tokenized_permissions", force: true do |t|
    t.integer  "permissable_id"
    t.string   "permissable_type"
    t.string   "token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spree_tokenized_permissions", ["permissable_id", "permissable_type"], name: "index_tokenized_name_and_type"

  create_table "spree_trackers", force: true do |t|
    t.string   "environment"
    t.string   "analytics_id"
    t.boolean  "active",       default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_users", force: true do |t|
    t.string   "encrypted_password",     limit: 128
    t.string   "password_salt",          limit: 128
    t.string   "email"
    t.string   "remember_token"
    t.string   "persistence_token"
    t.string   "reset_password_token"
    t.string   "perishable_token"
    t.integer  "sign_in_count",                      default: 0, null: false
    t.integer  "failed_attempts",                    default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "login"
    t.integer  "ship_address_id"
    t.integer  "bill_address_id"
    t.string   "authentication_token"
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "remember_created_at"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "spree_api_key",          limit: 48
  end

  add_index "spree_users", ["spree_api_key"], name: "index_spree_users_on_spree_api_key"

  create_table "spree_variants", force: true do |t|
    t.string   "sku",                                     default: "",    null: false
    t.decimal  "weight",          precision: 8, scale: 2, default: 0.0
    t.decimal  "height",          precision: 8, scale: 2
    t.decimal  "width",           precision: 8, scale: 2
    t.decimal  "depth",           precision: 8, scale: 2
    t.datetime "deleted_at"
    t.boolean  "is_master",                               default: false
    t.integer  "product_id"
    t.decimal  "cost_price",      precision: 8, scale: 2
    t.integer  "position"
    t.string   "cost_currency"
    t.boolean  "track_inventory",                         default: true
    t.integer  "tax_category_id"
    t.datetime "updated_at"
  end

  add_index "spree_variants", ["product_id"], name: "index_spree_variants_on_product_id"
  add_index "spree_variants", ["sku"], name: "index_spree_variants_on_sku"
  add_index "spree_variants", ["tax_category_id"], name: "index_spree_variants_on_tax_category_id"

  create_table "spree_zone_members", force: true do |t|
    t.integer  "zoneable_id"
    t.string   "zoneable_type"
    t.integer  "zone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_zones", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "default_tax",        default: false
    t.integer  "zone_members_count", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
