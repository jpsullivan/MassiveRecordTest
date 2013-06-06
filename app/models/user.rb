class User < MassiveRecord::ORM::Table
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
end
