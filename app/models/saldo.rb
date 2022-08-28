class Saldo < ApplicationRecord
  belongs_to :ingreso
  belongs_to :egreso
end
