function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 11-Jul-2022 16:15:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
set(handles.caja_resultado, 'enable', 'off')
set(handles.caja_margen_sistema, 'enable', 'off')
set(handles.caja_distancia_maxima, 'enable', 'off')
set(findall(handles.panel_presupuesto, '-property', 'enable'), 'enable', 'off')
set(findall(handles.panel_distancia, '-property', 'enable'), 'enable', 'off')
set(handles.btn_calcular, 'enable', 'off')
set(handles.btn_borrar, 'enable', 'off')
axes(handles.axes1);
axis off;
path = 'ref.PNG';
imag = imread(path);
imshow(imag);



% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function caja_frecuencia_Callback(hObject, eventdata, handles)
% hObject    handle to caja_frecuencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_frecuencia as text
%        str2double(get(hObject,'String')) returns contents of caja_frecuencia as a double


% --- Executes during object creation, after setting all properties.
function caja_frecuencia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_frecuencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function caja_distancia_Callback(hObject, eventdata, handles)
% hObject    handle to caja_distancia_maxima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of caja_distancia_maxima as text
%        str2double(get(hObject,'String')) returns contents of caja_distancia_maxima as a double

% --- Executes during object creation, after setting all properties.
function caja_distancia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_distancia_maxima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_potencia_tx_Callback(hObject, eventdata, handles)
% hObject    handle to caja_potencia_tx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_potencia_tx as text
%        str2double(get(hObject,'String')) returns contents of caja_potencia_tx as a double


% --- Executes during object creation, after setting all properties.
function caja_potencia_tx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_potencia_tx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function caja_ganancia_tx_Callback(hObject, eventdata, handles)% hObject    handle to caja_ganancia_tx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_ganancia_tx as text
%        str2double(get(hObject,'String')) returns contents of caja_ganancia_tx as a double


% --- Executes during object creation, after setting all properties.
function caja_ganancia_tx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_ganancia_tx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_perdida_empalme_Callback(hObject, eventdata, handles)
% hObject    handle to caja_perdida_empalme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_perdida_empalme as text
%        str2double(get(hObject,'String')) returns contents of caja_perdida_empalme as a double


% --- Executes during object creation, after setting all properties.
function caja_perdida_empalme_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_perdida_empalme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function caja_ganancia_rx_Callback(hObject, eventdata, handles)
% hObject    handle to caja_ganancia_rx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_ganancia_rx as text
%        str2double(get(hObject,'String')) returns contents of caja_ganancia_rx as a double


% --- Executes during object creation, after setting all properties.
function caja_ganancia_rx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_ganancia_rx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_cable_rx_Callback(hObject, eventdata, handles)
% hObject    handle to caja_cable_rx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_cable_rx as text
%        str2double(get(hObject,'String')) returns contents of caja_cable_rx as a double


% --- Executes during object creation, after setting all properties.
function caja_cable_rx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_cable_rx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_calcular.
function btn_calcular_Callback(hObject, eventdata, handles)
% hObject    handle to btn_calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

p_presupuesto= get(handles.rbutton_prespuesto,'Value')
p_distancia= get(handles.rbutton_distancia,'Value')
if p_presupuesto==1
%%%%ingresar distancia y frecuencia
atenuacion=str2double(get(handles.caja_atenuacion,'String'));
atenuacion_str=get(handles.caja_atenuacion,'String');

distancia=str2double(get(handles.caja_distancia,'String'));
distancia_str=get(handles.caja_distancia,'String');

potencia_tx=str2double(get(handles.caja_potencia_tx,'String'));
potencia_tx_str=get(handles.caja_potencia_tx,'String');

sensibilidad_rx=str2double(get(handles.caja_sensibilidad_rx,'String'));
sensibilidad_rx_str=get(handles.caja_sensibilidad_rx,'String');

numero_conectores=str2double(get(handles.caja_numero_conectores,'String'));
numero_conectores_str=get(handles.caja_numero_conectores,'String');

perdida_conectores=str2double(get(handles.caja_perdida_conectores,'String'));
perdida_conectores_str=get(handles.caja_perdida_conectores,'String');

numero_empalmes=str2double(get(handles.caja_numero_empalmes,'String'));
numero_empalmes_str=get(handles.caja_numero_empalmes,'String');

