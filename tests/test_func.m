function tests = exampleTest
    tests = functiontests(localfunctions);
end

% All tests separately
function test_func1(testCase)

    assert(func(0,0) == 0)

end

function test_func2(testCase)

    assert(func(0,pi/2) == 1)

end


function test_func3(testCase)

    assert(func(pi/2,0) == -1)

end

% All tests together
function test_func_all(testCase)
    assert(func(0,0) == 0)
    assert(func(0,pi/2) == 1)
    assert(func(pi/2,0) == -1)
end

%% Optional fresh fixtures  
% If you don't like the path setup in the maindir 
% you could use the commented functions below.
%
% function setup(testCase)  % do not change function name
%     % Get setup.m location
%     setuplocation = mfilename('fullpath');
%     maindir = fileparts(setuplocation);
%     pathsetup;

% end
    
% function teardown(testCase)  % do not change function name
% % close figure, for example
% end