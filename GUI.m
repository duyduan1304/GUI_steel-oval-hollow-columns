function varargout = GUI(varargin)
% UNTITLED1 MATLAB code for untitled1.fig
%      UNTITLED1, by itself, creates a new UNTITLED1 or raises the existing
%      singleton*.
%
%      H = UNTITLED1 returns the handle to a new UNTITLED1 or the handle to
%      the existing singleton*.
%
%      UNTITLED1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED1.M with the given input arguments.
%
%      UNTITLED1('Property','Value',...) creates a new UNTITLED1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled1

% Last Modified by GUIDE v2.5 25-Jun-2021 16:01:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled1_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT



function editD_Callback(hObject, eventdata, handles)
% hObject    handle to editD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editD as text
%        str2double(get(hObject,'String')) returns contents of editD as a double



function editB_Callback(hObject, eventdata, handles)
% hObject    handle to editB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editB as text
%        str2double(get(hObject,'String')) returns contents of editB as a double



function editt_Callback(hObject, eventdata, handles)
% hObject    handle to editt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editt as text
%        str2double(get(hObject,'String')) returns contents of editt as a double



function editL_Callback(hObject, eventdata, handles)
% hObject    handle to editL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editL as text
%        str2double(get(hObject,'String')) returns contents of editL as a double





% Hints: get(hObject,'String') returns contents of editHoS as text
%        str2double(get(hObject,'String')) returns contents of editHoS as a double


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
D = str2num(get(handles.editD,'String'));
B = str2num(get(handles.editB,'String'));
t = str2num(get(handles.editt,'String'));
L = str2num(get(handles.editL,'String'));
%%-------------------------------------------------------------------------
load('C:\Users\ADMINIS\Desktop\Anfis\Data_Semi_ovel\Semi_ovel_code\ann_resuilt\w1.mat');
load('C:\Users\ADMINIS\Desktop\Anfis\Data_Semi_ovel\Semi_ovel_code\ann_resuilt\w2.mat');
load('C:\Users\ADMINIS\Desktop\Anfis\Data_Semi_ovel\Semi_ovel_code\ann_resuilt\b1.mat');
load('C:\Users\ADMINIS\Desktop\Anfis\Data_Semi_ovel\Semi_ovel_code\ann_resuilt\b2.mat');
% load('E:\Code SVNCKH\code_ann\Effect_parameter\effect_parameter');
%%-------------------------------------------------------------------------
% input
D1 = [93.00 197.26 301.51 375.76 450.00];
B1 = [60.00 117.44 174.88 267.44 360.00];
t1 = [2.00 4.57 7.13 13.57 20.00];
L1 = [200.00 1296.69 2393.38 3196.69 4000.00];
%data input
D_max = max(D1); D_min = min(D1);
B_max = max(B1); B_min = min(B1);
t_max = max(t1); t_min = min(t1);
L_max = max(L1); L_min = min(L1);


% T_min = effect_parameter(1,1); T_max = effect_parameter(1,5);
% RH_min = effect_parameter(2,1); RH_max = effect_parameter(2,5);
% TOW_min = effect_parameter(3,1); TOW_max = effect_parameter(3,5);
% CL_min = effect_parameter(4,1); CL_max = effect_parameter(4,5);
% SO2_min = effect_parameter(5,1); SO2_max = effect_parameter(5,5);
% Rf_min = effect_parameter(6,1); Rf_max = effect_parameter(6,5);
% HoS_min = effect_parameter(7,1); HoS_max = effect_parameter(7,5);
%%-------------------------------------------------------------------------
Dn = 2*(D - D_min)/(D_max - D_min) - 1;
Bn = 2*(B - B_min)/(B_max - B_min) - 1;
tn = 2*(t - t_min)/(t_max - t_min) - 1;
Ln = 2*(L - L_min)/(L_max - L_min) - 1;

input = [Dn Bn tn Ln];
P_n_min = 176;
P_n_max = 14231.20;
P_n_N =((b2)+(w2*tansig(b1+w1*input')));
kq = 0.5*(P_n_N + 1)*(P_n_max - P_n_min) + P_n_min;
set(handles.ketqua,'String',kq);


% --- Executes during object creation, after setting all properties.
function axes6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2
I=imread('C:\Users\ADMINIS\Desktop\Anfis\Data_Semi_ovel\Semi_ovel_code\GUI\fig.jpg');
hi = imagesc(I);
colormap gray
axis off



function editsigmau_Callback(hObject, eventdata, handles)
% hObject    handle to editsigmau (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editsigmau as text
%        str2double(get(hObject,'String')) returns contents of editsigmau as a double


% --- Executes during object creation, after setting all properties.
function editsigmau_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editsigmau (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editEpsi_Callback(hObject, eventdata, handles)
% hObject    handle to editEpsi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editEpsi as text
%        str2double(get(hObject,'String')) returns contents of editEpsi as a double


% --- Executes during object creation, after setting all properties.
function editEpsi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editEpsi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editSigma02_Callback(hObject, eventdata, handles)
% hObject    handle to editSigma02 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editSigma02 as text
%        str2double(get(hObject,'String')) returns contents of editSigma02 as a double


% --- Executes during object creation, after setting all properties.
function editSigma02_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editSigma02 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editw_Callback(hObject, eventdata, handles)
% hObject    handle to editw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editw as text
%        str2double(get(hObject,'String')) returns contents of editw as a double


% --- Executes during object creation, after setting all properties.
function editw_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function editt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editht_Callback(hObject, eventdata, handles)
% hObject    handle to editht (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editht as text
%        str2double(get(hObject,'String')) returns contents of editht as a double


% --- Executes during object creation, after setting all properties.
function editht_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editht (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function editL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editE_Callback(hObject, eventdata, handles)
% hObject    handle to editE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editE as text
%        str2double(get(hObject,'String')) returns contents of editE as a double


% --- Executes during object creation, after setting all properties.
function editE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
