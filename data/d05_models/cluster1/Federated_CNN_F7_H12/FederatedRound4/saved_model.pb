Шю
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
2.12.0-rc12v2.12.0-rc0-46-g0d8efc960d28Хт
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:T*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: T* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

: T*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
: *
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

: *
dtype0
Ґ
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_7/moving_variance
Ы
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes
:*
dtype0
Ъ
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_7/moving_mean
У
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes
:*
dtype0
М
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_7/beta
Е
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes
:*
dtype0
О
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_7/gamma
З
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes
:*
dtype0
r
conv1d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_7/bias
k
!conv1d_7/bias/Read/ReadVariableOpReadVariableOpconv1d_7/bias*
_output_shapes
:*
dtype0
~
conv1d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_7/kernel
w
#conv1d_7/kernel/Read/ReadVariableOpReadVariableOpconv1d_7/kernel*"
_output_shapes
:*
dtype0
Ґ
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_6/moving_variance
Ы
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes
:*
dtype0
Ъ
!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_6/moving_mean
У
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes
:*
dtype0
М
batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_6/beta
Е
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes
:*
dtype0
О
batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_6/gamma
З
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes
:*
dtype0
r
conv1d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_6/bias
k
!conv1d_6/bias/Read/ReadVariableOpReadVariableOpconv1d_6/bias*
_output_shapes
:*
dtype0
~
conv1d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_6/kernel
w
#conv1d_6/kernel/Read/ReadVariableOpReadVariableOpconv1d_6/kernel*"
_output_shapes
:*
dtype0
Ґ
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_5/moving_variance
Ы
9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes
:*
dtype0
Ъ
!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_5/moving_mean
У
5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes
:*
dtype0
М
batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_5/beta
Е
.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes
:*
dtype0
О
batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_5/gamma
З
/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes
:*
dtype0
r
conv1d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_5/bias
k
!conv1d_5/bias/Read/ReadVariableOpReadVariableOpconv1d_5/bias*
_output_shapes
:*
dtype0
~
conv1d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_5/kernel
w
#conv1d_5/kernel/Read/ReadVariableOpReadVariableOpconv1d_5/kernel*"
_output_shapes
:*
dtype0
Ґ
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_4/moving_variance
Ы
9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes
:*
dtype0
Ъ
!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_4/moving_mean
У
5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes
:*
dtype0
М
batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_4/beta
Е
.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes
:*
dtype0
О
batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_4/gamma
З
/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes
:*
dtype0
r
conv1d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_4/bias
k
!conv1d_4/bias/Read/ReadVariableOpReadVariableOpconv1d_4/bias*
_output_shapes
:*
dtype0
~
conv1d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_4/kernel
w
#conv1d_4/kernel/Read/ReadVariableOpReadVariableOpconv1d_4/kernel*"
_output_shapes
:*
dtype0
А
serving_default_InputPlaceholder*+
_output_shapes
:€€€€€€€€€*
dtype0* 
shape:€€€€€€€€€
Ї
StatefulPartitionedCallStatefulPartitionedCallserving_default_Inputconv1d_4/kernelconv1d_4/bias%batch_normalization_4/moving_variancebatch_normalization_4/gamma!batch_normalization_4/moving_meanbatch_normalization_4/betaconv1d_5/kernelconv1d_5/bias%batch_normalization_5/moving_variancebatch_normalization_5/gamma!batch_normalization_5/moving_meanbatch_normalization_5/betaconv1d_6/kernelconv1d_6/bias%batch_normalization_6/moving_variancebatch_normalization_6/gamma!batch_normalization_6/moving_meanbatch_normalization_6/betaconv1d_7/kernelconv1d_7/bias%batch_normalization_7/moving_variancebatch_normalization_7/gamma!batch_normalization_7/moving_meanbatch_normalization_7/betadense_11/kerneldense_11/biasdense_12/kerneldense_12/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В */
f*R(
&__inference_signature_wrapper_13680606

NoOpNoOp
тf
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*≠f
value£fB†f BЩf
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
_Y
VARIABLE_VALUEconv1d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
jd
VARIABLE_VALUEbatch_normalization_4/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_4/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_4/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_4/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
_Y
VARIABLE_VALUEconv1d_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
jd
VARIABLE_VALUEbatch_normalization_5/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_5/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_5/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_5/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
_Y
VARIABLE_VALUEconv1d_6/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_6/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
jd
VARIABLE_VALUEbatch_normalization_6/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_6/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_6/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_6/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
_Y
VARIABLE_VALUEconv1d_7/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_7/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
jd
VARIABLE_VALUEbatch_normalization_7/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_7/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_7/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_7/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_11/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_11/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_12/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_12/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
Е
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv1d_4/kernelconv1d_4/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv1d_5/kernelconv1d_5/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceconv1d_6/kernelconv1d_6/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv1d_7/kernelconv1d_7/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_variancedense_11/kerneldense_11/biasdense_12/kerneldense_12/biasConst*)
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
!__inference__traced_save_13681813
А
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_4/kernelconv1d_4/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv1d_5/kernelconv1d_5/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceconv1d_6/kernelconv1d_6/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv1d_7/kernelconv1d_7/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_variancedense_11/kerneldense_11/biasdense_12/kerneldense_12/bias*(
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
$__inference__traced_restore_13681907њµ
л√
н
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13681081

inputsJ
4conv1d_4_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_4_biasadd_readvariableop_resource:E
7batch_normalization_4_batchnorm_readvariableop_resource:I
;batch_normalization_4_batchnorm_mul_readvariableop_resource:G
9batch_normalization_4_batchnorm_readvariableop_1_resource:G
9batch_normalization_4_batchnorm_readvariableop_2_resource:J
4conv1d_5_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_5_biasadd_readvariableop_resource:E
7batch_normalization_5_batchnorm_readvariableop_resource:I
;batch_normalization_5_batchnorm_mul_readvariableop_resource:G
9batch_normalization_5_batchnorm_readvariableop_1_resource:G
9batch_normalization_5_batchnorm_readvariableop_2_resource:J
4conv1d_6_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_6_biasadd_readvariableop_resource:E
7batch_normalization_6_batchnorm_readvariableop_resource:I
;batch_normalization_6_batchnorm_mul_readvariableop_resource:G
9batch_normalization_6_batchnorm_readvariableop_1_resource:G
9batch_normalization_6_batchnorm_readvariableop_2_resource:J
4conv1d_7_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_7_biasadd_readvariableop_resource:E
7batch_normalization_7_batchnorm_readvariableop_resource:I
;batch_normalization_7_batchnorm_mul_readvariableop_resource:G
9batch_normalization_7_batchnorm_readvariableop_1_resource:G
9batch_normalization_7_batchnorm_readvariableop_2_resource:9
'dense_11_matmul_readvariableop_resource: 6
(dense_11_biasadd_readvariableop_resource: 9
'dense_12_matmul_readvariableop_resource: T6
(dense_12_biasadd_readvariableop_resource:T
identityИҐ.batch_normalization_4/batchnorm/ReadVariableOpҐ0batch_normalization_4/batchnorm/ReadVariableOp_1Ґ0batch_normalization_4/batchnorm/ReadVariableOp_2Ґ2batch_normalization_4/batchnorm/mul/ReadVariableOpҐ.batch_normalization_5/batchnorm/ReadVariableOpҐ0batch_normalization_5/batchnorm/ReadVariableOp_1Ґ0batch_normalization_5/batchnorm/ReadVariableOp_2Ґ2batch_normalization_5/batchnorm/mul/ReadVariableOpҐ.batch_normalization_6/batchnorm/ReadVariableOpҐ0batch_normalization_6/batchnorm/ReadVariableOp_1Ґ0batch_normalization_6/batchnorm/ReadVariableOp_2Ґ2batch_normalization_6/batchnorm/mul/ReadVariableOpҐ.batch_normalization_7/batchnorm/ReadVariableOpҐ0batch_normalization_7/batchnorm/ReadVariableOp_1Ґ0batch_normalization_7/batchnorm/ReadVariableOp_2Ґ2batch_normalization_7/batchnorm/mul/ReadVariableOpҐconv1d_4/BiasAdd/ReadVariableOpҐ+conv1d_4/Conv1D/ExpandDims_1/ReadVariableOpҐconv1d_5/BiasAdd/ReadVariableOpҐ+conv1d_5/Conv1D/ExpandDims_1/ReadVariableOpҐconv1d_6/BiasAdd/ReadVariableOpҐ+conv1d_6/Conv1D/ExpandDims_1/ReadVariableOpҐconv1d_7/BiasAdd/ReadVariableOpҐ+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpҐdense_11/BiasAdd/ReadVariableOpҐdense_11/MatMul/ReadVariableOpҐdense_12/BiasAdd/ReadVariableOpҐdense_12/MatMul/ReadVariableOpq
lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    э€€€    s
lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            s
lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         М
lambda_1/strided_sliceStridedSliceinputs%lambda_1/strided_slice/stack:output:0'lambda_1/strided_slice/stack_1:output:0'lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*

begin_mask*
end_maski
conv1d_4/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€ђ
conv1d_4/Conv1D/ExpandDims
ExpandDimslambda_1/strided_slice:output:0'conv1d_4/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€§
+conv1d_4/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_4/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ї
conv1d_4/Conv1D/ExpandDims_1
ExpandDims3conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:«
conv1d_4/Conv1DConv2D#conv1d_4/Conv1D/ExpandDims:output:0%conv1d_4/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Т
conv1d_4/Conv1D/SqueezeSqueezeconv1d_4/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Д
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
conv1d_4/BiasAddBiasAdd conv1d_4/Conv1D/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€f
conv1d_4/ReluReluconv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ґ
.batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0j
%batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:є
#batch_normalization_4/batchnorm/addAddV26batch_normalization_4/batchnorm/ReadVariableOp:value:0.batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_4/batchnorm/RsqrtRsqrt'batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:™
2batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ґ
#batch_normalization_4/batchnorm/mulMul)batch_normalization_4/batchnorm/Rsqrt:y:0:batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:®
%batch_normalization_4/batchnorm/mul_1Mulconv1d_4/Relu:activations:0'batch_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€¶
0batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0і
%batch_normalization_4/batchnorm/mul_2Mul8batch_normalization_4/batchnorm/ReadVariableOp_1:value:0'batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:¶
0batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0і
#batch_normalization_4/batchnorm/subSub8batch_normalization_4/batchnorm/ReadVariableOp_2:value:0)batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Є
%batch_normalization_4/batchnorm/add_1AddV2)batch_normalization_4/batchnorm/mul_1:z:0'batch_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€i
conv1d_5/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€ґ
conv1d_5/Conv1D/ExpandDims
ExpandDims)batch_normalization_4/batchnorm/add_1:z:0'conv1d_5/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€§
+conv1d_5/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_5/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ї
conv1d_5/Conv1D/ExpandDims_1
ExpandDims3conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_5/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:«
conv1d_5/Conv1DConv2D#conv1d_5/Conv1D/ExpandDims:output:0%conv1d_5/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Т
conv1d_5/Conv1D/SqueezeSqueezeconv1d_5/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Д
conv1d_5/BiasAdd/ReadVariableOpReadVariableOp(conv1d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
conv1d_5/BiasAddBiasAdd conv1d_5/Conv1D/Squeeze:output:0'conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€f
conv1d_5/ReluReluconv1d_5/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ґ
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0j
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:є
#batch_normalization_5/batchnorm/addAddV26batch_normalization_5/batchnorm/ReadVariableOp:value:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:™
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ґ
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:®
%batch_normalization_5/batchnorm/mul_1Mulconv1d_5/Relu:activations:0'batch_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€¶
0batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0і
%batch_normalization_5/batchnorm/mul_2Mul8batch_normalization_5/batchnorm/ReadVariableOp_1:value:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:¶
0batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0і
#batch_normalization_5/batchnorm/subSub8batch_normalization_5/batchnorm/ReadVariableOp_2:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Є
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€i
conv1d_6/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€ґ
conv1d_6/Conv1D/ExpandDims
ExpandDims)batch_normalization_5/batchnorm/add_1:z:0'conv1d_6/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€§
+conv1d_6/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_6/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ї
conv1d_6/Conv1D/ExpandDims_1
ExpandDims3conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_6/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:«
conv1d_6/Conv1DConv2D#conv1d_6/Conv1D/ExpandDims:output:0%conv1d_6/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Т
conv1d_6/Conv1D/SqueezeSqueezeconv1d_6/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Д
conv1d_6/BiasAdd/ReadVariableOpReadVariableOp(conv1d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
conv1d_6/BiasAddBiasAdd conv1d_6/Conv1D/Squeeze:output:0'conv1d_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€f
conv1d_6/ReluReluconv1d_6/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ґ
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:є
#batch_normalization_6/batchnorm/addAddV26batch_normalization_6/batchnorm/ReadVariableOp:value:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes
:™
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ґ
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:®
%batch_normalization_6/batchnorm/mul_1Mulconv1d_6/Relu:activations:0'batch_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€¶
0batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0і
%batch_normalization_6/batchnorm/mul_2Mul8batch_normalization_6/batchnorm/ReadVariableOp_1:value:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes
:¶
0batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0і
#batch_normalization_6/batchnorm/subSub8batch_normalization_6/batchnorm/ReadVariableOp_2:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Є
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€i
conv1d_7/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€ґ
conv1d_7/Conv1D/ExpandDims
ExpandDims)batch_normalization_6/batchnorm/add_1:z:0'conv1d_7/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€§
+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_7/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ї
conv1d_7/Conv1D/ExpandDims_1
ExpandDims3conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_7/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:«
conv1d_7/Conv1DConv2D#conv1d_7/Conv1D/ExpandDims:output:0%conv1d_7/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Т
conv1d_7/Conv1D/SqueezeSqueezeconv1d_7/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Д
conv1d_7/BiasAdd/ReadVariableOpReadVariableOp(conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
conv1d_7/BiasAddBiasAdd conv1d_7/Conv1D/Squeeze:output:0'conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€f
conv1d_7/ReluReluconv1d_7/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ґ
.batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0j
%batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:є
#batch_normalization_7/batchnorm/addAddV26batch_normalization_7/batchnorm/ReadVariableOp:value:0.batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_7/batchnorm/RsqrtRsqrt'batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes
:™
2batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ґ
#batch_normalization_7/batchnorm/mulMul)batch_normalization_7/batchnorm/Rsqrt:y:0:batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:®
%batch_normalization_7/batchnorm/mul_1Mulconv1d_7/Relu:activations:0'batch_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€¶
0batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0і
%batch_normalization_7/batchnorm/mul_2Mul8batch_normalization_7/batchnorm/ReadVariableOp_1:value:0'batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes
:¶
0batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0і
#batch_normalization_7/batchnorm/subSub8batch_normalization_7/batchnorm/ReadVariableOp_2:value:0)batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Є
%batch_normalization_7/batchnorm/add_1AddV2)batch_normalization_7/batchnorm/mul_1:z:0'batch_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€s
1global_average_pooling1d_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :ј
global_average_pooling1d_2/MeanMean)batch_normalization_7/batchnorm/add_1:z:0:global_average_pooling1d_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Э
dense_11/MatMulMatMul(global_average_pooling1d_2/Mean:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ Д
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ b
dense_11/ReluReludense_11/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ m
dropout_3/IdentityIdentitydense_11/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ Ж
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

: T*
dtype0Р
dense_12/MatMulMatMuldropout_3/Identity:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€TД
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0С
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Tf
reshape_4/ShapeShapedense_12/BiasAdd:output:0*
T0*
_output_shapes
::нѕg
reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
reshape_4/strided_sliceStridedSlicereshape_4/Shape:output:0&reshape_4/strided_slice/stack:output:0(reshape_4/strided_slice/stack_1:output:0(reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Ј
reshape_4/Reshape/shapePack reshape_4/strided_slice:output:0"reshape_4/Reshape/shape/1:output:0"reshape_4/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:П
reshape_4/ReshapeReshapedense_12/BiasAdd:output:0 reshape_4/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€m
IdentityIdentityreshape_4/Reshape:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Љ

NoOpNoOp/^batch_normalization_4/batchnorm/ReadVariableOp1^batch_normalization_4/batchnorm/ReadVariableOp_11^batch_normalization_4/batchnorm/ReadVariableOp_23^batch_normalization_4/batchnorm/mul/ReadVariableOp/^batch_normalization_5/batchnorm/ReadVariableOp1^batch_normalization_5/batchnorm/ReadVariableOp_11^batch_normalization_5/batchnorm/ReadVariableOp_23^batch_normalization_5/batchnorm/mul/ReadVariableOp/^batch_normalization_6/batchnorm/ReadVariableOp1^batch_normalization_6/batchnorm/ReadVariableOp_11^batch_normalization_6/batchnorm/ReadVariableOp_23^batch_normalization_6/batchnorm/mul/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp1^batch_normalization_7/batchnorm/ReadVariableOp_11^batch_normalization_7/batchnorm/ReadVariableOp_23^batch_normalization_7/batchnorm/mul/ReadVariableOp ^conv1d_4/BiasAdd/ReadVariableOp,^conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_5/BiasAdd/ReadVariableOp,^conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_6/BiasAdd/ReadVariableOp,^conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_7/BiasAdd/ReadVariableOp,^conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2d
0batch_normalization_4/batchnorm/ReadVariableOp_10batch_normalization_4/batchnorm/ReadVariableOp_12d
0batch_normalization_4/batchnorm/ReadVariableOp_20batch_normalization_4/batchnorm/ReadVariableOp_22`
.batch_normalization_4/batchnorm/ReadVariableOp.batch_normalization_4/batchnorm/ReadVariableOp2h
2batch_normalization_4/batchnorm/mul/ReadVariableOp2batch_normalization_4/batchnorm/mul/ReadVariableOp2d
0batch_normalization_5/batchnorm/ReadVariableOp_10batch_normalization_5/batchnorm/ReadVariableOp_12d
0batch_normalization_5/batchnorm/ReadVariableOp_20batch_normalization_5/batchnorm/ReadVariableOp_22`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp2d
0batch_normalization_6/batchnorm/ReadVariableOp_10batch_normalization_6/batchnorm/ReadVariableOp_12d
0batch_normalization_6/batchnorm/ReadVariableOp_20batch_normalization_6/batchnorm/ReadVariableOp_22`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2d
0batch_normalization_7/batchnorm/ReadVariableOp_10batch_normalization_7/batchnorm/ReadVariableOp_12d
0batch_normalization_7/batchnorm/ReadVariableOp_20batch_normalization_7/batchnorm/ReadVariableOp_22`
.batch_normalization_7/batchnorm/ReadVariableOp.batch_normalization_7/batchnorm/ReadVariableOp2h
2batch_normalization_7/batchnorm/mul/ReadVariableOp2batch_normalization_7/batchnorm/mul/ReadVariableOp2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2Z
+conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_5/BiasAdd/ReadVariableOpconv1d_5/BiasAdd/ReadVariableOp2Z
+conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_6/BiasAdd/ReadVariableOpconv1d_6/BiasAdd/ReadVariableOp2Z
+conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_7/BiasAdd/ReadVariableOpconv1d_7/BiasAdd/ReadVariableOp2Z
+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
€%
м
S__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13679631

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
F__inference_dense_12_layer_call_and_return_conditional_losses_13679953

inputs0
matmul_readvariableop_resource: T-
biasadd_readvariableop_resource:T
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: T*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Tr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€T_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Tw
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
Э

ч
F__inference_dense_11_layer_call_and_return_conditional_losses_13679923

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
а
”
8__inference_batch_normalization_7_layer_call_fn_13681473

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallП
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_7_layer_call_and_return_conditional_losses_13679733|
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
∆
Ш
+__inference_dense_12_layer_call_fn_13681594

inputs
unknown: T
	unknown_0:T
identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_12_layer_call_and_return_conditional_losses_13679953o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€T`
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
І

f
G__inference_dropout_3_layer_call_and_return_conditional_losses_13679941

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
С
≤
S__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13679569

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
ё
”
8__inference_batch_normalization_6_layer_call_fn_13681355

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallН
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13679631|
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
І≥
Е
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13680936

inputsJ
4conv1d_4_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_4_biasadd_readvariableop_resource:K
=batch_normalization_4_assignmovingavg_readvariableop_resource:M
?batch_normalization_4_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_4_batchnorm_mul_readvariableop_resource:E
7batch_normalization_4_batchnorm_readvariableop_resource:J
4conv1d_5_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_5_biasadd_readvariableop_resource:K
=batch_normalization_5_assignmovingavg_readvariableop_resource:M
?batch_normalization_5_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_5_batchnorm_mul_readvariableop_resource:E
7batch_normalization_5_batchnorm_readvariableop_resource:J
4conv1d_6_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_6_biasadd_readvariableop_resource:K
=batch_normalization_6_assignmovingavg_readvariableop_resource:M
?batch_normalization_6_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_6_batchnorm_mul_readvariableop_resource:E
7batch_normalization_6_batchnorm_readvariableop_resource:J
4conv1d_7_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_7_biasadd_readvariableop_resource:K
=batch_normalization_7_assignmovingavg_readvariableop_resource:M
?batch_normalization_7_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_7_batchnorm_mul_readvariableop_resource:E
7batch_normalization_7_batchnorm_readvariableop_resource:9
'dense_11_matmul_readvariableop_resource: 6
(dense_11_biasadd_readvariableop_resource: 9
'dense_12_matmul_readvariableop_resource: T6
(dense_12_biasadd_readvariableop_resource:T
identityИҐ%batch_normalization_4/AssignMovingAvgҐ4batch_normalization_4/AssignMovingAvg/ReadVariableOpҐ'batch_normalization_4/AssignMovingAvg_1Ґ6batch_normalization_4/AssignMovingAvg_1/ReadVariableOpҐ.batch_normalization_4/batchnorm/ReadVariableOpҐ2batch_normalization_4/batchnorm/mul/ReadVariableOpҐ%batch_normalization_5/AssignMovingAvgҐ4batch_normalization_5/AssignMovingAvg/ReadVariableOpҐ'batch_normalization_5/AssignMovingAvg_1Ґ6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpҐ.batch_normalization_5/batchnorm/ReadVariableOpҐ2batch_normalization_5/batchnorm/mul/ReadVariableOpҐ%batch_normalization_6/AssignMovingAvgҐ4batch_normalization_6/AssignMovingAvg/ReadVariableOpҐ'batch_normalization_6/AssignMovingAvg_1Ґ6batch_normalization_6/AssignMovingAvg_1/ReadVariableOpҐ.batch_normalization_6/batchnorm/ReadVariableOpҐ2batch_normalization_6/batchnorm/mul/ReadVariableOpҐ%batch_normalization_7/AssignMovingAvgҐ4batch_normalization_7/AssignMovingAvg/ReadVariableOpҐ'batch_normalization_7/AssignMovingAvg_1Ґ6batch_normalization_7/AssignMovingAvg_1/ReadVariableOpҐ.batch_normalization_7/batchnorm/ReadVariableOpҐ2batch_normalization_7/batchnorm/mul/ReadVariableOpҐconv1d_4/BiasAdd/ReadVariableOpҐ+conv1d_4/Conv1D/ExpandDims_1/ReadVariableOpҐconv1d_5/BiasAdd/ReadVariableOpҐ+conv1d_5/Conv1D/ExpandDims_1/ReadVariableOpҐconv1d_6/BiasAdd/ReadVariableOpҐ+conv1d_6/Conv1D/ExpandDims_1/ReadVariableOpҐconv1d_7/BiasAdd/ReadVariableOpҐ+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpҐdense_11/BiasAdd/ReadVariableOpҐdense_11/MatMul/ReadVariableOpҐdense_12/BiasAdd/ReadVariableOpҐdense_12/MatMul/ReadVariableOpq
lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    э€€€    s
lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            s
lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         М
lambda_1/strided_sliceStridedSliceinputs%lambda_1/strided_slice/stack:output:0'lambda_1/strided_slice/stack_1:output:0'lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*

begin_mask*
end_maski
conv1d_4/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€ђ
conv1d_4/Conv1D/ExpandDims
ExpandDimslambda_1/strided_slice:output:0'conv1d_4/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€§
+conv1d_4/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_4/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ї
conv1d_4/Conv1D/ExpandDims_1
ExpandDims3conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:«
conv1d_4/Conv1DConv2D#conv1d_4/Conv1D/ExpandDims:output:0%conv1d_4/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Т
conv1d_4/Conv1D/SqueezeSqueezeconv1d_4/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Д
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
conv1d_4/BiasAddBiasAdd conv1d_4/Conv1D/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€f
conv1d_4/ReluReluconv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€Е
4batch_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ƒ
"batch_normalization_4/moments/meanMeanconv1d_4/Relu:activations:0=batch_normalization_4/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(Ф
*batch_normalization_4/moments/StopGradientStopGradient+batch_normalization_4/moments/mean:output:0*
T0*"
_output_shapes
:ћ
/batch_normalization_4/moments/SquaredDifferenceSquaredDifferenceconv1d_4/Relu:activations:03batch_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€Й
8batch_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       д
&batch_normalization_4/moments/varianceMean3batch_normalization_4/moments/SquaredDifference:z:0Abatch_normalization_4/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(Ъ
%batch_normalization_4/moments/SqueezeSqueeze+batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 †
'batch_normalization_4/moments/Squeeze_1Squeeze/batch_normalization_4/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 p
+batch_normalization_4/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ѓ
4batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_4_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0√
)batch_normalization_4/AssignMovingAvg/subSub<batch_normalization_4/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_4/moments/Squeeze:output:0*
T0*
_output_shapes
:Ї
)batch_normalization_4/AssignMovingAvg/mulMul-batch_normalization_4/AssignMovingAvg/sub:z:04batch_normalization_4/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Д
%batch_normalization_4/AssignMovingAvgAssignSubVariableOp=batch_normalization_4_assignmovingavg_readvariableop_resource-batch_normalization_4/AssignMovingAvg/mul:z:05^batch_normalization_4/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_4/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<≤
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_4_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0…
+batch_normalization_4/AssignMovingAvg_1/subSub>batch_normalization_4/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_4/moments/Squeeze_1:output:0*
T0*
_output_shapes
:ј
+batch_normalization_4/AssignMovingAvg_1/mulMul/batch_normalization_4/AssignMovingAvg_1/sub:z:06batch_normalization_4/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:М
'batch_normalization_4/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_4_assignmovingavg_1_readvariableop_resource/batch_normalization_4/AssignMovingAvg_1/mul:z:07^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:≥
#batch_normalization_4/batchnorm/addAddV20batch_normalization_4/moments/Squeeze_1:output:0.batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_4/batchnorm/RsqrtRsqrt'batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:™
2batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ґ
#batch_normalization_4/batchnorm/mulMul)batch_normalization_4/batchnorm/Rsqrt:y:0:batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:®
%batch_normalization_4/batchnorm/mul_1Mulconv1d_4/Relu:activations:0'batch_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€™
%batch_normalization_4/batchnorm/mul_2Mul.batch_normalization_4/moments/Squeeze:output:0'batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:Ґ
.batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0≤
#batch_normalization_4/batchnorm/subSub6batch_normalization_4/batchnorm/ReadVariableOp:value:0)batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Є
%batch_normalization_4/batchnorm/add_1AddV2)batch_normalization_4/batchnorm/mul_1:z:0'batch_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€i
conv1d_5/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€ґ
conv1d_5/Conv1D/ExpandDims
ExpandDims)batch_normalization_4/batchnorm/add_1:z:0'conv1d_5/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€§
+conv1d_5/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_5/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ї
conv1d_5/Conv1D/ExpandDims_1
ExpandDims3conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_5/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:«
conv1d_5/Conv1DConv2D#conv1d_5/Conv1D/ExpandDims:output:0%conv1d_5/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Т
conv1d_5/Conv1D/SqueezeSqueezeconv1d_5/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Д
conv1d_5/BiasAdd/ReadVariableOpReadVariableOp(conv1d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
conv1d_5/BiasAddBiasAdd conv1d_5/Conv1D/Squeeze:output:0'conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€f
conv1d_5/ReluReluconv1d_5/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€Е
4batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ƒ
"batch_normalization_5/moments/meanMeanconv1d_5/Relu:activations:0=batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(Ф
*batch_normalization_5/moments/StopGradientStopGradient+batch_normalization_5/moments/mean:output:0*
T0*"
_output_shapes
:ћ
/batch_normalization_5/moments/SquaredDifferenceSquaredDifferenceconv1d_5/Relu:activations:03batch_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€Й
8batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       д
&batch_normalization_5/moments/varianceMean3batch_normalization_5/moments/SquaredDifference:z:0Abatch_normalization_5/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(Ъ
%batch_normalization_5/moments/SqueezeSqueeze+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 †
'batch_normalization_5/moments/Squeeze_1Squeeze/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 p
+batch_normalization_5/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ѓ
4batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_5_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0√
)batch_normalization_5/AssignMovingAvg/subSub<batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_5/moments/Squeeze:output:0*
T0*
_output_shapes
:Ї
)batch_normalization_5/AssignMovingAvg/mulMul-batch_normalization_5/AssignMovingAvg/sub:z:04batch_normalization_5/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Д
%batch_normalization_5/AssignMovingAvgAssignSubVariableOp=batch_normalization_5_assignmovingavg_readvariableop_resource-batch_normalization_5/AssignMovingAvg/mul:z:05^batch_normalization_5/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_5/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<≤
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_5_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0…
+batch_normalization_5/AssignMovingAvg_1/subSub>batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_5/moments/Squeeze_1:output:0*
T0*
_output_shapes
:ј
+batch_normalization_5/AssignMovingAvg_1/mulMul/batch_normalization_5/AssignMovingAvg_1/sub:z:06batch_normalization_5/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:М
'batch_normalization_5/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_5_assignmovingavg_1_readvariableop_resource/batch_normalization_5/AssignMovingAvg_1/mul:z:07^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:≥
#batch_normalization_5/batchnorm/addAddV20batch_normalization_5/moments/Squeeze_1:output:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:™
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ґ
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:®
%batch_normalization_5/batchnorm/mul_1Mulconv1d_5/Relu:activations:0'batch_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€™
%batch_normalization_5/batchnorm/mul_2Mul.batch_normalization_5/moments/Squeeze:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:Ґ
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0≤
#batch_normalization_5/batchnorm/subSub6batch_normalization_5/batchnorm/ReadVariableOp:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Є
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€i
conv1d_6/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€ґ
conv1d_6/Conv1D/ExpandDims
ExpandDims)batch_normalization_5/batchnorm/add_1:z:0'conv1d_6/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€§
+conv1d_6/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_6/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ї
conv1d_6/Conv1D/ExpandDims_1
ExpandDims3conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_6/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:«
conv1d_6/Conv1DConv2D#conv1d_6/Conv1D/ExpandDims:output:0%conv1d_6/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Т
conv1d_6/Conv1D/SqueezeSqueezeconv1d_6/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Д
conv1d_6/BiasAdd/ReadVariableOpReadVariableOp(conv1d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
conv1d_6/BiasAddBiasAdd conv1d_6/Conv1D/Squeeze:output:0'conv1d_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€f
conv1d_6/ReluReluconv1d_6/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€Е
4batch_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ƒ
"batch_normalization_6/moments/meanMeanconv1d_6/Relu:activations:0=batch_normalization_6/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(Ф
*batch_normalization_6/moments/StopGradientStopGradient+batch_normalization_6/moments/mean:output:0*
T0*"
_output_shapes
:ћ
/batch_normalization_6/moments/SquaredDifferenceSquaredDifferenceconv1d_6/Relu:activations:03batch_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€Й
8batch_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       д
&batch_normalization_6/moments/varianceMean3batch_normalization_6/moments/SquaredDifference:z:0Abatch_normalization_6/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(Ъ
%batch_normalization_6/moments/SqueezeSqueeze+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 †
'batch_normalization_6/moments/Squeeze_1Squeeze/batch_normalization_6/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 p
+batch_normalization_6/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ѓ
4batch_normalization_6/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_6_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0√
)batch_normalization_6/AssignMovingAvg/subSub<batch_normalization_6/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_6/moments/Squeeze:output:0*
T0*
_output_shapes
:Ї
)batch_normalization_6/AssignMovingAvg/mulMul-batch_normalization_6/AssignMovingAvg/sub:z:04batch_normalization_6/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Д
%batch_normalization_6/AssignMovingAvgAssignSubVariableOp=batch_normalization_6_assignmovingavg_readvariableop_resource-batch_normalization_6/AssignMovingAvg/mul:z:05^batch_normalization_6/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_6/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<≤
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_6_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0…
+batch_normalization_6/AssignMovingAvg_1/subSub>batch_normalization_6/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_6/moments/Squeeze_1:output:0*
T0*
_output_shapes
:ј
+batch_normalization_6/AssignMovingAvg_1/mulMul/batch_normalization_6/AssignMovingAvg_1/sub:z:06batch_normalization_6/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:М
'batch_normalization_6/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_6_assignmovingavg_1_readvariableop_resource/batch_normalization_6/AssignMovingAvg_1/mul:z:07^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:≥
#batch_normalization_6/batchnorm/addAddV20batch_normalization_6/moments/Squeeze_1:output:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes
:™
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ґ
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:®
%batch_normalization_6/batchnorm/mul_1Mulconv1d_6/Relu:activations:0'batch_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€™
%batch_normalization_6/batchnorm/mul_2Mul.batch_normalization_6/moments/Squeeze:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes
:Ґ
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0≤
#batch_normalization_6/batchnorm/subSub6batch_normalization_6/batchnorm/ReadVariableOp:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Є
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€i
conv1d_7/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€ґ
conv1d_7/Conv1D/ExpandDims
ExpandDims)batch_normalization_6/batchnorm/add_1:z:0'conv1d_7/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€§
+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_7/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ї
conv1d_7/Conv1D/ExpandDims_1
ExpandDims3conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_7/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:«
conv1d_7/Conv1DConv2D#conv1d_7/Conv1D/ExpandDims:output:0%conv1d_7/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Т
conv1d_7/Conv1D/SqueezeSqueezeconv1d_7/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Д
conv1d_7/BiasAdd/ReadVariableOpReadVariableOp(conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
conv1d_7/BiasAddBiasAdd conv1d_7/Conv1D/Squeeze:output:0'conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€f
conv1d_7/ReluReluconv1d_7/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€Е
4batch_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ƒ
"batch_normalization_7/moments/meanMeanconv1d_7/Relu:activations:0=batch_normalization_7/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(Ф
*batch_normalization_7/moments/StopGradientStopGradient+batch_normalization_7/moments/mean:output:0*
T0*"
_output_shapes
:ћ
/batch_normalization_7/moments/SquaredDifferenceSquaredDifferenceconv1d_7/Relu:activations:03batch_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€Й
8batch_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       д
&batch_normalization_7/moments/varianceMean3batch_normalization_7/moments/SquaredDifference:z:0Abatch_normalization_7/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(Ъ
%batch_normalization_7/moments/SqueezeSqueeze+batch_normalization_7/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 †
'batch_normalization_7/moments/Squeeze_1Squeeze/batch_normalization_7/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 p
+batch_normalization_7/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ѓ
4batch_normalization_7/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_7_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0√
)batch_normalization_7/AssignMovingAvg/subSub<batch_normalization_7/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_7/moments/Squeeze:output:0*
T0*
_output_shapes
:Ї
)batch_normalization_7/AssignMovingAvg/mulMul-batch_normalization_7/AssignMovingAvg/sub:z:04batch_normalization_7/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Д
%batch_normalization_7/AssignMovingAvgAssignSubVariableOp=batch_normalization_7_assignmovingavg_readvariableop_resource-batch_normalization_7/AssignMovingAvg/mul:z:05^batch_normalization_7/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_7/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<≤
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_7_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0…
+batch_normalization_7/AssignMovingAvg_1/subSub>batch_normalization_7/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_7/moments/Squeeze_1:output:0*
T0*
_output_shapes
:ј
+batch_normalization_7/AssignMovingAvg_1/mulMul/batch_normalization_7/AssignMovingAvg_1/sub:z:06batch_normalization_7/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:М
'batch_normalization_7/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_7_assignmovingavg_1_readvariableop_resource/batch_normalization_7/AssignMovingAvg_1/mul:z:07^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:≥
#batch_normalization_7/batchnorm/addAddV20batch_normalization_7/moments/Squeeze_1:output:0.batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_7/batchnorm/RsqrtRsqrt'batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes
:™
2batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ґ
#batch_normalization_7/batchnorm/mulMul)batch_normalization_7/batchnorm/Rsqrt:y:0:batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:®
%batch_normalization_7/batchnorm/mul_1Mulconv1d_7/Relu:activations:0'batch_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€™
%batch_normalization_7/batchnorm/mul_2Mul.batch_normalization_7/moments/Squeeze:output:0'batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes
:Ґ
.batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0≤
#batch_normalization_7/batchnorm/subSub6batch_normalization_7/batchnorm/ReadVariableOp:value:0)batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Є
%batch_normalization_7/batchnorm/add_1AddV2)batch_normalization_7/batchnorm/mul_1:z:0'batch_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€s
1global_average_pooling1d_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :ј
global_average_pooling1d_2/MeanMean)batch_normalization_7/batchnorm/add_1:z:0:global_average_pooling1d_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Э
dense_11/MatMulMatMul(global_average_pooling1d_2/Mean:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ Д
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ b
dense_11/ReluReludense_11/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ \
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?Н
dropout_3/dropout/MulMuldense_11/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ p
dropout_3/dropout/ShapeShapedense_11/Relu:activations:0*
T0*
_output_shapes
::нѕђ
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype0*

seed*e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>ƒ
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ ^
dropout_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ї
dropout_3/dropout/SelectV2SelectV2"dropout_3/dropout/GreaterEqual:z:0dropout_3/dropout/Mul:z:0"dropout_3/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Ж
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

: T*
dtype0Ш
dense_12/MatMulMatMul#dropout_3/dropout/SelectV2:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€TД
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0С
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Tf
reshape_4/ShapeShapedense_12/BiasAdd:output:0*
T0*
_output_shapes
::нѕg
reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
reshape_4/strided_sliceStridedSlicereshape_4/Shape:output:0&reshape_4/strided_slice/stack:output:0(reshape_4/strided_slice/stack_1:output:0(reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Ј
reshape_4/Reshape/shapePack reshape_4/strided_slice:output:0"reshape_4/Reshape/shape/1:output:0"reshape_4/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:П
reshape_4/ReshapeReshapedense_12/BiasAdd:output:0 reshape_4/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€m
IdentityIdentityreshape_4/Reshape:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ђ
NoOpNoOp&^batch_normalization_4/AssignMovingAvg5^batch_normalization_4/AssignMovingAvg/ReadVariableOp(^batch_normalization_4/AssignMovingAvg_17^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_4/batchnorm/ReadVariableOp3^batch_normalization_4/batchnorm/mul/ReadVariableOp&^batch_normalization_5/AssignMovingAvg5^batch_normalization_5/AssignMovingAvg/ReadVariableOp(^batch_normalization_5/AssignMovingAvg_17^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_5/batchnorm/ReadVariableOp3^batch_normalization_5/batchnorm/mul/ReadVariableOp&^batch_normalization_6/AssignMovingAvg5^batch_normalization_6/AssignMovingAvg/ReadVariableOp(^batch_normalization_6/AssignMovingAvg_17^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_6/batchnorm/ReadVariableOp3^batch_normalization_6/batchnorm/mul/ReadVariableOp&^batch_normalization_7/AssignMovingAvg5^batch_normalization_7/AssignMovingAvg/ReadVariableOp(^batch_normalization_7/AssignMovingAvg_17^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp3^batch_normalization_7/batchnorm/mul/ReadVariableOp ^conv1d_4/BiasAdd/ReadVariableOp,^conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_5/BiasAdd/ReadVariableOp,^conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_6/BiasAdd/ReadVariableOp,^conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_7/BiasAdd/ReadVariableOp,^conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2l
4batch_normalization_4/AssignMovingAvg/ReadVariableOp4batch_normalization_4/AssignMovingAvg/ReadVariableOp2p
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_4/AssignMovingAvg_1'batch_normalization_4/AssignMovingAvg_12N
%batch_normalization_4/AssignMovingAvg%batch_normalization_4/AssignMovingAvg2`
.batch_normalization_4/batchnorm/ReadVariableOp.batch_normalization_4/batchnorm/ReadVariableOp2h
2batch_normalization_4/batchnorm/mul/ReadVariableOp2batch_normalization_4/batchnorm/mul/ReadVariableOp2l
4batch_normalization_5/AssignMovingAvg/ReadVariableOp4batch_normalization_5/AssignMovingAvg/ReadVariableOp2p
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_5/AssignMovingAvg_1'batch_normalization_5/AssignMovingAvg_12N
%batch_normalization_5/AssignMovingAvg%batch_normalization_5/AssignMovingAvg2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp2l
4batch_normalization_6/AssignMovingAvg/ReadVariableOp4batch_normalization_6/AssignMovingAvg/ReadVariableOp2p
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_6/AssignMovingAvg_1'batch_normalization_6/AssignMovingAvg_12N
%batch_normalization_6/AssignMovingAvg%batch_normalization_6/AssignMovingAvg2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2l
4batch_normalization_7/AssignMovingAvg/ReadVariableOp4batch_normalization_7/AssignMovingAvg/ReadVariableOp2p
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_7/AssignMovingAvg_1'batch_normalization_7/AssignMovingAvg_12N
%batch_normalization_7/AssignMovingAvg%batch_normalization_7/AssignMovingAvg2`
.batch_normalization_7/batchnorm/ReadVariableOp.batch_normalization_7/batchnorm/ReadVariableOp2h
2batch_normalization_7/batchnorm/mul/ReadVariableOp2batch_normalization_7/batchnorm/mul/ReadVariableOp2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2Z
+conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_5/BiasAdd/ReadVariableOpconv1d_5/BiasAdd/ReadVariableOp2Z
+conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_6/BiasAdd/ReadVariableOpconv1d_6/BiasAdd/ReadVariableOp2Z
+conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_7/BiasAdd/ReadVariableOpconv1d_7/BiasAdd/ReadVariableOp2Z
+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ГK
Ї
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13679975	
input'
conv1d_4_13679804:
conv1d_4_13679806:,
batch_normalization_4_13679809:,
batch_normalization_4_13679811:,
batch_normalization_4_13679813:,
batch_normalization_4_13679815:'
conv1d_5_13679835:
conv1d_5_13679837:,
batch_normalization_5_13679840:,
batch_normalization_5_13679842:,
batch_normalization_5_13679844:,
batch_normalization_5_13679846:'
conv1d_6_13679866:
conv1d_6_13679868:,
batch_normalization_6_13679871:,
batch_normalization_6_13679873:,
batch_normalization_6_13679875:,
batch_normalization_6_13679877:'
conv1d_7_13679897:
conv1d_7_13679899:,
batch_normalization_7_13679902:,
batch_normalization_7_13679904:,
batch_normalization_7_13679906:,
batch_normalization_7_13679908:#
dense_11_13679924: 
dense_11_13679926: #
dense_12_13679954: T
dense_12_13679956:T
identityИҐ-batch_normalization_4/StatefulPartitionedCallҐ-batch_normalization_5/StatefulPartitionedCallҐ-batch_normalization_6/StatefulPartitionedCallҐ-batch_normalization_7/StatefulPartitionedCallҐ conv1d_4/StatefulPartitionedCallҐ conv1d_5/StatefulPartitionedCallҐ conv1d_6/StatefulPartitionedCallҐ conv1d_7/StatefulPartitionedCallҐ dense_11/StatefulPartitionedCallҐ dense_12/StatefulPartitionedCallҐ!dropout_3/StatefulPartitionedCallљ
lambda_1/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lambda_1_layer_call_and_return_conditional_losses_13679785Х
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0conv1d_4_13679804conv1d_4_13679806*
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_4_layer_call_and_return_conditional_losses_13679803У
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0batch_normalization_4_13679809batch_normalization_4_13679811batch_normalization_4_13679813batch_normalization_4_13679815*
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13679467™
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0conv1d_5_13679835conv1d_5_13679837*
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_5_layer_call_and_return_conditional_losses_13679834У
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0batch_normalization_5_13679840batch_normalization_5_13679842batch_normalization_5_13679844batch_normalization_5_13679846*
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13679549™
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0conv1d_6_13679866conv1d_6_13679868*
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_6_layer_call_and_return_conditional_losses_13679865У
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0batch_normalization_6_13679871batch_normalization_6_13679873batch_normalization_6_13679875batch_normalization_6_13679877*
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13679631™
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0conv1d_7_13679897conv1d_7_13679899*
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_7_layer_call_and_return_conditional_losses_13679896У
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0batch_normalization_7_13679902batch_normalization_7_13679904batch_normalization_7_13679906batch_normalization_7_13679908*
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_7_layer_call_and_return_conditional_losses_13679713О
*global_average_pooling1d_2/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
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
GPU 2J 8В *a
f\RZ
X__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_13679767£
 dense_11/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_2/PartitionedCall:output:0dense_11_13679924dense_11_13679926*
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
F__inference_dense_11_layer_call_and_return_conditional_losses_13679923п
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
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
GPU 2J 8В *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_13679941Ъ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_12_13679954dense_12_13679956*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_12_layer_call_and_return_conditional_losses_13679953г
reshape_4/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_reshape_4_layer_call_and_return_conditional_losses_13679972u
IdentityIdentity"reshape_4/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ь
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall!^conv1d_6/StatefulPartitionedCall!^conv1d_7/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:R N
+
_output_shapes
:€€€€€€€€€

_user_specified_nameInput
І

f
G__inference_dropout_3_layer_call_and_return_conditional_losses_13681580

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
…
Х
F__inference_conv1d_6_layer_call_and_return_conditional_losses_13679865

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
…
Х
F__inference_conv1d_4_layer_call_and_return_conditional_losses_13681132

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
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
:€€€€€€€€€Т
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
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
:ђ
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
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
з

c
G__inference_reshape_4_layer_call_and_return_conditional_losses_13679972

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
value	B :П
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€T:O K
'
_output_shapes
:€€€€€€€€€T
 
_user_specified_nameinputs
Џ
e
G__inference_dropout_3_layer_call_and_return_conditional_losses_13680053

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
њ
b
F__inference_lambda_1_layer_call_and_return_conditional_losses_13681099

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
:€€€€€€€€€*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
…
Х
F__inference_conv1d_5_layer_call_and_return_conditional_losses_13681237

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
Г
Y
=__inference_global_average_pooling1d_2_layer_call_fn_13681532

inputs
identityћ
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
GPU 2J 8В *a
f\RZ
X__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_13679767i
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
гI
Ц
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13680062	
input'
conv1d_4_13679987:
conv1d_4_13679989:,
batch_normalization_4_13679992:,
batch_normalization_4_13679994:,
batch_normalization_4_13679996:,
batch_normalization_4_13679998:'
conv1d_5_13680001:
conv1d_5_13680003:,
batch_normalization_5_13680006:,
batch_normalization_5_13680008:,
batch_normalization_5_13680010:,
batch_normalization_5_13680012:'
conv1d_6_13680015:
conv1d_6_13680017:,
batch_normalization_6_13680020:,
batch_normalization_6_13680022:,
batch_normalization_6_13680024:,
batch_normalization_6_13680026:'
conv1d_7_13680029:
conv1d_7_13680031:,
batch_normalization_7_13680034:,
batch_normalization_7_13680036:,
batch_normalization_7_13680038:,
batch_normalization_7_13680040:#
dense_11_13680044: 
dense_11_13680046: #
dense_12_13680055: T
dense_12_13680057:T
identityИҐ-batch_normalization_4/StatefulPartitionedCallҐ-batch_normalization_5/StatefulPartitionedCallҐ-batch_normalization_6/StatefulPartitionedCallҐ-batch_normalization_7/StatefulPartitionedCallҐ conv1d_4/StatefulPartitionedCallҐ conv1d_5/StatefulPartitionedCallҐ conv1d_6/StatefulPartitionedCallҐ conv1d_7/StatefulPartitionedCallҐ dense_11/StatefulPartitionedCallҐ dense_12/StatefulPartitionedCallљ
lambda_1/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lambda_1_layer_call_and_return_conditional_losses_13679985Х
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0conv1d_4_13679987conv1d_4_13679989*
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_4_layer_call_and_return_conditional_losses_13679803Х
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0batch_normalization_4_13679992batch_normalization_4_13679994batch_normalization_4_13679996batch_normalization_4_13679998*
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13679487™
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0conv1d_5_13680001conv1d_5_13680003*
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_5_layer_call_and_return_conditional_losses_13679834Х
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0batch_normalization_5_13680006batch_normalization_5_13680008batch_normalization_5_13680010batch_normalization_5_13680012*
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13679569™
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0conv1d_6_13680015conv1d_6_13680017*
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_6_layer_call_and_return_conditional_losses_13679865Х
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0batch_normalization_6_13680020batch_normalization_6_13680022batch_normalization_6_13680024batch_normalization_6_13680026*
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13679651™
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0conv1d_7_13680029conv1d_7_13680031*
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_7_layer_call_and_return_conditional_losses_13679896Х
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0batch_normalization_7_13680034batch_normalization_7_13680036batch_normalization_7_13680038batch_normalization_7_13680040*
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_7_layer_call_and_return_conditional_losses_13679733О
*global_average_pooling1d_2/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
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
GPU 2J 8В *a
f\RZ
X__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_13679767£
 dense_11/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_2/PartitionedCall:output:0dense_11_13680044dense_11_13680046*
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
F__inference_dense_11_layer_call_and_return_conditional_losses_13679923я
dropout_3/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
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
GPU 2J 8В *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_13680053Т
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_12_13680055dense_12_13680057*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_12_layer_call_and_return_conditional_losses_13679953г
reshape_4/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_reshape_4_layer_call_and_return_conditional_losses_13679972u
IdentityIdentity"reshape_4/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Ў
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall!^conv1d_6/StatefulPartitionedCall!^conv1d_7/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall:R N
+
_output_shapes
:€€€€€€€€€

_user_specified_nameInput
Љ
г
7__inference_Federated_CNN_F7_H12_layer_call_fn_13680667

inputs
unknown:
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

unknown_25: T

unknown_26:T
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
:€€€€€€€€€*6
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13680139s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
њ
b
F__inference_lambda_1_layer_call_and_return_conditional_losses_13679985

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
:€€€€€€€€€*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
а
”
8__inference_batch_normalization_5_layer_call_fn_13681263

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallП
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13679569|
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
С
≤
S__inference_batch_normalization_7_layer_call_and_return_conditional_losses_13679733

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
жI
Ч
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13680274

inputs'
conv1d_4_13680204:
conv1d_4_13680206:,
batch_normalization_4_13680209:,
batch_normalization_4_13680211:,
batch_normalization_4_13680213:,
batch_normalization_4_13680215:'
conv1d_5_13680218:
conv1d_5_13680220:,
batch_normalization_5_13680223:,
batch_normalization_5_13680225:,
batch_normalization_5_13680227:,
batch_normalization_5_13680229:'
conv1d_6_13680232:
conv1d_6_13680234:,
batch_normalization_6_13680237:,
batch_normalization_6_13680239:,
batch_normalization_6_13680241:,
batch_normalization_6_13680243:'
conv1d_7_13680246:
conv1d_7_13680248:,
batch_normalization_7_13680251:,
batch_normalization_7_13680253:,
batch_normalization_7_13680255:,
batch_normalization_7_13680257:#
dense_11_13680261: 
dense_11_13680263: #
dense_12_13680267: T
dense_12_13680269:T
identityИҐ-batch_normalization_4/StatefulPartitionedCallҐ-batch_normalization_5/StatefulPartitionedCallҐ-batch_normalization_6/StatefulPartitionedCallҐ-batch_normalization_7/StatefulPartitionedCallҐ conv1d_4/StatefulPartitionedCallҐ conv1d_5/StatefulPartitionedCallҐ conv1d_6/StatefulPartitionedCallҐ conv1d_7/StatefulPartitionedCallҐ dense_11/StatefulPartitionedCallҐ dense_12/StatefulPartitionedCallЊ
lambda_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lambda_1_layer_call_and_return_conditional_losses_13679985Х
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0conv1d_4_13680204conv1d_4_13680206*
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_4_layer_call_and_return_conditional_losses_13679803Х
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0batch_normalization_4_13680209batch_normalization_4_13680211batch_normalization_4_13680213batch_normalization_4_13680215*
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13679487™
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0conv1d_5_13680218conv1d_5_13680220*
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_5_layer_call_and_return_conditional_losses_13679834Х
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0batch_normalization_5_13680223batch_normalization_5_13680225batch_normalization_5_13680227batch_normalization_5_13680229*
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13679569™
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0conv1d_6_13680232conv1d_6_13680234*
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_6_layer_call_and_return_conditional_losses_13679865Х
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0batch_normalization_6_13680237batch_normalization_6_13680239batch_normalization_6_13680241batch_normalization_6_13680243*
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13679651™
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0conv1d_7_13680246conv1d_7_13680248*
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_7_layer_call_and_return_conditional_losses_13679896Х
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0batch_normalization_7_13680251batch_normalization_7_13680253batch_normalization_7_13680255batch_normalization_7_13680257*
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_7_layer_call_and_return_conditional_losses_13679733О
*global_average_pooling1d_2/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
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
GPU 2J 8В *a
f\RZ
X__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_13679767£
 dense_11/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_2/PartitionedCall:output:0dense_11_13680261dense_11_13680263*
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
F__inference_dense_11_layer_call_and_return_conditional_losses_13679923я
dropout_3/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
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
GPU 2J 8В *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_13680053Т
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_12_13680267dense_12_13680269*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_12_layer_call_and_return_conditional_losses_13679953г
reshape_4/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_reshape_4_layer_call_and_return_conditional_losses_13679972u
IdentityIdentity"reshape_4/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Ў
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall!^conv1d_6/StatefulPartitionedCall!^conv1d_7/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
€%
м
S__inference_batch_normalization_7_layer_call_and_return_conditional_losses_13679713

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
Б
—
&__inference_signature_wrapper_13680606	
input
unknown:
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

unknown_25: T

unknown_26:T
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
:€€€€€€€€€*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference__wrapped_model_13679432s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:€€€€€€€€€

_user_specified_nameInput
…
Х
F__inference_conv1d_4_layer_call_and_return_conditional_losses_13679803

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
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
:€€€€€€€€€Т
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
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
:ђ
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
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Р
t
X__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_13681538

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
€%
м
S__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13681297

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
ЖK
ї
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13680139

inputs'
conv1d_4_13680069:
conv1d_4_13680071:,
batch_normalization_4_13680074:,
batch_normalization_4_13680076:,
batch_normalization_4_13680078:,
batch_normalization_4_13680080:'
conv1d_5_13680083:
conv1d_5_13680085:,
batch_normalization_5_13680088:,
batch_normalization_5_13680090:,
batch_normalization_5_13680092:,
batch_normalization_5_13680094:'
conv1d_6_13680097:
conv1d_6_13680099:,
batch_normalization_6_13680102:,
batch_normalization_6_13680104:,
batch_normalization_6_13680106:,
batch_normalization_6_13680108:'
conv1d_7_13680111:
conv1d_7_13680113:,
batch_normalization_7_13680116:,
batch_normalization_7_13680118:,
batch_normalization_7_13680120:,
batch_normalization_7_13680122:#
dense_11_13680126: 
dense_11_13680128: #
dense_12_13680132: T
dense_12_13680134:T
identityИҐ-batch_normalization_4/StatefulPartitionedCallҐ-batch_normalization_5/StatefulPartitionedCallҐ-batch_normalization_6/StatefulPartitionedCallҐ-batch_normalization_7/StatefulPartitionedCallҐ conv1d_4/StatefulPartitionedCallҐ conv1d_5/StatefulPartitionedCallҐ conv1d_6/StatefulPartitionedCallҐ conv1d_7/StatefulPartitionedCallҐ dense_11/StatefulPartitionedCallҐ dense_12/StatefulPartitionedCallҐ!dropout_3/StatefulPartitionedCallЊ
lambda_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lambda_1_layer_call_and_return_conditional_losses_13679785Х
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0conv1d_4_13680069conv1d_4_13680071*
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_4_layer_call_and_return_conditional_losses_13679803У
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0batch_normalization_4_13680074batch_normalization_4_13680076batch_normalization_4_13680078batch_normalization_4_13680080*
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13679467™
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0conv1d_5_13680083conv1d_5_13680085*
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_5_layer_call_and_return_conditional_losses_13679834У
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0batch_normalization_5_13680088batch_normalization_5_13680090batch_normalization_5_13680092batch_normalization_5_13680094*
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13679549™
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0conv1d_6_13680097conv1d_6_13680099*
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_6_layer_call_and_return_conditional_losses_13679865У
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0batch_normalization_6_13680102batch_normalization_6_13680104batch_normalization_6_13680106batch_normalization_6_13680108*
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13679631™
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0conv1d_7_13680111conv1d_7_13680113*
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_7_layer_call_and_return_conditional_losses_13679896У
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0batch_normalization_7_13680116batch_normalization_7_13680118batch_normalization_7_13680120batch_normalization_7_13680122*
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_7_layer_call_and_return_conditional_losses_13679713О
*global_average_pooling1d_2/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
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
GPU 2J 8В *a
f\RZ
X__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_13679767£
 dense_11/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_2/PartitionedCall:output:0dense_11_13680126dense_11_13680128*
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
F__inference_dense_11_layer_call_and_return_conditional_losses_13679923п
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
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
GPU 2J 8В *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_13679941Ъ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_12_13680132dense_12_13680134*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_12_layer_call_and_return_conditional_losses_13679953г
reshape_4/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_reshape_4_layer_call_and_return_conditional_losses_13679972u
IdentityIdentity"reshape_4/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ь
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall!^conv1d_6/StatefulPartitionedCall!^conv1d_7/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Э

ч
F__inference_dense_11_layer_call_and_return_conditional_losses_13681558

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
£
H
,__inference_dropout_3_layer_call_fn_13681568

inputs
identity≤
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
GPU 2J 8В *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_13680053`
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
…
Х
F__inference_conv1d_7_layer_call_and_return_conditional_losses_13679896

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
а
”
8__inference_batch_normalization_6_layer_call_fn_13681368

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallП
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13679651|
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
€%
м
S__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13679549

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
Џ
Ь
+__inference_conv1d_6_layer_call_fn_13681326

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallя
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_6_layer_call_and_return_conditional_losses_13679865s
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
€%
м
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13681192

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
Ѕ
в
7__inference_Federated_CNN_F7_H12_layer_call_fn_13680333	
input
unknown:
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

unknown_25: T

unknown_26:T
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
:€€€€€€€€€*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13680274s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:€€€€€€€€€

_user_specified_nameInput
С
≤
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13681212

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
С
≤
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13679487

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
€%
м
S__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13681402

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
ё
”
8__inference_batch_normalization_4_layer_call_fn_13681145

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallН
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13679467|
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
є
в
7__inference_Federated_CNN_F7_H12_layer_call_fn_13680198	
input
unknown:
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

unknown_25: T

unknown_26:T
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
:€€€€€€€€€*6
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13680139s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:€€€€€€€€€

_user_specified_nameInput
…
Х
F__inference_conv1d_5_layer_call_and_return_conditional_losses_13679834

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
Џ
Ь
+__inference_conv1d_5_layer_call_fn_13681221

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallя
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_5_layer_call_and_return_conditional_losses_13679834s
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
С
≤
S__inference_batch_normalization_7_layer_call_and_return_conditional_losses_13681527

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
Џ
Ь
+__inference_conv1d_7_layer_call_fn_13681431

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallя
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_7_layer_call_and_return_conditional_losses_13679896s
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
Џ
Ь
+__inference_conv1d_4_layer_call_fn_13681116

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallя
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
GPU 2J 8В *O
fJRH
F__inference_conv1d_4_layer_call_and_return_conditional_losses_13679803s
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
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
С
≤
S__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13681422

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
Ђ
H
,__inference_reshape_4_layer_call_fn_13681609

inputs
identityґ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_reshape_4_layer_call_and_return_conditional_losses_13679972d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€T:O K
'
_output_shapes
:€€€€€€€€€T
 
_user_specified_nameinputs
…
Х
F__inference_conv1d_6_layer_call_and_return_conditional_losses_13681342

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
…	
ч
F__inference_dense_12_layer_call_and_return_conditional_losses_13681604

inputs0
matmul_readvariableop_resource: T-
biasadd_readvariableop_resource:T
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: T*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Tr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€T_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Tw
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
Р
t
X__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_13679767

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
Ь”
л
!__inference__traced_save_13681813
file_prefix<
&read_disablecopyonread_conv1d_4_kernel:4
&read_1_disablecopyonread_conv1d_4_bias:B
4read_2_disablecopyonread_batch_normalization_4_gamma:A
3read_3_disablecopyonread_batch_normalization_4_beta:H
:read_4_disablecopyonread_batch_normalization_4_moving_mean:L
>read_5_disablecopyonread_batch_normalization_4_moving_variance:>
(read_6_disablecopyonread_conv1d_5_kernel:4
&read_7_disablecopyonread_conv1d_5_bias:B
4read_8_disablecopyonread_batch_normalization_5_gamma:A
3read_9_disablecopyonread_batch_normalization_5_beta:I
;read_10_disablecopyonread_batch_normalization_5_moving_mean:M
?read_11_disablecopyonread_batch_normalization_5_moving_variance:?
)read_12_disablecopyonread_conv1d_6_kernel:5
'read_13_disablecopyonread_conv1d_6_bias:C
5read_14_disablecopyonread_batch_normalization_6_gamma:B
4read_15_disablecopyonread_batch_normalization_6_beta:I
;read_16_disablecopyonread_batch_normalization_6_moving_mean:M
?read_17_disablecopyonread_batch_normalization_6_moving_variance:?
)read_18_disablecopyonread_conv1d_7_kernel:5
'read_19_disablecopyonread_conv1d_7_bias:C
5read_20_disablecopyonread_batch_normalization_7_gamma:B
4read_21_disablecopyonread_batch_normalization_7_beta:I
;read_22_disablecopyonread_batch_normalization_7_moving_mean:M
?read_23_disablecopyonread_batch_normalization_7_moving_variance:;
)read_24_disablecopyonread_dense_11_kernel: 5
'read_25_disablecopyonread_dense_11_bias: ;
)read_26_disablecopyonread_dense_12_kernel: T5
'read_27_disablecopyonread_dense_12_bias:T
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
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_conv1d_4_kernel"/device:CPU:0*
_output_shapes
 ¶
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_conv1d_4_kernel^Read/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0m
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:e

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*"
_output_shapes
:z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_conv1d_4_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_conv1d_4_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
:И
Read_2/DisableCopyOnReadDisableCopyOnRead4read_2_disablecopyonread_batch_normalization_4_gamma"/device:CPU:0*
_output_shapes
 ∞
