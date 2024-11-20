function audio_file_gui()
    % Create a figure for the GUI
    fig = figure('Name', 'Audio File GUI', 'NumberTitle', 'off', 'Position', [200, 200, 400, 200]);

    % Create components for the GUI
    uicontrol('Style', 'pushbutton', 'String', 'Load Audio', 'Position', [150, 150, 100, 30], 'Callback', @load_audio_callback);
    uicontrol('Style', 'text', 'String', 'Audio File Path:', 'Position', [20, 100, 100, 20]);
    uicontrol('Style', 'edit', 'String', '', 'Position', [120, 100, 200, 20], 'Tag', 'file_edit');
    uicontrol('Style', 'text', 'String', 'Sample Rate:', 'Position', [20, 50, 100, 20]);
    uicontrol('Style', 'text', 'String', '', 'Position', [120, 50, 200, 20], 'Tag', 'sample_rate_text');

    % Callback function for the Load Audio button
    function load_audio_callback(~, ~)
        % Get the file path from the edit box
        file_path = get(findobj('Tag', 'file_edit'), 'String');

        % Check if the file exists
        if exist(file_path, 'file') == 2
            % Load the audio file
            [audio_data, sample_rate] = audioread(file_path);

            % Display sample rate
            set(findobj('Tag', 'sample_rate_text'), 'String', num2str(sample_rate));

            % Additional processing or display can be done here

            % Optionally, you can close the audio file to release resources
            % audioObj = audioplayer(audio_data, sample_rate);
            % audioObj.play;
            % pause(5); % Play for 5 seconds, for example
            % audioObj.stop;
            % release(audioObj);

            % Display success message
            msgbox('Audio file loaded successfully!', 'Success', 'modal');
        else
            % Display error message if the file does not exist
            msgbox('File not found. Please provide a valid audio file path.', 'Error', 'error', 'modal');
        end
    end

end