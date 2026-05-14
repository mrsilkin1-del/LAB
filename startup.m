% Define the script you want to run automatically
% Change 'untitled' to the exact name of your file (without .m)
target_script = 'untitled'; 

% Check if the file exists in the current folder
if exist([target_script '.m'], 'file')
    try
        fprintf('Running auto-script: %s.m\n', target_script);

        % Execute the script
        eval(target_script);

        fprintf('>> %s.m completed successfully.\n', target_script);
    catch ME
        fprintf('Error running %s.m:\n%s\n', target_script, ME.message);
    end
else
    warning('Auto-script "%s.m" not found in the Current Folder.', target_script);
end

disp('--- Startup Complete ---');