Read_2/ReadVariableOpReadVariableOp4read_2_disablecopyonread_batch_normalization_4_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
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
:З
Read_3/DisableCopyOnReadDisableCopyOnRead3read_3_disablecopyonread_batch_normalization_4_beta"/device:CPU:0*
_output_shapes
 ѓ
Read_3/ReadVariableOpReadVariableOp3read_3_disablecopyonread_batch_normalization_4_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
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
:О
Read_4/DisableCopyOnReadDisableCopyOnRead:read_4_disablecopyonread_batch_normalization_4_moving_mean"/device:CPU:0*
_output_shapes
 ґ
Read_4/ReadVariableOpReadVariableOp:read_4_disablecopyonread_batch_normalization_4_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
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
:Т
Read_5/DisableCopyOnReadDisableCopyOnRead>read_5_disablecopyonread_batch_normalization_4_moving_variance"/device:CPU:0*
_output_shapes
 Ї
Read_5/ReadVariableOpReadVariableOp>read_5_disablecopyonread_batch_normalization_4_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
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
:|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv1d_5_kernel"/device:CPU:0*
_output_shapes
 ђ
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv1d_5_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*"
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
:z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv1d_5_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv1d_5_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
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
:И
Read_8/DisableCopyOnReadDisableCopyOnRead4read_8_disablecopyonread_batch_normalization_5_gamma"/device:CPU:0*
_output_shapes
 ∞
