module ReportsKit
  module Reports
    module FilterTypes
      class Number < Base
        def apply_conditions(records)
          case criteria[:operator]
          when '>'
            records.where("#{column} > #{value.to_i}")
          when '>='
            records.where("#{column} >= #{value.to_i}")
          when '<'
            records.where("#{column} < #{value.to_i}")
          when '<='
            records.where("#{column} <= #{value.to_i}")
          when '='
            records.where("#{column} = #{value.to_i}")
          else
            raise ArgumentError.new("Unsupported operator: '#{criteria[:operator]}'")
          end
        end

        def valid?
          value.present?
        end
      end
    end
  end
end