perdida_empalmes=str2double(get(handles.caja_perdida_empalme,'String'));
perdida_empalmes_str=get(handles.caja_perdida_empalme,'String');

    if (atenuacion_str==""||distancia_str==""||potencia_tx_str==""||sensibilidad_rx_str==""||numero_conectores_str==""||perdida_conectores_str==""||numero_empalmes_str==""||perdida_empalmes_str=="")
        text=errordlg('Llene todos los campos','ERROR');
        set(handles.caja_resultado,'string'," ");
        set(handles.caja_margen_sistema,'string'," ");
    else
        if isnan(atenuacion) || isnan(distancia)|| isnan(potencia_tx) ||isnan(sensibilidad_rx) || isnan(numero_conectores) || isnan(perdida_conectores) || isnan(numero_empalmes) || isnan(perdida_empalmes)
            errordlg('Ingrese solo datos numericos');
            set(handles.caja_margen_sistema,'string'," ")
            set(handles.caja_resultado,'string'," ")
            return
        else
            perdidas=(atenuacion*distancia)+(numero_conectores*perdida_conectores)+(numero_empalmes*perdida_empalmes);
            Pot_llegada=potencia_tx-perdidas;
            Margen=Pot_llegada-sensibilidad_rx;
            set(handles.caja_margen_sistema,'string',Margen);
            if Pot_llegada > sensibilidad_rx & Margen>=5
                set(handles.caja_resultado,'string',"SU ENLACE ES FACTIBLE");
            else
                set(handles.caja_resultado,'string',"SU ENLACE NO ES FACTIBLE");
            end
            p_presupuesto=0
        end
    end 
end

if p_distancia==1
    atenuacion2=str2double(get(handles.caja_atenuacion2,'String'));
    atenuacion2_str=get(handles.caja_atenuacion2,'String');

    potencia_tx2=str2double(get(handles.caja_potencia_tx2,'String'));
    potencia_tx2_str=get(handles.caja_potencia_tx2,'String');

    sensibilidad_rx2=str2double(get(handles.caja_sensibilidad_rx2,'String'));
    sensibilidad_rx2_str=get(handles.caja_sensibilidad_rx2,'String');

    numero_conectores2=str2double(get(handles.caja_numero_conectores2,'String'));
    numero_conectores2_str=get(handles.caja_numero_conectores2,'String');

    perdida_conectores2=str2double(get(handles.caja_perdida_conectores2,'String'));
    perdida_conectores2_str=get(handles.caja_perdida_conectores2,'String');

    longitud_carrete=str2double(get(handles.caja_longitud_carrete,'String'));
    longitud_carrete_str=get(handles.caja_longitud_carrete,'String');

    perdida_empalmes2=str2double(get(handles.caja_perdida_empalme2,'String'));
    perdida_empalmes2_str=get(handles.caja_perdida_empalme2,'String');
    
    if (atenuacion2_str==""||potencia_tx2_str==""||sensibilidad_rx2_str==""||numero_conectores2_str==""||perdida_conectores2_str==""||longitud_carrete_str==""||perdida_empalmes2_str=="")
        text2=errordlg('Llene todos los campos','ERROR');
        set(handles.caja_resultado,'string'," ");
        set(handles.caja_distancia_maxima,'string'," ");      
    else
        if isnan(atenuacion2) || isnan(potencia_tx2) ||isnan(sensibilidad_rx2) || isnan(numero_conectores2) || isnan(perdida_conectores2) || isnan(longitud_carrete) || isnan(perdida_empalmes2)
            errordlg('Ingrese solo datos numericos');
            return
        else
            resultado_1=potencia_tx2-sensibilidad_rx2-(numero_conectores2*perdida_conectores2)
            resultado_2=[atenuacion2+(perdida_empalmes2/longitud_carrete)]*4
            Distancia_maxima_calc=resultado_1/resultado_2
            if Distancia_maxima_calc<0
                errordlg('La distancia es menor a cero');
                set(handles.caja_resultado,'string'," ");
                set(handles.caja_distancia_maxima,'string'," ");  
                return
            else    
                set(handles.caja_distancia_maxima,'string',Distancia_maxima_calc);
                distancia_string=get(handles.caja_distancia_maxima,'String');
                set(handles.caja_resultado,'string',strcat('LA DISTANCIA MAXIMA ES:', distancia_string ,' KM'));
            end
        end
    end
