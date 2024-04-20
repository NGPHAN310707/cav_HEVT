classdef Simulation
    properties
        Vehicles
        Sensor
        TimeStep = 0.1
        TotalTime = 100
    end
    
    methods
        function obj = Simulation(vehicles, sensor)
            obj.Vehicles = vehicles;
            obj.Sensor = sensor;
        end
        
        function run(obj)
            for t = 0:obj.TimeStep:obj.TotalTime
                for i = 1:numel(obj.Vehicles)
                    obj.Vehicles(i) = obj.Vehicles(i).updatePosition(obj.TimeStep);
                end
                
                if obj.Vehicles(avIdx).IsAutonomous
                    detectedIndices = obj.Sensor.detectVehicles(obj.Vehicles, avIdx);
                    % Decision-making logic for autonomous vehicle...
                end
            end
        end
    end
end