Read_8/ReadVariableOpReadVariableOp4read_8_disablecopyonread_batch_normalization_5_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
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
:З
Read_9/DisableCopyOnReadDisableCopyOnRead3read_9_disablecopyonread_batch_normalization_5_beta"/device:CPU:0*
_output_shapes
 ѓ
Read_9/ReadVariableOpReadVariableOp3read_9_disablecopyonread_batch_normalization_5_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
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
:Р
Read_10/DisableCopyOnReadDisableCopyOnRead;read_10_disablecopyonread_batch_normalization_5_moving_mean"/device:CPU:0*
_output_shapes
 є
Read_10/ReadVariableOpReadVariableOp;read_10_disablecopyonread_batch_normalization_5_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
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
:Ф
Read_11/DisableCopyOnReadDisableCopyOnRead?read_11_disablecopyonread_batch_normalization_5_moving_variance"/device:CPU:0*
_output_shapes
 љ
Read_11/ReadVariableOpReadVariableOp?read_11_disablecopyonread_batch_normalization_5_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
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
:~
Read_12/DisableCopyOnReadDisableCopyOnRead)read_12_disablecopyonread_conv1d_6_kernel"/device:CPU:0*
_output_shapes
 ѓ
Read_12/ReadVariableOpReadVariableOp)read_12_disablecopyonread_conv1d_6_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*"
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
:|
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_conv1d_6_bias"/device:CPU:0*
_output_shapes
 •
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_conv1d_6_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
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
:К
Read_14/DisableCopyOnReadDisableCopyOnRead5read_14_disablecopyonread_batch_normalization_6_gamma"/device:CPU:0*
_output_shapes
 ≥
