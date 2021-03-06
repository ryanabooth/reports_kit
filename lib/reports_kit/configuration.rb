module ReportsKit
  class Configuration
    attr_accessor :cache_duration, :cache_store,
      :context_params_method, :context_record_method, :custom_methods, :first_day_of_week

    def initialize
      self.cache_duration = 5.minutes
      self.cache_store = nil
      self.context_params_method = nil
      self.context_record_method = nil
      self.custom_methods = {}
      self.first_day_of_week = :sunday
    end

    def custom_method(method_name)
      return if method_name.blank?
      method = custom_methods[method_name.to_sym]
      raise ArgumentError.new("A method named '#{method_name}' is not defined") unless method
      method
    end
  end
end
