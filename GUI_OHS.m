function varargout = GUI_OHS(varargin)
% GUI_OHS MATLAB code for GUI_OHS.fig
%      GUI_OHS, by itself, creates a new GUI_OHS or raises the existing
%      singleton*.
%
%      H = GUI_OHS returns the handle to a new GUI_OHS or the handle to
%      the existing singleton*.
%
%      GUI_OHS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_OHS.M with the given input arguments.
%
%      GUI_OHS('Property','Value',...) creates a new GUI_OHS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OHS_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OHS_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_OHS

% Last Modified by GUIDE v2.5 25-Jun-2021 21:03:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OHS_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OHS_OutputFcn, ...
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


% --- Executes just before GUI_OHS is made visible.
function GUI_OHS_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_OHS (see VARARGIN)

% Choose default command line output for GUI_OHS
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_OHS wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OHS_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function editD_Callback(hObject, eventdata, handles)
% hObject    handle to editD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editD as text
%        str2double(get(hObject,'String')) returns contents of editD as a double


% --- Executes during object creation, after setting all properties.
function editD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editW_Callback(hObject, eventdata, handles)
% hObject    handle to editW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editW as text
%        str2double(get(hObject,'String')) returns contents of editW as a double


% --- Executes during object creation, after setting all properties.
function editW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editt_Callback(hObject, eventdata, handles)
% hObject    handle to editt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editt as text
%        str2double(get(hObject,'String')) returns contents of editt as a double


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


function editL_Callback(hObject, eventdata, handles)
% hObject    handle to editL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editL as text
%        str2double(get(hObject,'String')) returns contents of editL as a double


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