Read_14/ReadVariableOpReadVariableOp5read_14_disablecopyonread_batch_normalization_6_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
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
:Й
Read_15/DisableCopyOnReadDisableCopyOnRead4read_15_disablecopyonread_batch_normalization_6_beta"/device:CPU:0*
_output_shapes
 ≤
Read_15/ReadVariableOpReadVariableOp4read_15_disablecopyonread_batch_normalization_6_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
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
:Р
Read_16/DisableCopyOnReadDisableCopyOnRead;read_16_disablecopyonread_batch_normalization_6_moving_mean"/device:CPU:0*
_output_shapes
 є
Read_16/ReadVariableOpReadVariableOp;read_16_disablecopyonread_batch_normalization_6_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
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
:Ф
Read_17/DisableCopyOnReadDisableCopyOnRead?read_17_disablecopyonread_batch_normalization_6_moving_variance"/device:CPU:0*
_output_shapes
 љ
Read_17/ReadVariableOpReadVariableOp?read_17_disablecopyonread_batch_normalization_6_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
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
:~
Read_18/DisableCopyOnReadDisableCopyOnRead)read_18_disablecopyonread_conv1d_7_kernel"/device:CPU:0*
_output_shapes
 ѓ
Read_18/ReadVariableOpReadVariableOp)read_18_disablecopyonread_conv1d_7_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*"
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
:|
Read_19/DisableCopyOnReadDisableCopyOnRead'read_19_disablecopyonread_conv1d_7_bias"/device:CPU:0*
_output_shapes
 •
