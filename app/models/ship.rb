class Ship

  attr_accessor :name, :type, :booty

  SHIPSALL = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    SHIPSALL << self

  end

  def self.all
    SHIPSALL
  end

  def self.clear
    SHIPSALL.clear
  end

end