end

% --- Executes during object creation, after setting all properties.
function caja_sensibilidad_rx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_sensibilidad_rx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_fsl_Callback(hObject, eventdata, handles)
% hObject    handle to caja_fsl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_fsl as text
%        str2double(get(hObject,'String')) returns contents of caja_fsl as a double


% --- Executes during object creation, after setting all properties.
function caja_fsl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_fsl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_margen_Callback(hObject, eventdata, handles)
% hObject    handle to caja_margen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_margen as text
%        str2double(get(hObject,'String')) returns contents of caja_margen as a double


% --- Executes during object creation, after setting all properties.
function caja_margen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_margen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_fresnel_Callback(hObject, eventdata, handles)
% hObject    handle to caja_fresnel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_fresnel as text
%        str2double(get(hObject,'String')) returns contents of caja_fresnel as a double


% --- Executes during object creation, after setting all properties.
function caja_fresnel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_fresnel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_numero_empalmes_Callback(hObject, eventdata, handles)
% hObject    handle to caja_numero_empalmes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_numero_empalmes as text
%        str2double(get(hObject,'String')) returns contents of caja_numero_empalmes as a double


% --- Executes during object creation, after setting all properties.
function caja_numero_empalmes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_numero_empalmes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_numero_conectores_Callback(hObject, eventdata, handles)
% hObject    handle to caja_numero_conectores (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_numero_conectores as text
%        str2double(get(hObject,'String')) returns contents of caja_numero_conectores as a double


% --- Executes during object creation, after setting all properties.
function caja_numero_conectores_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_numero_conectores (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_perdidas_conectorestx_Callback(hObject, eventdata, handles)
% hObject    handle to caja_perdidas_conectorestx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_perdidas_conectorestx as text
%        str2double(get(hObject,'String')) returns contents of caja_perdidas_conectorestx as a double


% --- Executes during object creation, after setting all properties.
function caja_perdidas_conectorestx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_perdidas_conectorestx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_longitud_cablerx_Callback(hObject, eventdata, handles)
% hObject    handle to caja_longitud_cablerx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_longitud_cablerx as text
%        str2double(get(hObject,'String')) returns contents of caja_longitud_cablerx as a double


% --- Executes during object creation, after setting all properties.
function caja_longitud_cablerx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_longitud_cablerx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_numero_conectoresrx_Callback(hObject, eventdata, handles)
% hObject    handle to caja_numero_conectoresrx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_numero_conectoresrx as text
%        str2double(get(hObject,'String')) returns contents of caja_numero_conectoresrx as a double


% --- Executes during object creation, after setting all properties.
function caja_numero_conectoresrx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_numero_conectoresrx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_perdidas_conectoresrx_Callback(hObject, eventdata, handles)
% hObject    handle to caja_perdidas_conectoresrx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_perdidas_conectoresrx as text
%        str2double(get(hObject,'String')) returns contents of caja_perdidas_conectoresrx as a double


% --- Executes during object creation, after setting all properties.
function caja_perdidas_conectoresrx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_perdidas_conectoresrx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% FUNCION PARA BORRAR LAS CAJAS
function btn_borrar_Callback(hObject, eventdata, handles)
% hObject    handle to btn_borrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%panel 1
set(handles.caja_distancia,'string'," ")
set(handles.caja_atenuacion,'string'," ")
set(handles.caja_potencia_tx,'string'," ")
set(handles.caja_sensibilidad_rx,'string'," ")
set(handles.caja_numero_conectores,'string'," ")
set(handles.caja_perdida_conectores,'string'," ")
set(handles.caja_numero_empalmes,'string'," ")
set(handles.caja_perdida_empalme,'string'," ")
set(handles.caja_margen_sistema,'string'," ")
set(handles.caja_resultado,'string'," ")
%panel2
set(handles.caja_atenuacion2,'string'," ")
set(handles.caja_potencia_tx2,'string'," ")
set(handles.caja_sensibilidad_rx2,'string'," ")
set(handles.caja_numero_conectores2,'string'," ")
set(handles.caja_perdida_conectores2,'string'," ")
set(handles.caja_longitud_carrete,'string'," ")
set(handles.caja_perdida_empalme2,'string'," ")
set(handles.caja_distancia_maxima,'string'," ")
%set(handles.rbutton_prespuesto,'Value',0)
%set(handles.rbutton_distancia,'Value',0)
%set(findall(handles.panel_presupuesto, '-property', 'enable'), 'enable', 'off')
%set(findall(handles.panel_distancia, '-property', 'enable'), 'enable', 'off')






function caja_pire_Callback(hObject, eventdata, handles)
% hObject    handle to caja_pire (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_pire as text
%        str2double(get(hObject,'String')) returns contents of caja_pire as a double


% --- Executes during object creation, after setting all properties.
function caja_pire_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_pire (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_atenuacion_Callback(hObject, eventdata, handles)
% hObject    handle to caja_atenuacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_atenuacion as text
%        str2double(get(hObject,'String')) returns contents of caja_atenuacion as a double


% --- Executes during object creation, after setting all properties.
function caja_atenuacion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_atenuacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1



function caja_perdida_conectores_Callback(hObject, eventdata, handles)
% hObject    handle to caja_perdida_conectores (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_perdida_conectores as text
%        str2double(get(hObject,'String')) returns contents of caja_perdida_conectores as a double


% --- Executes during object creation, after setting all properties.
function caja_perdida_conectores_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_perdida_conectores (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in menu_opcion.
function menu_opcion_Callback(hObject, eventdata, handles)
% hObject    handle to menu_opcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu_opcion contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu_opcion


% --- Executes during object creation, after setting all properties.
function menu_opcion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu_opcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_resultado_Callback(hObject, eventdata, handles)
% hObject    handle to caja_resultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_resultado as text
%        str2double(get(hObject,'String')) returns contents of caja_resultado as a double


% --- Executes during object creation, after setting all properties.
function caja_resultado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_resultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_atenuacion2_Callback(hObject, eventdata, handles)
% hObject    handle to caja_atenuacion2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_atenuacion2 as text
%        str2double(get(hObject,'String')) returns contents of caja_atenuacion2 as a double


% --- Executes during object creation, after setting all properties.
function caja_atenuacion2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_atenuacion2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_perdida_empalme2_Callback(hObject, eventdata, handles)
% hObject    handle to caja_perdida_empalme2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_perdida_empalme2 as text
%        str2double(get(hObject,'String')) returns contents of caja_perdida_empalme2 as a double


% --- Executes during object creation, after setting all properties.
function caja_perdida_empalme2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_perdida_empalme2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_longitud_carrete_Callback(hObject, eventdata, handles)
% hObject    handle to caja_longitud_carrete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_longitud_carrete as text
%        str2double(get(hObject,'String')) returns contents of caja_longitud_carrete as a double


% --- Executes during object creation, after setting all properties.
function caja_longitud_carrete_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_longitud_carrete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_numero_conectores2_Callback(hObject, eventdata, handles)
% hObject    handle to caja_numero_conectores2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_numero_conectores2 as text
%        str2double(get(hObject,'String')) returns contents of caja_numero_conectores2 as a double


% --- Executes during object creation, after setting all properties.
function caja_numero_conectores2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_numero_conectores2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_sensibilidad_rx2_Callback(hObject, eventdata, handles)
% hObject    handle to caja_sensibilidad_rx2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_sensibilidad_rx2 as text
%        str2double(get(hObject,'String')) returns contents of caja_sensibilidad_rx2 as a double


% --- Executes during object creation, after setting all properties.
function caja_sensibilidad_rx2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_sensibilidad_rx2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_potencia_tx2_Callback(hObject, eventdata, handles)
% hObject    handle to caja_potencia_tx2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_potencia_tx2 as text
%        str2double(get(hObject,'String')) returns contents of caja_potencia_tx2 as a double


% --- Executes during object creation, after setting all properties.
function caja_potencia_tx2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_potencia_tx2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_perdida_conectores2_Callback(hObject, eventdata, handles)
% hObject    handle to caja_perdida_conectores2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_perdida_conectores2 as text
%        str2double(get(hObject,'String')) returns contents of caja_perdida_conectores2 as a double


% --- Executes during object creation, after setting all properties.
function caja_perdida_conectores2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_perdida_conectores2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function caja_margen_sistema_Callback(hObject, eventdata, handles)
% hObject    handle to caja_margen_sistema (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_margen_sistema as text
%        str2double(get(hObject,'String')) returns contents of caja_margen_sistema as a double


% --- Executes during object creation, after setting all properties.
function caja_margen_sistema_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_margen_sistema (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rbutton_prespuesto.
function rbutton_prespuesto_Callback(hObject, eventdata, handles)
% hObject    handle to rbutton_prespuesto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
p_presupuesto= get(handles.rbutton_prespuesto,'Value')
if p_presupuesto==1
    
    set(handles.caja_atenuacion2,'string'," ")
    set(handles.caja_potencia_tx2,'string'," ")
    set(handles.caja_sensibilidad_rx2,'string'," ")
    set(handles.caja_numero_conectores2,'string'," ")
    set(handles.caja_perdida_conectores2,'string'," ")
    set(handles.caja_longitud_carrete,'string'," ")
    set(handles.caja_perdida_empalme2,'string'," ")
    set(handles.caja_distancia_maxima,'string'," ")
    set(handles.caja_resultado,'string'," ")
    
     set(handles.rbutton_distancia,'Value',0)
     set(findall(handles.panel_presupuesto, '-property', 'enable'), 'enable', 'on')
     set(findall(handles.panel_distancia, '-property', 'enable'), 'enable', 'off')
     set(handles.btn_calcular, 'enable', 'on')
     set(handles.btn_borrar, 'enable', 'on')
else
    set(findall(handles.panel_presupuesto, '-property', 'enable'), 'enable', 'off')
     set(findall(handles.panel_distancia, '-property', 'enable'), 'enable', 'off')
end

% Hint: get(hObject,'Value') returns toggle state of rbutton_prespuesto


% --- Executes on button press in rbutton_distancia.
function rbutton_distancia_Callback(hObject, eventdata, handles)
% hObject    handle to rbutton_distancia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.caja_margen_sistema, 'enable', 'off')
p_distancia=get(handles.rbutton_distancia,'Value')

if p_distancia==1
     set(handles.caja_distancia,'string'," ")
    set(handles.caja_atenuacion,'string'," ")
    set(handles.caja_potencia_tx,'string'," ")
    set(handles.caja_sensibilidad_rx,'string'," ")
    set(handles.caja_numero_conectores,'string'," ")
    set(handles.caja_perdida_conectores,'string'," ")
    set(handles.caja_numero_empalmes,'string'," ")
    set(handles.caja_perdida_empalme,'string'," ")
    set(handles.caja_margen_sistema,'string'," ")
    set(handles.caja_resultado,'string'," ")
    
     set(handles.rbutton_prespuesto,'Value',0)
     set(findall(handles.panel_presupuesto, '-property', 'enable'), 'enable', 'off')
     set(findall(handles.panel_distancia, '-property', 'enable'), 'enable', 'on')
     set(handles.btn_calcular, 'enable', 'on')
     set(handles.btn_borrar, 'enable', 'on')
    set(handles.caja_margen_sistema,'string'," ")
    set(handles.caja_resultado,'string'," ")
    set(handles.caja_atenuacion2,'string'," ")
else
    set(findall(handles.panel_presupuesto, '-property', 'enable'), 'enable', 'off')
     set(findall(handles.panel_distancia, '-property', 'enable'), 'enable', 'off')
end


% Hint: get(hObject,'Value') returns toggle state of rbutton_distancia



function caja_sensibilidad_rx_Callback(hObject, eventdata, handles)
% hObject    handle to caja_sensibilidad_rx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_sensibilidad_rx as text
%        str2double(get(hObject,'String')) returns contents of caja_sensibilidad_rx as a double



function caja_distancia_maxima_Callback(hObject, eventdata, handles)
% hObject    handle to caja_distancia_maxima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caja_distancia_maxima as text
%        str2double(get(hObject,'String')) returns contents of caja_distancia_maxima as a double


% --- Executes during object creation, after setting all properties.
function caja_distancia_maxima_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caja_distancia_maxima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
