data = readtable('climate_change_upto_2000_1.csv');


abuRows = strcmp(data.StationName, 'Abu');

abuData = data(abuRows, :);

months = {'January','February','March','April','May','June','July','August','September','October','November','December'};

abuMinTemp = zeros(12, 1);

for i = 1:12
    % Find row for current month
    idx = strcmp(abuData.Month, months{i});
    % Store the min temp for that month
    abuMinTemp(i) = abuData.MeanTemperatureInDegreeC_Minimum(idx);
end

figure;
plot(1:12, abuMinTemp, '-o');
set(gca, 'XTick', 1:12, 'XTickLabel', months);
xlabel('Month');
ylabel('Mean Min Temperature (°C)');
title('Abu: Mean Monthly Minimum Temperature (1901-2000)');
grid on;
