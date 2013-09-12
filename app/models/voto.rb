class Voto < ActiveRecord::Base
  attr_accessible :oggetto, :votante, :votato, :voto
end
