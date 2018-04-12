class Autorizacion < ApplicationRecord
  belongs_to :alumno
  belongs_to :colegio
end