Read_19/ReadVariableOpReadVariableOp'read_19_disablecopyonread_conv1d_7_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
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
:К
Read_20/DisableCopyOnReadDisableCopyOnRead5read_20_disablecopyonread_batch_normalization_7_gamma"/device:CPU:0*
_output_shapes
 ≥
Read_20/ReadVariableOpReadVariableOp5read_20_disablecopyonread_batch_normalization_7_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
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
:Й
Read_21/DisableCopyOnReadDisableCopyOnRead4read_21_disablecopyonread_batch_normalization_7_beta"/device:CPU:0*
_output_shapes
 ≤
Read_21/ReadVariableOpReadVariableOp4read_21_disablecopyonread_batch_normalization_7_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
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
:Р
Read_22/DisableCopyOnReadDisableCopyOnRead;read_22_disablecopyonread_batch_normalization_7_moving_mean"/device:CPU:0*
_output_shapes
 є
Read_22/ReadVariableOpReadVariableOp;read_22_disablecopyonread_batch_normalization_7_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
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
:Ф
Read_23/DisableCopyOnReadDisableCopyOnRead?read_23_disablecopyonread_batch_normalization_7_moving_variance"/device:CPU:0*
_output_shapes
 љ
Read_23/ReadVariableOpReadVariableOp?read_23_disablecopyonread_batch_normalization_7_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
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
Read_24/DisableCopyOnReadDisableCopyOnRead)read_24_disablecopyonread_dense_11_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read_24/ReadVariableOpReadVariableOp)read_24_disablecopyonread_dense_11_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
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
Read_25/DisableCopyOnReadDisableCopyOnRead'read_25_disablecopyonread_dense_11_bias"/device:CPU:0*
_output_shapes
 •
Read_25/ReadVariableOpReadVariableOp'read_25_disablecopyonread_dense_11_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
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
Read_26/DisableCopyOnReadDisableCopyOnRead)read_26_disablecopyonread_dense_12_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read_26/ReadVariableOpReadVariableOp)read_26_disablecopyonread_dense_12_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: T*
dtype0o
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: Te
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes

: T|
Read_27/DisableCopyOnReadDisableCopyOnRead'read_27_disablecopyonread_dense_12_bias"/device:CPU:0*
_output_shapes
 •
Read_27/ReadVariableOpReadVariableOp'read_27_disablecopyonread_dense_12_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:T*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Ta
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:T 
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
С
≤
S__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13681317

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
±
G
+__inference_lambda_1_layer_call_fn_13681086

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
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lambda_1_layer_call_and_return_conditional_losses_13679785d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
С
≤
S__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13679651

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
з

c
G__inference_reshape_4_layer_call_and_return_conditional_losses_13681622

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
value	B :П
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€T:O K
'
_output_shapes
:€€€€€€€€€T
 
_user_specified_nameinputs
ё
”
8__inference_batch_normalization_5_layer_call_fn_13681250

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallН
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13679549|
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
…
Х
F__inference_conv1d_7_layer_call_and_return_conditional_losses_13681447

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
€%
м
S__inference_batch_normalization_7_layer_call_and_return_conditional_losses_13681507

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
F__inference_lambda_1_layer_call_and_return_conditional_losses_13681107

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
:€€€€€€€€€*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
а
”
8__inference_batch_normalization_4_layer_call_fn_13681158

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallП
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13679487|
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
ƒ
г
7__inference_Federated_CNN_F7_H12_layer_call_fn_13680728

inputs
unknown:
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

unknown_25: T