function editsigma_u_Callback(hObject, eventdata, handles)
% hObject    handle to editsigma_u (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editsigma_u as text
%        str2double(get(hObject,'String')) returns contents of editsigma_u as a double

% --- Executes during object creation, after setting all properties.
function editsigma_u_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editsigma_u (see GCBO)
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


function editsigma02_Callback(hObject, eventdata, handles)
% hObject    handle to editsigma02 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editsigma02 as text
%        str2double(get(hObject,'String')) returns contents of editsigma02 as a double


% --- Executes during object creation, after setting all properties.
function editsigma02_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editsigma02 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
D = str2num(get(handles.editD,'String'));
W = str2num(get(handles.editW,'String'));
t = str2num(get(handles.editt,'String'));
ht = str2num(get(handles.editht,'String'));
L = str2num(get(handles.editL,'String'));
E = str2num(get(handles.editE,'String'));
sigma_u = str2num(get(handles.editsigma_u,'String'));
Epsi_f = str2num(get(handles.editEpsi,'String'));
sigma02 = str2num(get(handles.editsigma02,'String'));
%%-------------------------------------------------------------------------
load('F:\4. NCKH\2. Nghien cuu khoa hoc\7. Bai cot Oval chinh sua\GUI\w1.mat');
load('F:\4. NCKH\2. Nghien cuu khoa hoc\7. Bai cot Oval chinh sua\GUI\w2.mat');
load('F:\4. NCKH\2. Nghien cuu khoa hoc\7. Bai cot Oval chinh sua\GUI\b1.mat');
load('F:\4. NCKH\2. Nghien cuu khoa hoc\7. Bai cot Oval chinh sua\GUI\b2.mat');
load('F:\4. NCKH\2. Nghien cuu khoa hoc\7. Bai cot Oval chinh sua\GUI\MF.mat');
%%-------------------------------------------------------------------------
% input
D1 = [30 300];
W1 = [15 150];
t1 = [1.3 10];
ht1 = [7.5 120];
L1 = [90 3500];
E1 = [199 202];
sigma_u1 = [387 456];
Epsi_f1 = [18 27]; 
sigma021 = [359 443];
%data input
D_max = max(D1); D_min = min(D1);
W_max = max(W1); W_min = min(W1);
t_max = max(t1); t_min = min(t1);
ht_max = max(ht1); ht_min = min(ht1);
L_max = max(L1); L_min = min(L1);
E_max = max(E1); E_min = min(E1);
sigma_u_max = max(sigma_u1); sigma_u_min = min(sigma_u1);
Epsi_f_max = max(Epsi_f1); Epsi_f_min = min(Epsi_f1);
sigma02_max = max(sigma021); sigma02_min = min(sigma021);
%%-------------------------------------------------------------------------
Dn = 2*(D - D_min)/(D_max - D_min) - 1;
Wn = 2*(W - W_min)/(W_max - W_min) - 1;
tn = 2*(t - t_min)/(t_max - t_min) - 1;
htn = 2*(ht - ht_min)/(ht_max - ht_min) - 1;
Ln = 2*(L - L_min)/(L_max - L_min) - 1;
En = 2*(E - E_min)/(E_max - E_min) - 1;
sigma_un = 2*(sigma_u - sigma_u_min)/(sigma_u_max - sigma_u_min) - 1;
Epsi_fn = 2*(Epsi_f - Epsi_f_min)/(Epsi_f_max - Epsi_f_min) - 1;
sigma02n = 2*(sigma02 - sigma02_min)/(sigma02_max - sigma02_min) -1;
%%-------------------------------------------------------------------------
%% ANN-03
input = [Dn Wn tn htn Ln En sigma_un Epsi_fn sigma02n]
P_n_min = 12.7;
P_n_max = 2788.1;
P_n_N =((b2)+(w2*tansig(b1+w1*input')))
P_ANN = 0.5*(P_n_N + 1)*(P_n_max - P_n_min) + P_n_min;
r = 1 + (3-1) .* rand(1, 1) + P_ANN;
%%-------------------------------------------------------------------------
Dn1 = (D - D_min)/(D_max - D_min);
Wn1 = (W - W_min)/(W_max - W_min);
tn1 = (t - t_min)/(t_max - t_min);
htn1 = (ht - ht_min)/(ht_max - ht_min);
Ln1 = (L - L_min)/(L_max - L_min);
En1 = (E - E_min)/(E_max - E_min);
sigma_un1 = (sigma_u - sigma_u_min)/(sigma_u_max - sigma_u_min);
Epsi_fn1 = (Epsi_f - Epsi_f_min)/(Epsi_f_max - Epsi_f_min);
sigma02n1 = (sigma02 - sigma02_min)/(sigma02_max - sigma02_min);
%% Anfis-03
f1 = -0.8894*Dn1 - 0.8782*Wn1 + 0.1719*tn1 - 0.1222*htn1 + 0.2581*Ln1 + 0.0536*En1 - 0.0566*sigma_un1 - 0.3754*Epsi_fn1 + 0.2977*sigma02n1 - 0.3152;
f2 = -0.0771*Dn1 + 0.1241*Wn1 + 0.9153*tn1 + 0.7650*htn1 - 0.0267*Ln1 - 0.2157*En1 - 0.0048*sigma_un1 - 0.0093*Epsi_fn1 - 0.2307*sigma02n1 - 0.1892;
f3 = -0.1064*Dn1 + 0.1700*Wn1 + 0.8964*tn1 + 0.0891*htn1 + 0.0323*Ln1 - 0.2425*En1 - 0.0122*sigma_un1 - 0.0103*Epsi_fn1 - 0.2598*sigma02n1 - 0.1991;
f4 = -0.0693*Dn1 + 0.1553*Wn1 + 0.8377*tn1 + 0.0708*htn1 + 0.0429*Ln1 - 0.1705*En1 - 0.0282*sigma_un1 - 0.0195*Epsi_fn1 - 0.1939*sigma02n1 + 0.1084;
f5 = -0.0675*Dn1 + 0.1775*Wn1 + 0.7759*tn1 + 0.0484*htn1 - 0.0052*Ln1 - 0.0196*En1 - 0.0032*sigma_un1 - 0.0057*Epsi_fn1 - 0.0001*sigma02n1 - 0.0194;
f6 = -0.0315*Dn1 + 0.1777*Wn1 + 0.7112*tn1 + 0.0318*htn1 - 0.0177*Ln1 - 0.0145*En1 + 0.0015*sigma_un1 - 0.0211*Epsi_fn1 - 0.0001*sigma02n1 - 0.0145;
W11 = (exp(1)^(-(Dn1 - MF(2,1))/(2*MF(1,1)^2)))*(exp(1)^(-(Wn1 - MF(2,2))/(2*MF(1,2)^2)))*(exp(1)^(-(tn1 - MF(2,3))/(2*MF(1,3)^2)))*(exp(1)^(-(htn1 - MF(2,4))/(2*MF(1,4)^2)))*(exp(1)^(-(Ln1 - MF(2,5))/(2*MF(1,5)^2)))*(exp(1)^(-(En1 - MF(2,6))/(2*MF(1,6)^2)))*(exp(1)^(-(sigma_un1 - MF(2,7))/(2*MF(1,7)^2)))*(exp(1)^(-(Epsi_fn1 - MF(2,8))/(2*MF(1,8)^2)))*(exp(1)^(-(sigma02n1 - MF(2,9))/(2*MF(1,9)^2)));
W12 = (exp(1)^(-(Dn1 - MF(4,1))/(2*MF(3,1)^2)))*(exp(1)^(-(Wn1 - MF(4,2))/(2*MF(3,2)^2)))*(exp(1)^(-(tn1 - MF(4,3))/(2*MF(3,3)^2)))*(exp(1)^(-(htn1 - MF(4,4))/(2*MF(3,4)^2)))*(exp(1)^(-(Ln1 - MF(4,5))/(2*MF(3,5)^2)))*(exp(1)^(-(En1 - MF(4,6))/(2*MF(3,6)^2)))*(exp(1)^(-(sigma_un1 - MF(4,7))/(2*MF(3,7)^2)))*(exp(1)^(-(Epsi_fn1 - MF(4,8))/(2*MF(3,8)^2)))*(exp(1)^(-(sigma02n1 - MF(4,9))/(2*MF(3,9)^2)));
W13 = (exp(1)^(-(Dn1 - MF(6,1))/(2*MF(5,1)^2)))*(exp(1)^(-(Wn1 - MF(6,2))/(2*MF(5,2)^2)))*(exp(1)^(-(tn1 - MF(6,3))/(2*MF(5,3)^2)))*(exp(1)^(-(htn1 - MF(6,4))/(2*MF(5,4)^2)))*(exp(1)^(-(Ln1 - MF(6,5))/(2*MF(5,5)^2)))*(exp(1)^(-(En1 - MF(6,6))/(2*MF(5,6)^2)))*(exp(1)^(-(sigma_un1 - MF(6,7))/(2*MF(5,7)^2)))*(exp(1)^(-(Epsi_fn1 - MF(6,8))/(2*MF(5,8)^2)))*(exp(1)^(-(sigma02n1 - MF(6,9))/(2*MF(5,9)^2)));
W14 = (exp(1)^(-(Dn1 - MF(8,1))/(2*MF(7,1)^2)))*(exp(1)^(-(Wn1 - MF(8,2))/(2*MF(7,2)^2)))*(exp(1)^(-(tn1 - MF(8,3))/(2*MF(7,3)^2)))*(exp(1)^(-(htn1 - MF(8,4))/(2*MF(7,4)^2)))*(exp(1)^(-(Ln1 - MF(8,5))/(2*MF(7,5)^2)))*(exp(1)^(-(En1 - MF(8,6))/(2*MF(7,6)^2)))*(exp(1)^(-(sigma_un1 - MF(8,7))/(2*MF(7,7)^2)))*(exp(1)^(-(Epsi_fn1 - MF(8,8))/(2*MF(7,8)^2)))*(exp(1)^(-(sigma02n1 - MF(8,9))/(2*MF(7,9)^2)));
W15 = (exp(1)^(-(Dn1 - MF(10,1))/(2*MF(9,1)^2)))*(exp(1)^(-(Wn1 - MF(10,2))/(2*MF(9,2)^2)))*(exp(1)^(-(tn1 - MF(10,3))/(2*MF(9,3)^2)))*(exp(1)^(-(htn1 - MF(10,4))/(2*MF(9,4)^2)))*(exp(1)^(-(Ln1 - MF(10,5))/(2*MF(9,5)^2)))*(exp(1)^(-(En1 - MF(10,6))/(2*MF(9,6)^2)))*(exp(1)^(-(sigma_un1 - MF(10,7))/(2*MF(9,7)^2)))*(exp(1)^(-(Epsi_fn1 - MF(10,8))/(2*MF(9,8)^2)))*(exp(1)^(-(sigma02n1 - MF(10,9))/(2*MF(9,9)^2)));
W16 = (exp(1)^(-(Dn1 - MF(12,1))/(2*MF(11,1)^2)))*(exp(1)^(-(Wn1 - MF(12,2))/(2*MF(11,2)^2)))*(exp(1)^(-(tn1 - MF(12,3))/(2*MF(11,3)^2)))*(exp(1)^(-(htn1 - MF(12,4))/(2*MF(11,4)^2)))*(exp(1)^(-(Ln1 - MF(12,5))/(2*MF(11,5)^2)))*(exp(1)^(-(En1 - MF(12,6))/(2*MF(11,6)^2)))*(exp(1)^(-(sigma_un1 - MF(12,7))/(2*MF(11,7)^2)))*(exp(1)^(-(Epsi_fn1 - MF(12,8))/(2*MF(11,8)^2)))*(exp(1)^(-(sigma02n1 - MF(12,9))/(2*MF(11,9)^2)));
kq_Anfis = (W11*f1 + W12*f2 + W13*f3 + W14*f4 + W15*f5 + W16*f6)/(W11 + W12 + W13 + W14 + W15 + W16);
% P_anfis = 2775.4*kq_Anfis + 12.7;
set(handles.ketqua_ann,'String',P_ANN);
set(handles.ketqua_anfis,'String',P_anfis);


% --- Executes on scroll wheel click while the figure is in focus.
function figure1_WindowScrollWheelFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	VerticalScrollCount: signed integer indicating direction and number of clicks
%	VerticalScrollAmount: number of lines scrolled for each click
% handles    structure with handles and user data (see GUIDATA)

% Hint: place code in OpeningFcn to populate axes1

% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
I=imread('F:\4. NCKH\2. Nghien cuu khoa hoc\7. Bai cot Oval chinh sua\GUI\Hinh_tong.png');
hi = imagesc(I);
colormap gray
axis off
% Hint: place code in OpeningFcn to populate axes2
