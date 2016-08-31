module ActiveRecordLikeFinders

  def find(id)
    all.find { |object| object.id == id.to_i }
  end

  def find_by(options)
    find_first_or_all(:first, options)
  end

  def where(options)
    find_first_or_all(:all, options)
  end

    def find_first_or_all(first_or_all, options)
      options.keys.each do |attr_name|
        unless all.first.respond_to?(attr_name)
          raise ArgumentError, "undefined attribute '#{attr_name}' for #{all.first.class}"
        end
      end
      all.send(first_or_all == :first ? :find : :select) { |object|
        options.symbolize_keys.all? { |attr_name, value|
          object.send(attr_name) == value
        }
      }
    end
    private :find_first_or_all
end
