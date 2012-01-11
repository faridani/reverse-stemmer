function out1 = SanitizeComment(in1)
    % clears a string from puctuations
	
	
    %myoutstring =regexprep(in1, '\,', ' ');
    myoutstring =regexprep(char(in1), '[^\w\s]', ' ');
	%myoutstring =regexprep(myoutstring, char(13), 'goldfish');
	myoutstring(myoutstring==13)=[];
	myoutstring(myoutstring==10)=[];
%     
%     
%     myoutstring =regexprep(myoutstring, '\''', ' ');
%     myoutstring =regexprep(myoutstring, '\-', ' ');
%     myoutstring =regexprep(myoutstring, '\.', ' ');
%     myoutstring =regexprep(myoutstring, '\"', ' ');
%     myoutstring =regexprep(myoutstring, '(', ' ');
%     myoutstring =regexprep(myoutstring, ')', ' ');
%     myoutstring =regexprep(myoutstring, '\?', ' ');
%     myoutstring =regexprep(myoutstring, '\*', ' ');
%     myoutstring =regexprep(myoutstring, '\/', ' ');
%     myoutstring =regexprep(myoutstring, '\:', ' ');
%     myoutstring =regexprep(myoutstring, '\!', ' ');
%     myoutstring =regexprep(myoutstring, '\&', ' ');
%     myoutstring =regexprep(myoutstring, '\$', ' ');
%     myoutstring =regexprep(myoutstring, '1', ' ');
%     myoutstring =regexprep(myoutstring, '2', ' ');
%     myoutstring =regexprep(myoutstring, '3', ' ');
%     myoutstring =regexprep(myoutstring, '4', ' ');
%     myoutstring =regexprep(myoutstring, '5', ' ');
%     myoutstring =regexprep(myoutstring, '6', ' ');
%     myoutstring =regexprep(myoutstring, '7', ' ');
%     myoutstring =regexprep(myoutstring, '8', ' ');
%     myoutstring =regexprep(myoutstring, '9', ' ');
%     myoutstring =regexprep(myoutstring, '0', ' ');
%     myoutstring =regexprep(myoutstring, '\#', ' ');
%     myoutstring =regexprep(myoutstring, '\%', ' ');
%     myoutstring =regexprep(myoutstring, '\^', ' ');
%    
    
    
    myoutstring =regexprep(myoutstring, 'Please enter your response here', ' ');
    
    
    out1 =  myoutstring;
    