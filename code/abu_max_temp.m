data = readtable('climate_change_upto_2000_1.csv');

abuRows = strcmp(data.StationName, 'Abu');
abuData = data(abuRows, :);
months = {'January','February','March','April','May','June','July','August','September','October','November','December'};

abuMaxTemp = zeros(12, 1);

for i = 1:12
    % Find row for current month
    idx = strcmp(abuData.Month, months{i});
    % Store the max temp for that month
    abuMinTemp(i) = abuData.MeanTemperatureInDegreeC_Maximum(idx);
end

figure;
plot(1:12, abuMaxTemp, '-o');
set(gca, 'XTick', 1:12, 'XTickLabel', months);
xlabel('Month');
ylabel('Mean Max Temperature (°C)');
title('Abu: Mean Monthly Maximum Temperature (1901-2000)');
grid on;

