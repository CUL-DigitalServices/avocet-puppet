require 'puppet/parser/functions'

module Puppet::Parser::Functions
  newfunction(:map_hieraptr, :type => :rvalue) do |arguments|
    
    hiera_var = arguments[0]
    hiera_default = arguments[1]
    hiera_val = nil

    raise(ArgumentError, 'Must provide an array of hiera variable names') unless hiera_var

    Puppet::Parser::Functions.function(:hiera)
    Puppet::Parser::Functions.function(:hiera_array)
    Puppet::Parser::Functions.function(:hiera_hash)

    begin
      # Get the hiera value, then fetch the hiera value with that value
      hiera_val = send("function_hiera", [hiera_var])
    rescue
      # If we barfed getting the value, then we should just use the default if it was specified
      if (defined?(hiera_default))
        return hiera_default
      end

      # No default, raise the error
      raise
    end

    # We found the variable successfully, it should be an array, iterate it and push each variable back into hiera
    values = []
    hiera_val.each do |inner_var|
      values.push(send("function_hiera", [inner_var]))
    end

    return values
  end
end