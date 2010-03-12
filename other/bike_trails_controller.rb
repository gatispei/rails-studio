class BikeTrailsController < ApplicationController

    def parse_gpx_trace
        xml_io = params[:bike_trail][:data]
        # xml_io.inspect == #<File:/var/folders/+Y/+YZt10YRHQqgBAKsQ6EHRk+++TI/-Tmp-/RackMultipart280-0>

        string_that_contains_uploaded_file = xml_io.read
        # do whatever you want with it
    end

end
