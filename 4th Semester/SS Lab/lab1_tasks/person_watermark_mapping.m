function person_watermark_mapping(person_id, watermark)
    
    mapping_file = 'watermark_mapping.mat';

    if exist(mapping_file, 'file') == 2
        load(mapping_file, 'person_watermark_map');
        
        person_watermark_map(person_id) = watermark;
    else
        person_watermark_map = containers.Map(person_id, watermark);
    end

    % Save the mapping to the file
    save(mapping_file, 'person_watermark_map');
    
    disp('Person-watermark mapping saved successfully.');
end
