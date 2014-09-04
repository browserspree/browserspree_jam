
if defined?(WillPaginate)
  module WillPaginate
    module ActiveRecord
      module RelationMethods
        def per(num)
          if (n = num.to_i) <= 0
            self
          else
            limit(n).offset(offset_value / limit_value * n)
          end
        end

        def total_pages
          (total_count.to_f / limit_value).ceil
        end

        alias_method :total_count, :total_entries

      end
    end
  end
end