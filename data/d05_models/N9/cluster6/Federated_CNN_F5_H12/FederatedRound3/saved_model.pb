њП
±ь
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resourceИ
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
П
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeКнout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*
2.12.0-rc12v2.12.0-rc0-46-g0d8efc960d28њВ
r
dense_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_namedense_57/bias
k
!dense_57/bias/Read/ReadVariableOpReadVariableOpdense_57/bias*
_output_shapes
:<*
dtype0
z
dense_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: <* 
shared_namedense_57/kernel
s
#dense_57/kernel/Read/ReadVariableOpReadVariableOpdense_57/kernel*
_output_shapes

: <*
dtype0
r
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_56/bias
k
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
_output_shapes
: *
dtype0
z
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_56/kernel
s
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel*
_output_shapes

: *
dtype0
§
&batch_normalization_27/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_27/moving_variance
Э
:batch_normalization_27/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_27/moving_variance*
_output_shapes
:*
dtype0
Ь
"batch_normalization_27/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_27/moving_mean
Х
6batch_normalization_27/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_27/moving_mean*
_output_shapes
:*
dtype0
О
batch_normalization_27/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_27/beta
З
/batch_normalization_27/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_27/beta*
_output_shapes
:*
dtype0
Р
batch_normalization_27/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_27/gamma
Й
0batch_normalization_27/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_27/gamma*
_output_shapes
:*
dtype0
t
conv1d_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_27/bias
m
"conv1d_27/bias/Read/ReadVariableOpReadVariableOpconv1d_27/bias*
_output_shapes
:*
dtype0
А
conv1d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_27/kernel
y
$conv1d_27/kernel/Read/ReadVariableOpReadVariableOpconv1d_27/kernel*"
_output_shapes
:*
dtype0
§
&batch_normalization_26/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_26/moving_variance
Э
:batch_normalization_26/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_26/moving_variance*
_output_shapes
:*
dtype0
Ь
"batch_normalization_26/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_26/moving_mean
Х
6batch_normalization_26/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_26/moving_mean*
_output_shapes
:*
dtype0
О
batch_normalization_26/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_26/beta
З
/batch_normalization_26/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_26/beta*
_output_shapes
:*
dtype0
Р
batch_normalization_26/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_26/gamma
Й
0batch_normalization_26/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_26/gamma*
_output_shapes
:*
dtype0
t
conv1d_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_26/bias
m
"conv1d_26/bias/Read/ReadVariableOpReadVariableOpconv1d_26/bias*
_output_shapes
:*
dtype0
А
conv1d_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_26/kernel
y
$conv1d_26/kernel/Read/ReadVariableOpReadVariableOpconv1d_26/kernel*"
_output_shapes
:*
dtype0
§
&batch_normalization_25/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_25/moving_variance
Э
:batch_normalization_25/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_25/moving_variance*
_output_shapes
:*
dtype0
Ь
"batch_normalization_25/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_25/moving_mean
Х
6batch_normalization_25/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_25/moving_mean*
_output_shapes
:*
dtype0
О
batch_normalization_25/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_25/beta
З
/batch_normalization_25/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_25/beta*
_output_shapes
:*
dtype0
Р
batch_normalization_25/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_25/gamma
Й
0batch_normalization_25/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_25/gamma*
_output_shapes
:*
dtype0
t
conv1d_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_25/bias
m
"conv1d_25/bias/Read/ReadVariableOpReadVariableOpconv1d_25/bias*
_output_shapes
:*
dtype0
А
conv1d_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_25/kernel
y
$conv1d_25/kernel/Read/ReadVariableOpReadVariableOpconv1d_25/kernel*"
_output_shapes
:*
dtype0
§
&batch_normalization_24/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_24/moving_variance
Э
:batch_normalization_24/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_24/moving_variance*
_output_shapes
:*
dtype0
Ь
"batch_normalization_24/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_24/moving_mean
Х
6batch_normalization_24/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_24/moving_mean*
_output_shapes
:*
dtype0
О
batch_normalization_24/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_24/beta
З
/batch_normalization_24/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_24/beta*
_output_shapes
:*
dtype0
Р
batch_normalization_24/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_24/gamma
Й
0batch_normalization_24/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_24/gamma*
_output_shapes
:*
dtype0
t
conv1d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_24/bias
m
"conv1d_24/bias/Read/ReadVariableOpReadVariableOpconv1d_24/bias*
_output_shapes
:*
dtype0
А
conv1d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_24/kernel
y
$conv1d_24/kernel/Read/ReadVariableOpReadVariableOpconv1d_24/kernel*"
_output_shapes
:*
dtype0
А
serving_default_InputPlaceholder*+
_output_shapes
:€€€€€€€€€*
dtype0* 
shape:€€€€€€€€€
“
StatefulPartitionedCallStatefulPartitionedCallserving_default_Inputconv1d_24/kernelconv1d_24/bias&batch_normalization_24/moving_variancebatch_normalization_24/gamma"batch_normalization_24/moving_meanbatch_normalization_24/betaconv1d_25/kernelconv1d_25/bias&batch_normalization_25/moving_variancebatch_normalization_25/gamma"batch_normalization_25/moving_meanbatch_normalization_25/betaconv1d_26/kernelconv1d_26/bias&batch_normalization_26/moving_variancebatch_normalization_26/gamma"batch_normalization_26/moving_meanbatch_normalization_26/betaconv1d_27/kernelconv1d_27/bias&batch_normalization_27/moving_variancebatch_normalization_27/gamma"batch_normalization_27/moving_meanbatch_normalization_27/betadense_56/kerneldense_56/biasdense_57/kerneldense_57/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В */
f*R(
&__inference_signature_wrapper_13778453

NoOpNoOp
Кg
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*≈f
valueїfBЄf B±f
Й
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer-10
layer_with_weights-8
layer-11
layer-12
layer_with_weights-9
layer-13
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
»
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias
 &_jit_compiled_convolution_op*
’
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-axis
	.gamma
/beta
0moving_mean
1moving_variance*
»
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias
 :_jit_compiled_convolution_op*
’
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
Aaxis
	Bgamma
Cbeta
Dmoving_mean
Emoving_variance*
»
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op*
’
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
Uaxis
	Vgamma
Wbeta
Xmoving_mean
Ymoving_variance*
»
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias
 b_jit_compiled_convolution_op*
’
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses
iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance*
О
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses* 
¶
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

zkernel
{bias*
®
|	variables
}trainable_variables
~regularization_losses
	keras_api
А__call__
+Б&call_and_return_all_conditional_losses
В_random_generator* 
Ѓ
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Йkernel
	Кbias*
Ф
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses* 
№
$0
%1
.2
/3
04
15
86
97
B8
C9
D10
E11
L12
M13
V14
W15
X16
Y17
`18
a19
j20
k21
l22
m23
z24
{25
Й26
К27*
Ь
$0
%1
.2
/3
84
95
B6
C7
L8
M9
V10
W11
`12
a13
j14
k15
z16
{17
Й18
К19*
* 
µ
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Цtrace_0
Чtrace_1
Шtrace_2
Щtrace_3* 
:
Ъtrace_0
Ыtrace_1
Ьtrace_2
Эtrace_3* 
* 

Юserving_default* 
* 
* 
* 
Ц
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

§trace_0
•trace_1* 

¶trace_0
Іtrace_1* 

$0
%1*

$0
%1*
* 
Ш
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

≠trace_0* 

Ѓtrace_0* 
`Z
VARIABLE_VALUEconv1d_24/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_24/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
.0
/1
02
13*

.0
/1*
* 
Ш
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

іtrace_0
µtrace_1* 

ґtrace_0
Јtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_24/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_24/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_24/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_24/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

80
91*

80
91*
* 
Ш
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Љlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

љtrace_0* 

Њtrace_0* 
`Z
VARIABLE_VALUEconv1d_25/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_25/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
B0
C1
D2
E3*

B0
C1*
* 
Ш
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

ƒtrace_0
≈trace_1* 

∆trace_0
«trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_25/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_25/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_25/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_25/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

L0
M1*

L0
M1*
* 
Ш
»non_trainable_variables
…layers
 metrics
 Ћlayer_regularization_losses
ћlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

Ќtrace_0* 

ќtrace_0* 
`Z
VARIABLE_VALUEconv1d_26/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_26/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
V0
W1
X2
Y3*

V0
W1*
* 
Ш
ѕnon_trainable_variables
–layers
—metrics
 “layer_regularization_losses
”layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

‘trace_0
’trace_1* 

÷trace_0
„trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_26/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_26/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_26/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_26/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

`0
a1*

`0
a1*
* 
Ш
Ўnon_trainable_variables
ўlayers
Џmetrics
 џlayer_regularization_losses
№layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

Ёtrace_0* 

ёtrace_0* 
`Z
VARIABLE_VALUEconv1d_27/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_27/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
j0
k1
l2
m3*

j0
k1*
* 
Ш
яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

дtrace_0
еtrace_1* 

жtrace_0
зtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_27/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_27/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_27/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_27/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses* 

нtrace_0* 

оtrace_0* 

z0
{1*

z0
{1*
* 
Ш
пnon_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*

фtrace_0* 

хtrace_0* 
_Y
VARIABLE_VALUEdense_56/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_56/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Щ
цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
|	variables
}trainable_variables
~regularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses* 

ыtrace_0
ьtrace_1* 

эtrace_0
юtrace_1* 
* 

Й0
К1*

Й0
К1*
* 
Ю
€non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses*

Дtrace_0* 

Еtrace_0* 
_Y
VARIABLE_VALUEdense_57/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_57/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ь
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses* 

Лtrace_0* 

Мtrace_0* 
<
00
11
D2
E3
X4
Y5
l6
m7*
r
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

00
11*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

D0
E1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

X0
Y1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

l0
m1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Э
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv1d_24/kernelconv1d_24/biasbatch_normalization_24/gammabatch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_varianceconv1d_25/kernelconv1d_25/biasbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceconv1d_26/kernelconv1d_26/biasbatch_normalization_26/gammabatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_varianceconv1d_27/kernelconv1d_27/biasbatch_normalization_27/gammabatch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_variancedense_56/kerneldense_56/biasdense_57/kerneldense_57/biasConst*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__traced_save_13779660
Ш
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_24/kernelconv1d_24/biasbatch_normalization_24/gammabatch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_varianceconv1d_25/kernelconv1d_25/biasbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceconv1d_26/kernelconv1d_26/biasbatch_normalization_26/gammabatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_varianceconv1d_27/kernelconv1d_27/biasbatch_normalization_27/gammabatch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_variancedense_56/kerneldense_56/biasdense_57/kerneldense_57/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference__traced_restore_13779754•ƒ
и

d
H__inference_reshape_19_layer_call_and_return_conditional_losses_13779469

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :П
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€<:O K
'
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
а
‘
9__inference_batch_normalization_24_layer_call_fn_13778992

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_24_layer_call_and_return_conditional_losses_13777314|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
А&
н
T__inference_batch_normalization_27_layer_call_and_return_conditional_losses_13779354

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Г
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:Ф
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:ђ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:і
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Т
≥
T__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13779269

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ї
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
С
u
Y__inference_global_average_pooling1d_12_layer_call_and_return_conditional_losses_13779385

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
С
u
Y__inference_global_average_pooling1d_12_layer_call_and_return_conditional_losses_13777614

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
„J
Ј
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13778121

inputs(
conv1d_24_13778051: 
conv1d_24_13778053:-
batch_normalization_24_13778056:-
batch_normalization_24_13778058:-
batch_normalization_24_13778060:-
batch_normalization_24_13778062:(
conv1d_25_13778065: 
conv1d_25_13778067:-
batch_normalization_25_13778070:-
batch_normalization_25_13778072:-
batch_normalization_25_13778074:-
batch_normalization_25_13778076:(
conv1d_26_13778079: 
conv1d_26_13778081:-
batch_normalization_26_13778084:-
batch_normalization_26_13778086:-
batch_normalization_26_13778088:-
batch_normalization_26_13778090:(
conv1d_27_13778093: 
conv1d_27_13778095:-
batch_normalization_27_13778098:-
batch_normalization_27_13778100:-
batch_normalization_27_13778102:-
batch_normalization_27_13778104:#
dense_56_13778108: 
dense_56_13778110: #
dense_57_13778114: <
dense_57_13778116:<
identityИҐ.batch_normalization_24/StatefulPartitionedCallҐ.batch_normalization_25/StatefulPartitionedCallҐ.batch_normalization_26/StatefulPartitionedCallҐ.batch_normalization_27/StatefulPartitionedCallҐ!conv1d_24/StatefulPartitionedCallҐ!conv1d_25/StatefulPartitionedCallҐ!conv1d_26/StatefulPartitionedCallҐ!conv1d_27/StatefulPartitionedCallҐ dense_56/StatefulPartitionedCallҐ dense_57/StatefulPartitionedCallЊ
lambda_6/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lambda_6_layer_call_and_return_conditional_losses_13777832Щ
!conv1d_24/StatefulPartitionedCallStatefulPartitionedCall!lambda_6/PartitionedCall:output:0conv1d_24_13778051conv1d_24_13778053*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_24_layer_call_and_return_conditional_losses_13777650Ь
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall*conv1d_24/StatefulPartitionedCall:output:0batch_normalization_24_13778056batch_normalization_24_13778058batch_normalization_24_13778060batch_normalization_24_13778062*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_24_layer_call_and_return_conditional_losses_13777334ѓ
!conv1d_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0conv1d_25_13778065conv1d_25_13778067*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_25_layer_call_and_return_conditional_losses_13777681Ь
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall*conv1d_25/StatefulPartitionedCall:output:0batch_normalization_25_13778070batch_normalization_25_13778072batch_normalization_25_13778074batch_normalization_25_13778076*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_25_layer_call_and_return_conditional_losses_13777416ѓ
!conv1d_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0conv1d_26_13778079conv1d_26_13778081*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_26_layer_call_and_return_conditional_losses_13777712Ь
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv1d_26/StatefulPartitionedCall:output:0batch_normalization_26_13778084batch_normalization_26_13778086batch_normalization_26_13778088batch_normalization_26_13778090*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13777498ѓ
!conv1d_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0conv1d_27_13778093conv1d_27_13778095*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_27_layer_call_and_return_conditional_losses_13777743Ь
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*conv1d_27/StatefulPartitionedCall:output:0batch_normalization_27_13778098batch_normalization_27_13778100batch_normalization_27_13778102batch_normalization_27_13778104*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_27_layer_call_and_return_conditional_losses_13777580С
+global_average_pooling1d_12/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *b
f]R[
Y__inference_global_average_pooling1d_12_layer_call_and_return_conditional_losses_13777614§
 dense_56/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling1d_12/PartitionedCall:output:0dense_56_13778108dense_56_13778110*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_56_layer_call_and_return_conditional_losses_13777770б
dropout_13/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_13_layer_call_and_return_conditional_losses_13777900У
 dense_57/StatefulPartitionedCallStatefulPartitionedCall#dropout_13/PartitionedCall:output:0dense_57_13778114dense_57_13778116*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_57_layer_call_and_return_conditional_losses_13777800е
reshape_19/PartitionedCallPartitionedCall)dense_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_reshape_19_layer_call_and_return_conditional_losses_13777819v
IdentityIdentity#reshape_19/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€а
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall"^conv1d_24/StatefulPartitionedCall"^conv1d_25/StatefulPartitionedCall"^conv1d_26/StatefulPartitionedCall"^conv1d_27/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2F
!conv1d_24/StatefulPartitionedCall!conv1d_24/StatefulPartitionedCall2F
!conv1d_25/StatefulPartitionedCall!conv1d_25/StatefulPartitionedCall2F
!conv1d_26/StatefulPartitionedCall!conv1d_26/StatefulPartitionedCall2F
!conv1d_27/StatefulPartitionedCall!conv1d_27/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Э

ч
F__inference_dense_56_layer_call_and_return_conditional_losses_13779405

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
•
I
-__inference_dropout_13_layer_call_fn_13779415

inputs
identity≥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_13_layer_call_and_return_conditional_losses_13777900`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
в
‘
9__inference_batch_normalization_27_layer_call_fn_13779320

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_27_layer_call_and_return_conditional_losses_13777580|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
в
‘
9__inference_batch_normalization_24_layer_call_fn_13779005

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_24_layer_call_and_return_conditional_losses_13777334|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Т
≥
T__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13777498

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ї
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
А&
н
T__inference_batch_normalization_25_layer_call_and_return_conditional_losses_13777396

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Г
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:Ф
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:ђ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:і
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
а
‘
9__inference_batch_normalization_26_layer_call_fn_13779202

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13777478|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Т
≥
T__inference_batch_normalization_24_layer_call_and_return_conditional_losses_13779059

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ї
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ЌЈ
љ
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13778783

inputsK
5conv1d_24_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_24_biasadd_readvariableop_resource:L
>batch_normalization_24_assignmovingavg_readvariableop_resource:N
@batch_normalization_24_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_24_batchnorm_mul_readvariableop_resource:F
8batch_normalization_24_batchnorm_readvariableop_resource:K
5conv1d_25_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_25_biasadd_readvariableop_resource:L
>batch_normalization_25_assignmovingavg_readvariableop_resource:N
@batch_normalization_25_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_25_batchnorm_mul_readvariableop_resource:F
8batch_normalization_25_batchnorm_readvariableop_resource:K
5conv1d_26_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_26_biasadd_readvariableop_resource:L
>batch_normalization_26_assignmovingavg_readvariableop_resource:N
@batch_normalization_26_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_26_batchnorm_mul_readvariableop_resource:F
8batch_normalization_26_batchnorm_readvariableop_resource:K
5conv1d_27_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_27_biasadd_readvariableop_resource:L
>batch_normalization_27_assignmovingavg_readvariableop_resource:N
@batch_normalization_27_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_27_batchnorm_mul_readvariableop_resource:F
8batch_normalization_27_batchnorm_readvariableop_resource:9
'dense_56_matmul_readvariableop_resource: 6
(dense_56_biasadd_readvariableop_resource: 9
'dense_57_matmul_readvariableop_resource: <6
(dense_57_biasadd_readvariableop_resource:<
identityИҐ&batch_normalization_24/AssignMovingAvgҐ5batch_normalization_24/AssignMovingAvg/ReadVariableOpҐ(batch_normalization_24/AssignMovingAvg_1Ґ7batch_normalization_24/AssignMovingAvg_1/ReadVariableOpҐ/batch_normalization_24/batchnorm/ReadVariableOpҐ3batch_normalization_24/batchnorm/mul/ReadVariableOpҐ&batch_normalization_25/AssignMovingAvgҐ5batch_normalization_25/AssignMovingAvg/ReadVariableOpҐ(batch_normalization_25/AssignMovingAvg_1Ґ7batch_normalization_25/AssignMovingAvg_1/ReadVariableOpҐ/batch_normalization_25/batchnorm/ReadVariableOpҐ3batch_normalization_25/batchnorm/mul/ReadVariableOpҐ&batch_normalization_26/AssignMovingAvgҐ5batch_normalization_26/AssignMovingAvg/ReadVariableOpҐ(batch_normalization_26/AssignMovingAvg_1Ґ7batch_normalization_26/AssignMovingAvg_1/ReadVariableOpҐ/batch_normalization_26/batchnorm/ReadVariableOpҐ3batch_normalization_26/batchnorm/mul/ReadVariableOpҐ&batch_normalization_27/AssignMovingAvgҐ5batch_normalization_27/AssignMovingAvg/ReadVariableOpҐ(batch_normalization_27/AssignMovingAvg_1Ґ7batch_normalization_27/AssignMovingAvg_1/ReadVariableOpҐ/batch_normalization_27/batchnorm/ReadVariableOpҐ3batch_normalization_27/batchnorm/mul/ReadVariableOpҐ conv1d_24/BiasAdd/ReadVariableOpҐ,conv1d_24/Conv1D/ExpandDims_1/ReadVariableOpҐ conv1d_25/BiasAdd/ReadVariableOpҐ,conv1d_25/Conv1D/ExpandDims_1/ReadVariableOpҐ conv1d_26/BiasAdd/ReadVariableOpҐ,conv1d_26/Conv1D/ExpandDims_1/ReadVariableOpҐ conv1d_27/BiasAdd/ReadVariableOpҐ,conv1d_27/Conv1D/ExpandDims_1/ReadVariableOpҐdense_56/BiasAdd/ReadVariableOpҐdense_56/MatMul/ReadVariableOpҐdense_57/BiasAdd/ReadVariableOpҐdense_57/MatMul/ReadVariableOpq
lambda_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    э€€€    s
lambda_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            s
lambda_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         М
lambda_6/strided_sliceStridedSliceinputs%lambda_6/strided_slice/stack:output:0'lambda_6/strided_slice/stack_1:output:0'lambda_6/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*

begin_mask*
end_maskj
conv1d_24/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Ѓ
conv1d_24/Conv1D/ExpandDims
ExpandDimslambda_6/strided_slice:output:0(conv1d_24/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€¶
,conv1d_24/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_24_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_24/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Њ
conv1d_24/Conv1D/ExpandDims_1
ExpandDims4conv1d_24/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_24/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 
conv1d_24/Conv1DConv2D$conv1d_24/Conv1D/ExpandDims:output:0&conv1d_24/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Ф
conv1d_24/Conv1D/SqueezeSqueezeconv1d_24/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Ж
 conv1d_24/BiasAdd/ReadVariableOpReadVariableOp)conv1d_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Я
conv1d_24/BiasAddBiasAdd!conv1d_24/Conv1D/Squeeze:output:0(conv1d_24/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€h
conv1d_24/ReluReluconv1d_24/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ж
5batch_normalization_24/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       «
#batch_normalization_24/moments/meanMeanconv1d_24/Relu:activations:0>batch_normalization_24/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(Ц
+batch_normalization_24/moments/StopGradientStopGradient,batch_normalization_24/moments/mean:output:0*
T0*"
_output_shapes
:ѕ
0batch_normalization_24/moments/SquaredDifferenceSquaredDifferenceconv1d_24/Relu:activations:04batch_normalization_24/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€К
9batch_normalization_24/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       з
'batch_normalization_24/moments/varianceMean4batch_normalization_24/moments/SquaredDifference:z:0Bbatch_normalization_24/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(Ь
&batch_normalization_24/moments/SqueezeSqueeze,batch_normalization_24/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Ґ
(batch_normalization_24/moments/Squeeze_1Squeeze0batch_normalization_24/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_24/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<∞
5batch_normalization_24/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_24_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0∆
*batch_normalization_24/AssignMovingAvg/subSub=batch_normalization_24/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_24/moments/Squeeze:output:0*
T0*
_output_shapes
:љ
*batch_normalization_24/AssignMovingAvg/mulMul.batch_normalization_24/AssignMovingAvg/sub:z:05batch_normalization_24/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:И
&batch_normalization_24/AssignMovingAvgAssignSubVariableOp>batch_normalization_24_assignmovingavg_readvariableop_resource.batch_normalization_24/AssignMovingAvg/mul:z:06^batch_normalization_24/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_24/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<і
7batch_normalization_24/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_24_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0ћ
,batch_normalization_24/AssignMovingAvg_1/subSub?batch_normalization_24/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_24/moments/Squeeze_1:output:0*
T0*
_output_shapes
:√
,batch_normalization_24/AssignMovingAvg_1/mulMul0batch_normalization_24/AssignMovingAvg_1/sub:z:07batch_normalization_24/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Р
(batch_normalization_24/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_24_assignmovingavg_1_readvariableop_resource0batch_normalization_24/AssignMovingAvg_1/mul:z:08^batch_normalization_24/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_24/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ґ
$batch_normalization_24/batchnorm/addAddV21batch_normalization_24/moments/Squeeze_1:output:0/batch_normalization_24/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_24/batchnorm/RsqrtRsqrt(batch_normalization_24/batchnorm/add:z:0*
T0*
_output_shapes
:ђ
3batch_normalization_24/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_24_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0є
$batch_normalization_24/batchnorm/mulMul*batch_normalization_24/batchnorm/Rsqrt:y:0;batch_normalization_24/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ђ
&batch_normalization_24/batchnorm/mul_1Mulconv1d_24/Relu:activations:0(batch_normalization_24/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€≠
&batch_normalization_24/batchnorm/mul_2Mul/batch_normalization_24/moments/Squeeze:output:0(batch_normalization_24/batchnorm/mul:z:0*
T0*
_output_shapes
:§
/batch_normalization_24/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_24_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0µ
$batch_normalization_24/batchnorm/subSub7batch_normalization_24/batchnorm/ReadVariableOp:value:0*batch_normalization_24/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ї
&batch_normalization_24/batchnorm/add_1AddV2*batch_normalization_24/batchnorm/mul_1:z:0(batch_normalization_24/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€j
conv1d_25/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€є
conv1d_25/Conv1D/ExpandDims
ExpandDims*batch_normalization_24/batchnorm/add_1:z:0(conv1d_25/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€¶
,conv1d_25/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_25_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_25/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Њ
conv1d_25/Conv1D/ExpandDims_1
ExpandDims4conv1d_25/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_25/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 
conv1d_25/Conv1DConv2D$conv1d_25/Conv1D/ExpandDims:output:0&conv1d_25/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Ф
conv1d_25/Conv1D/SqueezeSqueezeconv1d_25/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Ж
 conv1d_25/BiasAdd/ReadVariableOpReadVariableOp)conv1d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Я
conv1d_25/BiasAddBiasAdd!conv1d_25/Conv1D/Squeeze:output:0(conv1d_25/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€h
conv1d_25/ReluReluconv1d_25/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ж
5batch_normalization_25/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       «
#batch_normalization_25/moments/meanMeanconv1d_25/Relu:activations:0>batch_normalization_25/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(Ц
+batch_normalization_25/moments/StopGradientStopGradient,batch_normalization_25/moments/mean:output:0*
T0*"
_output_shapes
:ѕ
0batch_normalization_25/moments/SquaredDifferenceSquaredDifferenceconv1d_25/Relu:activations:04batch_normalization_25/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€К
9batch_normalization_25/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       з
'batch_normalization_25/moments/varianceMean4batch_normalization_25/moments/SquaredDifference:z:0Bbatch_normalization_25/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(Ь
&batch_normalization_25/moments/SqueezeSqueeze,batch_normalization_25/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Ґ
(batch_normalization_25/moments/Squeeze_1Squeeze0batch_normalization_25/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_25/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<∞
5batch_normalization_25/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_25_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0∆
*batch_normalization_25/AssignMovingAvg/subSub=batch_normalization_25/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_25/moments/Squeeze:output:0*
T0*
_output_shapes
:љ
*batch_normalization_25/AssignMovingAvg/mulMul.batch_normalization_25/AssignMovingAvg/sub:z:05batch_normalization_25/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:И
&batch_normalization_25/AssignMovingAvgAssignSubVariableOp>batch_normalization_25_assignmovingavg_readvariableop_resource.batch_normalization_25/AssignMovingAvg/mul:z:06^batch_normalization_25/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_25/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<і
7batch_normalization_25/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_25_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0ћ
,batch_normalization_25/AssignMovingAvg_1/subSub?batch_normalization_25/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_25/moments/Squeeze_1:output:0*
T0*
_output_shapes
:√
,batch_normalization_25/AssignMovingAvg_1/mulMul0batch_normalization_25/AssignMovingAvg_1/sub:z:07batch_normalization_25/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Р
(batch_normalization_25/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_25_assignmovingavg_1_readvariableop_resource0batch_normalization_25/AssignMovingAvg_1/mul:z:08^batch_normalization_25/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_25/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ґ
$batch_normalization_25/batchnorm/addAddV21batch_normalization_25/moments/Squeeze_1:output:0/batch_normalization_25/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_25/batchnorm/RsqrtRsqrt(batch_normalization_25/batchnorm/add:z:0*
T0*
_output_shapes
:ђ
3batch_normalization_25/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_25_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0є
$batch_normalization_25/batchnorm/mulMul*batch_normalization_25/batchnorm/Rsqrt:y:0;batch_normalization_25/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ђ
&batch_normalization_25/batchnorm/mul_1Mulconv1d_25/Relu:activations:0(batch_normalization_25/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€≠
&batch_normalization_25/batchnorm/mul_2Mul/batch_normalization_25/moments/Squeeze:output:0(batch_normalization_25/batchnorm/mul:z:0*
T0*
_output_shapes
:§
/batch_normalization_25/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_25_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0µ
$batch_normalization_25/batchnorm/subSub7batch_normalization_25/batchnorm/ReadVariableOp:value:0*batch_normalization_25/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ї
&batch_normalization_25/batchnorm/add_1AddV2*batch_normalization_25/batchnorm/mul_1:z:0(batch_normalization_25/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€j
conv1d_26/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€є
conv1d_26/Conv1D/ExpandDims
ExpandDims*batch_normalization_25/batchnorm/add_1:z:0(conv1d_26/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€¶
,conv1d_26/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_26_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_26/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Њ
conv1d_26/Conv1D/ExpandDims_1
ExpandDims4conv1d_26/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_26/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 
conv1d_26/Conv1DConv2D$conv1d_26/Conv1D/ExpandDims:output:0&conv1d_26/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Ф
conv1d_26/Conv1D/SqueezeSqueezeconv1d_26/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Ж
 conv1d_26/BiasAdd/ReadVariableOpReadVariableOp)conv1d_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Я
conv1d_26/BiasAddBiasAdd!conv1d_26/Conv1D/Squeeze:output:0(conv1d_26/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€h
conv1d_26/ReluReluconv1d_26/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ж
5batch_normalization_26/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       «
#batch_normalization_26/moments/meanMeanconv1d_26/Relu:activations:0>batch_normalization_26/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(Ц
+batch_normalization_26/moments/StopGradientStopGradient,batch_normalization_26/moments/mean:output:0*
T0*"
_output_shapes
:ѕ
0batch_normalization_26/moments/SquaredDifferenceSquaredDifferenceconv1d_26/Relu:activations:04batch_normalization_26/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€К
9batch_normalization_26/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       з
'batch_normalization_26/moments/varianceMean4batch_normalization_26/moments/SquaredDifference:z:0Bbatch_normalization_26/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(Ь
&batch_normalization_26/moments/SqueezeSqueeze,batch_normalization_26/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Ґ
(batch_normalization_26/moments/Squeeze_1Squeeze0batch_normalization_26/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_26/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<∞
5batch_normalization_26/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_26_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0∆
*batch_normalization_26/AssignMovingAvg/subSub=batch_normalization_26/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_26/moments/Squeeze:output:0*
T0*
_output_shapes
:љ
*batch_normalization_26/AssignMovingAvg/mulMul.batch_normalization_26/AssignMovingAvg/sub:z:05batch_normalization_26/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:И
&batch_normalization_26/AssignMovingAvgAssignSubVariableOp>batch_normalization_26_assignmovingavg_readvariableop_resource.batch_normalization_26/AssignMovingAvg/mul:z:06^batch_normalization_26/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_26/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<і
7batch_normalization_26/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_26_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0ћ
,batch_normalization_26/AssignMovingAvg_1/subSub?batch_normalization_26/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_26/moments/Squeeze_1:output:0*
T0*
_output_shapes
:√
,batch_normalization_26/AssignMovingAvg_1/mulMul0batch_normalization_26/AssignMovingAvg_1/sub:z:07batch_normalization_26/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Р
(batch_normalization_26/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_26_assignmovingavg_1_readvariableop_resource0batch_normalization_26/AssignMovingAvg_1/mul:z:08^batch_normalization_26/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_26/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ґ
$batch_normalization_26/batchnorm/addAddV21batch_normalization_26/moments/Squeeze_1:output:0/batch_normalization_26/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_26/batchnorm/RsqrtRsqrt(batch_normalization_26/batchnorm/add:z:0*
T0*
_output_shapes
:ђ
3batch_normalization_26/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_26_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0є
$batch_normalization_26/batchnorm/mulMul*batch_normalization_26/batchnorm/Rsqrt:y:0;batch_normalization_26/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ђ
&batch_normalization_26/batchnorm/mul_1Mulconv1d_26/Relu:activations:0(batch_normalization_26/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€≠
&batch_normalization_26/batchnorm/mul_2Mul/batch_normalization_26/moments/Squeeze:output:0(batch_normalization_26/batchnorm/mul:z:0*
T0*
_output_shapes
:§
/batch_normalization_26/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_26_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0µ
$batch_normalization_26/batchnorm/subSub7batch_normalization_26/batchnorm/ReadVariableOp:value:0*batch_normalization_26/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ї
&batch_normalization_26/batchnorm/add_1AddV2*batch_normalization_26/batchnorm/mul_1:z:0(batch_normalization_26/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€j
conv1d_27/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€є
conv1d_27/Conv1D/ExpandDims
ExpandDims*batch_normalization_26/batchnorm/add_1:z:0(conv1d_27/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€¶
,conv1d_27/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_27_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_27/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Њ
conv1d_27/Conv1D/ExpandDims_1
ExpandDims4conv1d_27/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_27/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 
conv1d_27/Conv1DConv2D$conv1d_27/Conv1D/ExpandDims:output:0&conv1d_27/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Ф
conv1d_27/Conv1D/SqueezeSqueezeconv1d_27/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Ж
 conv1d_27/BiasAdd/ReadVariableOpReadVariableOp)conv1d_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Я
conv1d_27/BiasAddBiasAdd!conv1d_27/Conv1D/Squeeze:output:0(conv1d_27/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€h
conv1d_27/ReluReluconv1d_27/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ж
5batch_normalization_27/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       «
#batch_normalization_27/moments/meanMeanconv1d_27/Relu:activations:0>batch_normalization_27/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(Ц
+batch_normalization_27/moments/StopGradientStopGradient,batch_normalization_27/moments/mean:output:0*
T0*"
_output_shapes
:ѕ
0batch_normalization_27/moments/SquaredDifferenceSquaredDifferenceconv1d_27/Relu:activations:04batch_normalization_27/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€К
9batch_normalization_27/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       з
'batch_normalization_27/moments/varianceMean4batch_normalization_27/moments/SquaredDifference:z:0Bbatch_normalization_27/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(Ь
&batch_normalization_27/moments/SqueezeSqueeze,batch_normalization_27/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Ґ
(batch_normalization_27/moments/Squeeze_1Squeeze0batch_normalization_27/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_27/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<∞
5batch_normalization_27/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_27_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0∆
*batch_normalization_27/AssignMovingAvg/subSub=batch_normalization_27/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_27/moments/Squeeze:output:0*
T0*
_output_shapes
:љ
*batch_normalization_27/AssignMovingAvg/mulMul.batch_normalization_27/AssignMovingAvg/sub:z:05batch_normalization_27/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:И
&batch_normalization_27/AssignMovingAvgAssignSubVariableOp>batch_normalization_27_assignmovingavg_readvariableop_resource.batch_normalization_27/AssignMovingAvg/mul:z:06^batch_normalization_27/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_27/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<і
7batch_normalization_27/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_27_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0ћ
,batch_normalization_27/AssignMovingAvg_1/subSub?batch_normalization_27/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_27/moments/Squeeze_1:output:0*
T0*
_output_shapes
:√
,batch_normalization_27/AssignMovingAvg_1/mulMul0batch_normalization_27/AssignMovingAvg_1/sub:z:07batch_normalization_27/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Р
(batch_normalization_27/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_27_assignmovingavg_1_readvariableop_resource0batch_normalization_27/AssignMovingAvg_1/mul:z:08^batch_normalization_27/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_27/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ґ
$batch_normalization_27/batchnorm/addAddV21batch_normalization_27/moments/Squeeze_1:output:0/batch_normalization_27/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_27/batchnorm/RsqrtRsqrt(batch_normalization_27/batchnorm/add:z:0*
T0*
_output_shapes
:ђ
3batch_normalization_27/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_27_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0є
$batch_normalization_27/batchnorm/mulMul*batch_normalization_27/batchnorm/Rsqrt:y:0;batch_normalization_27/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ђ
&batch_normalization_27/batchnorm/mul_1Mulconv1d_27/Relu:activations:0(batch_normalization_27/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€≠
&batch_normalization_27/batchnorm/mul_2Mul/batch_normalization_27/moments/Squeeze:output:0(batch_normalization_27/batchnorm/mul:z:0*
T0*
_output_shapes
:§
/batch_normalization_27/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_27_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0µ
$batch_normalization_27/batchnorm/subSub7batch_normalization_27/batchnorm/ReadVariableOp:value:0*batch_normalization_27/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ї
&batch_normalization_27/batchnorm/add_1AddV2*batch_normalization_27/batchnorm/mul_1:z:0(batch_normalization_27/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€t
2global_average_pooling1d_12/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :√
 global_average_pooling1d_12/MeanMean*batch_normalization_27/batchnorm/add_1:z:0;global_average_pooling1d_12/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ю
dense_56/MatMulMatMul)global_average_pooling1d_12/Mean:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ Д
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ b
dense_56/ReluReludense_56/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ ]
dropout_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?П
dropout_13/dropout/MulMuldense_56/Relu:activations:0!dropout_13/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ q
dropout_13/dropout/ShapeShapedense_56/Relu:activations:0*
T0*
_output_shapes
::нѕЃ
/dropout_13/dropout/random_uniform/RandomUniformRandomUniform!dropout_13/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*

seed*f
!dropout_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>«
dropout_13/dropout/GreaterEqualGreaterEqual8dropout_13/dropout/random_uniform/RandomUniform:output:0*dropout_13/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ _
dropout_13/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    њ
dropout_13/dropout/SelectV2SelectV2#dropout_13/dropout/GreaterEqual:z:0dropout_13/dropout/Mul:z:0#dropout_13/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Ж
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

: <*
dtype0Щ
dense_57/MatMulMatMul$dropout_13/dropout/SelectV2:output:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€<Д
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0С
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€<g
reshape_19/ShapeShapedense_57/BiasAdd:output:0*
T0*
_output_shapes
::нѕh
reshape_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
reshape_19/strided_sliceStridedSlicereshape_19/Shape:output:0'reshape_19/strided_slice/stack:output:0)reshape_19/strided_slice/stack_1:output:0)reshape_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_19/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_19/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :ї
reshape_19/Reshape/shapePack!reshape_19/strided_slice:output:0#reshape_19/Reshape/shape/1:output:0#reshape_19/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:С
reshape_19/ReshapeReshapedense_57/BiasAdd:output:0!reshape_19/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€n
IdentityIdentityreshape_19/Reshape:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ћ
NoOpNoOp'^batch_normalization_24/AssignMovingAvg6^batch_normalization_24/AssignMovingAvg/ReadVariableOp)^batch_normalization_24/AssignMovingAvg_18^batch_normalization_24/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_24/batchnorm/ReadVariableOp4^batch_normalization_24/batchnorm/mul/ReadVariableOp'^batch_normalization_25/AssignMovingAvg6^batch_normalization_25/AssignMovingAvg/ReadVariableOp)^batch_normalization_25/AssignMovingAvg_18^batch_normalization_25/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_25/batchnorm/ReadVariableOp4^batch_normalization_25/batchnorm/mul/ReadVariableOp'^batch_normalization_26/AssignMovingAvg6^batch_normalization_26/AssignMovingAvg/ReadVariableOp)^batch_normalization_26/AssignMovingAvg_18^batch_normalization_26/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_26/batchnorm/ReadVariableOp4^batch_normalization_26/batchnorm/mul/ReadVariableOp'^batch_normalization_27/AssignMovingAvg6^batch_normalization_27/AssignMovingAvg/ReadVariableOp)^batch_normalization_27/AssignMovingAvg_18^batch_normalization_27/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_27/batchnorm/ReadVariableOp4^batch_normalization_27/batchnorm/mul/ReadVariableOp!^conv1d_24/BiasAdd/ReadVariableOp-^conv1d_24/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_25/BiasAdd/ReadVariableOp-^conv1d_25/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_26/BiasAdd/ReadVariableOp-^conv1d_26/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_27/BiasAdd/ReadVariableOp-^conv1d_27/Conv1D/ExpandDims_1/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2n
5batch_normalization_24/AssignMovingAvg/ReadVariableOp5batch_normalization_24/AssignMovingAvg/ReadVariableOp2r
7batch_normalization_24/AssignMovingAvg_1/ReadVariableOp7batch_normalization_24/AssignMovingAvg_1/ReadVariableOp2T
(batch_normalization_24/AssignMovingAvg_1(batch_normalization_24/AssignMovingAvg_12P
&batch_normalization_24/AssignMovingAvg&batch_normalization_24/AssignMovingAvg2b
/batch_normalization_24/batchnorm/ReadVariableOp/batch_normalization_24/batchnorm/ReadVariableOp2j
3batch_normalization_24/batchnorm/mul/ReadVariableOp3batch_normalization_24/batchnorm/mul/ReadVariableOp2n
5batch_normalization_25/AssignMovingAvg/ReadVariableOp5batch_normalization_25/AssignMovingAvg/ReadVariableOp2r
7batch_normalization_25/AssignMovingAvg_1/ReadVariableOp7batch_normalization_25/AssignMovingAvg_1/ReadVariableOp2T
(batch_normalization_25/AssignMovingAvg_1(batch_normalization_25/AssignMovingAvg_12P
&batch_normalization_25/AssignMovingAvg&batch_normalization_25/AssignMovingAvg2b
/batch_normalization_25/batchnorm/ReadVariableOp/batch_normalization_25/batchnorm/ReadVariableOp2j
3batch_normalization_25/batchnorm/mul/ReadVariableOp3batch_normalization_25/batchnorm/mul/ReadVariableOp2n
5batch_normalization_26/AssignMovingAvg/ReadVariableOp5batch_normalization_26/AssignMovingAvg/ReadVariableOp2r
7batch_normalization_26/AssignMovingAvg_1/ReadVariableOp7batch_normalization_26/AssignMovingAvg_1/ReadVariableOp2T
(batch_normalization_26/AssignMovingAvg_1(batch_normalization_26/AssignMovingAvg_12P
&batch_normalization_26/AssignMovingAvg&batch_normalization_26/AssignMovingAvg2b
/batch_normalization_26/batchnorm/ReadVariableOp/batch_normalization_26/batchnorm/ReadVariableOp2j
3batch_normalization_26/batchnorm/mul/ReadVariableOp3batch_normalization_26/batchnorm/mul/ReadVariableOp2n
5batch_normalization_27/AssignMovingAvg/ReadVariableOp5batch_normalization_27/AssignMovingAvg/ReadVariableOp2r
7batch_normalization_27/AssignMovingAvg_1/ReadVariableOp7batch_normalization_27/AssignMovingAvg_1/ReadVariableOp2T
(batch_normalization_27/AssignMovingAvg_1(batch_normalization_27/AssignMovingAvg_12P
&batch_normalization_27/AssignMovingAvg&batch_normalization_27/AssignMovingAvg2b
/batch_normalization_27/batchnorm/ReadVariableOp/batch_normalization_27/batchnorm/ReadVariableOp2j
3batch_normalization_27/batchnorm/mul/ReadVariableOp3batch_normalization_27/batchnorm/mul/ReadVariableOp2D
 conv1d_24/BiasAdd/ReadVariableOp conv1d_24/BiasAdd/ReadVariableOp2\
,conv1d_24/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_24/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_25/BiasAdd/ReadVariableOp conv1d_25/BiasAdd/ReadVariableOp2\
,conv1d_25/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_25/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_26/BiasAdd/ReadVariableOp conv1d_26/BiasAdd/ReadVariableOp2\
,conv1d_26/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_26/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_27/BiasAdd/ReadVariableOp conv1d_27/BiasAdd/ReadVariableOp2\
,conv1d_27/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_27/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Т
≥
T__inference_batch_normalization_27_layer_call_and_return_conditional_losses_13779374

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ї
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
є
в
7__inference_Federated_CNN_F5_H12_layer_call_fn_13778045	
input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10: 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23: 

unknown_24: 

unknown_25: <

unknown_26:<
identityИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*6
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13777986s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:€€€€€€€€€

_user_specified_nameInput
№
Э
,__inference_conv1d_26_layer_call_fn_13779173

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_26_layer_call_and_return_conditional_losses_13777712s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Т
≥
T__inference_batch_normalization_27_layer_call_and_return_conditional_losses_13777580

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ї
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
а
‘
9__inference_batch_normalization_25_layer_call_fn_13779097

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_25_layer_call_and_return_conditional_losses_13777396|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Е
Z
>__inference_global_average_pooling1d_12_layer_call_fn_13779379

inputs
identityЌ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *b
f]R[
Y__inference_global_average_pooling1d_12_layer_call_and_return_conditional_losses_13777614i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
№
Э
,__inference_conv1d_27_layer_call_fn_13779278

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_27_layer_call_and_return_conditional_losses_13777743s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
«∆
Э
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13778928

inputsK
5conv1d_24_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_24_biasadd_readvariableop_resource:F
8batch_normalization_24_batchnorm_readvariableop_resource:J
<batch_normalization_24_batchnorm_mul_readvariableop_resource:H
:batch_normalization_24_batchnorm_readvariableop_1_resource:H
:batch_normalization_24_batchnorm_readvariableop_2_resource:K
5conv1d_25_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_25_biasadd_readvariableop_resource:F
8batch_normalization_25_batchnorm_readvariableop_resource:J
<batch_normalization_25_batchnorm_mul_readvariableop_resource:H
:batch_normalization_25_batchnorm_readvariableop_1_resource:H
:batch_normalization_25_batchnorm_readvariableop_2_resource:K
5conv1d_26_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_26_biasadd_readvariableop_resource:F
8batch_normalization_26_batchnorm_readvariableop_resource:J
<batch_normalization_26_batchnorm_mul_readvariableop_resource:H
:batch_normalization_26_batchnorm_readvariableop_1_resource:H
:batch_normalization_26_batchnorm_readvariableop_2_resource:K
5conv1d_27_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_27_biasadd_readvariableop_resource:F
8batch_normalization_27_batchnorm_readvariableop_resource:J
<batch_normalization_27_batchnorm_mul_readvariableop_resource:H
:batch_normalization_27_batchnorm_readvariableop_1_resource:H
:batch_normalization_27_batchnorm_readvariableop_2_resource:9
'dense_56_matmul_readvariableop_resource: 6
(dense_56_biasadd_readvariableop_resource: 9
'dense_57_matmul_readvariableop_resource: <6
(dense_57_biasadd_readvariableop_resource:<
identityИҐ/batch_normalization_24/batchnorm/ReadVariableOpҐ1batch_normalization_24/batchnorm/ReadVariableOp_1Ґ1batch_normalization_24/batchnorm/ReadVariableOp_2Ґ3batch_normalization_24/batchnorm/mul/ReadVariableOpҐ/batch_normalization_25/batchnorm/ReadVariableOpҐ1batch_normalization_25/batchnorm/ReadVariableOp_1Ґ1batch_normalization_25/batchnorm/ReadVariableOp_2Ґ3batch_normalization_25/batchnorm/mul/ReadVariableOpҐ/batch_normalization_26/batchnorm/ReadVariableOpҐ1batch_normalization_26/batchnorm/ReadVariableOp_1Ґ1batch_normalization_26/batchnorm/ReadVariableOp_2Ґ3batch_normalization_26/batchnorm/mul/ReadVariableOpҐ/batch_normalization_27/batchnorm/ReadVariableOpҐ1batch_normalization_27/batchnorm/ReadVariableOp_1Ґ1batch_normalization_27/batchnorm/ReadVariableOp_2Ґ3batch_normalization_27/batchnorm/mul/ReadVariableOpҐ conv1d_24/BiasAdd/ReadVariableOpҐ,conv1d_24/Conv1D/ExpandDims_1/ReadVariableOpҐ conv1d_25/BiasAdd/ReadVariableOpҐ,conv1d_25/Conv1D/ExpandDims_1/ReadVariableOpҐ conv1d_26/BiasAdd/ReadVariableOpҐ,conv1d_26/Conv1D/ExpandDims_1/ReadVariableOpҐ conv1d_27/BiasAdd/ReadVariableOpҐ,conv1d_27/Conv1D/ExpandDims_1/ReadVariableOpҐdense_56/BiasAdd/ReadVariableOpҐdense_56/MatMul/ReadVariableOpҐdense_57/BiasAdd/ReadVariableOpҐdense_57/MatMul/ReadVariableOpq
lambda_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    э€€€    s
lambda_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            s
lambda_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         М
lambda_6/strided_sliceStridedSliceinputs%lambda_6/strided_slice/stack:output:0'lambda_6/strided_slice/stack_1:output:0'lambda_6/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*

begin_mask*
end_maskj
conv1d_24/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Ѓ
conv1d_24/Conv1D/ExpandDims
ExpandDimslambda_6/strided_slice:output:0(conv1d_24/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€¶
,conv1d_24/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_24_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_24/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Њ
conv1d_24/Conv1D/ExpandDims_1
ExpandDims4conv1d_24/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_24/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 
conv1d_24/Conv1DConv2D$conv1d_24/Conv1D/ExpandDims:output:0&conv1d_24/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Ф
conv1d_24/Conv1D/SqueezeSqueezeconv1d_24/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Ж
 conv1d_24/BiasAdd/ReadVariableOpReadVariableOp)conv1d_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Я
conv1d_24/BiasAddBiasAdd!conv1d_24/Conv1D/Squeeze:output:0(conv1d_24/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€h
conv1d_24/ReluReluconv1d_24/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€§
/batch_normalization_24/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_24_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_24/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:Љ
$batch_normalization_24/batchnorm/addAddV27batch_normalization_24/batchnorm/ReadVariableOp:value:0/batch_normalization_24/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_24/batchnorm/RsqrtRsqrt(batch_normalization_24/batchnorm/add:z:0*
T0*
_output_shapes
:ђ
3batch_normalization_24/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_24_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0є
$batch_normalization_24/batchnorm/mulMul*batch_normalization_24/batchnorm/Rsqrt:y:0;batch_normalization_24/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ђ
&batch_normalization_24/batchnorm/mul_1Mulconv1d_24/Relu:activations:0(batch_normalization_24/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€®
1batch_normalization_24/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_24_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0Ј
&batch_normalization_24/batchnorm/mul_2Mul9batch_normalization_24/batchnorm/ReadVariableOp_1:value:0(batch_normalization_24/batchnorm/mul:z:0*
T0*
_output_shapes
:®
1batch_normalization_24/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_24_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0Ј
$batch_normalization_24/batchnorm/subSub9batch_normalization_24/batchnorm/ReadVariableOp_2:value:0*batch_normalization_24/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ї
&batch_normalization_24/batchnorm/add_1AddV2*batch_normalization_24/batchnorm/mul_1:z:0(batch_normalization_24/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€j
conv1d_25/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€є
conv1d_25/Conv1D/ExpandDims
ExpandDims*batch_normalization_24/batchnorm/add_1:z:0(conv1d_25/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€¶
,conv1d_25/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_25_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_25/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Њ
conv1d_25/Conv1D/ExpandDims_1
ExpandDims4conv1d_25/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_25/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 
conv1d_25/Conv1DConv2D$conv1d_25/Conv1D/ExpandDims:output:0&conv1d_25/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Ф
conv1d_25/Conv1D/SqueezeSqueezeconv1d_25/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Ж
 conv1d_25/BiasAdd/ReadVariableOpReadVariableOp)conv1d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Я
conv1d_25/BiasAddBiasAdd!conv1d_25/Conv1D/Squeeze:output:0(conv1d_25/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€h
conv1d_25/ReluReluconv1d_25/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€§
/batch_normalization_25/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_25_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_25/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:Љ
$batch_normalization_25/batchnorm/addAddV27batch_normalization_25/batchnorm/ReadVariableOp:value:0/batch_normalization_25/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_25/batchnorm/RsqrtRsqrt(batch_normalization_25/batchnorm/add:z:0*
T0*
_output_shapes
:ђ
3batch_normalization_25/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_25_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0є
$batch_normalization_25/batchnorm/mulMul*batch_normalization_25/batchnorm/Rsqrt:y:0;batch_normalization_25/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ђ
&batch_normalization_25/batchnorm/mul_1Mulconv1d_25/Relu:activations:0(batch_normalization_25/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€®
1batch_normalization_25/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_25_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0Ј
&batch_normalization_25/batchnorm/mul_2Mul9batch_normalization_25/batchnorm/ReadVariableOp_1:value:0(batch_normalization_25/batchnorm/mul:z:0*
T0*
_output_shapes
:®
1batch_normalization_25/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_25_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0Ј
$batch_normalization_25/batchnorm/subSub9batch_normalization_25/batchnorm/ReadVariableOp_2:value:0*batch_normalization_25/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ї
&batch_normalization_25/batchnorm/add_1AddV2*batch_normalization_25/batchnorm/mul_1:z:0(batch_normalization_25/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€j
conv1d_26/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€є
conv1d_26/Conv1D/ExpandDims
ExpandDims*batch_normalization_25/batchnorm/add_1:z:0(conv1d_26/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€¶
,conv1d_26/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_26_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_26/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Њ
conv1d_26/Conv1D/ExpandDims_1
ExpandDims4conv1d_26/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_26/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 
conv1d_26/Conv1DConv2D$conv1d_26/Conv1D/ExpandDims:output:0&conv1d_26/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Ф
conv1d_26/Conv1D/SqueezeSqueezeconv1d_26/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Ж
 conv1d_26/BiasAdd/ReadVariableOpReadVariableOp)conv1d_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Я
conv1d_26/BiasAddBiasAdd!conv1d_26/Conv1D/Squeeze:output:0(conv1d_26/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€h
conv1d_26/ReluReluconv1d_26/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€§
/batch_normalization_26/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_26_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_26/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:Љ
$batch_normalization_26/batchnorm/addAddV27batch_normalization_26/batchnorm/ReadVariableOp:value:0/batch_normalization_26/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_26/batchnorm/RsqrtRsqrt(batch_normalization_26/batchnorm/add:z:0*
T0*
_output_shapes
:ђ
3batch_normalization_26/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_26_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0є
$batch_normalization_26/batchnorm/mulMul*batch_normalization_26/batchnorm/Rsqrt:y:0;batch_normalization_26/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ђ
&batch_normalization_26/batchnorm/mul_1Mulconv1d_26/Relu:activations:0(batch_normalization_26/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€®
1batch_normalization_26/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_26_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0Ј
&batch_normalization_26/batchnorm/mul_2Mul9batch_normalization_26/batchnorm/ReadVariableOp_1:value:0(batch_normalization_26/batchnorm/mul:z:0*
T0*
_output_shapes
:®
1batch_normalization_26/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_26_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0Ј
$batch_normalization_26/batchnorm/subSub9batch_normalization_26/batchnorm/ReadVariableOp_2:value:0*batch_normalization_26/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ї
&batch_normalization_26/batchnorm/add_1AddV2*batch_normalization_26/batchnorm/mul_1:z:0(batch_normalization_26/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€j
conv1d_27/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€є
conv1d_27/Conv1D/ExpandDims
ExpandDims*batch_normalization_26/batchnorm/add_1:z:0(conv1d_27/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€¶
,conv1d_27/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_27_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_27/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Њ
conv1d_27/Conv1D/ExpandDims_1
ExpandDims4conv1d_27/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_27/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 
conv1d_27/Conv1DConv2D$conv1d_27/Conv1D/ExpandDims:output:0&conv1d_27/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Ф
conv1d_27/Conv1D/SqueezeSqueezeconv1d_27/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Ж
 conv1d_27/BiasAdd/ReadVariableOpReadVariableOp)conv1d_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Я
conv1d_27/BiasAddBiasAdd!conv1d_27/Conv1D/Squeeze:output:0(conv1d_27/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€h
conv1d_27/ReluReluconv1d_27/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€§
/batch_normalization_27/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_27_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_27/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:Љ
$batch_normalization_27/batchnorm/addAddV27batch_normalization_27/batchnorm/ReadVariableOp:value:0/batch_normalization_27/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_27/batchnorm/RsqrtRsqrt(batch_normalization_27/batchnorm/add:z:0*
T0*
_output_shapes
:ђ
3batch_normalization_27/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_27_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0є
$batch_normalization_27/batchnorm/mulMul*batch_normalization_27/batchnorm/Rsqrt:y:0;batch_normalization_27/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ђ
&batch_normalization_27/batchnorm/mul_1Mulconv1d_27/Relu:activations:0(batch_normalization_27/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€®
1batch_normalization_27/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_27_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0Ј
&batch_normalization_27/batchnorm/mul_2Mul9batch_normalization_27/batchnorm/ReadVariableOp_1:value:0(batch_normalization_27/batchnorm/mul:z:0*
T0*
_output_shapes
:®
1batch_normalization_27/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_27_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0Ј
$batch_normalization_27/batchnorm/subSub9batch_normalization_27/batchnorm/ReadVariableOp_2:value:0*batch_normalization_27/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ї
&batch_normalization_27/batchnorm/add_1AddV2*batch_normalization_27/batchnorm/mul_1:z:0(batch_normalization_27/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€t
2global_average_pooling1d_12/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :√
 global_average_pooling1d_12/MeanMean*batch_normalization_27/batchnorm/add_1:z:0;global_average_pooling1d_12/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ю
dense_56/MatMulMatMul)global_average_pooling1d_12/Mean:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ Д
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ b
dense_56/ReluReludense_56/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ n
dropout_13/IdentityIdentitydense_56/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ Ж
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

: <*
dtype0С
dense_57/MatMulMatMuldropout_13/Identity:output:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€<Д
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0С
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€<g
reshape_19/ShapeShapedense_57/BiasAdd:output:0*
T0*
_output_shapes
::нѕh
reshape_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
reshape_19/strided_sliceStridedSlicereshape_19/Shape:output:0'reshape_19/strided_slice/stack:output:0)reshape_19/strided_slice/stack_1:output:0)reshape_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_19/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_19/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :ї
reshape_19/Reshape/shapePack!reshape_19/strided_slice:output:0#reshape_19/Reshape/shape/1:output:0#reshape_19/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:С
reshape_19/ReshapeReshapedense_57/BiasAdd:output:0!reshape_19/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€n
IdentityIdentityreshape_19/Reshape:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€‘

NoOpNoOp0^batch_normalization_24/batchnorm/ReadVariableOp2^batch_normalization_24/batchnorm/ReadVariableOp_12^batch_normalization_24/batchnorm/ReadVariableOp_24^batch_normalization_24/batchnorm/mul/ReadVariableOp0^batch_normalization_25/batchnorm/ReadVariableOp2^batch_normalization_25/batchnorm/ReadVariableOp_12^batch_normalization_25/batchnorm/ReadVariableOp_24^batch_normalization_25/batchnorm/mul/ReadVariableOp0^batch_normalization_26/batchnorm/ReadVariableOp2^batch_normalization_26/batchnorm/ReadVariableOp_12^batch_normalization_26/batchnorm/ReadVariableOp_24^batch_normalization_26/batchnorm/mul/ReadVariableOp0^batch_normalization_27/batchnorm/ReadVariableOp2^batch_normalization_27/batchnorm/ReadVariableOp_12^batch_normalization_27/batchnorm/ReadVariableOp_24^batch_normalization_27/batchnorm/mul/ReadVariableOp!^conv1d_24/BiasAdd/ReadVariableOp-^conv1d_24/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_25/BiasAdd/ReadVariableOp-^conv1d_25/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_26/BiasAdd/ReadVariableOp-^conv1d_26/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_27/BiasAdd/ReadVariableOp-^conv1d_27/Conv1D/ExpandDims_1/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2f
1batch_normalization_24/batchnorm/ReadVariableOp_11batch_normalization_24/batchnorm/ReadVariableOp_12f
1batch_normalization_24/batchnorm/ReadVariableOp_21batch_normalization_24/batchnorm/ReadVariableOp_22b
/batch_normalization_24/batchnorm/ReadVariableOp/batch_normalization_24/batchnorm/ReadVariableOp2j
3batch_normalization_24/batchnorm/mul/ReadVariableOp3batch_normalization_24/batchnorm/mul/ReadVariableOp2f
1batch_normalization_25/batchnorm/ReadVariableOp_11batch_normalization_25/batchnorm/ReadVariableOp_12f
1batch_normalization_25/batchnorm/ReadVariableOp_21batch_normalization_25/batchnorm/ReadVariableOp_22b
/batch_normalization_25/batchnorm/ReadVariableOp/batch_normalization_25/batchnorm/ReadVariableOp2j
3batch_normalization_25/batchnorm/mul/ReadVariableOp3batch_normalization_25/batchnorm/mul/ReadVariableOp2f
1batch_normalization_26/batchnorm/ReadVariableOp_11batch_normalization_26/batchnorm/ReadVariableOp_12f
1batch_normalization_26/batchnorm/ReadVariableOp_21batch_normalization_26/batchnorm/ReadVariableOp_22b
/batch_normalization_26/batchnorm/ReadVariableOp/batch_normalization_26/batchnorm/ReadVariableOp2j
3batch_normalization_26/batchnorm/mul/ReadVariableOp3batch_normalization_26/batchnorm/mul/ReadVariableOp2f
1batch_normalization_27/batchnorm/ReadVariableOp_11batch_normalization_27/batchnorm/ReadVariableOp_12f
1batch_normalization_27/batchnorm/ReadVariableOp_21batch_normalization_27/batchnorm/ReadVariableOp_22b
/batch_normalization_27/batchnorm/ReadVariableOp/batch_normalization_27/batchnorm/ReadVariableOp2j
3batch_normalization_27/batchnorm/mul/ReadVariableOp3batch_normalization_27/batchnorm/mul/ReadVariableOp2D
 conv1d_24/BiasAdd/ReadVariableOp conv1d_24/BiasAdd/ReadVariableOp2\
,conv1d_24/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_24/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_25/BiasAdd/ReadVariableOp conv1d_25/BiasAdd/ReadVariableOp2\
,conv1d_25/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_25/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_26/BiasAdd/ReadVariableOp conv1d_26/BiasAdd/ReadVariableOp2\
,conv1d_26/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_26/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_27/BiasAdd/ReadVariableOp conv1d_27/BiasAdd/ReadVariableOp2\
,conv1d_27/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_27/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
њ
b
F__inference_lambda_6_layer_call_and_return_conditional_losses_13778946

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    э€€€    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         и
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
њ
b
F__inference_lambda_6_layer_call_and_return_conditional_losses_13777832

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    э€€€    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         и
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
А&
н
T__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13777478

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Г
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:Ф
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:ђ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:і
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
 
Ц
G__inference_conv1d_25_layer_call_and_return_conditional_losses_13779084

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Б
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€Т
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : †
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:ђ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
А
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Б
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Д
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ыK
№
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13777986

inputs(
conv1d_24_13777916: 
conv1d_24_13777918:-
batch_normalization_24_13777921:-
batch_normalization_24_13777923:-
batch_normalization_24_13777925:-
batch_normalization_24_13777927:(
conv1d_25_13777930: 
conv1d_25_13777932:-
batch_normalization_25_13777935:-
batch_normalization_25_13777937:-
batch_normalization_25_13777939:-
batch_normalization_25_13777941:(
conv1d_26_13777944: 
conv1d_26_13777946:-
batch_normalization_26_13777949:-
batch_normalization_26_13777951:-
batch_normalization_26_13777953:-
batch_normalization_26_13777955:(
conv1d_27_13777958: 
conv1d_27_13777960:-
batch_normalization_27_13777963:-
batch_normalization_27_13777965:-
batch_normalization_27_13777967:-
batch_normalization_27_13777969:#
dense_56_13777973: 
dense_56_13777975: #
dense_57_13777979: <
dense_57_13777981:<
identityИҐ.batch_normalization_24/StatefulPartitionedCallҐ.batch_normalization_25/StatefulPartitionedCallҐ.batch_normalization_26/StatefulPartitionedCallҐ.batch_normalization_27/StatefulPartitionedCallҐ!conv1d_24/StatefulPartitionedCallҐ!conv1d_25/StatefulPartitionedCallҐ!conv1d_26/StatefulPartitionedCallҐ!conv1d_27/StatefulPartitionedCallҐ dense_56/StatefulPartitionedCallҐ dense_57/StatefulPartitionedCallҐ"dropout_13/StatefulPartitionedCallЊ
lambda_6/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lambda_6_layer_call_and_return_conditional_losses_13777632Щ
!conv1d_24/StatefulPartitionedCallStatefulPartitionedCall!lambda_6/PartitionedCall:output:0conv1d_24_13777916conv1d_24_13777918*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_24_layer_call_and_return_conditional_losses_13777650Ъ
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall*conv1d_24/StatefulPartitionedCall:output:0batch_normalization_24_13777921batch_normalization_24_13777923batch_normalization_24_13777925batch_normalization_24_13777927*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_24_layer_call_and_return_conditional_losses_13777314ѓ
!conv1d_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0conv1d_25_13777930conv1d_25_13777932*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_25_layer_call_and_return_conditional_losses_13777681Ъ
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall*conv1d_25/StatefulPartitionedCall:output:0batch_normalization_25_13777935batch_normalization_25_13777937batch_normalization_25_13777939batch_normalization_25_13777941*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_25_layer_call_and_return_conditional_losses_13777396ѓ
!conv1d_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0conv1d_26_13777944conv1d_26_13777946*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_26_layer_call_and_return_conditional_losses_13777712Ъ
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv1d_26/StatefulPartitionedCall:output:0batch_normalization_26_13777949batch_normalization_26_13777951batch_normalization_26_13777953batch_normalization_26_13777955*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13777478ѓ
!conv1d_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0conv1d_27_13777958conv1d_27_13777960*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_27_layer_call_and_return_conditional_losses_13777743Ъ
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*conv1d_27/StatefulPartitionedCall:output:0batch_normalization_27_13777963batch_normalization_27_13777965batch_normalization_27_13777967batch_normalization_27_13777969*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_27_layer_call_and_return_conditional_losses_13777560С
+global_average_pooling1d_12/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *b
f]R[
Y__inference_global_average_pooling1d_12_layer_call_and_return_conditional_losses_13777614§
 dense_56/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling1d_12/PartitionedCall:output:0dense_56_13777973dense_56_13777975*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_56_layer_call_and_return_conditional_losses_13777770с
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_13_layer_call_and_return_conditional_losses_13777788Ы
 dense_57/StatefulPartitionedCallStatefulPartitionedCall+dropout_13/StatefulPartitionedCall:output:0dense_57_13777979dense_57_13777981*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_57_layer_call_and_return_conditional_losses_13777800е
reshape_19/PartitionedCallPartitionedCall)dense_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_reshape_19_layer_call_and_return_conditional_losses_13777819v
IdentityIdentity#reshape_19/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Е
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall"^conv1d_24/StatefulPartitionedCall"^conv1d_25/StatefulPartitionedCall"^conv1d_26/StatefulPartitionedCall"^conv1d_27/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2F
!conv1d_24/StatefulPartitionedCall!conv1d_24/StatefulPartitionedCall2F
!conv1d_25/StatefulPartitionedCall!conv1d_25/StatefulPartitionedCall2F
!conv1d_26/StatefulPartitionedCall!conv1d_26/StatefulPartitionedCall2F
!conv1d_27/StatefulPartitionedCall!conv1d_27/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ѕ
в
7__inference_Federated_CNN_F5_H12_layer_call_fn_13778180	
input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10: 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23: 

unknown_24: 

unknown_25: <

unknown_26:<
identityИҐStatefulPartitionedCallЌ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13778121s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:€€€€€€€€€

_user_specified_nameInput
№
Э
,__inference_conv1d_25_layer_call_fn_13779068

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_25_layer_call_and_return_conditional_losses_13777681s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
 
Ц
G__inference_conv1d_27_layer_call_and_return_conditional_losses_13779294

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Б
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€Т
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : †
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:ђ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
А
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Б
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Д
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ƒ
г
7__inference_Federated_CNN_F5_H12_layer_call_fn_13778575

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10: 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23: 

unknown_24: 

unknown_25: <

unknown_26:<
identityИҐStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13778121s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
в
‘
9__inference_batch_normalization_26_layer_call_fn_13779215

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13777498|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
№
Э
,__inference_conv1d_24_layer_call_fn_13778963

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_24_layer_call_and_return_conditional_losses_13777650s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
 
Ц
G__inference_conv1d_25_layer_call_and_return_conditional_losses_13777681

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Б
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€Т
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : †
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:ђ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
А
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Б
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Д
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
 
Ц
G__inference_conv1d_26_layer_call_and_return_conditional_losses_13779189

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Б
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€Т
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : †
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:ђ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
А
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Б
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Д
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
±
G
+__inference_lambda_6_layer_call_fn_13778933

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lambda_6_layer_call_and_return_conditional_losses_13777632d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
А&
н
T__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13779249

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Г
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:Ф
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:ђ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:і
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
…	
ч
F__inference_dense_57_layer_call_and_return_conditional_losses_13779451

inputs0
matmul_readvariableop_resource: <-
biasadd_readvariableop_resource:<
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: <*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€<_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
 
Ц
G__inference_conv1d_24_layer_call_and_return_conditional_losses_13778979

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Б
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€Т
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : †
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:ђ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
А
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Б
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Д
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≠
I
-__inference_reshape_19_layer_call_fn_13779456

inputs
identityЈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_reshape_19_layer_call_and_return_conditional_losses_13777819d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€<:O K
'
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
∆
Ш
+__inference_dense_57_layer_call_fn_13779441

inputs
unknown: <
	unknown_0:<
identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_57_layer_call_and_return_conditional_losses_13777800o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
А&
н
T__inference_batch_normalization_24_layer_call_and_return_conditional_losses_13777314

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Г
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:Ф
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:ђ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:і
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
њ
b
F__inference_lambda_6_layer_call_and_return_conditional_losses_13778954

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    э€€€    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         и
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Б
—
&__inference_signature_wrapper_13778453	
input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10: 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23: 

unknown_24: 

unknown_25: <

unknown_26:<
identityИҐStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference__wrapped_model_13777279s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:€€€€€€€€€

_user_specified_nameInput
џ
f
H__inference_dropout_13_layer_call_and_return_conditional_losses_13777900

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Љ
г
7__inference_Federated_CNN_F5_H12_layer_call_fn_13778514

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10: 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23: 

unknown_24: 

unknown_25: <

unknown_26:<
identityИҐStatefulPartitionedCall∆
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*6
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13777986s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
А&
н
T__inference_batch_normalization_24_layer_call_and_return_conditional_losses_13779039

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Г
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:Ф
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:ђ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:і
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
®

g
H__inference_dropout_13_layer_call_and_return_conditional_losses_13779427

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕШ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
…	
ч
F__inference_dense_57_layer_call_and_return_conditional_losses_13777800

inputs0
matmul_readvariableop_resource: <-
biasadd_readvariableop_resource:<
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: <*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€<_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
џ
f
H__inference_dropout_13_layer_call_and_return_conditional_losses_13779432

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
∆
Ш
+__inference_dense_56_layer_call_fn_13779394

inputs
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_56_layer_call_and_return_conditional_losses_13777770o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
в
‘
9__inference_batch_normalization_25_layer_call_fn_13779110

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_25_layer_call_and_return_conditional_losses_13777416|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
 
Ц
G__inference_conv1d_24_layer_call_and_return_conditional_losses_13777650

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Б
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€Т
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : †
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:ђ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
А
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Б
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Д
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ж{
я
$__inference__traced_restore_13779754
file_prefix7
!assignvariableop_conv1d_24_kernel:/
!assignvariableop_1_conv1d_24_bias:=
/assignvariableop_2_batch_normalization_24_gamma:<
.assignvariableop_3_batch_normalization_24_beta:C
5assignvariableop_4_batch_normalization_24_moving_mean:G
9assignvariableop_5_batch_normalization_24_moving_variance:9
#assignvariableop_6_conv1d_25_kernel:/
!assignvariableop_7_conv1d_25_bias:=
/assignvariableop_8_batch_normalization_25_gamma:<
.assignvariableop_9_batch_normalization_25_beta:D
6assignvariableop_10_batch_normalization_25_moving_mean:H
:assignvariableop_11_batch_normalization_25_moving_variance::
$assignvariableop_12_conv1d_26_kernel:0
"assignvariableop_13_conv1d_26_bias:>
0assignvariableop_14_batch_normalization_26_gamma:=
/assignvariableop_15_batch_normalization_26_beta:D
6assignvariableop_16_batch_normalization_26_moving_mean:H
:assignvariableop_17_batch_normalization_26_moving_variance::
$assignvariableop_18_conv1d_27_kernel:0
"assignvariableop_19_conv1d_27_bias:>
0assignvariableop_20_batch_normalization_27_gamma:=
/assignvariableop_21_batch_normalization_27_beta:D
6assignvariableop_22_batch_normalization_27_moving_mean:H
:assignvariableop_23_batch_normalization_27_moving_variance:5
#assignvariableop_24_dense_56_kernel: /
!assignvariableop_25_dense_56_bias: 5
#assignvariableop_26_dense_57_kernel: </
!assignvariableop_27_dense_57_bias:<
identity_29ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Ќ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*у
valueйBжB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH™
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B ∞
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*И
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOpAssignVariableOp!assignvariableop_conv1d_24_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv1d_24_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:∆
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_24_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_24_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_24_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:–
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_24_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv1d_25_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv1d_25_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:∆
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_25_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_25_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_25_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:”
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_25_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv1d_26_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv1d_26_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:…
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_26_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_26_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_26_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:”
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_26_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv1d_27_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv1d_27_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:…
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_27_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_27_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_27_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:”
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_27_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_56_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_56_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_26AssignVariableOp#assignvariableop_26_dense_57_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_27AssignVariableOp!assignvariableop_27_dense_57_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Ј
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: §
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_29Identity_29:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Т
≥
T__inference_batch_normalization_24_layer_call_and_return_conditional_losses_13777334

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ї
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
 
Ц
G__inference_conv1d_26_layer_call_and_return_conditional_losses_13777712

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Б
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€Т
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : †
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:ђ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
А
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Б
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Д
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
 
Ц
G__inference_conv1d_27_layer_call_and_return_conditional_losses_13777743

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Б
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€Т
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : †
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:ђ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
А
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Б
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Д
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
‘J
ґ
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13777909	
input(
conv1d_24_13777834: 
conv1d_24_13777836:-
batch_normalization_24_13777839:-
batch_normalization_24_13777841:-
batch_normalization_24_13777843:-
batch_normalization_24_13777845:(
conv1d_25_13777848: 
conv1d_25_13777850:-
batch_normalization_25_13777853:-
batch_normalization_25_13777855:-
batch_normalization_25_13777857:-
batch_normalization_25_13777859:(
conv1d_26_13777862: 
conv1d_26_13777864:-
batch_normalization_26_13777867:-
batch_normalization_26_13777869:-
batch_normalization_26_13777871:-
batch_normalization_26_13777873:(
conv1d_27_13777876: 
conv1d_27_13777878:-
batch_normalization_27_13777881:-
batch_normalization_27_13777883:-
batch_normalization_27_13777885:-
batch_normalization_27_13777887:#
dense_56_13777891: 
dense_56_13777893: #
dense_57_13777902: <
dense_57_13777904:<
identityИҐ.batch_normalization_24/StatefulPartitionedCallҐ.batch_normalization_25/StatefulPartitionedCallҐ.batch_normalization_26/StatefulPartitionedCallҐ.batch_normalization_27/StatefulPartitionedCallҐ!conv1d_24/StatefulPartitionedCallҐ!conv1d_25/StatefulPartitionedCallҐ!conv1d_26/StatefulPartitionedCallҐ!conv1d_27/StatefulPartitionedCallҐ dense_56/StatefulPartitionedCallҐ dense_57/StatefulPartitionedCallљ
lambda_6/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lambda_6_layer_call_and_return_conditional_losses_13777832Щ
!conv1d_24/StatefulPartitionedCallStatefulPartitionedCall!lambda_6/PartitionedCall:output:0conv1d_24_13777834conv1d_24_13777836*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_24_layer_call_and_return_conditional_losses_13777650Ь
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall*conv1d_24/StatefulPartitionedCall:output:0batch_normalization_24_13777839batch_normalization_24_13777841batch_normalization_24_13777843batch_normalization_24_13777845*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_24_layer_call_and_return_conditional_losses_13777334ѓ
!conv1d_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0conv1d_25_13777848conv1d_25_13777850*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_25_layer_call_and_return_conditional_losses_13777681Ь
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall*conv1d_25/StatefulPartitionedCall:output:0batch_normalization_25_13777853batch_normalization_25_13777855batch_normalization_25_13777857batch_normalization_25_13777859*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_25_layer_call_and_return_conditional_losses_13777416ѓ
!conv1d_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0conv1d_26_13777862conv1d_26_13777864*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_26_layer_call_and_return_conditional_losses_13777712Ь
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv1d_26/StatefulPartitionedCall:output:0batch_normalization_26_13777867batch_normalization_26_13777869batch_normalization_26_13777871batch_normalization_26_13777873*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13777498ѓ
!conv1d_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0conv1d_27_13777876conv1d_27_13777878*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_27_layer_call_and_return_conditional_losses_13777743Ь
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*conv1d_27/StatefulPartitionedCall:output:0batch_normalization_27_13777881batch_normalization_27_13777883batch_normalization_27_13777885batch_normalization_27_13777887*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_27_layer_call_and_return_conditional_losses_13777580С
+global_average_pooling1d_12/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *b
f]R[
Y__inference_global_average_pooling1d_12_layer_call_and_return_conditional_losses_13777614§
 dense_56/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling1d_12/PartitionedCall:output:0dense_56_13777891dense_56_13777893*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_56_layer_call_and_return_conditional_losses_13777770б
dropout_13/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_13_layer_call_and_return_conditional_losses_13777900У
 dense_57/StatefulPartitionedCallStatefulPartitionedCall#dropout_13/PartitionedCall:output:0dense_57_13777902dense_57_13777904*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_57_layer_call_and_return_conditional_losses_13777800е
reshape_19/PartitionedCallPartitionedCall)dense_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_reshape_19_layer_call_and_return_conditional_losses_13777819v
IdentityIdentity#reshape_19/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€а
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall"^conv1d_24/StatefulPartitionedCall"^conv1d_25/StatefulPartitionedCall"^conv1d_26/StatefulPartitionedCall"^conv1d_27/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2F
!conv1d_24/StatefulPartitionedCall!conv1d_24/StatefulPartitionedCall2F
!conv1d_25/StatefulPartitionedCall!conv1d_25/StatefulPartitionedCall2F
!conv1d_26/StatefulPartitionedCall!conv1d_26/StatefulPartitionedCall2F
!conv1d_27/StatefulPartitionedCall!conv1d_27/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall:R N
+
_output_shapes
:€€€€€€€€€

_user_specified_nameInput
и

d
H__inference_reshape_19_layer_call_and_return_conditional_losses_13777819

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :П
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€<:O K
'
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
А&
н
T__inference_batch_normalization_27_layer_call_and_return_conditional_losses_13777560

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Г
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:Ф
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:ђ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:і
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
шЗ
Е#
#__inference__wrapped_model_13777279	
input`
Jfederated_cnn_f5_h12_conv1d_24_conv1d_expanddims_1_readvariableop_resource:L
>federated_cnn_f5_h12_conv1d_24_biasadd_readvariableop_resource:[
Mfederated_cnn_f5_h12_batch_normalization_24_batchnorm_readvariableop_resource:_
Qfederated_cnn_f5_h12_batch_normalization_24_batchnorm_mul_readvariableop_resource:]
Ofederated_cnn_f5_h12_batch_normalization_24_batchnorm_readvariableop_1_resource:]
Ofederated_cnn_f5_h12_batch_normalization_24_batchnorm_readvariableop_2_resource:`
Jfederated_cnn_f5_h12_conv1d_25_conv1d_expanddims_1_readvariableop_resource:L
>federated_cnn_f5_h12_conv1d_25_biasadd_readvariableop_resource:[
Mfederated_cnn_f5_h12_batch_normalization_25_batchnorm_readvariableop_resource:_
Qfederated_cnn_f5_h12_batch_normalization_25_batchnorm_mul_readvariableop_resource:]
Ofederated_cnn_f5_h12_batch_normalization_25_batchnorm_readvariableop_1_resource:]
Ofederated_cnn_f5_h12_batch_normalization_25_batchnorm_readvariableop_2_resource:`
Jfederated_cnn_f5_h12_conv1d_26_conv1d_expanddims_1_readvariableop_resource:L
>federated_cnn_f5_h12_conv1d_26_biasadd_readvariableop_resource:[
Mfederated_cnn_f5_h12_batch_normalization_26_batchnorm_readvariableop_resource:_
Qfederated_cnn_f5_h12_batch_normalization_26_batchnorm_mul_readvariableop_resource:]
Ofederated_cnn_f5_h12_batch_normalization_26_batchnorm_readvariableop_1_resource:]
Ofederated_cnn_f5_h12_batch_normalization_26_batchnorm_readvariableop_2_resource:`
Jfederated_cnn_f5_h12_conv1d_27_conv1d_expanddims_1_readvariableop_resource:L
>federated_cnn_f5_h12_conv1d_27_biasadd_readvariableop_resource:[
Mfederated_cnn_f5_h12_batch_normalization_27_batchnorm_readvariableop_resource:_
Qfederated_cnn_f5_h12_batch_normalization_27_batchnorm_mul_readvariableop_resource:]
Ofederated_cnn_f5_h12_batch_normalization_27_batchnorm_readvariableop_1_resource:]
Ofederated_cnn_f5_h12_batch_normalization_27_batchnorm_readvariableop_2_resource:N
<federated_cnn_f5_h12_dense_56_matmul_readvariableop_resource: K
=federated_cnn_f5_h12_dense_56_biasadd_readvariableop_resource: N
<federated_cnn_f5_h12_dense_57_matmul_readvariableop_resource: <K
=federated_cnn_f5_h12_dense_57_biasadd_readvariableop_resource:<
identityИҐDFederated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOpҐFFederated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOp_1ҐFFederated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOp_2ҐHFederated_CNN_F5_H12/batch_normalization_24/batchnorm/mul/ReadVariableOpҐDFederated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOpҐFFederated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOp_1ҐFFederated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOp_2ҐHFederated_CNN_F5_H12/batch_normalization_25/batchnorm/mul/ReadVariableOpҐDFederated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOpҐFFederated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOp_1ҐFFederated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOp_2ҐHFederated_CNN_F5_H12/batch_normalization_26/batchnorm/mul/ReadVariableOpҐDFederated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOpҐFFederated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOp_1ҐFFederated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOp_2ҐHFederated_CNN_F5_H12/batch_normalization_27/batchnorm/mul/ReadVariableOpҐ5Federated_CNN_F5_H12/conv1d_24/BiasAdd/ReadVariableOpҐAFederated_CNN_F5_H12/conv1d_24/Conv1D/ExpandDims_1/ReadVariableOpҐ5Federated_CNN_F5_H12/conv1d_25/BiasAdd/ReadVariableOpҐAFederated_CNN_F5_H12/conv1d_25/Conv1D/ExpandDims_1/ReadVariableOpҐ5Federated_CNN_F5_H12/conv1d_26/BiasAdd/ReadVariableOpҐAFederated_CNN_F5_H12/conv1d_26/Conv1D/ExpandDims_1/ReadVariableOpҐ5Federated_CNN_F5_H12/conv1d_27/BiasAdd/ReadVariableOpҐAFederated_CNN_F5_H12/conv1d_27/Conv1D/ExpandDims_1/ReadVariableOpҐ4Federated_CNN_F5_H12/dense_56/BiasAdd/ReadVariableOpҐ3Federated_CNN_F5_H12/dense_56/MatMul/ReadVariableOpҐ4Federated_CNN_F5_H12/dense_57/BiasAdd/ReadVariableOpҐ3Federated_CNN_F5_H12/dense_57/MatMul/ReadVariableOpЖ
1Federated_CNN_F5_H12/lambda_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    э€€€    И
3Federated_CNN_F5_H12/lambda_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            И
3Federated_CNN_F5_H12/lambda_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         я
+Federated_CNN_F5_H12/lambda_6/strided_sliceStridedSliceinput:Federated_CNN_F5_H12/lambda_6/strided_slice/stack:output:0<Federated_CNN_F5_H12/lambda_6/strided_slice/stack_1:output:0<Federated_CNN_F5_H12/lambda_6/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask
4Federated_CNN_F5_H12/conv1d_24/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€н
0Federated_CNN_F5_H12/conv1d_24/Conv1D/ExpandDims
ExpandDims4Federated_CNN_F5_H12/lambda_6/strided_slice:output:0=Federated_CNN_F5_H12/conv1d_24/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€–
AFederated_CNN_F5_H12/conv1d_24/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpJfederated_cnn_f5_h12_conv1d_24_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0x
6Federated_CNN_F5_H12/conv1d_24/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : э
2Federated_CNN_F5_H12/conv1d_24/Conv1D/ExpandDims_1
ExpandDimsIFederated_CNN_F5_H12/conv1d_24/Conv1D/ExpandDims_1/ReadVariableOp:value:0?Federated_CNN_F5_H12/conv1d_24/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Й
%Federated_CNN_F5_H12/conv1d_24/Conv1DConv2D9Federated_CNN_F5_H12/conv1d_24/Conv1D/ExpandDims:output:0;Federated_CNN_F5_H12/conv1d_24/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Њ
-Federated_CNN_F5_H12/conv1d_24/Conv1D/SqueezeSqueeze.Federated_CNN_F5_H12/conv1d_24/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€∞
5Federated_CNN_F5_H12/conv1d_24/BiasAdd/ReadVariableOpReadVariableOp>federated_cnn_f5_h12_conv1d_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ё
&Federated_CNN_F5_H12/conv1d_24/BiasAddBiasAdd6Federated_CNN_F5_H12/conv1d_24/Conv1D/Squeeze:output:0=Federated_CNN_F5_H12/conv1d_24/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€Т
#Federated_CNN_F5_H12/conv1d_24/ReluRelu/Federated_CNN_F5_H12/conv1d_24/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ќ
DFederated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOpReadVariableOpMfederated_cnn_f5_h12_batch_normalization_24_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0А
;Federated_CNN_F5_H12/batch_normalization_24/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ы
9Federated_CNN_F5_H12/batch_normalization_24/batchnorm/addAddV2LFederated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOp:value:0DFederated_CNN_F5_H12/batch_normalization_24/batchnorm/add/y:output:0*
T0*
_output_shapes
:®
;Federated_CNN_F5_H12/batch_normalization_24/batchnorm/RsqrtRsqrt=Federated_CNN_F5_H12/batch_normalization_24/batchnorm/add:z:0*
T0*
_output_shapes
:÷
HFederated_CNN_F5_H12/batch_normalization_24/batchnorm/mul/ReadVariableOpReadVariableOpQfederated_cnn_f5_h12_batch_normalization_24_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ш
9Federated_CNN_F5_H12/batch_normalization_24/batchnorm/mulMul?Federated_CNN_F5_H12/batch_normalization_24/batchnorm/Rsqrt:y:0PFederated_CNN_F5_H12/batch_normalization_24/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:к
;Federated_CNN_F5_H12/batch_normalization_24/batchnorm/mul_1Mul1Federated_CNN_F5_H12/conv1d_24/Relu:activations:0=Federated_CNN_F5_H12/batch_normalization_24/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€“
FFederated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOp_1ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_24_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0ц
;Federated_CNN_F5_H12/batch_normalization_24/batchnorm/mul_2MulNFederated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOp_1:value:0=Federated_CNN_F5_H12/batch_normalization_24/batchnorm/mul:z:0*
T0*
_output_shapes
:“
FFederated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOp_2ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_24_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0ц
9Federated_CNN_F5_H12/batch_normalization_24/batchnorm/subSubNFederated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOp_2:value:0?Federated_CNN_F5_H12/batch_normalization_24/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ъ
;Federated_CNN_F5_H12/batch_normalization_24/batchnorm/add_1AddV2?Federated_CNN_F5_H12/batch_normalization_24/batchnorm/mul_1:z:0=Federated_CNN_F5_H12/batch_normalization_24/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€
4Federated_CNN_F5_H12/conv1d_25/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€ш
0Federated_CNN_F5_H12/conv1d_25/Conv1D/ExpandDims
ExpandDims?Federated_CNN_F5_H12/batch_normalization_24/batchnorm/add_1:z:0=Federated_CNN_F5_H12/conv1d_25/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€–
AFederated_CNN_F5_H12/conv1d_25/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpJfederated_cnn_f5_h12_conv1d_25_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0x
6Federated_CNN_F5_H12/conv1d_25/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : э
2Federated_CNN_F5_H12/conv1d_25/Conv1D/ExpandDims_1
ExpandDimsIFederated_CNN_F5_H12/conv1d_25/Conv1D/ExpandDims_1/ReadVariableOp:value:0?Federated_CNN_F5_H12/conv1d_25/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Й
%Federated_CNN_F5_H12/conv1d_25/Conv1DConv2D9Federated_CNN_F5_H12/conv1d_25/Conv1D/ExpandDims:output:0;Federated_CNN_F5_H12/conv1d_25/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Њ
-Federated_CNN_F5_H12/conv1d_25/Conv1D/SqueezeSqueeze.Federated_CNN_F5_H12/conv1d_25/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€∞
5Federated_CNN_F5_H12/conv1d_25/BiasAdd/ReadVariableOpReadVariableOp>federated_cnn_f5_h12_conv1d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ё
&Federated_CNN_F5_H12/conv1d_25/BiasAddBiasAdd6Federated_CNN_F5_H12/conv1d_25/Conv1D/Squeeze:output:0=Federated_CNN_F5_H12/conv1d_25/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€Т
#Federated_CNN_F5_H12/conv1d_25/ReluRelu/Federated_CNN_F5_H12/conv1d_25/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ќ
DFederated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOpReadVariableOpMfederated_cnn_f5_h12_batch_normalization_25_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0А
;Federated_CNN_F5_H12/batch_normalization_25/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ы
9Federated_CNN_F5_H12/batch_normalization_25/batchnorm/addAddV2LFederated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOp:value:0DFederated_CNN_F5_H12/batch_normalization_25/batchnorm/add/y:output:0*
T0*
_output_shapes
:®
;Federated_CNN_F5_H12/batch_normalization_25/batchnorm/RsqrtRsqrt=Federated_CNN_F5_H12/batch_normalization_25/batchnorm/add:z:0*
T0*
_output_shapes
:÷
HFederated_CNN_F5_H12/batch_normalization_25/batchnorm/mul/ReadVariableOpReadVariableOpQfederated_cnn_f5_h12_batch_normalization_25_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ш
9Federated_CNN_F5_H12/batch_normalization_25/batchnorm/mulMul?Federated_CNN_F5_H12/batch_normalization_25/batchnorm/Rsqrt:y:0PFederated_CNN_F5_H12/batch_normalization_25/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:к
;Federated_CNN_F5_H12/batch_normalization_25/batchnorm/mul_1Mul1Federated_CNN_F5_H12/conv1d_25/Relu:activations:0=Federated_CNN_F5_H12/batch_normalization_25/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€“
FFederated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOp_1ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_25_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0ц
;Federated_CNN_F5_H12/batch_normalization_25/batchnorm/mul_2MulNFederated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOp_1:value:0=Federated_CNN_F5_H12/batch_normalization_25/batchnorm/mul:z:0*
T0*
_output_shapes
:“
FFederated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOp_2ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_25_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0ц
9Federated_CNN_F5_H12/batch_normalization_25/batchnorm/subSubNFederated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOp_2:value:0?Federated_CNN_F5_H12/batch_normalization_25/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ъ
;Federated_CNN_F5_H12/batch_normalization_25/batchnorm/add_1AddV2?Federated_CNN_F5_H12/batch_normalization_25/batchnorm/mul_1:z:0=Federated_CNN_F5_H12/batch_normalization_25/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€
4Federated_CNN_F5_H12/conv1d_26/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€ш
0Federated_CNN_F5_H12/conv1d_26/Conv1D/ExpandDims
ExpandDims?Federated_CNN_F5_H12/batch_normalization_25/batchnorm/add_1:z:0=Federated_CNN_F5_H12/conv1d_26/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€–
AFederated_CNN_F5_H12/conv1d_26/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpJfederated_cnn_f5_h12_conv1d_26_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0x
6Federated_CNN_F5_H12/conv1d_26/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : э
2Federated_CNN_F5_H12/conv1d_26/Conv1D/ExpandDims_1
ExpandDimsIFederated_CNN_F5_H12/conv1d_26/Conv1D/ExpandDims_1/ReadVariableOp:value:0?Federated_CNN_F5_H12/conv1d_26/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Й
%Federated_CNN_F5_H12/conv1d_26/Conv1DConv2D9Federated_CNN_F5_H12/conv1d_26/Conv1D/ExpandDims:output:0;Federated_CNN_F5_H12/conv1d_26/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Њ
-Federated_CNN_F5_H12/conv1d_26/Conv1D/SqueezeSqueeze.Federated_CNN_F5_H12/conv1d_26/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€∞
5Federated_CNN_F5_H12/conv1d_26/BiasAdd/ReadVariableOpReadVariableOp>federated_cnn_f5_h12_conv1d_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ё
&Federated_CNN_F5_H12/conv1d_26/BiasAddBiasAdd6Federated_CNN_F5_H12/conv1d_26/Conv1D/Squeeze:output:0=Federated_CNN_F5_H12/conv1d_26/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€Т
#Federated_CNN_F5_H12/conv1d_26/ReluRelu/Federated_CNN_F5_H12/conv1d_26/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ќ
DFederated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOpReadVariableOpMfederated_cnn_f5_h12_batch_normalization_26_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0А
;Federated_CNN_F5_H12/batch_normalization_26/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ы
9Federated_CNN_F5_H12/batch_normalization_26/batchnorm/addAddV2LFederated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOp:value:0DFederated_CNN_F5_H12/batch_normalization_26/batchnorm/add/y:output:0*
T0*
_output_shapes
:®
;Federated_CNN_F5_H12/batch_normalization_26/batchnorm/RsqrtRsqrt=Federated_CNN_F5_H12/batch_normalization_26/batchnorm/add:z:0*
T0*
_output_shapes
:÷
HFederated_CNN_F5_H12/batch_normalization_26/batchnorm/mul/ReadVariableOpReadVariableOpQfederated_cnn_f5_h12_batch_normalization_26_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ш
9Federated_CNN_F5_H12/batch_normalization_26/batchnorm/mulMul?Federated_CNN_F5_H12/batch_normalization_26/batchnorm/Rsqrt:y:0PFederated_CNN_F5_H12/batch_normalization_26/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:к
;Federated_CNN_F5_H12/batch_normalization_26/batchnorm/mul_1Mul1Federated_CNN_F5_H12/conv1d_26/Relu:activations:0=Federated_CNN_F5_H12/batch_normalization_26/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€“
FFederated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOp_1ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_26_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0ц
;Federated_CNN_F5_H12/batch_normalization_26/batchnorm/mul_2MulNFederated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOp_1:value:0=Federated_CNN_F5_H12/batch_normalization_26/batchnorm/mul:z:0*
T0*
_output_shapes
:“
FFederated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOp_2ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_26_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0ц
9Federated_CNN_F5_H12/batch_normalization_26/batchnorm/subSubNFederated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOp_2:value:0?Federated_CNN_F5_H12/batch_normalization_26/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ъ
;Federated_CNN_F5_H12/batch_normalization_26/batchnorm/add_1AddV2?Federated_CNN_F5_H12/batch_normalization_26/batchnorm/mul_1:z:0=Federated_CNN_F5_H12/batch_normalization_26/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€
4Federated_CNN_F5_H12/conv1d_27/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€ш
0Federated_CNN_F5_H12/conv1d_27/Conv1D/ExpandDims
ExpandDims?Federated_CNN_F5_H12/batch_normalization_26/batchnorm/add_1:z:0=Federated_CNN_F5_H12/conv1d_27/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€–
AFederated_CNN_F5_H12/conv1d_27/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpJfederated_cnn_f5_h12_conv1d_27_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0x
6Federated_CNN_F5_H12/conv1d_27/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : э
2Federated_CNN_F5_H12/conv1d_27/Conv1D/ExpandDims_1
ExpandDimsIFederated_CNN_F5_H12/conv1d_27/Conv1D/ExpandDims_1/ReadVariableOp:value:0?Federated_CNN_F5_H12/conv1d_27/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Й
%Federated_CNN_F5_H12/conv1d_27/Conv1DConv2D9Federated_CNN_F5_H12/conv1d_27/Conv1D/ExpandDims:output:0;Federated_CNN_F5_H12/conv1d_27/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Њ
-Federated_CNN_F5_H12/conv1d_27/Conv1D/SqueezeSqueeze.Federated_CNN_F5_H12/conv1d_27/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€∞
5Federated_CNN_F5_H12/conv1d_27/BiasAdd/ReadVariableOpReadVariableOp>federated_cnn_f5_h12_conv1d_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ё
&Federated_CNN_F5_H12/conv1d_27/BiasAddBiasAdd6Federated_CNN_F5_H12/conv1d_27/Conv1D/Squeeze:output:0=Federated_CNN_F5_H12/conv1d_27/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€Т
#Federated_CNN_F5_H12/conv1d_27/ReluRelu/Federated_CNN_F5_H12/conv1d_27/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ќ
DFederated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOpReadVariableOpMfederated_cnn_f5_h12_batch_normalization_27_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0А
;Federated_CNN_F5_H12/batch_normalization_27/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ы
9Federated_CNN_F5_H12/batch_normalization_27/batchnorm/addAddV2LFederated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOp:value:0DFederated_CNN_F5_H12/batch_normalization_27/batchnorm/add/y:output:0*
T0*
_output_shapes
:®
;Federated_CNN_F5_H12/batch_normalization_27/batchnorm/RsqrtRsqrt=Federated_CNN_F5_H12/batch_normalization_27/batchnorm/add:z:0*
T0*
_output_shapes
:÷
HFederated_CNN_F5_H12/batch_normalization_27/batchnorm/mul/ReadVariableOpReadVariableOpQfederated_cnn_f5_h12_batch_normalization_27_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ш
9Federated_CNN_F5_H12/batch_normalization_27/batchnorm/mulMul?Federated_CNN_F5_H12/batch_normalization_27/batchnorm/Rsqrt:y:0PFederated_CNN_F5_H12/batch_normalization_27/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:к
;Federated_CNN_F5_H12/batch_normalization_27/batchnorm/mul_1Mul1Federated_CNN_F5_H12/conv1d_27/Relu:activations:0=Federated_CNN_F5_H12/batch_normalization_27/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€“
FFederated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOp_1ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_27_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0ц
;Federated_CNN_F5_H12/batch_normalization_27/batchnorm/mul_2MulNFederated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOp_1:value:0=Federated_CNN_F5_H12/batch_normalization_27/batchnorm/mul:z:0*
T0*
_output_shapes
:“
FFederated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOp_2ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_27_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0ц
9Federated_CNN_F5_H12/batch_normalization_27/batchnorm/subSubNFederated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOp_2:value:0?Federated_CNN_F5_H12/batch_normalization_27/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ъ
;Federated_CNN_F5_H12/batch_normalization_27/batchnorm/add_1AddV2?Federated_CNN_F5_H12/batch_normalization_27/batchnorm/mul_1:z:0=Federated_CNN_F5_H12/batch_normalization_27/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€Й
GFederated_CNN_F5_H12/global_average_pooling1d_12/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :В
5Federated_CNN_F5_H12/global_average_pooling1d_12/MeanMean?Federated_CNN_F5_H12/batch_normalization_27/batchnorm/add_1:z:0PFederated_CNN_F5_H12/global_average_pooling1d_12/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€∞
3Federated_CNN_F5_H12/dense_56/MatMul/ReadVariableOpReadVariableOp<federated_cnn_f5_h12_dense_56_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ё
$Federated_CNN_F5_H12/dense_56/MatMulMatMul>Federated_CNN_F5_H12/global_average_pooling1d_12/Mean:output:0;Federated_CNN_F5_H12/dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ Ѓ
4Federated_CNN_F5_H12/dense_56/BiasAdd/ReadVariableOpReadVariableOp=federated_cnn_f5_h12_dense_56_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0–
%Federated_CNN_F5_H12/dense_56/BiasAddBiasAdd.Federated_CNN_F5_H12/dense_56/MatMul:product:0<Federated_CNN_F5_H12/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ М
"Federated_CNN_F5_H12/dense_56/ReluRelu.Federated_CNN_F5_H12/dense_56/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Ш
(Federated_CNN_F5_H12/dropout_13/IdentityIdentity0Federated_CNN_F5_H12/dense_56/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ ∞
3Federated_CNN_F5_H12/dense_57/MatMul/ReadVariableOpReadVariableOp<federated_cnn_f5_h12_dense_57_matmul_readvariableop_resource*
_output_shapes

: <*
dtype0–
$Federated_CNN_F5_H12/dense_57/MatMulMatMul1Federated_CNN_F5_H12/dropout_13/Identity:output:0;Federated_CNN_F5_H12/dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€<Ѓ
4Federated_CNN_F5_H12/dense_57/BiasAdd/ReadVariableOpReadVariableOp=federated_cnn_f5_h12_dense_57_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0–
%Federated_CNN_F5_H12/dense_57/BiasAddBiasAdd.Federated_CNN_F5_H12/dense_57/MatMul:product:0<Federated_CNN_F5_H12/dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€<С
%Federated_CNN_F5_H12/reshape_19/ShapeShape.Federated_CNN_F5_H12/dense_57/BiasAdd:output:0*
T0*
_output_shapes
::нѕ}
3Federated_CNN_F5_H12/reshape_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5Federated_CNN_F5_H12/reshape_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5Federated_CNN_F5_H12/reshape_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
-Federated_CNN_F5_H12/reshape_19/strided_sliceStridedSlice.Federated_CNN_F5_H12/reshape_19/Shape:output:0<Federated_CNN_F5_H12/reshape_19/strided_slice/stack:output:0>Federated_CNN_F5_H12/reshape_19/strided_slice/stack_1:output:0>Federated_CNN_F5_H12/reshape_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/Federated_CNN_F5_H12/reshape_19/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :q
/Federated_CNN_F5_H12/reshape_19/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :П
-Federated_CNN_F5_H12/reshape_19/Reshape/shapePack6Federated_CNN_F5_H12/reshape_19/strided_slice:output:08Federated_CNN_F5_H12/reshape_19/Reshape/shape/1:output:08Federated_CNN_F5_H12/reshape_19/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:–
'Federated_CNN_F5_H12/reshape_19/ReshapeReshape.Federated_CNN_F5_H12/dense_57/BiasAdd:output:06Federated_CNN_F5_H12/reshape_19/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€Г
IdentityIdentity0Federated_CNN_F5_H12/reshape_19/Reshape:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€†
NoOpNoOpE^Federated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOpG^Federated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOp_1G^Federated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOp_2I^Federated_CNN_F5_H12/batch_normalization_24/batchnorm/mul/ReadVariableOpE^Federated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOpG^Federated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOp_1G^Federated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOp_2I^Federated_CNN_F5_H12/batch_normalization_25/batchnorm/mul/ReadVariableOpE^Federated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOpG^Federated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOp_1G^Federated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOp_2I^Federated_CNN_F5_H12/batch_normalization_26/batchnorm/mul/ReadVariableOpE^Federated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOpG^Federated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOp_1G^Federated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOp_2I^Federated_CNN_F5_H12/batch_normalization_27/batchnorm/mul/ReadVariableOp6^Federated_CNN_F5_H12/conv1d_24/BiasAdd/ReadVariableOpB^Federated_CNN_F5_H12/conv1d_24/Conv1D/ExpandDims_1/ReadVariableOp6^Federated_CNN_F5_H12/conv1d_25/BiasAdd/ReadVariableOpB^Federated_CNN_F5_H12/conv1d_25/Conv1D/ExpandDims_1/ReadVariableOp6^Federated_CNN_F5_H12/conv1d_26/BiasAdd/ReadVariableOpB^Federated_CNN_F5_H12/conv1d_26/Conv1D/ExpandDims_1/ReadVariableOp6^Federated_CNN_F5_H12/conv1d_27/BiasAdd/ReadVariableOpB^Federated_CNN_F5_H12/conv1d_27/Conv1D/ExpandDims_1/ReadVariableOp5^Federated_CNN_F5_H12/dense_56/BiasAdd/ReadVariableOp4^Federated_CNN_F5_H12/dense_56/MatMul/ReadVariableOp5^Federated_CNN_F5_H12/dense_57/BiasAdd/ReadVariableOp4^Federated_CNN_F5_H12/dense_57/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Р
FFederated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOp_1FFederated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOp_12Р
FFederated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOp_2FFederated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOp_22М
DFederated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOpDFederated_CNN_F5_H12/batch_normalization_24/batchnorm/ReadVariableOp2Ф
HFederated_CNN_F5_H12/batch_normalization_24/batchnorm/mul/ReadVariableOpHFederated_CNN_F5_H12/batch_normalization_24/batchnorm/mul/ReadVariableOp2Р
FFederated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOp_1FFederated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOp_12Р
FFederated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOp_2FFederated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOp_22М
DFederated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOpDFederated_CNN_F5_H12/batch_normalization_25/batchnorm/ReadVariableOp2Ф
HFederated_CNN_F5_H12/batch_normalization_25/batchnorm/mul/ReadVariableOpHFederated_CNN_F5_H12/batch_normalization_25/batchnorm/mul/ReadVariableOp2Р
FFederated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOp_1FFederated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOp_12Р
FFederated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOp_2FFederated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOp_22М
DFederated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOpDFederated_CNN_F5_H12/batch_normalization_26/batchnorm/ReadVariableOp2Ф
HFederated_CNN_F5_H12/batch_normalization_26/batchnorm/mul/ReadVariableOpHFederated_CNN_F5_H12/batch_normalization_26/batchnorm/mul/ReadVariableOp2Р
FFederated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOp_1FFederated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOp_12Р
FFederated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOp_2FFederated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOp_22М
DFederated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOpDFederated_CNN_F5_H12/batch_normalization_27/batchnorm/ReadVariableOp2Ф
HFederated_CNN_F5_H12/batch_normalization_27/batchnorm/mul/ReadVariableOpHFederated_CNN_F5_H12/batch_normalization_27/batchnorm/mul/ReadVariableOp2n
5Federated_CNN_F5_H12/conv1d_24/BiasAdd/ReadVariableOp5Federated_CNN_F5_H12/conv1d_24/BiasAdd/ReadVariableOp2Ж
AFederated_CNN_F5_H12/conv1d_24/Conv1D/ExpandDims_1/ReadVariableOpAFederated_CNN_F5_H12/conv1d_24/Conv1D/ExpandDims_1/ReadVariableOp2n
5Federated_CNN_F5_H12/conv1d_25/BiasAdd/ReadVariableOp5Federated_CNN_F5_H12/conv1d_25/BiasAdd/ReadVariableOp2Ж
AFederated_CNN_F5_H12/conv1d_25/Conv1D/ExpandDims_1/ReadVariableOpAFederated_CNN_F5_H12/conv1d_25/Conv1D/ExpandDims_1/ReadVariableOp2n
5Federated_CNN_F5_H12/conv1d_26/BiasAdd/ReadVariableOp5Federated_CNN_F5_H12/conv1d_26/BiasAdd/ReadVariableOp2Ж
AFederated_CNN_F5_H12/conv1d_26/Conv1D/ExpandDims_1/ReadVariableOpAFederated_CNN_F5_H12/conv1d_26/Conv1D/ExpandDims_1/ReadVariableOp2n
5Federated_CNN_F5_H12/conv1d_27/BiasAdd/ReadVariableOp5Federated_CNN_F5_H12/conv1d_27/BiasAdd/ReadVariableOp2Ж
AFederated_CNN_F5_H12/conv1d_27/Conv1D/ExpandDims_1/ReadVariableOpAFederated_CNN_F5_H12/conv1d_27/Conv1D/ExpandDims_1/ReadVariableOp2l
4Federated_CNN_F5_H12/dense_56/BiasAdd/ReadVariableOp4Federated_CNN_F5_H12/dense_56/BiasAdd/ReadVariableOp2j
3Federated_CNN_F5_H12/dense_56/MatMul/ReadVariableOp3Federated_CNN_F5_H12/dense_56/MatMul/ReadVariableOp2l
4Federated_CNN_F5_H12/dense_57/BiasAdd/ReadVariableOp4Federated_CNN_F5_H12/dense_57/BiasAdd/ReadVariableOp2j
3Federated_CNN_F5_H12/dense_57/MatMul/ReadVariableOp3Federated_CNN_F5_H12/dense_57/MatMul/ReadVariableOp:R N
+
_output_shapes
:€€€€€€€€€

_user_specified_nameInput
±
G
+__inference_lambda_6_layer_call_fn_13778938

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lambda_6_layer_call_and_return_conditional_losses_13777832d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
а
‘
9__inference_batch_normalization_27_layer_call_fn_13779307

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_27_layer_call_and_return_conditional_losses_13777560|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Т
≥
T__inference_batch_normalization_25_layer_call_and_return_conditional_losses_13779164

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ї
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Т
≥
T__inference_batch_normalization_25_layer_call_and_return_conditional_losses_13777416

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ї
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
д”
Г
!__inference__traced_save_13779660
file_prefix=
'read_disablecopyonread_conv1d_24_kernel:5
'read_1_disablecopyonread_conv1d_24_bias:C
5read_2_disablecopyonread_batch_normalization_24_gamma:B
4read_3_disablecopyonread_batch_normalization_24_beta:I
;read_4_disablecopyonread_batch_normalization_24_moving_mean:M
?read_5_disablecopyonread_batch_normalization_24_moving_variance:?
)read_6_disablecopyonread_conv1d_25_kernel:5
'read_7_disablecopyonread_conv1d_25_bias:C
5read_8_disablecopyonread_batch_normalization_25_gamma:B
4read_9_disablecopyonread_batch_normalization_25_beta:J
<read_10_disablecopyonread_batch_normalization_25_moving_mean:N
@read_11_disablecopyonread_batch_normalization_25_moving_variance:@
*read_12_disablecopyonread_conv1d_26_kernel:6
(read_13_disablecopyonread_conv1d_26_bias:D
6read_14_disablecopyonread_batch_normalization_26_gamma:C
5read_15_disablecopyonread_batch_normalization_26_beta:J
<read_16_disablecopyonread_batch_normalization_26_moving_mean:N
@read_17_disablecopyonread_batch_normalization_26_moving_variance:@
*read_18_disablecopyonread_conv1d_27_kernel:6
(read_19_disablecopyonread_conv1d_27_bias:D
6read_20_disablecopyonread_batch_normalization_27_gamma:C
5read_21_disablecopyonread_batch_normalization_27_beta:J
<read_22_disablecopyonread_batch_normalization_27_moving_mean:N
@read_23_disablecopyonread_batch_normalization_27_moving_variance:;
)read_24_disablecopyonread_dense_56_kernel: 5
'read_25_disablecopyonread_dense_56_bias: ;
)read_26_disablecopyonread_dense_57_kernel: <5
'read_27_disablecopyonread_dense_57_bias:<
savev2_const
identity_57ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv1d_24_kernel"/device:CPU:0*
_output_shapes
 І
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv1d_24_kernel^Read/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0m
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:e

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*"
_output_shapes
:{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv1d_24_bias"/device:CPU:0*
_output_shapes
 £
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv1d_24_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:Й
Read_2/DisableCopyOnReadDisableCopyOnRead5read_2_disablecopyonread_batch_normalization_24_gamma"/device:CPU:0*
_output_shapes
 ±
Read_2/ReadVariableOpReadVariableOp5read_2_disablecopyonread_batch_normalization_24_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:И
Read_3/DisableCopyOnReadDisableCopyOnRead4read_3_disablecopyonread_batch_normalization_24_beta"/device:CPU:0*
_output_shapes
 ∞
Read_3/ReadVariableOpReadVariableOp4read_3_disablecopyonread_batch_normalization_24_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:П
Read_4/DisableCopyOnReadDisableCopyOnRead;read_4_disablecopyonread_batch_normalization_24_moving_mean"/device:CPU:0*
_output_shapes
 Ј
Read_4/ReadVariableOpReadVariableOp;read_4_disablecopyonread_batch_normalization_24_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:У
Read_5/DisableCopyOnReadDisableCopyOnRead?read_5_disablecopyonread_batch_normalization_24_moving_variance"/device:CPU:0*
_output_shapes
 ї
Read_5/ReadVariableOpReadVariableOp?read_5_disablecopyonread_batch_normalization_24_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv1d_25_kernel"/device:CPU:0*
_output_shapes
 ≠
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv1d_25_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0r
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*"
_output_shapes
:{
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv1d_25_bias"/device:CPU:0*
_output_shapes
 £
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv1d_25_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:Й
Read_8/DisableCopyOnReadDisableCopyOnRead5read_8_disablecopyonread_batch_normalization_25_gamma"/device:CPU:0*
_output_shapes
 ±
Read_8/ReadVariableOpReadVariableOp5read_8_disablecopyonread_batch_normalization_25_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:И
Read_9/DisableCopyOnReadDisableCopyOnRead4read_9_disablecopyonread_batch_normalization_25_beta"/device:CPU:0*
_output_shapes
 ∞
Read_9/ReadVariableOpReadVariableOp4read_9_disablecopyonread_batch_normalization_25_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:С
Read_10/DisableCopyOnReadDisableCopyOnRead<read_10_disablecopyonread_batch_normalization_25_moving_mean"/device:CPU:0*
_output_shapes
 Ї
Read_10/ReadVariableOpReadVariableOp<read_10_disablecopyonread_batch_normalization_25_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:Х
Read_11/DisableCopyOnReadDisableCopyOnRead@read_11_disablecopyonread_batch_normalization_25_moving_variance"/device:CPU:0*
_output_shapes
 Њ
Read_11/ReadVariableOpReadVariableOp@read_11_disablecopyonread_batch_normalization_25_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_12/DisableCopyOnReadDisableCopyOnRead*read_12_disablecopyonread_conv1d_26_kernel"/device:CPU:0*
_output_shapes
 ∞
Read_12/ReadVariableOpReadVariableOp*read_12_disablecopyonread_conv1d_26_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*"
_output_shapes
:}
Read_13/DisableCopyOnReadDisableCopyOnRead(read_13_disablecopyonread_conv1d_26_bias"/device:CPU:0*
_output_shapes
 ¶
Read_13/ReadVariableOpReadVariableOp(read_13_disablecopyonread_conv1d_26_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:Л
Read_14/DisableCopyOnReadDisableCopyOnRead6read_14_disablecopyonread_batch_normalization_26_gamma"/device:CPU:0*
_output_shapes
 і
Read_14/ReadVariableOpReadVariableOp6read_14_disablecopyonread_batch_normalization_26_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:К
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_batch_normalization_26_beta"/device:CPU:0*
_output_shapes
 ≥
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_batch_normalization_26_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:С
Read_16/DisableCopyOnReadDisableCopyOnRead<read_16_disablecopyonread_batch_normalization_26_moving_mean"/device:CPU:0*
_output_shapes
 Ї
Read_16/ReadVariableOpReadVariableOp<read_16_disablecopyonread_batch_normalization_26_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:Х
Read_17/DisableCopyOnReadDisableCopyOnRead@read_17_disablecopyonread_batch_normalization_26_moving_variance"/device:CPU:0*
_output_shapes
 Њ
Read_17/ReadVariableOpReadVariableOp@read_17_disablecopyonread_batch_normalization_26_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_18/DisableCopyOnReadDisableCopyOnRead*read_18_disablecopyonread_conv1d_27_kernel"/device:CPU:0*
_output_shapes
 ∞
Read_18/ReadVariableOpReadVariableOp*read_18_disablecopyonread_conv1d_27_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*"
_output_shapes
:}
Read_19/DisableCopyOnReadDisableCopyOnRead(read_19_disablecopyonread_conv1d_27_bias"/device:CPU:0*
_output_shapes
 ¶
Read_19/ReadVariableOpReadVariableOp(read_19_disablecopyonread_conv1d_27_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:Л
Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_batch_normalization_27_gamma"/device:CPU:0*
_output_shapes
 і
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_batch_normalization_27_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:К
Read_21/DisableCopyOnReadDisableCopyOnRead5read_21_disablecopyonread_batch_normalization_27_beta"/device:CPU:0*
_output_shapes
 ≥
Read_21/ReadVariableOpReadVariableOp5read_21_disablecopyonread_batch_normalization_27_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:С
Read_22/DisableCopyOnReadDisableCopyOnRead<read_22_disablecopyonread_batch_normalization_27_moving_mean"/device:CPU:0*
_output_shapes
 Ї
Read_22/ReadVariableOpReadVariableOp<read_22_disablecopyonread_batch_normalization_27_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:Х
Read_23/DisableCopyOnReadDisableCopyOnRead@read_23_disablecopyonread_batch_normalization_27_moving_variance"/device:CPU:0*
_output_shapes
 Њ
Read_23/ReadVariableOpReadVariableOp@read_23_disablecopyonread_batch_normalization_27_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_24/DisableCopyOnReadDisableCopyOnRead)read_24_disablecopyonread_dense_56_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read_24/ReadVariableOpReadVariableOp)read_24_disablecopyonread_dense_56_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes

: |
Read_25/DisableCopyOnReadDisableCopyOnRead'read_25_disablecopyonread_dense_56_bias"/device:CPU:0*
_output_shapes
 •
Read_25/ReadVariableOpReadVariableOp'read_25_disablecopyonread_dense_56_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_26/DisableCopyOnReadDisableCopyOnRead)read_26_disablecopyonread_dense_57_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read_26/ReadVariableOpReadVariableOp)read_26_disablecopyonread_dense_57_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: <*
dtype0o
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: <e
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes

: <|
Read_27/DisableCopyOnReadDisableCopyOnRead'read_27_disablecopyonread_dense_57_bias"/device:CPU:0*
_output_shapes
 •
Read_27/ReadVariableOpReadVariableOp'read_27_disablecopyonread_dense_57_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:< 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*у
valueйBжB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHІ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B „
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *+
dtypes!
2Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_56Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_57IdentityIdentity_56:output:0^NoOp*
T0*
_output_shapes
: П
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_57Identity_57:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
шK
џ
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13777822	
input(
conv1d_24_13777651: 
conv1d_24_13777653:-
batch_normalization_24_13777656:-
batch_normalization_24_13777658:-
batch_normalization_24_13777660:-
batch_normalization_24_13777662:(
conv1d_25_13777682: 
conv1d_25_13777684:-
batch_normalization_25_13777687:-
batch_normalization_25_13777689:-
batch_normalization_25_13777691:-
batch_normalization_25_13777693:(
conv1d_26_13777713: 
conv1d_26_13777715:-
batch_normalization_26_13777718:-
batch_normalization_26_13777720:-
batch_normalization_26_13777722:-
batch_normalization_26_13777724:(
conv1d_27_13777744: 
conv1d_27_13777746:-
batch_normalization_27_13777749:-
batch_normalization_27_13777751:-
batch_normalization_27_13777753:-
batch_normalization_27_13777755:#
dense_56_13777771: 
dense_56_13777773: #
dense_57_13777801: <
dense_57_13777803:<
identityИҐ.batch_normalization_24/StatefulPartitionedCallҐ.batch_normalization_25/StatefulPartitionedCallҐ.batch_normalization_26/StatefulPartitionedCallҐ.batch_normalization_27/StatefulPartitionedCallҐ!conv1d_24/StatefulPartitionedCallҐ!conv1d_25/StatefulPartitionedCallҐ!conv1d_26/StatefulPartitionedCallҐ!conv1d_27/StatefulPartitionedCallҐ dense_56/StatefulPartitionedCallҐ dense_57/StatefulPartitionedCallҐ"dropout_13/StatefulPartitionedCallљ
lambda_6/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lambda_6_layer_call_and_return_conditional_losses_13777632Щ
!conv1d_24/StatefulPartitionedCallStatefulPartitionedCall!lambda_6/PartitionedCall:output:0conv1d_24_13777651conv1d_24_13777653*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_24_layer_call_and_return_conditional_losses_13777650Ъ
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall*conv1d_24/StatefulPartitionedCall:output:0batch_normalization_24_13777656batch_normalization_24_13777658batch_normalization_24_13777660batch_normalization_24_13777662*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_24_layer_call_and_return_conditional_losses_13777314ѓ
!conv1d_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0conv1d_25_13777682conv1d_25_13777684*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_25_layer_call_and_return_conditional_losses_13777681Ъ
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall*conv1d_25/StatefulPartitionedCall:output:0batch_normalization_25_13777687batch_normalization_25_13777689batch_normalization_25_13777691batch_normalization_25_13777693*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_25_layer_call_and_return_conditional_losses_13777396ѓ
!conv1d_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0conv1d_26_13777713conv1d_26_13777715*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_26_layer_call_and_return_conditional_losses_13777712Ъ
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv1d_26/StatefulPartitionedCall:output:0batch_normalization_26_13777718batch_normalization_26_13777720batch_normalization_26_13777722batch_normalization_26_13777724*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13777478ѓ
!conv1d_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0conv1d_27_13777744conv1d_27_13777746*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_conv1d_27_layer_call_and_return_conditional_losses_13777743Ъ
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*conv1d_27/StatefulPartitionedCall:output:0batch_normalization_27_13777749batch_normalization_27_13777751batch_normalization_27_13777753batch_normalization_27_13777755*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_batch_normalization_27_layer_call_and_return_conditional_losses_13777560С
+global_average_pooling1d_12/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *b
f]R[
Y__inference_global_average_pooling1d_12_layer_call_and_return_conditional_losses_13777614§
 dense_56/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling1d_12/PartitionedCall:output:0dense_56_13777771dense_56_13777773*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_56_layer_call_and_return_conditional_losses_13777770с
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_13_layer_call_and_return_conditional_losses_13777788Ы
 dense_57/StatefulPartitionedCallStatefulPartitionedCall+dropout_13/StatefulPartitionedCall:output:0dense_57_13777801dense_57_13777803*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_57_layer_call_and_return_conditional_losses_13777800е
reshape_19/PartitionedCallPartitionedCall)dense_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_reshape_19_layer_call_and_return_conditional_losses_13777819v
IdentityIdentity#reshape_19/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Е
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall"^conv1d_24/StatefulPartitionedCall"^conv1d_25/StatefulPartitionedCall"^conv1d_26/StatefulPartitionedCall"^conv1d_27/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2F
!conv1d_24/StatefulPartitionedCall!conv1d_24/StatefulPartitionedCall2F
!conv1d_25/StatefulPartitionedCall!conv1d_25/StatefulPartitionedCall2F
!conv1d_26/StatefulPartitionedCall!conv1d_26/StatefulPartitionedCall2F
!conv1d_27/StatefulPartitionedCall!conv1d_27/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall:R N
+
_output_shapes
:€€€€€€€€€

_user_specified_nameInput
ч
f
-__inference_dropout_13_layer_call_fn_13779410

inputs
identityИҐStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_13_layer_call_and_return_conditional_losses_13777788o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
®

g
H__inference_dropout_13_layer_call_and_return_conditional_losses_13777788

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕШ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
њ
b
F__inference_lambda_6_layer_call_and_return_conditional_losses_13777632

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    э€€€    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         и
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
А&
н
T__inference_batch_normalization_25_layer_call_and_return_conditional_losses_13779144

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Г
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:Ф
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:ђ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:і
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Э

ч
F__inference_dense_56_layer_call_and_return_conditional_losses_13777770

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs"у
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*±
serving_defaultЭ
;
Input2
serving_default_Input:0€€€€€€€€€B

reshape_194
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:бс
†
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer-10
layer_with_weights-8
layer-11
layer-12
layer_with_weights-9
layer-13
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
•
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias
 &_jit_compiled_convolution_op"
_tf_keras_layer
к
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-axis
	.gamma
/beta
0moving_mean
1moving_variance"
_tf_keras_layer
Ё
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias
 :_jit_compiled_convolution_op"
_tf_keras_layer
к
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
Aaxis
	Bgamma
Cbeta
Dmoving_mean
Emoving_variance"
_tf_keras_layer
Ё
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op"
_tf_keras_layer
к
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
Uaxis
	Vgamma
Wbeta
Xmoving_mean
Ymoving_variance"
_tf_keras_layer
Ё
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias
 b_jit_compiled_convolution_op"
_tf_keras_layer
к
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses
iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance"
_tf_keras_layer
•
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

zkernel
{bias"
_tf_keras_layer
њ
|	variables
}trainable_variables
~regularization_losses
	keras_api
А__call__
+Б&call_and_return_all_conditional_losses
В_random_generator"
_tf_keras_layer
√
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Йkernel
	Кbias"
_tf_keras_layer
Ђ
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses"
_tf_keras_layer
ш
$0
%1
.2
/3
04
15
86
97
B8
C9
D10
E11
L12
M13
V14
W15
X16
Y17
`18
a19
j20
k21
l22
m23
z24
{25
Й26
К27"
trackable_list_wrapper
Є
$0
%1
.2
/3
84
95
B6
C7
L8
M9
V10
W11
`12
a13
j14
k15
z16
{17
Й18
К19"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
П
Цtrace_0
Чtrace_1
Шtrace_2
Щtrace_32Ь
7__inference_Federated_CNN_F5_H12_layer_call_fn_13778045
7__inference_Federated_CNN_F5_H12_layer_call_fn_13778180
7__inference_Federated_CNN_F5_H12_layer_call_fn_13778514
7__inference_Federated_CNN_F5_H12_layer_call_fn_13778575µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЦtrace_0zЧtrace_1zШtrace_2zЩtrace_3
ы
Ъtrace_0
Ыtrace_1
Ьtrace_2
Эtrace_32И
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13777822
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13777909
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13778783
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13778928µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЪtrace_0zЫtrace_1zЬtrace_2zЭtrace_3
ћB…
#__inference__wrapped_model_13777279Input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
-
Юserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ќ
§trace_0
•trace_12Т
+__inference_lambda_6_layer_call_fn_13778933
+__inference_lambda_6_layer_call_fn_13778938µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsҐ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z§trace_0z•trace_1
Г
¶trace_0
Іtrace_12»
F__inference_lambda_6_layer_call_and_return_conditional_losses_13778946
F__inference_lambda_6_layer_call_and_return_conditional_losses_13778954µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsҐ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z¶trace_0zІtrace_1
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
и
≠trace_02…
,__inference_conv1d_24_layer_call_fn_13778963Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≠trace_0
Г
Ѓtrace_02д
G__inference_conv1d_24_layer_call_and_return_conditional_losses_13778979Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЃtrace_0
&:$2conv1d_24/kernel
:2conv1d_24/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
<
.0
/1
02
13"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
й
іtrace_0
µtrace_12Ѓ
9__inference_batch_normalization_24_layer_call_fn_13778992
9__inference_batch_normalization_24_layer_call_fn_13779005µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zіtrace_0zµtrace_1
Я
ґtrace_0
Јtrace_12д
T__inference_batch_normalization_24_layer_call_and_return_conditional_losses_13779039
T__inference_batch_normalization_24_layer_call_and_return_conditional_losses_13779059µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zґtrace_0zЈtrace_1
 "
trackable_list_wrapper
*:(2batch_normalization_24/gamma
):'2batch_normalization_24/beta
2:0 (2"batch_normalization_24/moving_mean
6:4 (2&batch_normalization_24/moving_variance
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Љlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
и
љtrace_02…
,__inference_conv1d_25_layer_call_fn_13779068Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zљtrace_0
Г
Њtrace_02д
G__inference_conv1d_25_layer_call_and_return_conditional_losses_13779084Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЊtrace_0
&:$2conv1d_25/kernel
:2conv1d_25/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
<
B0
C1
D2
E3"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
й
ƒtrace_0
≈trace_12Ѓ
9__inference_batch_normalization_25_layer_call_fn_13779097
9__inference_batch_normalization_25_layer_call_fn_13779110µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zƒtrace_0z≈trace_1
Я
∆trace_0
«trace_12д
T__inference_batch_normalization_25_layer_call_and_return_conditional_losses_13779144
T__inference_batch_normalization_25_layer_call_and_return_conditional_losses_13779164µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z∆trace_0z«trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_25/gamma
):'2batch_normalization_25/beta
2:0 (2"batch_normalization_25/moving_mean
6:4 (2&batch_normalization_25/moving_variance
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
»non_trainable_variables
…layers
 metrics
 Ћlayer_regularization_losses
ћlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
и
Ќtrace_02…
,__inference_conv1d_26_layer_call_fn_13779173Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЌtrace_0
Г
ќtrace_02д
G__inference_conv1d_26_layer_call_and_return_conditional_losses_13779189Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zќtrace_0
&:$2conv1d_26/kernel
:2conv1d_26/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
<
V0
W1
X2
Y3"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ѕnon_trainable_variables
–layers
—metrics
 “layer_regularization_losses
”layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
й
‘trace_0
’trace_12Ѓ
9__inference_batch_normalization_26_layer_call_fn_13779202
9__inference_batch_normalization_26_layer_call_fn_13779215µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z‘trace_0z’trace_1
Я
÷trace_0
„trace_12д
T__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13779249
T__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13779269µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z÷trace_0z„trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_26/gamma
):'2batch_normalization_26/beta
2:0 (2"batch_normalization_26/moving_mean
6:4 (2&batch_normalization_26/moving_variance
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ўnon_trainable_variables
ўlayers
Џmetrics
 џlayer_regularization_losses
№layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
и
Ёtrace_02…
,__inference_conv1d_27_layer_call_fn_13779278Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЁtrace_0
Г
ёtrace_02д
G__inference_conv1d_27_layer_call_and_return_conditional_losses_13779294Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zёtrace_0
&:$2conv1d_27/kernel
:2conv1d_27/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
<
j0
k1
l2
m3"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
й
дtrace_0
еtrace_12Ѓ
9__inference_batch_normalization_27_layer_call_fn_13779307
9__inference_batch_normalization_27_layer_call_fn_13779320µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zдtrace_0zеtrace_1
Я
жtrace_0
зtrace_12д
T__inference_batch_normalization_27_layer_call_and_return_conditional_losses_13779354
T__inference_batch_normalization_27_layer_call_and_return_conditional_losses_13779374µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zжtrace_0zзtrace_1
 "
trackable_list_wrapper
*:(2batch_normalization_27/gamma
):'2batch_normalization_27/beta
2:0 (2"batch_normalization_27/moving_mean
6:4 (2&batch_normalization_27/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
З
нtrace_02и
>__inference_global_average_pooling1d_12_layer_call_fn_13779379•
Ю≤Ъ
FullArgSpec
argsЪ
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zнtrace_0
Ґ
оtrace_02Г
Y__inference_global_average_pooling1d_12_layer_call_and_return_conditional_losses_13779385•
Ю≤Ъ
FullArgSpec
argsЪ
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zоtrace_0
.
z0
{1"
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
пnon_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
з
фtrace_02»
+__inference_dense_56_layer_call_fn_13779394Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zфtrace_0
В
хtrace_02г
F__inference_dense_56_layer_call_and_return_conditional_losses_13779405Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zхtrace_0
!: 2dense_56/kernel
: 2dense_56/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
|	variables
}trainable_variables
~regularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
≈
ыtrace_0
ьtrace_12К
-__inference_dropout_13_layer_call_fn_13779410
-__inference_dropout_13_layer_call_fn_13779415©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zыtrace_0zьtrace_1
ы
эtrace_0
юtrace_12ј
H__inference_dropout_13_layer_call_and_return_conditional_losses_13779427
H__inference_dropout_13_layer_call_and_return_conditional_losses_13779432©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zэtrace_0zюtrace_1
"
_generic_user_object
0
Й0
К1"
trackable_list_wrapper
0
Й0
К1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
€non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
з
Дtrace_02»
+__inference_dense_57_layer_call_fn_13779441Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zДtrace_0
В
Еtrace_02г
F__inference_dense_57_layer_call_and_return_conditional_losses_13779451Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЕtrace_0
!: <2dense_57/kernel
:<2dense_57/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
й
Лtrace_02 
-__inference_reshape_19_layer_call_fn_13779456Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЛtrace_0
Д
Мtrace_02е
H__inference_reshape_19_layer_call_and_return_conditional_losses_13779469Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zМtrace_0
X
00
11
D2
E3
X4
Y5
l6
m7"
trackable_list_wrapper
О
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
эBъ
7__inference_Federated_CNN_F5_H12_layer_call_fn_13778045Input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
7__inference_Federated_CNN_F5_H12_layer_call_fn_13778180Input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
юBы
7__inference_Federated_CNN_F5_H12_layer_call_fn_13778514inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
юBы
7__inference_Federated_CNN_F5_H12_layer_call_fn_13778575inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13777822Input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13777909Input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13778783inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13778928inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЋB»
&__inference_signature_wrapper_13778453Input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тBп
+__inference_lambda_6_layer_call_fn_13778933inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsҐ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
тBп
+__inference_lambda_6_layer_call_fn_13778938inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsҐ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
НBК
F__inference_lambda_6_layer_call_and_return_conditional_losses_13778946inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsҐ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
НBК
F__inference_lambda_6_layer_call_and_return_conditional_losses_13778954inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsҐ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
÷B”
,__inference_conv1d_24_layer_call_fn_13778963inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
сBо
G__inference_conv1d_24_layer_call_and_return_conditional_losses_13778979inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
АBэ
9__inference_batch_normalization_24_layer_call_fn_13778992inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
9__inference_batch_normalization_24_layer_call_fn_13779005inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЫBШ
T__inference_batch_normalization_24_layer_call_and_return_conditional_losses_13779039inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЫBШ
T__inference_batch_normalization_24_layer_call_and_return_conditional_losses_13779059inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
÷B”
,__inference_conv1d_25_layer_call_fn_13779068inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
сBо
G__inference_conv1d_25_layer_call_and_return_conditional_losses_13779084inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
АBэ
9__inference_batch_normalization_25_layer_call_fn_13779097inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
9__inference_batch_normalization_25_layer_call_fn_13779110inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЫBШ
T__inference_batch_normalization_25_layer_call_and_return_conditional_losses_13779144inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЫBШ
T__inference_batch_normalization_25_layer_call_and_return_conditional_losses_13779164inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
÷B”
,__inference_conv1d_26_layer_call_fn_13779173inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
сBо
G__inference_conv1d_26_layer_call_and_return_conditional_losses_13779189inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
АBэ
9__inference_batch_normalization_26_layer_call_fn_13779202inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
9__inference_batch_normalization_26_layer_call_fn_13779215inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЫBШ
T__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13779249inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЫBШ
T__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13779269inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
÷B”
,__inference_conv1d_27_layer_call_fn_13779278inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
сBо
G__inference_conv1d_27_layer_call_and_return_conditional_losses_13779294inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
АBэ
9__inference_batch_normalization_27_layer_call_fn_13779307inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
9__inference_batch_normalization_27_layer_call_fn_13779320inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЫBШ
T__inference_batch_normalization_27_layer_call_and_return_conditional_losses_13779354inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЫBШ
T__inference_batch_normalization_27_layer_call_and_return_conditional_losses_13779374inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
хBт
>__inference_global_average_pooling1d_12_layer_call_fn_13779379inputs"•
Ю≤Ъ
FullArgSpec
argsЪ
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
РBН
Y__inference_global_average_pooling1d_12_layer_call_and_return_conditional_losses_13779385inputs"•
Ю≤Ъ
FullArgSpec
argsЪ
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
’B“
+__inference_dense_56_layer_call_fn_13779394inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
рBн
F__inference_dense_56_layer_call_and_return_conditional_losses_13779405inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
иBе
-__inference_dropout_13_layer_call_fn_13779410inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
иBе
-__inference_dropout_13_layer_call_fn_13779415inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ГBА
H__inference_dropout_13_layer_call_and_return_conditional_losses_13779427inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ГBА
H__inference_dropout_13_layer_call_and_return_conditional_losses_13779432inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
’B“
+__inference_dense_57_layer_call_fn_13779441inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
рBн
F__inference_dense_57_layer_call_and_return_conditional_losses_13779451inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
„B‘
-__inference_reshape_19_layer_call_fn_13779456inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
тBп
H__inference_reshape_19_layer_call_and_return_conditional_losses_13779469inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 е
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13777822О$%01./89DEBCLMXYVW`almjkz{ЙК:Ґ7
0Ґ-
#К 
Input€€€€€€€€€
p

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ е
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13777909О$%1.0/89EBDCLMYVXW`amjlkz{ЙК:Ґ7
0Ґ-
#К 
Input€€€€€€€€€
p 

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ ж
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13778783П$%01./89DEBCLMXYVW`almjkz{ЙК;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ ж
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_13778928П$%1.0/89EBDCLMYVXW`amjlkz{ЙК;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ њ
7__inference_Federated_CNN_F5_H12_layer_call_fn_13778045Г$%01./89DEBCLMXYVW`almjkz{ЙК:Ґ7
0Ґ-
#К 
Input€€€€€€€€€
p

 
™ "%К"
unknown€€€€€€€€€њ
7__inference_Federated_CNN_F5_H12_layer_call_fn_13778180Г$%1.0/89EBDCLMYVXW`amjlkz{ЙК:Ґ7
0Ґ-
#К 
Input€€€€€€€€€
p 

 
™ "%К"
unknown€€€€€€€€€ј
7__inference_Federated_CNN_F5_H12_layer_call_fn_13778514Д$%01./89DEBCLMXYVW`almjkz{ЙК;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ "%К"
unknown€€€€€€€€€ј
7__inference_Federated_CNN_F5_H12_layer_call_fn_13778575Д$%1.0/89EBDCLMYVXW`amjlkz{ЙК;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ "%К"
unknown€€€€€€€€€є
#__inference__wrapped_model_13777279С$%1.0/89EBDCLMYVXW`amjlkz{ЙК2Ґ/
(Ґ%
#К 
Input€€€€€€€€€
™ ";™8
6

reshape_19(К%

reshape_19€€€€€€€€€а
T__inference_batch_normalization_24_layer_call_and_return_conditional_losses_13779039З01./DҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ а
T__inference_batch_normalization_24_layer_call_and_return_conditional_losses_13779059З1.0/DҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ є
9__inference_batch_normalization_24_layer_call_fn_13778992|01./DҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€є
9__inference_batch_normalization_24_layer_call_fn_13779005|1.0/DҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€а
T__inference_batch_normalization_25_layer_call_and_return_conditional_losses_13779144ЗDEBCDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ а
T__inference_batch_normalization_25_layer_call_and_return_conditional_losses_13779164ЗEBDCDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ є
9__inference_batch_normalization_25_layer_call_fn_13779097|DEBCDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€є
9__inference_batch_normalization_25_layer_call_fn_13779110|EBDCDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€а
T__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13779249ЗXYVWDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ а
T__inference_batch_normalization_26_layer_call_and_return_conditional_losses_13779269ЗYVXWDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ є
9__inference_batch_normalization_26_layer_call_fn_13779202|XYVWDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€є
9__inference_batch_normalization_26_layer_call_fn_13779215|YVXWDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€а
T__inference_batch_normalization_27_layer_call_and_return_conditional_losses_13779354ЗlmjkDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ а
T__inference_batch_normalization_27_layer_call_and_return_conditional_losses_13779374ЗmjlkDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ є
9__inference_batch_normalization_27_layer_call_fn_13779307|lmjkDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€є
9__inference_batch_normalization_27_layer_call_fn_13779320|mjlkDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€ґ
G__inference_conv1d_24_layer_call_and_return_conditional_losses_13778979k$%3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ Р
,__inference_conv1d_24_layer_call_fn_13778963`$%3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "%К"
unknown€€€€€€€€€ґ
G__inference_conv1d_25_layer_call_and_return_conditional_losses_13779084k893Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ Р
,__inference_conv1d_25_layer_call_fn_13779068`893Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "%К"
unknown€€€€€€€€€ґ
G__inference_conv1d_26_layer_call_and_return_conditional_losses_13779189kLM3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ Р
,__inference_conv1d_26_layer_call_fn_13779173`LM3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "%К"
unknown€€€€€€€€€ґ
G__inference_conv1d_27_layer_call_and_return_conditional_losses_13779294k`a3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ Р
,__inference_conv1d_27_layer_call_fn_13779278``a3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "%К"
unknown€€€€€€€€€≠
F__inference_dense_56_layer_call_and_return_conditional_losses_13779405cz{/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€ 
Ъ З
+__inference_dense_56_layer_call_fn_13779394Xz{/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€ ѓ
F__inference_dense_57_layer_call_and_return_conditional_losses_13779451eЙК/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ ",Ґ)
"К
tensor_0€€€€€€€€€<
Ъ Й
+__inference_dense_57_layer_call_fn_13779441ZЙК/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "!К
unknown€€€€€€€€€<ѓ
H__inference_dropout_13_layer_call_and_return_conditional_losses_13779427c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€ 
Ъ ѓ
H__inference_dropout_13_layer_call_and_return_conditional_losses_13779432c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€ 
Ъ Й
-__inference_dropout_13_layer_call_fn_13779410X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p
™ "!К
unknown€€€€€€€€€ Й
-__inference_dropout_13_layer_call_fn_13779415X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p 
™ "!К
unknown€€€€€€€€€ а
Y__inference_global_average_pooling1d_12_layer_call_and_return_conditional_losses_13779385ВIҐF
?Ґ<
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
™ "5Ґ2
+К(
tensor_0€€€€€€€€€€€€€€€€€€
Ъ є
>__inference_global_average_pooling1d_12_layer_call_fn_13779379wIҐF
?Ґ<
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
™ "*К'
unknown€€€€€€€€€€€€€€€€€€є
F__inference_lambda_6_layer_call_and_return_conditional_losses_13778946o;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€

 
p
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ є
F__inference_lambda_6_layer_call_and_return_conditional_losses_13778954o;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€

 
p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ У
+__inference_lambda_6_layer_call_fn_13778933d;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€

 
p
™ "%К"
unknown€€€€€€€€€У
+__inference_lambda_6_layer_call_fn_13778938d;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€

 
p 
™ "%К"
unknown€€€€€€€€€ѓ
H__inference_reshape_19_layer_call_and_return_conditional_losses_13779469c/Ґ,
%Ґ"
 К
inputs€€€€€€€€€<
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ Й
-__inference_reshape_19_layer_call_fn_13779456X/Ґ,
%Ґ"
 К
inputs€€€€€€€€€<
™ "%К"
unknown€€€€€€€€€≈
&__inference_signature_wrapper_13778453Ъ$%1.0/89EBDCLMYVXW`amjlkz{ЙК;Ґ8
Ґ 
1™.
,
Input#К 
input€€€€€€€€€";™8
6

reshape_19(К%

reshape_19€€€€€€€€€