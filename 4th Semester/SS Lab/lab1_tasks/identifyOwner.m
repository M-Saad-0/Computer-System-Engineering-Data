function ownerInfo = identifyOwner(watermark, mappingFile)
    mappingData = importdata(mappingFile);

    matchIndex = find(strcmp(mappingData, string(watermark)));
    disp(watermark)
    if ~isempty(matchIndex)
        ownerInfo = mappingData(matchIndex);
        disp('Owner Information:');
        disp(ownerInfo);
    else
        disp('No matching owner found for the watermarked audio.');
        ownerInfo = '';
    end
end