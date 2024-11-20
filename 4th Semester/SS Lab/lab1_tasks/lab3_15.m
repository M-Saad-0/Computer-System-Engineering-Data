function lab3_15
    op = fopen('weekdays.txt','wt');
    fprintf(op,'Sunday\nMonday\nTuesday\nWednesday\n');
    fprintf(op,'Thursday\nFriday\nSaturday\n');
    fclose(op);
end
