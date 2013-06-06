class Person < MassiveRecord::ORM::Table
  # references_one :boss, :class_name => "Person", :store_in => :info
  # references_one :attachment, :polymorphic => true
  # references_many :friends, :store_in => :info
  # references_many :blog_posts, :records_starts_from => :posts_start_id

  # embeds_many :addresses

  default_scope select(:info)

  column_family :info do
    field :name
    # field :email
    # field :phone_number
    # field :points, :integer, :default => 0
    # field :date_of_birth, :date, :allow_nil => false # Defaults to today
    # field :newsletter, :boolean, :default => false
    # field :type # Used for single table inheritance
    # field :in_the_future, :time, :default => Proc.new { 2.hours.from_now }
    # field :hobbies, :array, :allow_nil => false # Default to empty array

    # timestamps # ..or field :created_at, :time
  end

  # column_family :misc do
  #   field :with_a_lot_of_uninteresting_data
  # end

  attr_accessible :name

  # validates_presence_of :name, :email
  # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  # Returns the id the scanner should start from in the BlogPost table
  # to fetch blog posts related to this person
  def posts_start_id
    id+'-'
  end
end