unknown_26:T
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
:€€€€€€€€€*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13680274s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
±
G
+__inference_lambda_1_layer_call_fn_13681091

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
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lambda_1_layer_call_and_return_conditional_losses_13679985d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ґ{
«
$__inference__traced_restore_13681907
file_prefix6
 assignvariableop_conv1d_4_kernel:.
 assignvariableop_1_conv1d_4_bias:<
.assignvariableop_2_batch_normalization_4_gamma:;
-assignvariableop_3_batch_normalization_4_beta:B
4assignvariableop_4_batch_normalization_4_moving_mean:F
8assignvariableop_5_batch_normalization_4_moving_variance:8
"assignvariableop_6_conv1d_5_kernel:.
 assignvariableop_7_conv1d_5_bias:<
.assignvariableop_8_batch_normalization_5_gamma:;
-assignvariableop_9_batch_normalization_5_beta:C
5assignvariableop_10_batch_normalization_5_moving_mean:G
9assignvariableop_11_batch_normalization_5_moving_variance:9
#assignvariableop_12_conv1d_6_kernel:/
!assignvariableop_13_conv1d_6_bias:=
/assignvariableop_14_batch_normalization_6_gamma:<
.assignvariableop_15_batch_normalization_6_beta:C
5assignvariableop_16_batch_normalization_6_moving_mean:G
9assignvariableop_17_batch_normalization_6_moving_variance:9
#assignvariableop_18_conv1d_7_kernel:/
!assignvariableop_19_conv1d_7_bias:=
/assignvariableop_20_batch_normalization_7_gamma:<
.assignvariableop_21_batch_normalization_7_beta:C
5assignvariableop_22_batch_normalization_7_moving_mean:G
9assignvariableop_23_batch_normalization_7_moving_variance:5
#assignvariableop_24_dense_11_kernel: /
!assignvariableop_25_dense_11_bias: 5
#assignvariableop_26_dense_12_kernel: T/
!assignvariableop_27_dense_12_bias:T
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
:≥
AssignVariableOpAssignVariableOp assignvariableop_conv1d_4_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_4_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_4_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_4_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_4_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_4_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv1d_5_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv1d_5_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_5_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_5_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_5_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_5_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv1d_6_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv1d_6_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_14AssignVariableOp/assignvariableop_14_batch_normalization_6_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_15AssignVariableOp.assignvariableop_15_batch_normalization_6_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_16AssignVariableOp5assignvariableop_16_batch_normalization_6_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_17AssignVariableOp9assignvariableop_17_batch_normalization_6_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_18AssignVariableOp#assignvariableop_18_conv1d_7_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_19AssignVariableOp!assignvariableop_19_conv1d_7_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_20AssignVariableOp/assignvariableop_20_batch_normalization_7_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_21AssignVariableOp.assignvariableop_21_batch_normalization_7_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_22AssignVariableOp5assignvariableop_22_batch_normalization_7_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_23AssignVariableOp9assignvariableop_23_batch_normalization_7_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_11_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_11_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_26AssignVariableOp#assignvariableop_26_dense_12_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_27AssignVariableOp!assignvariableop_27_dense_12_biasIdentity_27:output:0"/device:CPU:0*&
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
ё
”
8__inference_batch_normalization_7_layer_call_fn_13681460

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallН
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
GPU 2J 8В *\
fWRU
S__inference_batch_normalization_7_layer_call_and_return_conditional_losses_13679713|
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
ШЕ
’"
#__inference__wrapped_model_13679432	
input_
Ifederated_cnn_f7_h12_conv1d_4_conv1d_expanddims_1_readvariableop_resource:K
=federated_cnn_f7_h12_conv1d_4_biasadd_readvariableop_resource:Z
Lfederated_cnn_f7_h12_batch_normalization_4_batchnorm_readvariableop_resource:^
Pfederated_cnn_f7_h12_batch_normalization_4_batchnorm_mul_readvariableop_resource:\
Nfederated_cnn_f7_h12_batch_normalization_4_batchnorm_readvariableop_1_resource:\
Nfederated_cnn_f7_h12_batch_normalization_4_batchnorm_readvariableop_2_resource:_
Ifederated_cnn_f7_h12_conv1d_5_conv1d_expanddims_1_readvariableop_resource:K
=federated_cnn_f7_h12_conv1d_5_biasadd_readvariableop_resource:Z
Lfederated_cnn_f7_h12_batch_normalization_5_batchnorm_readvariableop_resource:^
Pfederated_cnn_f7_h12_batch_normalization_5_batchnorm_mul_readvariableop_resource:\
Nfederated_cnn_f7_h12_batch_normalization_5_batchnorm_readvariableop_1_resource:\
Nfederated_cnn_f7_h12_batch_normalization_5_batchnorm_readvariableop_2_resource:_
Ifederated_cnn_f7_h12_conv1d_6_conv1d_expanddims_1_readvariableop_resource:K
=federated_cnn_f7_h12_conv1d_6_biasadd_readvariableop_resource:Z
Lfederated_cnn_f7_h12_batch_normalization_6_batchnorm_readvariableop_resource:^
Pfederated_cnn_f7_h12_batch_normalization_6_batchnorm_mul_readvariableop_resource:\
Nfederated_cnn_f7_h12_batch_normalization_6_batchnorm_readvariableop_1_resource:\
Nfederated_cnn_f7_h12_batch_normalization_6_batchnorm_readvariableop_2_resource:_
Ifederated_cnn_f7_h12_conv1d_7_conv1d_expanddims_1_readvariableop_resource:K
=federated_cnn_f7_h12_conv1d_7_biasadd_readvariableop_resource:Z
Lfederated_cnn_f7_h12_batch_normalization_7_batchnorm_readvariableop_resource:^
Pfederated_cnn_f7_h12_batch_normalization_7_batchnorm_mul_readvariableop_resource:\
Nfederated_cnn_f7_h12_batch_normalization_7_batchnorm_readvariableop_1_resource:\
Nfederated_cnn_f7_h12_batch_normalization_7_batchnorm_readvariableop_2_resource:N
<federated_cnn_f7_h12_dense_11_matmul_readvariableop_resource: K
=federated_cnn_f7_h12_dense_11_biasadd_readvariableop_resource: N
<federated_cnn_f7_h12_dense_12_matmul_readvariableop_resource: TK
=federated_cnn_f7_h12_dense_12_biasadd_readvariableop_resource:T
identityИҐCFederated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOpҐEFederated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOp_1ҐEFederated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOp_2ҐGFederated_CNN_F7_H12/batch_normalization_4/batchnorm/mul/ReadVariableOpҐCFederated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOpҐEFederated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOp_1ҐEFederated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOp_2ҐGFederated_CNN_F7_H12/batch_normalization_5/batchnorm/mul/ReadVariableOpҐCFederated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOpҐEFederated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOp_1ҐEFederated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOp_2ҐGFederated_CNN_F7_H12/batch_normalization_6/batchnorm/mul/ReadVariableOpҐCFederated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOpҐEFederated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOp_1ҐEFederated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOp_2ҐGFederated_CNN_F7_H12/batch_normalization_7/batchnorm/mul/ReadVariableOpҐ4Federated_CNN_F7_H12/conv1d_4/BiasAdd/ReadVariableOpҐ@Federated_CNN_F7_H12/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOpҐ4Federated_CNN_F7_H12/conv1d_5/BiasAdd/ReadVariableOpҐ@Federated_CNN_F7_H12/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOpҐ4Federated_CNN_F7_H12/conv1d_6/BiasAdd/ReadVariableOpҐ@Federated_CNN_F7_H12/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOpҐ4Federated_CNN_F7_H12/conv1d_7/BiasAdd/ReadVariableOpҐ@Federated_CNN_F7_H12/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpҐ4Federated_CNN_F7_H12/dense_11/BiasAdd/ReadVariableOpҐ3Federated_CNN_F7_H12/dense_11/MatMul/ReadVariableOpҐ4Federated_CNN_F7_H12/dense_12/BiasAdd/ReadVariableOpҐ3Federated_CNN_F7_H12/dense_12/MatMul/ReadVariableOpЖ
1Federated_CNN_F7_H12/lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    э€€€    И
3Federated_CNN_F7_H12/lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            И
3Federated_CNN_F7_H12/lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         я
+Federated_CNN_F7_H12/lambda_1/strided_sliceStridedSliceinput:Federated_CNN_F7_H12/lambda_1/strided_slice/stack:output:0<Federated_CNN_F7_H12/lambda_1/strided_slice/stack_1:output:0<Federated_CNN_F7_H12/lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask~
3Federated_CNN_F7_H12/conv1d_4/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€л
/Federated_CNN_F7_H12/conv1d_4/Conv1D/ExpandDims
ExpandDims4Federated_CNN_F7_H12/lambda_1/strided_slice:output:0<Federated_CNN_F7_H12/conv1d_4/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€ќ
@Federated_CNN_F7_H12/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpIfederated_cnn_f7_h12_conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0w
5Federated_CNN_F7_H12/conv1d_4/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ъ
1Federated_CNN_F7_H12/conv1d_4/Conv1D/ExpandDims_1
ExpandDimsHFederated_CNN_F7_H12/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp:value:0>Federated_CNN_F7_H12/conv1d_4/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ж
$Federated_CNN_F7_H12/conv1d_4/Conv1DConv2D8Federated_CNN_F7_H12/conv1d_4/Conv1D/ExpandDims:output:0:Federated_CNN_F7_H12/conv1d_4/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Љ
,Federated_CNN_F7_H12/conv1d_4/Conv1D/SqueezeSqueeze-Federated_CNN_F7_H12/conv1d_4/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Ѓ
4Federated_CNN_F7_H12/conv1d_4/BiasAdd/ReadVariableOpReadVariableOp=federated_cnn_f7_h12_conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0џ
%Federated_CNN_F7_H12/conv1d_4/BiasAddBiasAdd5Federated_CNN_F7_H12/conv1d_4/Conv1D/Squeeze:output:0<Federated_CNN_F7_H12/conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€Р
"Federated_CNN_F7_H12/conv1d_4/ReluRelu.Federated_CNN_F7_H12/conv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ћ
CFederated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpLfederated_cnn_f7_h12_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
:Federated_CNN_F7_H12/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ш
8Federated_CNN_F7_H12/batch_normalization_4/batchnorm/addAddV2KFederated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOp:value:0CFederated_CNN_F7_H12/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:¶
:Federated_CNN_F7_H12/batch_normalization_4/batchnorm/RsqrtRsqrt<Federated_CNN_F7_H12/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:‘
GFederated_CNN_F7_H12/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpPfederated_cnn_f7_h12_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0х
8Federated_CNN_F7_H12/batch_normalization_4/batchnorm/mulMul>Federated_CNN_F7_H12/batch_normalization_4/batchnorm/Rsqrt:y:0OFederated_CNN_F7_H12/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:з
:Federated_CNN_F7_H12/batch_normalization_4/batchnorm/mul_1Mul0Federated_CNN_F7_H12/conv1d_4/Relu:activations:0<Federated_CNN_F7_H12/batch_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€–
EFederated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOpNfederated_cnn_f7_h12_batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0у
:Federated_CNN_F7_H12/batch_normalization_4/batchnorm/mul_2MulMFederated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOp_1:value:0<Federated_CNN_F7_H12/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:–
EFederated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOpNfederated_cnn_f7_h12_batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0у
8Federated_CNN_F7_H12/batch_normalization_4/batchnorm/subSubMFederated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOp_2:value:0>Federated_CNN_F7_H12/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ч
:Federated_CNN_F7_H12/batch_normalization_4/batchnorm/add_1AddV2>Federated_CNN_F7_H12/batch_normalization_4/batchnorm/mul_1:z:0<Federated_CNN_F7_H12/batch_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€~
3Federated_CNN_F7_H12/conv1d_5/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€х
/Federated_CNN_F7_H12/conv1d_5/Conv1D/ExpandDims
ExpandDims>Federated_CNN_F7_H12/batch_normalization_4/batchnorm/add_1:z:0<Federated_CNN_F7_H12/conv1d_5/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€ќ
@Federated_CNN_F7_H12/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpIfederated_cnn_f7_h12_conv1d_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0w
5Federated_CNN_F7_H12/conv1d_5/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ъ
1Federated_CNN_F7_H12/conv1d_5/Conv1D/ExpandDims_1
ExpandDimsHFederated_CNN_F7_H12/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp:value:0>Federated_CNN_F7_H12/conv1d_5/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ж
$Federated_CNN_F7_H12/conv1d_5/Conv1DConv2D8Federated_CNN_F7_H12/conv1d_5/Conv1D/ExpandDims:output:0:Federated_CNN_F7_H12/conv1d_5/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Љ
,Federated_CNN_F7_H12/conv1d_5/Conv1D/SqueezeSqueeze-Federated_CNN_F7_H12/conv1d_5/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Ѓ
4Federated_CNN_F7_H12/conv1d_5/BiasAdd/ReadVariableOpReadVariableOp=federated_cnn_f7_h12_conv1d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0џ
%Federated_CNN_F7_H12/conv1d_5/BiasAddBiasAdd5Federated_CNN_F7_H12/conv1d_5/Conv1D/Squeeze:output:0<Federated_CNN_F7_H12/conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€Р
"Federated_CNN_F7_H12/conv1d_5/ReluRelu.Federated_CNN_F7_H12/conv1d_5/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ћ
CFederated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpLfederated_cnn_f7_h12_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
:Federated_CNN_F7_H12/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ш
8Federated_CNN_F7_H12/batch_normalization_5/batchnorm/addAddV2KFederated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOp:value:0CFederated_CNN_F7_H12/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:¶
:Federated_CNN_F7_H12/batch_normalization_5/batchnorm/RsqrtRsqrt<Federated_CNN_F7_H12/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:‘
GFederated_CNN_F7_H12/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpPfederated_cnn_f7_h12_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0х
8Federated_CNN_F7_H12/batch_normalization_5/batchnorm/mulMul>Federated_CNN_F7_H12/batch_normalization_5/batchnorm/Rsqrt:y:0OFederated_CNN_F7_H12/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:з
:Federated_CNN_F7_H12/batch_normalization_5/batchnorm/mul_1Mul0Federated_CNN_F7_H12/conv1d_5/Relu:activations:0<Federated_CNN_F7_H12/batch_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€–
EFederated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpNfederated_cnn_f7_h12_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0у
:Federated_CNN_F7_H12/batch_normalization_5/batchnorm/mul_2MulMFederated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOp_1:value:0<Federated_CNN_F7_H12/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:–
EFederated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpNfederated_cnn_f7_h12_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0у
8Federated_CNN_F7_H12/batch_normalization_5/batchnorm/subSubMFederated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOp_2:value:0>Federated_CNN_F7_H12/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ч
:Federated_CNN_F7_H12/batch_normalization_5/batchnorm/add_1AddV2>Federated_CNN_F7_H12/batch_normalization_5/batchnorm/mul_1:z:0<Federated_CNN_F7_H12/batch_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€~
3Federated_CNN_F7_H12/conv1d_6/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€х
/Federated_CNN_F7_H12/conv1d_6/Conv1D/ExpandDims
ExpandDims>Federated_CNN_F7_H12/batch_normalization_5/batchnorm/add_1:z:0<Federated_CNN_F7_H12/conv1d_6/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€ќ
@Federated_CNN_F7_H12/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpIfederated_cnn_f7_h12_conv1d_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0w
5Federated_CNN_F7_H12/conv1d_6/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ъ
1Federated_CNN_F7_H12/conv1d_6/Conv1D/ExpandDims_1
ExpandDimsHFederated_CNN_F7_H12/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp:value:0>Federated_CNN_F7_H12/conv1d_6/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ж
$Federated_CNN_F7_H12/conv1d_6/Conv1DConv2D8Federated_CNN_F7_H12/conv1d_6/Conv1D/ExpandDims:output:0:Federated_CNN_F7_H12/conv1d_6/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Љ
,Federated_CNN_F7_H12/conv1d_6/Conv1D/SqueezeSqueeze-Federated_CNN_F7_H12/conv1d_6/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Ѓ
4Federated_CNN_F7_H12/conv1d_6/BiasAdd/ReadVariableOpReadVariableOp=federated_cnn_f7_h12_conv1d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0џ
%Federated_CNN_F7_H12/conv1d_6/BiasAddBiasAdd5Federated_CNN_F7_H12/conv1d_6/Conv1D/Squeeze:output:0<Federated_CNN_F7_H12/conv1d_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€Р
"Federated_CNN_F7_H12/conv1d_6/ReluRelu.Federated_CNN_F7_H12/conv1d_6/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ћ
CFederated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOpReadVariableOpLfederated_cnn_f7_h12_batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
:Federated_CNN_F7_H12/batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ш
8Federated_CNN_F7_H12/batch_normalization_6/batchnorm/addAddV2KFederated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOp:value:0CFederated_CNN_F7_H12/batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes
:¶
:Federated_CNN_F7_H12/batch_normalization_6/batchnorm/RsqrtRsqrt<Federated_CNN_F7_H12/batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes
:‘
GFederated_CNN_F7_H12/batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpPfederated_cnn_f7_h12_batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0х
8Federated_CNN_F7_H12/batch_normalization_6/batchnorm/mulMul>Federated_CNN_F7_H12/batch_normalization_6/batchnorm/Rsqrt:y:0OFederated_CNN_F7_H12/batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:з
:Federated_CNN_F7_H12/batch_normalization_6/batchnorm/mul_1Mul0Federated_CNN_F7_H12/conv1d_6/Relu:activations:0<Federated_CNN_F7_H12/batch_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€–
EFederated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOpNfederated_cnn_f7_h12_batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0у
:Federated_CNN_F7_H12/batch_normalization_6/batchnorm/mul_2MulMFederated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOp_1:value:0<Federated_CNN_F7_H12/batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes
:–
EFederated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOpNfederated_cnn_f7_h12_batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0у
8Federated_CNN_F7_H12/batch_normalization_6/batchnorm/subSubMFederated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOp_2:value:0>Federated_CNN_F7_H12/batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ч
:Federated_CNN_F7_H12/batch_normalization_6/batchnorm/add_1AddV2>Federated_CNN_F7_H12/batch_normalization_6/batchnorm/mul_1:z:0<Federated_CNN_F7_H12/batch_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€~
3Federated_CNN_F7_H12/conv1d_7/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€х
/Federated_CNN_F7_H12/conv1d_7/Conv1D/ExpandDims
ExpandDims>Federated_CNN_F7_H12/batch_normalization_6/batchnorm/add_1:z:0<Federated_CNN_F7_H12/conv1d_7/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€ќ
@Federated_CNN_F7_H12/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpIfederated_cnn_f7_h12_conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0w
5Federated_CNN_F7_H12/conv1d_7/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ъ
1Federated_CNN_F7_H12/conv1d_7/Conv1D/ExpandDims_1
ExpandDimsHFederated_CNN_F7_H12/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp:value:0>Federated_CNN_F7_H12/conv1d_7/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ж
$Federated_CNN_F7_H12/conv1d_7/Conv1DConv2D8Federated_CNN_F7_H12/conv1d_7/Conv1D/ExpandDims:output:0:Federated_CNN_F7_H12/conv1d_7/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
Љ
,Federated_CNN_F7_H12/conv1d_7/Conv1D/SqueezeSqueeze-Federated_CNN_F7_H12/conv1d_7/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€Ѓ
4Federated_CNN_F7_H12/conv1d_7/BiasAdd/ReadVariableOpReadVariableOp=federated_cnn_f7_h12_conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0џ
%Federated_CNN_F7_H12/conv1d_7/BiasAddBiasAdd5Federated_CNN_F7_H12/conv1d_7/Conv1D/Squeeze:output:0<Federated_CNN_F7_H12/conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€Р
"Federated_CNN_F7_H12/conv1d_7/ReluRelu.Federated_CNN_F7_H12/conv1d_7/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ћ
CFederated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOpReadVariableOpLfederated_cnn_f7_h12_batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
:Federated_CNN_F7_H12/batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ш
8Federated_CNN_F7_H12/batch_normalization_7/batchnorm/addAddV2KFederated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOp:value:0CFederated_CNN_F7_H12/batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes
:¶
:Federated_CNN_F7_H12/batch_normalization_7/batchnorm/RsqrtRsqrt<Federated_CNN_F7_H12/batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes
:‘
GFederated_CNN_F7_H12/batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpPfederated_cnn_f7_h12_batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0х
8Federated_CNN_F7_H12/batch_normalization_7/batchnorm/mulMul>Federated_CNN_F7_H12/batch_normalization_7/batchnorm/Rsqrt:y:0OFederated_CNN_F7_H12/batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:з
:Federated_CNN_F7_H12/batch_normalization_7/batchnorm/mul_1Mul0Federated_CNN_F7_H12/conv1d_7/Relu:activations:0<Federated_CNN_F7_H12/batch_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€–
EFederated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOpNfederated_cnn_f7_h12_batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0у
:Federated_CNN_F7_H12/batch_normalization_7/batchnorm/mul_2MulMFederated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOp_1:value:0<Federated_CNN_F7_H12/batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes
:–
EFederated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOpNfederated_cnn_f7_h12_batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0у
8Federated_CNN_F7_H12/batch_normalization_7/batchnorm/subSubMFederated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOp_2:value:0>Federated_CNN_F7_H12/batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ч
:Federated_CNN_F7_H12/batch_normalization_7/batchnorm/add_1AddV2>Federated_CNN_F7_H12/batch_normalization_7/batchnorm/mul_1:z:0<Federated_CNN_F7_H12/batch_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€И
FFederated_CNN_F7_H12/global_average_pooling1d_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :€
4Federated_CNN_F7_H12/global_average_pooling1d_2/MeanMean>Federated_CNN_F7_H12/batch_normalization_7/batchnorm/add_1:z:0OFederated_CNN_F7_H12/global_average_pooling1d_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€∞
3Federated_CNN_F7_H12/dense_11/MatMul/ReadVariableOpReadVariableOp<federated_cnn_f7_h12_dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype0№
$Federated_CNN_F7_H12/dense_11/MatMulMatMul=Federated_CNN_F7_H12/global_average_pooling1d_2/Mean:output:0;Federated_CNN_F7_H12/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ Ѓ
4Federated_CNN_F7_H12/dense_11/BiasAdd/ReadVariableOpReadVariableOp=federated_cnn_f7_h12_dense_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0–
%Federated_CNN_F7_H12/dense_11/BiasAddBiasAdd.Federated_CNN_F7_H12/dense_11/MatMul:product:0<Federated_CNN_F7_H12/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ М
"Federated_CNN_F7_H12/dense_11/ReluRelu.Federated_CNN_F7_H12/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Ч
'Federated_CNN_F7_H12/dropout_3/IdentityIdentity0Federated_CNN_F7_H12/dense_11/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ ∞
3Federated_CNN_F7_H12/dense_12/MatMul/ReadVariableOpReadVariableOp<federated_cnn_f7_h12_dense_12_matmul_readvariableop_resource*
_output_shapes

: T*
dtype0ѕ
$Federated_CNN_F7_H12/dense_12/MatMulMatMul0Federated_CNN_F7_H12/dropout_3/Identity:output:0;Federated_CNN_F7_H12/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€TЃ
4Federated_CNN_F7_H12/dense_12/BiasAdd/ReadVariableOpReadVariableOp=federated_cnn_f7_h12_dense_12_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0–
%Federated_CNN_F7_H12/dense_12/BiasAddBiasAdd.Federated_CNN_F7_H12/dense_12/MatMul:product:0<Federated_CNN_F7_H12/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€TР
$Federated_CNN_F7_H12/reshape_4/ShapeShape.Federated_CNN_F7_H12/dense_12/BiasAdd:output:0*
T0*
_output_shapes
::нѕ|
2Federated_CNN_F7_H12/reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4Federated_CNN_F7_H12/reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4Federated_CNN_F7_H12/reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
,Federated_CNN_F7_H12/reshape_4/strided_sliceStridedSlice-Federated_CNN_F7_H12/reshape_4/Shape:output:0;Federated_CNN_F7_H12/reshape_4/strided_slice/stack:output:0=Federated_CNN_F7_H12/reshape_4/strided_slice/stack_1:output:0=Federated_CNN_F7_H12/reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.Federated_CNN_F7_H12/reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :p
.Federated_CNN_F7_H12/reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Л
,Federated_CNN_F7_H12/reshape_4/Reshape/shapePack5Federated_CNN_F7_H12/reshape_4/strided_slice:output:07Federated_CNN_F7_H12/reshape_4/Reshape/shape/1:output:07Federated_CNN_F7_H12/reshape_4/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:ќ
&Federated_CNN_F7_H12/reshape_4/ReshapeReshape.Federated_CNN_F7_H12/dense_12/BiasAdd:output:05Federated_CNN_F7_H12/reshape_4/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€В
IdentityIdentity/Federated_CNN_F7_H12/reshape_4/Reshape:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€И
NoOpNoOpD^Federated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOpF^Federated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOp_1F^Federated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOp_2H^Federated_CNN_F7_H12/batch_normalization_4/batchnorm/mul/ReadVariableOpD^Federated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOpF^Federated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOp_1F^Federated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOp_2H^Federated_CNN_F7_H12/batch_normalization_5/batchnorm/mul/ReadVariableOpD^Federated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOpF^Federated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOp_1F^Federated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOp_2H^Federated_CNN_F7_H12/batch_normalization_6/batchnorm/mul/ReadVariableOpD^Federated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOpF^Federated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOp_1F^Federated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOp_2H^Federated_CNN_F7_H12/batch_normalization_7/batchnorm/mul/ReadVariableOp5^Federated_CNN_F7_H12/conv1d_4/BiasAdd/ReadVariableOpA^Federated_CNN_F7_H12/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp5^Federated_CNN_F7_H12/conv1d_5/BiasAdd/ReadVariableOpA^Federated_CNN_F7_H12/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp5^Federated_CNN_F7_H12/conv1d_6/BiasAdd/ReadVariableOpA^Federated_CNN_F7_H12/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp5^Federated_CNN_F7_H12/conv1d_7/BiasAdd/ReadVariableOpA^Federated_CNN_F7_H12/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp5^Federated_CNN_F7_H12/dense_11/BiasAdd/ReadVariableOp4^Federated_CNN_F7_H12/dense_11/MatMul/ReadVariableOp5^Federated_CNN_F7_H12/dense_12/BiasAdd/ReadVariableOp4^Federated_CNN_F7_H12/dense_12/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2О
EFederated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOp_1EFederated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOp_12О
EFederated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOp_2EFederated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOp_22К
CFederated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOpCFederated_CNN_F7_H12/batch_normalization_4/batchnorm/ReadVariableOp2Т
GFederated_CNN_F7_H12/batch_normalization_4/batchnorm/mul/ReadVariableOpGFederated_CNN_F7_H12/batch_normalization_4/batchnorm/mul/ReadVariableOp2О
EFederated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOp_1EFederated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOp_12О
EFederated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOp_2EFederated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOp_22К
CFederated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOpCFederated_CNN_F7_H12/batch_normalization_5/batchnorm/ReadVariableOp2Т
GFederated_CNN_F7_H12/batch_normalization_5/batchnorm/mul/ReadVariableOpGFederated_CNN_F7_H12/batch_normalization_5/batchnorm/mul/ReadVariableOp2О
EFederated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOp_1EFederated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOp_12О
EFederated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOp_2EFederated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOp_22К
CFederated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOpCFederated_CNN_F7_H12/batch_normalization_6/batchnorm/ReadVariableOp2Т
GFederated_CNN_F7_H12/batch_normalization_6/batchnorm/mul/ReadVariableOpGFederated_CNN_F7_H12/batch_normalization_6/batchnorm/mul/ReadVariableOp2О
EFederated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOp_1EFederated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOp_12О
EFederated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOp_2EFederated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOp_22К
CFederated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOpCFederated_CNN_F7_H12/batch_normalization_7/batchnorm/ReadVariableOp2Т
GFederated_CNN_F7_H12/batch_normalization_7/batchnorm/mul/ReadVariableOpGFederated_CNN_F7_H12/batch_normalization_7/batchnorm/mul/ReadVariableOp2l
4Federated_CNN_F7_H12/conv1d_4/BiasAdd/ReadVariableOp4Federated_CNN_F7_H12/conv1d_4/BiasAdd/ReadVariableOp2Д
@Federated_CNN_F7_H12/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp@Federated_CNN_F7_H12/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp2l
4Federated_CNN_F7_H12/conv1d_5/BiasAdd/ReadVariableOp4Federated_CNN_F7_H12/conv1d_5/BiasAdd/ReadVariableOp2Д
@Federated_CNN_F7_H12/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp@Federated_CNN_F7_H12/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp2l
4Federated_CNN_F7_H12/conv1d_6/BiasAdd/ReadVariableOp4Federated_CNN_F7_H12/conv1d_6/BiasAdd/ReadVariableOp2Д
@Federated_CNN_F7_H12/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp@Federated_CNN_F7_H12/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp2l
4Federated_CNN_F7_H12/conv1d_7/BiasAdd/ReadVariableOp4Federated_CNN_F7_H12/conv1d_7/BiasAdd/ReadVariableOp2Д
@Federated_CNN_F7_H12/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp@Federated_CNN_F7_H12/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp2l
4Federated_CNN_F7_H12/dense_11/BiasAdd/ReadVariableOp4Federated_CNN_F7_H12/dense_11/BiasAdd/ReadVariableOp2j
3Federated_CNN_F7_H12/dense_11/MatMul/ReadVariableOp3Federated_CNN_F7_H12/dense_11/MatMul/ReadVariableOp2l
4Federated_CNN_F7_H12/dense_12/BiasAdd/ReadVariableOp4Federated_CNN_F7_H12/dense_12/BiasAdd/ReadVariableOp2j
3Federated_CNN_F7_H12/dense_12/MatMul/ReadVariableOp3Federated_CNN_F7_H12/dense_12/MatMul/ReadVariableOp:R N
+
_output_shapes
:€€€€€€€€€

_user_specified_nameInput
€%
м
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13679467

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
F__inference_lambda_1_layer_call_and_return_conditional_losses_13679785

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
:€€€€€€€€€*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Џ
e
G__inference_dropout_3_layer_call_and_return_conditional_losses_13681585

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
х
e
,__inference_dropout_3_layer_call_fn_13681563

inputs
identityИҐStatefulPartitionedCall¬
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
GPU 2J 8В *P
fKRI
G__inference_dropout_3_layer_call_and_return_conditional_losses_13679941o
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
∆
Ш
+__inference_dense_11_layer_call_fn_13681547

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
F__inference_dense_11_layer_call_and_return_conditional_losses_13679923o
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
 
_user_specified_nameinputs"у
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*∞
serving_defaultЬ
;
Input2
serving_default_Input:0€€€€€€€€€A
	reshape_44
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:ер
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
7__inference_Federated_CNN_F7_H12_layer_call_fn_13680198
7__inference_Federated_CNN_F7_H12_layer_call_fn_13680333
7__inference_Federated_CNN_F7_H12_layer_call_fn_13680667
7__inference_Federated_CNN_F7_H12_layer_call_fn_13680728µ
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
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13679975
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13680062
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13680936
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13681081µ
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
#__inference__wrapped_model_13679432Input"Ш
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
+__inference_lambda_1_layer_call_fn_13681086
+__inference_lambda_1_layer_call_fn_13681091µ
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
F__inference_lambda_1_layer_call_and_return_conditional_losses_13681099
F__inference_lambda_1_layer_call_and_return_conditional_losses_13681107µ
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
з
≠trace_02»
+__inference_conv1d_4_layer_call_fn_13681116Ш
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
В
Ѓtrace_02г
F__inference_conv1d_4_layer_call_and_return_conditional_losses_13681132Ш
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
%:#2conv1d_4/kernel
:2conv1d_4/bias
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
з
іtrace_0
µtrace_12ђ
8__inference_batch_normalization_4_layer_call_fn_13681145
8__inference_batch_normalization_4_layer_call_fn_13681158µ
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
Э
ґtrace_0
Јtrace_12в
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13681192
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13681212µ
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
):'2batch_normalization_4/gamma
(:&2batch_normalization_4/beta
1:/ (2!batch_normalization_4/moving_mean
5:3 (2%batch_normalization_4/moving_variance
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
з
љtrace_02»
+__inference_conv1d_5_layer_call_fn_13681221Ш
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
В
Њtrace_02г
F__inference_conv1d_5_layer_call_and_return_conditional_losses_13681237Ш
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
%:#2conv1d_5/kernel
:2conv1d_5/bias
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
з
ƒtrace_0
≈trace_12ђ
8__inference_batch_normalization_5_layer_call_fn_13681250
8__inference_batch_normalization_5_layer_call_fn_13681263µ
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
Э
∆trace_0
«trace_12в
S__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13681297
S__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13681317µ
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
):'2batch_normalization_5/gamma
(:&2batch_normalization_5/beta
1:/ (2!batch_normalization_5/moving_mean
5:3 (2%batch_normalization_5/moving_variance
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
з
Ќtrace_02»
+__inference_conv1d_6_layer_call_fn_13681326Ш
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
В
ќtrace_02г
F__inference_conv1d_6_layer_call_and_return_conditional_losses_13681342Ш
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
%:#2conv1d_6/kernel
:2conv1d_6/bias
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
з
‘trace_0
’trace_12ђ
8__inference_batch_normalization_6_layer_call_fn_13681355
8__inference_batch_normalization_6_layer_call_fn_13681368µ
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
Э
÷trace_0
„trace_12в
S__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13681402
S__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13681422µ
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
):'2batch_normalization_6/gamma
(:&2batch_normalization_6/beta
1:/ (2!batch_normalization_6/moving_mean
5:3 (2%batch_normalization_6/moving_variance
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
з
Ёtrace_02»
+__inference_conv1d_7_layer_call_fn_13681431Ш
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
В
ёtrace_02г
F__inference_conv1d_7_layer_call_and_return_conditional_losses_13681447Ш
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
%:#2conv1d_7/kernel
:2conv1d_7/bias
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
з
дtrace_0
еtrace_12ђ
8__inference_batch_normalization_7_layer_call_fn_13681460
8__inference_batch_normalization_7_layer_call_fn_13681473µ
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
Э
жtrace_0
зtrace_12в
S__inference_batch_normalization_7_layer_call_and_return_conditional_losses_13681507
S__inference_batch_normalization_7_layer_call_and_return_conditional_losses_13681527µ
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
):'2batch_normalization_7/gamma
(:&2batch_normalization_7/beta
1:/ (2!batch_normalization_7/moving_mean
5:3 (2%batch_normalization_7/moving_variance
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
Ж
нtrace_02з
=__inference_global_average_pooling1d_2_layer_call_fn_13681532•
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
°
оtrace_02В
X__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_13681538•
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
+__inference_dense_11_layer_call_fn_13681547Ш
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
F__inference_dense_11_layer_call_and_return_conditional_losses_13681558Ш
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
!: 2dense_11/kernel
: 2dense_11/bias
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
√
ыtrace_0
ьtrace_12И
,__inference_dropout_3_layer_call_fn_13681563
,__inference_dropout_3_layer_call_fn_13681568©
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
щ
эtrace_0
юtrace_12Њ
G__inference_dropout_3_layer_call_and_return_conditional_losses_13681580
G__inference_dropout_3_layer_call_and_return_conditional_losses_13681585©
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
+__inference_dense_12_layer_call_fn_13681594Ш
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
F__inference_dense_12_layer_call_and_return_conditional_losses_13681604Ш
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
!: T2dense_12/kernel
:T2dense_12/bias
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
и
Лtrace_02…
,__inference_reshape_4_layer_call_fn_13681609Ш
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
Г
Мtrace_02д
G__inference_reshape_4_layer_call_and_return_conditional_losses_13681622Ш
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
7__inference_Federated_CNN_F7_H12_layer_call_fn_13680198Input"µ
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
7__inference_Federated_CNN_F7_H12_layer_call_fn_13680333Input"µ
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
7__inference_Federated_CNN_F7_H12_layer_call_fn_13680667inputs"µ
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
7__inference_Federated_CNN_F7_H12_layer_call_fn_13680728inputs"µ
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
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13679975Input"µ
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
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13680062Input"µ
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
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13680936inputs"µ
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
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13681081inputs"µ
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
&__inference_signature_wrapper_13680606Input"Ф
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
+__inference_lambda_1_layer_call_fn_13681086inputs"µ
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
+__inference_lambda_1_layer_call_fn_13681091inputs"µ
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
F__inference_lambda_1_layer_call_and_return_conditional_losses_13681099inputs"µ
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
F__inference_lambda_1_layer_call_and_return_conditional_losses_13681107inputs"µ
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
’B“
+__inference_conv1d_4_layer_call_fn_13681116inputs"Ш
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
F__inference_conv1d_4_layer_call_and_return_conditional_losses_13681132inputs"Ш
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
€Bь
8__inference_batch_normalization_4_layer_call_fn_13681145inputs"µ
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
€Bь
8__inference_batch_normalization_4_layer_call_fn_13681158inputs"µ
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
ЪBЧ
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13681192inputs"µ
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
ЪBЧ
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13681212inputs"µ
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
’B“
+__inference_conv1d_5_layer_call_fn_13681221inputs"Ш
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
F__inference_conv1d_5_layer_call_and_return_conditional_losses_13681237inputs"Ш
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
€Bь
8__inference_batch_normalization_5_layer_call_fn_13681250inputs"µ
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
€Bь
8__inference_batch_normalization_5_layer_call_fn_13681263inputs"µ
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
ЪBЧ
S__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13681297inputs"µ
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
ЪBЧ
S__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13681317inputs"µ
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
’B“
+__inference_conv1d_6_layer_call_fn_13681326inputs"Ш
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
F__inference_conv1d_6_layer_call_and_return_conditional_losses_13681342inputs"Ш
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
€Bь
8__inference_batch_normalization_6_layer_call_fn_13681355inputs"µ
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
€Bь
8__inference_batch_normalization_6_layer_call_fn_13681368inputs"µ
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
ЪBЧ
S__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13681402inputs"µ
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
ЪBЧ
S__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13681422inputs"µ
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
’B“
+__inference_conv1d_7_layer_call_fn_13681431inputs"Ш
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
F__inference_conv1d_7_layer_call_and_return_conditional_losses_13681447inputs"Ш
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
€Bь
8__inference_batch_normalization_7_layer_call_fn_13681460inputs"µ
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
€Bь
8__inference_batch_normalization_7_layer_call_fn_13681473inputs"µ
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
ЪBЧ
S__inference_batch_normalization_7_layer_call_and_return_conditional_losses_13681507inputs"µ
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
ЪBЧ
S__inference_batch_normalization_7_layer_call_and_return_conditional_losses_13681527inputs"µ
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
фBс
=__inference_global_average_pooling1d_2_layer_call_fn_13681532inputs"•
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
ПBМ
X__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_13681538inputs"•
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
+__inference_dense_11_layer_call_fn_13681547inputs"Ш
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
F__inference_dense_11_layer_call_and_return_conditional_losses_13681558inputs"Ш
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
зBд
,__inference_dropout_3_layer_call_fn_13681563inputs"©
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
зBд
,__inference_dropout_3_layer_call_fn_13681568inputs"©
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
ВB€
G__inference_dropout_3_layer_call_and_return_conditional_losses_13681580inputs"©
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
ВB€
G__inference_dropout_3_layer_call_and_return_conditional_losses_13681585inputs"©
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
+__inference_dense_12_layer_call_fn_13681594inputs"Ш
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
F__inference_dense_12_layer_call_and_return_conditional_losses_13681604inputs"Ш
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
÷B”
,__inference_reshape_4_layer_call_fn_13681609inputs"Ш
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
G__inference_reshape_4_layer_call_and_return_conditional_losses_13681622inputs"Ш
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
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13679975О$%01./89DEBCLMXYVW`almjkz{ЙК:Ґ7
0Ґ-
#К 
Input€€€€€€€€€
p

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ е
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13680062О$%1.0/89EBDCLMYVXW`amjlkz{ЙК:Ґ7
0Ґ-
#К 
Input€€€€€€€€€
p 

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ ж
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13680936П$%01./89DEBCLMXYVW`almjkz{ЙК;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ ж
R__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_13681081П$%1.0/89EBDCLMYVXW`amjlkz{ЙК;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ њ
7__inference_Federated_CNN_F7_H12_layer_call_fn_13680198Г$%01./89DEBCLMXYVW`almjkz{ЙК:Ґ7
0Ґ-
#К 
Input€€€€€€€€€
p

 
™ "%К"
unknown€€€€€€€€€њ
7__inference_Federated_CNN_F7_H12_layer_call_fn_13680333Г$%1.0/89EBDCLMYVXW`amjlkz{ЙК:Ґ7
0Ґ-
#К 
Input€€€€€€€€€
p 

 
™ "%К"
unknown€€€€€€€€€ј
7__inference_Federated_CNN_F7_H12_layer_call_fn_13680667Д$%01./89DEBCLMXYVW`almjkz{ЙК;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ "%К"
unknown€€€€€€€€€ј
7__inference_Federated_CNN_F7_H12_layer_call_fn_13680728Д$%1.0/89EBDCLMYVXW`amjlkz{ЙК;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ "%К"
unknown€€€€€€€€€Ј
#__inference__wrapped_model_13679432П$%1.0/89EBDCLMYVXW`amjlkz{ЙК2Ґ/
(Ґ%
#К 
Input€€€€€€€€€
™ "9™6
4
	reshape_4'К$
	reshape_4€€€€€€€€€я
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13681192З01./DҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ я
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_13681212З1.0/DҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ Є
8__inference_batch_normalization_4_layer_call_fn_13681145|01./DҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€Є
8__inference_batch_normalization_4_layer_call_fn_13681158|1.0/DҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€я
S__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13681297ЗDEBCDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ я
S__inference_batch_normalization_5_layer_call_and_return_conditional_losses_13681317ЗEBDCDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ Є
8__inference_batch_normalization_5_layer_call_fn_13681250|DEBCDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€Є
8__inference_batch_normalization_5_layer_call_fn_13681263|EBDCDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€я
S__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13681402ЗXYVWDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ я
S__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13681422ЗYVXWDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ Є
8__inference_batch_normalization_6_layer_call_fn_13681355|XYVWDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€Є
8__inference_batch_normalization_6_layer_call_fn_13681368|YVXWDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€я
S__inference_batch_normalization_7_layer_call_and_return_conditional_losses_13681507ЗlmjkDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ я
S__inference_batch_normalization_7_layer_call_and_return_conditional_losses_13681527ЗmjlkDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ Є
8__inference_batch_normalization_7_layer_call_fn_13681460|lmjkDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€Є
8__inference_batch_normalization_7_layer_call_fn_13681473|mjlkDҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€µ
F__inference_conv1d_4_layer_call_and_return_conditional_losses_13681132k$%3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ П
+__inference_conv1d_4_layer_call_fn_13681116`$%3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "%К"
unknown€€€€€€€€€µ
F__inference_conv1d_5_layer_call_and_return_conditional_losses_13681237k893Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ П
+__inference_conv1d_5_layer_call_fn_13681221`893Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "%К"
unknown€€€€€€€€€µ
F__inference_conv1d_6_layer_call_and_return_conditional_losses_13681342kLM3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ П
+__inference_conv1d_6_layer_call_fn_13681326`LM3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "%К"
unknown€€€€€€€€€µ
F__inference_conv1d_7_layer_call_and_return_conditional_losses_13681447k`a3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ П
+__inference_conv1d_7_layer_call_fn_13681431``a3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "%К"
unknown€€€€€€€€€≠
F__inference_dense_11_layer_call_and_return_conditional_losses_13681558cz{/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€ 
Ъ З
+__inference_dense_11_layer_call_fn_13681547Xz{/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€ ѓ
F__inference_dense_12_layer_call_and_return_conditional_losses_13681604eЙК/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ ",Ґ)
"К
tensor_0€€€€€€€€€T
Ъ Й
+__inference_dense_12_layer_call_fn_13681594ZЙК/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "!К
unknown€€€€€€€€€TЃ
G__inference_dropout_3_layer_call_and_return_conditional_losses_13681580c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€ 
Ъ Ѓ
G__inference_dropout_3_layer_call_and_return_conditional_losses_13681585c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€ 
Ъ И
,__inference_dropout_3_layer_call_fn_13681563X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p
™ "!К
unknown€€€€€€€€€ И
,__inference_dropout_3_layer_call_fn_13681568X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p 
™ "!К
unknown€€€€€€€€€ я
X__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_13681538ВIҐF
?Ґ<
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
™ "5Ґ2
+К(
tensor_0€€€€€€€€€€€€€€€€€€
Ъ Є
=__inference_global_average_pooling1d_2_layer_call_fn_13681532wIҐF
?Ґ<
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
™ "*К'
unknown€€€€€€€€€€€€€€€€€€є
F__inference_lambda_1_layer_call_and_return_conditional_losses_13681099o;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€

 
p
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ є
F__inference_lambda_1_layer_call_and_return_conditional_losses_13681107o;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€

 
p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ У
+__inference_lambda_1_layer_call_fn_13681086d;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€

 
p
™ "%К"
unknown€€€€€€€€€У
+__inference_lambda_1_layer_call_fn_13681091d;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€

 
p 
™ "%К"
unknown€€€€€€€€€Ѓ
G__inference_reshape_4_layer_call_and_return_conditional_losses_13681622c/Ґ,
%Ґ"
 К
inputs€€€€€€€€€T
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ И
,__inference_reshape_4_layer_call_fn_13681609X/Ґ,
%Ґ"
 К
inputs€€€€€€€€€T
™ "%К"
unknown€€€€€€€€€√
&__inference_signature_wrapper_13680606Ш$%1.0/89EBDCLMYVXW`amjlkz{ЙК;Ґ8
Ґ 
1™.
,
Input#К 
input€€€€€€€€€"9™6
4
	reshape_4'К$
	reshape_4€€€€€€€€€