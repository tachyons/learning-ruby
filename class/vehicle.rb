class Vehicle
   attr_accessor :fuel_status
   @no_of_wheels;
   @horsepower;
   @ype_of_tank;
   @Capacity;
   @brand_name;
   @color;
   @fuel_status;
   def drive
   end
   def service
   end
   def fill_fuel
      @fuel_status="full";
   end
   def empty_fuel
      @fuel_status="empty";
   end
   def show_fuel_status
      puts "Fuel Status :" + @fuel_status.to_s;
   end
   def initialize()
       @fuel_status="unknown";
   end
end
class TwoWheeler < Vehicle
   @@no_of_wheels=2;
   @no_of_doors;
   def initialize(brand,model)
      @brand_name=brand;
      @model_name=model;
   end
end
class ThreeWheeler < Vehicle
   @no_of_doors;
   @@no_of_wheels=3;
   def initialize(brand,model)
      super()
      @brand_name=brand;
      @model_name=model;
   end
   def show
      puts "Brand:" + @brand_name
      puts "Model:" + @model_name
      puts "Number of Wheels:" + @@no_of_wheels.to_s
   end
end
class FourWheeler < Vehicle
   @no_of_doors;
   @@no_of_wheels=4;
   def initialize(brand,model)
      @brand_name=brand;
      @model_name=model;
   end
end
auto=ThreeWheeler.new("bajaj","auto");
auto.show
auto.show_fuel_status
auto.fill_fuel
auto.show_fuel_status
auto.empty_fuel
auto.show_fuel_status
auto.fuel_status="full"
auto.show_fuel_status
puts "Fuel Status: " + auto.fuel_status