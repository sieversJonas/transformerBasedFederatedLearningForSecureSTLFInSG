��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
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
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.02v2.11.0-rc2-15-g6290819256d8��
r
dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_namedense_30/bias
k
!dense_30/bias/Read/ReadVariableOpReadVariableOpdense_30/bias*
_output_shapes
:<*
dtype0
z
dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: <* 
shared_namedense_30/kernel
s
#dense_30/kernel/Read/ReadVariableOpReadVariableOpdense_30/kernel*
_output_shapes

: <*
dtype0
r
dense_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_29/bias
k
!dense_29/bias/Read/ReadVariableOpReadVariableOpdense_29/bias*
_output_shapes
: *
dtype0
z
dense_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_29/kernel
s
#dense_29/kernel/Read/ReadVariableOpReadVariableOpdense_29/kernel*
_output_shapes

: *
dtype0
�
&batch_normalization_15/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_15/moving_variance
�
:batch_normalization_15/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_15/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_15/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_15/moving_mean
�
6batch_normalization_15/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_15/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_15/beta
�
/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_15/beta*
_output_shapes
:*
dtype0
�
batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_15/gamma
�
0batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_15/gamma*
_output_shapes
:*
dtype0
t
conv1d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_15/bias
m
"conv1d_15/bias/Read/ReadVariableOpReadVariableOpconv1d_15/bias*
_output_shapes
:*
dtype0
�
conv1d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_15/kernel
y
$conv1d_15/kernel/Read/ReadVariableOpReadVariableOpconv1d_15/kernel*"
_output_shapes
:*
dtype0
�
&batch_normalization_14/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_14/moving_variance
�
:batch_normalization_14/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_14/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_14/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_14/moving_mean
�
6batch_normalization_14/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_14/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_14/beta
�
/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_14/beta*
_output_shapes
:*
dtype0
�
batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_14/gamma
�
0batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_14/gamma*
_output_shapes
:*
dtype0
t
conv1d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_14/bias
m
"conv1d_14/bias/Read/ReadVariableOpReadVariableOpconv1d_14/bias*
_output_shapes
:*
dtype0
�
conv1d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_14/kernel
y
$conv1d_14/kernel/Read/ReadVariableOpReadVariableOpconv1d_14/kernel*"
_output_shapes
:*
dtype0
�
&batch_normalization_13/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_13/moving_variance
�
:batch_normalization_13/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_13/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_13/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_13/moving_mean
�
6batch_normalization_13/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_13/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_13/beta
�
/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_13/beta*
_output_shapes
:*
dtype0
�
batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_13/gamma
�
0batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_13/gamma*
_output_shapes
:*
dtype0
t
conv1d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_13/bias
m
"conv1d_13/bias/Read/ReadVariableOpReadVariableOpconv1d_13/bias*
_output_shapes
:*
dtype0
�
conv1d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_13/kernel
y
$conv1d_13/kernel/Read/ReadVariableOpReadVariableOpconv1d_13/kernel*"
_output_shapes
:*
dtype0
�
&batch_normalization_12/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_12/moving_variance
�
:batch_normalization_12/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_12/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_12/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_12/moving_mean
�
6batch_normalization_12/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_12/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_12/beta
�
/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_12/beta*
_output_shapes
:*
dtype0
�
batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_12/gamma
�
0batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_12/gamma*
_output_shapes
:*
dtype0
t
conv1d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_12/bias
m
"conv1d_12/bias/Read/ReadVariableOpReadVariableOpconv1d_12/bias*
_output_shapes
:*
dtype0
�
conv1d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_12/kernel
y
$conv1d_12/kernel/Read/ReadVariableOpReadVariableOpconv1d_12/kernel*"
_output_shapes
:*
dtype0
�
serving_default_InputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_Inputconv1d_12/kernelconv1d_12/bias&batch_normalization_12/moving_variancebatch_normalization_12/gamma"batch_normalization_12/moving_meanbatch_normalization_12/betaconv1d_13/kernelconv1d_13/bias&batch_normalization_13/moving_variancebatch_normalization_13/gamma"batch_normalization_13/moving_meanbatch_normalization_13/betaconv1d_14/kernelconv1d_14/bias&batch_normalization_14/moving_variancebatch_normalization_14/gamma"batch_normalization_14/moving_meanbatch_normalization_14/betaconv1d_15/kernelconv1d_15/bias&batch_normalization_15/moving_variancebatch_normalization_15/gamma"batch_normalization_15/moving_meanbatch_normalization_15/betadense_29/kerneldense_29/biasdense_30/kerneldense_30/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_28141481

NoOpNoOp
�g
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�f
value�fB�f B�f
�
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
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias
 &_jit_compiled_convolution_op*
�
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
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias
 :_jit_compiled_convolution_op*
�
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
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op*
�
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
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias
 b_jit_compiled_convolution_op*
�
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
�
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses* 
�
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

zkernel
{bias*
�
|	variables
}trainable_variables
~regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
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
�26
�27*
�
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
�18
�19*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 

�serving_default* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

$0
%1*

$0
%1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv1d_12/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_12/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
.0
/1
02
13*

.0
/1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_12/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_12/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_12/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_12/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

80
91*

80
91*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv1d_13/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_13/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
B0
C1
D2
E3*

B0
C1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_13/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_13/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_13/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_13/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

L0
M1*

L0
M1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv1d_14/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_14/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
V0
W1
X2
Y3*

V0
W1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_14/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_14/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_14/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_14/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

`0
a1*

`0
a1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv1d_15/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_15/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
j0
k1
l2
m3*

j0
k1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_15/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_15/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_15/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_15/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

z0
{1*

z0
{1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_29/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_29/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
|	variables
}trainable_variables
~regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_30/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_30/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
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
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv1d_12/kernel/Read/ReadVariableOp"conv1d_12/bias/Read/ReadVariableOp0batch_normalization_12/gamma/Read/ReadVariableOp/batch_normalization_12/beta/Read/ReadVariableOp6batch_normalization_12/moving_mean/Read/ReadVariableOp:batch_normalization_12/moving_variance/Read/ReadVariableOp$conv1d_13/kernel/Read/ReadVariableOp"conv1d_13/bias/Read/ReadVariableOp0batch_normalization_13/gamma/Read/ReadVariableOp/batch_normalization_13/beta/Read/ReadVariableOp6batch_normalization_13/moving_mean/Read/ReadVariableOp:batch_normalization_13/moving_variance/Read/ReadVariableOp$conv1d_14/kernel/Read/ReadVariableOp"conv1d_14/bias/Read/ReadVariableOp0batch_normalization_14/gamma/Read/ReadVariableOp/batch_normalization_14/beta/Read/ReadVariableOp6batch_normalization_14/moving_mean/Read/ReadVariableOp:batch_normalization_14/moving_variance/Read/ReadVariableOp$conv1d_15/kernel/Read/ReadVariableOp"conv1d_15/bias/Read/ReadVariableOp0batch_normalization_15/gamma/Read/ReadVariableOp/batch_normalization_15/beta/Read/ReadVariableOp6batch_normalization_15/moving_mean/Read/ReadVariableOp:batch_normalization_15/moving_variance/Read/ReadVariableOp#dense_29/kernel/Read/ReadVariableOp!dense_29/bias/Read/ReadVariableOp#dense_30/kernel/Read/ReadVariableOp!dense_30/bias/Read/ReadVariableOpConst*)
Tin"
 2*
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
GPU 2J 8� **
f%R#
!__inference__traced_save_28142604
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_12/kernelconv1d_12/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv1d_13/kernelconv1d_13/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv1d_14/kernelconv1d_14/biasbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_varianceconv1d_15/kernelconv1d_15/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_variancedense_29/kerneldense_29/biasdense_30/kerneldense_30/bias*(
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
GPU 2J 8� *-
f(R&
$__inference__traced_restore_28142698Я
�
�
9__inference_batch_normalization_13_layer_call_fn_28142138

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_13_layer_call_and_return_conditional_losses_28140460|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
b
F__inference_lambda_3_layer_call_and_return_conditional_losses_28141010

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141748

inputsK
5conv1d_12_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_12_biasadd_readvariableop_resource:F
8batch_normalization_12_batchnorm_readvariableop_resource:J
<batch_normalization_12_batchnorm_mul_readvariableop_resource:H
:batch_normalization_12_batchnorm_readvariableop_1_resource:H
:batch_normalization_12_batchnorm_readvariableop_2_resource:K
5conv1d_13_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_13_biasadd_readvariableop_resource:F
8batch_normalization_13_batchnorm_readvariableop_resource:J
<batch_normalization_13_batchnorm_mul_readvariableop_resource:H
:batch_normalization_13_batchnorm_readvariableop_1_resource:H
:batch_normalization_13_batchnorm_readvariableop_2_resource:K
5conv1d_14_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_14_biasadd_readvariableop_resource:F
8batch_normalization_14_batchnorm_readvariableop_resource:J
<batch_normalization_14_batchnorm_mul_readvariableop_resource:H
:batch_normalization_14_batchnorm_readvariableop_1_resource:H
:batch_normalization_14_batchnorm_readvariableop_2_resource:K
5conv1d_15_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_15_biasadd_readvariableop_resource:F
8batch_normalization_15_batchnorm_readvariableop_resource:J
<batch_normalization_15_batchnorm_mul_readvariableop_resource:H
:batch_normalization_15_batchnorm_readvariableop_1_resource:H
:batch_normalization_15_batchnorm_readvariableop_2_resource:9
'dense_29_matmul_readvariableop_resource: 6
(dense_29_biasadd_readvariableop_resource: 9
'dense_30_matmul_readvariableop_resource: <6
(dense_30_biasadd_readvariableop_resource:<
identity��/batch_normalization_12/batchnorm/ReadVariableOp�1batch_normalization_12/batchnorm/ReadVariableOp_1�1batch_normalization_12/batchnorm/ReadVariableOp_2�3batch_normalization_12/batchnorm/mul/ReadVariableOp�/batch_normalization_13/batchnorm/ReadVariableOp�1batch_normalization_13/batchnorm/ReadVariableOp_1�1batch_normalization_13/batchnorm/ReadVariableOp_2�3batch_normalization_13/batchnorm/mul/ReadVariableOp�/batch_normalization_14/batchnorm/ReadVariableOp�1batch_normalization_14/batchnorm/ReadVariableOp_1�1batch_normalization_14/batchnorm/ReadVariableOp_2�3batch_normalization_14/batchnorm/mul/ReadVariableOp�/batch_normalization_15/batchnorm/ReadVariableOp�1batch_normalization_15/batchnorm/ReadVariableOp_1�1batch_normalization_15/batchnorm/ReadVariableOp_2�3batch_normalization_15/batchnorm/mul/ReadVariableOp� conv1d_12/BiasAdd/ReadVariableOp�,conv1d_12/Conv1D/ExpandDims_1/ReadVariableOp� conv1d_13/BiasAdd/ReadVariableOp�,conv1d_13/Conv1D/ExpandDims_1/ReadVariableOp� conv1d_14/BiasAdd/ReadVariableOp�,conv1d_14/Conv1D/ExpandDims_1/ReadVariableOp� conv1d_15/BiasAdd/ReadVariableOp�,conv1d_15/Conv1D/ExpandDims_1/ReadVariableOp�dense_29/BiasAdd/ReadVariableOp�dense_29/MatMul/ReadVariableOp�dense_30/BiasAdd/ReadVariableOp�dense_30/MatMul/ReadVariableOpq
lambda_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    s
lambda_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            s
lambda_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
lambda_3/strided_sliceStridedSliceinputs%lambda_3/strided_slice/stack:output:0'lambda_3/strided_slice/stack_1:output:0'lambda_3/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskj
conv1d_12/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_12/Conv1D/ExpandDims
ExpandDimslambda_3/strided_slice:output:0(conv1d_12/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_12/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_12_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_12/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_12/Conv1D/ExpandDims_1
ExpandDims4conv1d_12/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_12/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_12/Conv1DConv2D$conv1d_12/Conv1D/ExpandDims:output:0&conv1d_12/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv1d_12/Conv1D/SqueezeSqueezeconv1d_12/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_12/BiasAdd/ReadVariableOpReadVariableOp)conv1d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_12/BiasAddBiasAdd!conv1d_12/Conv1D/Squeeze:output:0(conv1d_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_12/ReluReluconv1d_12/BiasAdd:output:0*
T0*+
_output_shapes
:����������
/batch_normalization_12/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_12/batchnorm/addAddV27batch_normalization_12/batchnorm/ReadVariableOp:value:0/batch_normalization_12/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_12/batchnorm/RsqrtRsqrt(batch_normalization_12/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_12/batchnorm/mulMul*batch_normalization_12/batchnorm/Rsqrt:y:0;batch_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_12/batchnorm/mul_1Mulconv1d_12/Relu:activations:0(batch_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
1batch_normalization_12/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_12_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
&batch_normalization_12/batchnorm/mul_2Mul9batch_normalization_12/batchnorm/ReadVariableOp_1:value:0(batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes
:�
1batch_normalization_12/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_12_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
$batch_normalization_12/batchnorm/subSub9batch_normalization_12/batchnorm/ReadVariableOp_2:value:0*batch_normalization_12/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_12/batchnorm/add_1AddV2*batch_normalization_12/batchnorm/mul_1:z:0(batch_normalization_12/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������j
conv1d_13/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_13/Conv1D/ExpandDims
ExpandDims*batch_normalization_12/batchnorm/add_1:z:0(conv1d_13/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_13/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_13_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_13/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_13/Conv1D/ExpandDims_1
ExpandDims4conv1d_13/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_13/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_13/Conv1DConv2D$conv1d_13/Conv1D/ExpandDims:output:0&conv1d_13/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv1d_13/Conv1D/SqueezeSqueezeconv1d_13/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_13/BiasAdd/ReadVariableOpReadVariableOp)conv1d_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_13/BiasAddBiasAdd!conv1d_13/Conv1D/Squeeze:output:0(conv1d_13/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_13/ReluReluconv1d_13/BiasAdd:output:0*
T0*+
_output_shapes
:����������
/batch_normalization_13/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_13/batchnorm/addAddV27batch_normalization_13/batchnorm/ReadVariableOp:value:0/batch_normalization_13/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_13/batchnorm/RsqrtRsqrt(batch_normalization_13/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_13/batchnorm/mulMul*batch_normalization_13/batchnorm/Rsqrt:y:0;batch_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_13/batchnorm/mul_1Mulconv1d_13/Relu:activations:0(batch_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
1batch_normalization_13/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_13_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
&batch_normalization_13/batchnorm/mul_2Mul9batch_normalization_13/batchnorm/ReadVariableOp_1:value:0(batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes
:�
1batch_normalization_13/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_13_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
$batch_normalization_13/batchnorm/subSub9batch_normalization_13/batchnorm/ReadVariableOp_2:value:0*batch_normalization_13/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_13/batchnorm/add_1AddV2*batch_normalization_13/batchnorm/mul_1:z:0(batch_normalization_13/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������j
conv1d_14/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_14/Conv1D/ExpandDims
ExpandDims*batch_normalization_13/batchnorm/add_1:z:0(conv1d_14/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_14/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_14_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_14/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_14/Conv1D/ExpandDims_1
ExpandDims4conv1d_14/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_14/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_14/Conv1DConv2D$conv1d_14/Conv1D/ExpandDims:output:0&conv1d_14/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv1d_14/Conv1D/SqueezeSqueezeconv1d_14/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_14/BiasAdd/ReadVariableOpReadVariableOp)conv1d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_14/BiasAddBiasAdd!conv1d_14/Conv1D/Squeeze:output:0(conv1d_14/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_14/ReluReluconv1d_14/BiasAdd:output:0*
T0*+
_output_shapes
:����������
/batch_normalization_14/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_14_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_14/batchnorm/addAddV27batch_normalization_14/batchnorm/ReadVariableOp:value:0/batch_normalization_14/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_14/batchnorm/RsqrtRsqrt(batch_normalization_14/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_14/batchnorm/mulMul*batch_normalization_14/batchnorm/Rsqrt:y:0;batch_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_14/batchnorm/mul_1Mulconv1d_14/Relu:activations:0(batch_normalization_14/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
1batch_normalization_14/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_14_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
&batch_normalization_14/batchnorm/mul_2Mul9batch_normalization_14/batchnorm/ReadVariableOp_1:value:0(batch_normalization_14/batchnorm/mul:z:0*
T0*
_output_shapes
:�
1batch_normalization_14/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_14_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
$batch_normalization_14/batchnorm/subSub9batch_normalization_14/batchnorm/ReadVariableOp_2:value:0*batch_normalization_14/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_14/batchnorm/add_1AddV2*batch_normalization_14/batchnorm/mul_1:z:0(batch_normalization_14/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������j
conv1d_15/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_15/Conv1D/ExpandDims
ExpandDims*batch_normalization_14/batchnorm/add_1:z:0(conv1d_15/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_15/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_15_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_15/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_15/Conv1D/ExpandDims_1
ExpandDims4conv1d_15/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_15/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_15/Conv1DConv2D$conv1d_15/Conv1D/ExpandDims:output:0&conv1d_15/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv1d_15/Conv1D/SqueezeSqueezeconv1d_15/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_15/BiasAdd/ReadVariableOpReadVariableOp)conv1d_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_15/BiasAddBiasAdd!conv1d_15/Conv1D/Squeeze:output:0(conv1d_15/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_15/ReluReluconv1d_15/BiasAdd:output:0*
T0*+
_output_shapes
:����������
/batch_normalization_15/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_15_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_15/batchnorm/addAddV27batch_normalization_15/batchnorm/ReadVariableOp:value:0/batch_normalization_15/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_15/batchnorm/RsqrtRsqrt(batch_normalization_15/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_15/batchnorm/mulMul*batch_normalization_15/batchnorm/Rsqrt:y:0;batch_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_15/batchnorm/mul_1Mulconv1d_15/Relu:activations:0(batch_normalization_15/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
1batch_normalization_15/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_15_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
&batch_normalization_15/batchnorm/mul_2Mul9batch_normalization_15/batchnorm/ReadVariableOp_1:value:0(batch_normalization_15/batchnorm/mul:z:0*
T0*
_output_shapes
:�
1batch_normalization_15/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_15_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
$batch_normalization_15/batchnorm/subSub9batch_normalization_15/batchnorm/ReadVariableOp_2:value:0*batch_normalization_15/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_15/batchnorm/add_1AddV2*batch_normalization_15/batchnorm/mul_1:z:0(batch_normalization_15/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������s
1global_average_pooling1d_6/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_average_pooling1d_6/MeanMean*batch_normalization_15/batchnorm/add_1:z:0:global_average_pooling1d_6/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_29/MatMulMatMul(global_average_pooling1d_6/Mean:output:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_29/ReluReludense_29/BiasAdd:output:0*
T0*'
_output_shapes
:��������� m
dropout_7/IdentityIdentitydense_29/Relu:activations:0*
T0*'
_output_shapes
:��������� �
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes

: <*
dtype0�
dense_30/MatMulMatMuldropout_7/Identity:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<�
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<Y
reshape_10/ShapeShapedense_30/BiasAdd:output:0*
T0*
_output_shapes
:h
reshape_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_10/strided_sliceStridedSlicereshape_10/Shape:output:0'reshape_10/strided_slice/stack:output:0)reshape_10/strided_slice/stack_1:output:0)reshape_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_10/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_10/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_10/Reshape/shapePack!reshape_10/strided_slice:output:0#reshape_10/Reshape/shape/1:output:0#reshape_10/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reshape_10/ReshapeReshapedense_30/BiasAdd:output:0!reshape_10/Reshape/shape:output:0*
T0*+
_output_shapes
:���������n
IdentityIdentityreshape_10/Reshape:output:0^NoOp*
T0*+
_output_shapes
:����������

NoOpNoOp0^batch_normalization_12/batchnorm/ReadVariableOp2^batch_normalization_12/batchnorm/ReadVariableOp_12^batch_normalization_12/batchnorm/ReadVariableOp_24^batch_normalization_12/batchnorm/mul/ReadVariableOp0^batch_normalization_13/batchnorm/ReadVariableOp2^batch_normalization_13/batchnorm/ReadVariableOp_12^batch_normalization_13/batchnorm/ReadVariableOp_24^batch_normalization_13/batchnorm/mul/ReadVariableOp0^batch_normalization_14/batchnorm/ReadVariableOp2^batch_normalization_14/batchnorm/ReadVariableOp_12^batch_normalization_14/batchnorm/ReadVariableOp_24^batch_normalization_14/batchnorm/mul/ReadVariableOp0^batch_normalization_15/batchnorm/ReadVariableOp2^batch_normalization_15/batchnorm/ReadVariableOp_12^batch_normalization_15/batchnorm/ReadVariableOp_24^batch_normalization_15/batchnorm/mul/ReadVariableOp!^conv1d_12/BiasAdd/ReadVariableOp-^conv1d_12/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_13/BiasAdd/ReadVariableOp-^conv1d_13/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_14/BiasAdd/ReadVariableOp-^conv1d_14/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_15/BiasAdd/ReadVariableOp-^conv1d_15/Conv1D/ExpandDims_1/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_12/batchnorm/ReadVariableOp/batch_normalization_12/batchnorm/ReadVariableOp2f
1batch_normalization_12/batchnorm/ReadVariableOp_11batch_normalization_12/batchnorm/ReadVariableOp_12f
1batch_normalization_12/batchnorm/ReadVariableOp_21batch_normalization_12/batchnorm/ReadVariableOp_22j
3batch_normalization_12/batchnorm/mul/ReadVariableOp3batch_normalization_12/batchnorm/mul/ReadVariableOp2b
/batch_normalization_13/batchnorm/ReadVariableOp/batch_normalization_13/batchnorm/ReadVariableOp2f
1batch_normalization_13/batchnorm/ReadVariableOp_11batch_normalization_13/batchnorm/ReadVariableOp_12f
1batch_normalization_13/batchnorm/ReadVariableOp_21batch_normalization_13/batchnorm/ReadVariableOp_22j
3batch_normalization_13/batchnorm/mul/ReadVariableOp3batch_normalization_13/batchnorm/mul/ReadVariableOp2b
/batch_normalization_14/batchnorm/ReadVariableOp/batch_normalization_14/batchnorm/ReadVariableOp2f
1batch_normalization_14/batchnorm/ReadVariableOp_11batch_normalization_14/batchnorm/ReadVariableOp_12f
1batch_normalization_14/batchnorm/ReadVariableOp_21batch_normalization_14/batchnorm/ReadVariableOp_22j
3batch_normalization_14/batchnorm/mul/ReadVariableOp3batch_normalization_14/batchnorm/mul/ReadVariableOp2b
/batch_normalization_15/batchnorm/ReadVariableOp/batch_normalization_15/batchnorm/ReadVariableOp2f
1batch_normalization_15/batchnorm/ReadVariableOp_11batch_normalization_15/batchnorm/ReadVariableOp_12f
1batch_normalization_15/batchnorm/ReadVariableOp_21batch_normalization_15/batchnorm/ReadVariableOp_22j
3batch_normalization_15/batchnorm/mul/ReadVariableOp3batch_normalization_15/batchnorm/mul/ReadVariableOp2D
 conv1d_12/BiasAdd/ReadVariableOp conv1d_12/BiasAdd/ReadVariableOp2\
,conv1d_12/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_12/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_13/BiasAdd/ReadVariableOp conv1d_13/BiasAdd/ReadVariableOp2\
,conv1d_13/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_13/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_14/BiasAdd/ReadVariableOp conv1d_14/BiasAdd/ReadVariableOp2\
,conv1d_14/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_14/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_15/BiasAdd/ReadVariableOp conv1d_15/BiasAdd/ReadVariableOp2\
,conv1d_15/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_15/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_conv1d_14_layer_call_and_return_conditional_losses_28140743

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
F__inference_dense_30_layer_call_and_return_conditional_losses_28142479

inputs0
matmul_readvariableop_resource: <-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: <*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������<w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�@
�
!__inference__traced_save_28142604
file_prefix/
+savev2_conv1d_12_kernel_read_readvariableop-
)savev2_conv1d_12_bias_read_readvariableop;
7savev2_batch_normalization_12_gamma_read_readvariableop:
6savev2_batch_normalization_12_beta_read_readvariableopA
=savev2_batch_normalization_12_moving_mean_read_readvariableopE
Asavev2_batch_normalization_12_moving_variance_read_readvariableop/
+savev2_conv1d_13_kernel_read_readvariableop-
)savev2_conv1d_13_bias_read_readvariableop;
7savev2_batch_normalization_13_gamma_read_readvariableop:
6savev2_batch_normalization_13_beta_read_readvariableopA
=savev2_batch_normalization_13_moving_mean_read_readvariableopE
Asavev2_batch_normalization_13_moving_variance_read_readvariableop/
+savev2_conv1d_14_kernel_read_readvariableop-
)savev2_conv1d_14_bias_read_readvariableop;
7savev2_batch_normalization_14_gamma_read_readvariableop:
6savev2_batch_normalization_14_beta_read_readvariableopA
=savev2_batch_normalization_14_moving_mean_read_readvariableopE
Asavev2_batch_normalization_14_moving_variance_read_readvariableop/
+savev2_conv1d_15_kernel_read_readvariableop-
)savev2_conv1d_15_bias_read_readvariableop;
7savev2_batch_normalization_15_gamma_read_readvariableop:
6savev2_batch_normalization_15_beta_read_readvariableopA
=savev2_batch_normalization_15_moving_mean_read_readvariableopE
Asavev2_batch_normalization_15_moving_variance_read_readvariableop.
*savev2_dense_29_kernel_read_readvariableop,
(savev2_dense_29_bias_read_readvariableop.
*savev2_dense_30_kernel_read_readvariableop,
(savev2_dense_30_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv1d_12_kernel_read_readvariableop)savev2_conv1d_12_bias_read_readvariableop7savev2_batch_normalization_12_gamma_read_readvariableop6savev2_batch_normalization_12_beta_read_readvariableop=savev2_batch_normalization_12_moving_mean_read_readvariableopAsavev2_batch_normalization_12_moving_variance_read_readvariableop+savev2_conv1d_13_kernel_read_readvariableop)savev2_conv1d_13_bias_read_readvariableop7savev2_batch_normalization_13_gamma_read_readvariableop6savev2_batch_normalization_13_beta_read_readvariableop=savev2_batch_normalization_13_moving_mean_read_readvariableopAsavev2_batch_normalization_13_moving_variance_read_readvariableop+savev2_conv1d_14_kernel_read_readvariableop)savev2_conv1d_14_bias_read_readvariableop7savev2_batch_normalization_14_gamma_read_readvariableop6savev2_batch_normalization_14_beta_read_readvariableop=savev2_batch_normalization_14_moving_mean_read_readvariableopAsavev2_batch_normalization_14_moving_variance_read_readvariableop+savev2_conv1d_15_kernel_read_readvariableop)savev2_conv1d_15_bias_read_readvariableop7savev2_batch_normalization_15_gamma_read_readvariableop6savev2_batch_normalization_15_beta_read_readvariableop=savev2_batch_normalization_15_moving_mean_read_readvariableopAsavev2_batch_normalization_15_moving_variance_read_readvariableop*savev2_dense_29_kernel_read_readvariableop(savev2_dense_29_bias_read_readvariableop*savev2_dense_30_kernel_read_readvariableop(savev2_dense_30_bias_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *+
dtypes!
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: ::::::::::::::::::::::::: : : <:<: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: <: 

_output_shapes
:<:

_output_shapes
: 
�&
�
T__inference_batch_normalization_14_layer_call_and_return_conditional_losses_28142297

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
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
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
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
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
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
 :������������������h
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
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
,__inference_conv1d_15_layer_call_fn_28142306

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_15_layer_call_and_return_conditional_losses_28140774s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

d
H__inference_reshape_10_layer_call_and_return_conditional_losses_28142497

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
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
value	B :�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������<:O K
'
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
G__inference_conv1d_13_layer_call_and_return_conditional_losses_28140712

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
F__inference_dense_30_layer_call_and_return_conditional_losses_28140824

inputs0
matmul_readvariableop_resource: <-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: <*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������<w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_14_layer_call_and_return_conditional_losses_28142263

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
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
 :������������������z
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
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
9__inference_batch_normalization_12_layer_call_fn_28142020

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_12_layer_call_and_return_conditional_losses_28140331|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
Y
=__inference_global_average_pooling1d_6_layer_call_fn_28142407

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *a
f\RZ
X__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_28140645i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
7__inference_Federated_CNN_F5_H12_layer_call_fn_28141270	
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
identity��StatefulPartitionedCall�
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
:���������*6
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141150s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:���������

_user_specified_nameInput
�
e
,__inference_dropout_7_layer_call_fn_28142443

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_7_layer_call_and_return_conditional_losses_28140941o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
G__inference_conv1d_15_layer_call_and_return_conditional_losses_28142322

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�K
�
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141418	
input(
conv1d_12_28141348: 
conv1d_12_28141350:-
batch_normalization_12_28141353:-
batch_normalization_12_28141355:-
batch_normalization_12_28141357:-
batch_normalization_12_28141359:(
conv1d_13_28141362: 
conv1d_13_28141364:-
batch_normalization_13_28141367:-
batch_normalization_13_28141369:-
batch_normalization_13_28141371:-
batch_normalization_13_28141373:(
conv1d_14_28141376: 
conv1d_14_28141378:-
batch_normalization_14_28141381:-
batch_normalization_14_28141383:-
batch_normalization_14_28141385:-
batch_normalization_14_28141387:(
conv1d_15_28141390: 
conv1d_15_28141392:-
batch_normalization_15_28141395:-
batch_normalization_15_28141397:-
batch_normalization_15_28141399:-
batch_normalization_15_28141401:#
dense_29_28141405: 
dense_29_28141407: #
dense_30_28141411: <
dense_30_28141413:<
identity��.batch_normalization_12/StatefulPartitionedCall�.batch_normalization_13/StatefulPartitionedCall�.batch_normalization_14/StatefulPartitionedCall�.batch_normalization_15/StatefulPartitionedCall�!conv1d_12/StatefulPartitionedCall�!conv1d_13/StatefulPartitionedCall�!conv1d_14/StatefulPartitionedCall�!conv1d_15/StatefulPartitionedCall� dense_29/StatefulPartitionedCall� dense_30/StatefulPartitionedCall�!dropout_7/StatefulPartitionedCall�
lambda_3/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_lambda_3_layer_call_and_return_conditional_losses_28141010�
!conv1d_12/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0conv1d_12_28141348conv1d_12_28141350*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_12_layer_call_and_return_conditional_losses_28140681�
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall*conv1d_12/StatefulPartitionedCall:output:0batch_normalization_12_28141353batch_normalization_12_28141355batch_normalization_12_28141357batch_normalization_12_28141359*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_12_layer_call_and_return_conditional_losses_28140378�
!conv1d_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0conv1d_13_28141362conv1d_13_28141364*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_13_layer_call_and_return_conditional_losses_28140712�
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall*conv1d_13/StatefulPartitionedCall:output:0batch_normalization_13_28141367batch_normalization_13_28141369batch_normalization_13_28141371batch_normalization_13_28141373*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_13_layer_call_and_return_conditional_losses_28140460�
!conv1d_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0conv1d_14_28141376conv1d_14_28141378*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_14_layer_call_and_return_conditional_losses_28140743�
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall*conv1d_14/StatefulPartitionedCall:output:0batch_normalization_14_28141381batch_normalization_14_28141383batch_normalization_14_28141385batch_normalization_14_28141387*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_14_layer_call_and_return_conditional_losses_28140542�
!conv1d_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0conv1d_15_28141390conv1d_15_28141392*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_15_layer_call_and_return_conditional_losses_28140774�
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv1d_15/StatefulPartitionedCall:output:0batch_normalization_15_28141395batch_normalization_15_28141397batch_normalization_15_28141399batch_normalization_15_28141401*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_15_layer_call_and_return_conditional_losses_28140624�
*global_average_pooling1d_6/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *a
f\RZ
X__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_28140645�
 dense_29/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_6/PartitionedCall:output:0dense_29_28141405dense_29_28141407*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_29_layer_call_and_return_conditional_losses_28140801�
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_7_layer_call_and_return_conditional_losses_28140941�
 dense_30/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_30_28141411dense_30_28141413*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_30_layer_call_and_return_conditional_losses_28140824�
reshape_10/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reshape_10_layer_call_and_return_conditional_losses_28140843v
IdentityIdentity#reshape_10/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall"^conv1d_12/StatefulPartitionedCall"^conv1d_13/StatefulPartitionedCall"^conv1d_14/StatefulPartitionedCall"^conv1d_15/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2F
!conv1d_12/StatefulPartitionedCall!conv1d_12/StatefulPartitionedCall2F
!conv1d_13/StatefulPartitionedCall!conv1d_13/StatefulPartitionedCall2F
!conv1d_14/StatefulPartitionedCall!conv1d_14/StatefulPartitionedCall2F
!conv1d_15/StatefulPartitionedCall!conv1d_15/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall:R N
+
_output_shapes
:���������

_user_specified_nameInput
�
b
F__inference_lambda_3_layer_call_and_return_conditional_losses_28141982

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
I
-__inference_reshape_10_layer_call_fn_28142484

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reshape_10_layer_call_and_return_conditional_losses_28140843d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������<:O K
'
_output_shapes
:���������<
 
_user_specified_nameinputs
�&
�
T__inference_batch_normalization_15_layer_call_and_return_conditional_losses_28140624

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
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
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
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
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
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
 :������������������h
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
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
G
+__inference_lambda_3_layer_call_fn_28141961

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_lambda_3_layer_call_and_return_conditional_losses_28140663d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�&
�
T__inference_batch_normalization_13_layer_call_and_return_conditional_losses_28142192

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
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
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
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
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
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
 :������������������h
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
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
��
�
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141956

inputsK
5conv1d_12_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_12_biasadd_readvariableop_resource:L
>batch_normalization_12_assignmovingavg_readvariableop_resource:N
@batch_normalization_12_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_12_batchnorm_mul_readvariableop_resource:F
8batch_normalization_12_batchnorm_readvariableop_resource:K
5conv1d_13_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_13_biasadd_readvariableop_resource:L
>batch_normalization_13_assignmovingavg_readvariableop_resource:N
@batch_normalization_13_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_13_batchnorm_mul_readvariableop_resource:F
8batch_normalization_13_batchnorm_readvariableop_resource:K
5conv1d_14_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_14_biasadd_readvariableop_resource:L
>batch_normalization_14_assignmovingavg_readvariableop_resource:N
@batch_normalization_14_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_14_batchnorm_mul_readvariableop_resource:F
8batch_normalization_14_batchnorm_readvariableop_resource:K
5conv1d_15_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_15_biasadd_readvariableop_resource:L
>batch_normalization_15_assignmovingavg_readvariableop_resource:N
@batch_normalization_15_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_15_batchnorm_mul_readvariableop_resource:F
8batch_normalization_15_batchnorm_readvariableop_resource:9
'dense_29_matmul_readvariableop_resource: 6
(dense_29_biasadd_readvariableop_resource: 9
'dense_30_matmul_readvariableop_resource: <6
(dense_30_biasadd_readvariableop_resource:<
identity��&batch_normalization_12/AssignMovingAvg�5batch_normalization_12/AssignMovingAvg/ReadVariableOp�(batch_normalization_12/AssignMovingAvg_1�7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp�/batch_normalization_12/batchnorm/ReadVariableOp�3batch_normalization_12/batchnorm/mul/ReadVariableOp�&batch_normalization_13/AssignMovingAvg�5batch_normalization_13/AssignMovingAvg/ReadVariableOp�(batch_normalization_13/AssignMovingAvg_1�7batch_normalization_13/AssignMovingAvg_1/ReadVariableOp�/batch_normalization_13/batchnorm/ReadVariableOp�3batch_normalization_13/batchnorm/mul/ReadVariableOp�&batch_normalization_14/AssignMovingAvg�5batch_normalization_14/AssignMovingAvg/ReadVariableOp�(batch_normalization_14/AssignMovingAvg_1�7batch_normalization_14/AssignMovingAvg_1/ReadVariableOp�/batch_normalization_14/batchnorm/ReadVariableOp�3batch_normalization_14/batchnorm/mul/ReadVariableOp�&batch_normalization_15/AssignMovingAvg�5batch_normalization_15/AssignMovingAvg/ReadVariableOp�(batch_normalization_15/AssignMovingAvg_1�7batch_normalization_15/AssignMovingAvg_1/ReadVariableOp�/batch_normalization_15/batchnorm/ReadVariableOp�3batch_normalization_15/batchnorm/mul/ReadVariableOp� conv1d_12/BiasAdd/ReadVariableOp�,conv1d_12/Conv1D/ExpandDims_1/ReadVariableOp� conv1d_13/BiasAdd/ReadVariableOp�,conv1d_13/Conv1D/ExpandDims_1/ReadVariableOp� conv1d_14/BiasAdd/ReadVariableOp�,conv1d_14/Conv1D/ExpandDims_1/ReadVariableOp� conv1d_15/BiasAdd/ReadVariableOp�,conv1d_15/Conv1D/ExpandDims_1/ReadVariableOp�dense_29/BiasAdd/ReadVariableOp�dense_29/MatMul/ReadVariableOp�dense_30/BiasAdd/ReadVariableOp�dense_30/MatMul/ReadVariableOpq
lambda_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    s
lambda_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            s
lambda_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
lambda_3/strided_sliceStridedSliceinputs%lambda_3/strided_slice/stack:output:0'lambda_3/strided_slice/stack_1:output:0'lambda_3/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskj
conv1d_12/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_12/Conv1D/ExpandDims
ExpandDimslambda_3/strided_slice:output:0(conv1d_12/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_12/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_12_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_12/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_12/Conv1D/ExpandDims_1
ExpandDims4conv1d_12/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_12/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_12/Conv1DConv2D$conv1d_12/Conv1D/ExpandDims:output:0&conv1d_12/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv1d_12/Conv1D/SqueezeSqueezeconv1d_12/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_12/BiasAdd/ReadVariableOpReadVariableOp)conv1d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_12/BiasAddBiasAdd!conv1d_12/Conv1D/Squeeze:output:0(conv1d_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_12/ReluReluconv1d_12/BiasAdd:output:0*
T0*+
_output_shapes
:����������
5batch_normalization_12/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
#batch_normalization_12/moments/meanMeanconv1d_12/Relu:activations:0>batch_normalization_12/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
+batch_normalization_12/moments/StopGradientStopGradient,batch_normalization_12/moments/mean:output:0*
T0*"
_output_shapes
:�
0batch_normalization_12/moments/SquaredDifferenceSquaredDifferenceconv1d_12/Relu:activations:04batch_normalization_12/moments/StopGradient:output:0*
T0*+
_output_shapes
:����������
9batch_normalization_12/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
'batch_normalization_12/moments/varianceMean4batch_normalization_12/moments/SquaredDifference:z:0Bbatch_normalization_12/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
&batch_normalization_12/moments/SqueezeSqueeze,batch_normalization_12/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
(batch_normalization_12/moments/Squeeze_1Squeeze0batch_normalization_12/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_12/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
5batch_normalization_12/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_12_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
*batch_normalization_12/AssignMovingAvg/subSub=batch_normalization_12/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_12/moments/Squeeze:output:0*
T0*
_output_shapes
:�
*batch_normalization_12/AssignMovingAvg/mulMul.batch_normalization_12/AssignMovingAvg/sub:z:05batch_normalization_12/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
&batch_normalization_12/AssignMovingAvgAssignSubVariableOp>batch_normalization_12_assignmovingavg_readvariableop_resource.batch_normalization_12/AssignMovingAvg/mul:z:06^batch_normalization_12/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_12/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
7batch_normalization_12/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_12_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
,batch_normalization_12/AssignMovingAvg_1/subSub?batch_normalization_12/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_12/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
,batch_normalization_12/AssignMovingAvg_1/mulMul0batch_normalization_12/AssignMovingAvg_1/sub:z:07batch_normalization_12/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
(batch_normalization_12/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_12_assignmovingavg_1_readvariableop_resource0batch_normalization_12/AssignMovingAvg_1/mul:z:08^batch_normalization_12/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_12/batchnorm/addAddV21batch_normalization_12/moments/Squeeze_1:output:0/batch_normalization_12/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_12/batchnorm/RsqrtRsqrt(batch_normalization_12/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_12/batchnorm/mulMul*batch_normalization_12/batchnorm/Rsqrt:y:0;batch_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_12/batchnorm/mul_1Mulconv1d_12/Relu:activations:0(batch_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
&batch_normalization_12/batchnorm/mul_2Mul/batch_normalization_12/moments/Squeeze:output:0(batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes
:�
/batch_normalization_12/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_12/batchnorm/subSub7batch_normalization_12/batchnorm/ReadVariableOp:value:0*batch_normalization_12/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_12/batchnorm/add_1AddV2*batch_normalization_12/batchnorm/mul_1:z:0(batch_normalization_12/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������j
conv1d_13/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_13/Conv1D/ExpandDims
ExpandDims*batch_normalization_12/batchnorm/add_1:z:0(conv1d_13/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_13/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_13_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_13/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_13/Conv1D/ExpandDims_1
ExpandDims4conv1d_13/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_13/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_13/Conv1DConv2D$conv1d_13/Conv1D/ExpandDims:output:0&conv1d_13/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv1d_13/Conv1D/SqueezeSqueezeconv1d_13/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_13/BiasAdd/ReadVariableOpReadVariableOp)conv1d_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_13/BiasAddBiasAdd!conv1d_13/Conv1D/Squeeze:output:0(conv1d_13/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_13/ReluReluconv1d_13/BiasAdd:output:0*
T0*+
_output_shapes
:����������
5batch_normalization_13/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
#batch_normalization_13/moments/meanMeanconv1d_13/Relu:activations:0>batch_normalization_13/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
+batch_normalization_13/moments/StopGradientStopGradient,batch_normalization_13/moments/mean:output:0*
T0*"
_output_shapes
:�
0batch_normalization_13/moments/SquaredDifferenceSquaredDifferenceconv1d_13/Relu:activations:04batch_normalization_13/moments/StopGradient:output:0*
T0*+
_output_shapes
:����������
9batch_normalization_13/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
'batch_normalization_13/moments/varianceMean4batch_normalization_13/moments/SquaredDifference:z:0Bbatch_normalization_13/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
&batch_normalization_13/moments/SqueezeSqueeze,batch_normalization_13/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
(batch_normalization_13/moments/Squeeze_1Squeeze0batch_normalization_13/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_13/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
5batch_normalization_13/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_13_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
*batch_normalization_13/AssignMovingAvg/subSub=batch_normalization_13/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_13/moments/Squeeze:output:0*
T0*
_output_shapes
:�
*batch_normalization_13/AssignMovingAvg/mulMul.batch_normalization_13/AssignMovingAvg/sub:z:05batch_normalization_13/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
&batch_normalization_13/AssignMovingAvgAssignSubVariableOp>batch_normalization_13_assignmovingavg_readvariableop_resource.batch_normalization_13/AssignMovingAvg/mul:z:06^batch_normalization_13/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_13/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
7batch_normalization_13/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_13_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
,batch_normalization_13/AssignMovingAvg_1/subSub?batch_normalization_13/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_13/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
,batch_normalization_13/AssignMovingAvg_1/mulMul0batch_normalization_13/AssignMovingAvg_1/sub:z:07batch_normalization_13/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
(batch_normalization_13/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_13_assignmovingavg_1_readvariableop_resource0batch_normalization_13/AssignMovingAvg_1/mul:z:08^batch_normalization_13/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_13/batchnorm/addAddV21batch_normalization_13/moments/Squeeze_1:output:0/batch_normalization_13/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_13/batchnorm/RsqrtRsqrt(batch_normalization_13/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_13/batchnorm/mulMul*batch_normalization_13/batchnorm/Rsqrt:y:0;batch_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_13/batchnorm/mul_1Mulconv1d_13/Relu:activations:0(batch_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
&batch_normalization_13/batchnorm/mul_2Mul/batch_normalization_13/moments/Squeeze:output:0(batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes
:�
/batch_normalization_13/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_13/batchnorm/subSub7batch_normalization_13/batchnorm/ReadVariableOp:value:0*batch_normalization_13/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_13/batchnorm/add_1AddV2*batch_normalization_13/batchnorm/mul_1:z:0(batch_normalization_13/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������j
conv1d_14/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_14/Conv1D/ExpandDims
ExpandDims*batch_normalization_13/batchnorm/add_1:z:0(conv1d_14/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_14/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_14_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_14/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_14/Conv1D/ExpandDims_1
ExpandDims4conv1d_14/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_14/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_14/Conv1DConv2D$conv1d_14/Conv1D/ExpandDims:output:0&conv1d_14/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv1d_14/Conv1D/SqueezeSqueezeconv1d_14/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_14/BiasAdd/ReadVariableOpReadVariableOp)conv1d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_14/BiasAddBiasAdd!conv1d_14/Conv1D/Squeeze:output:0(conv1d_14/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_14/ReluReluconv1d_14/BiasAdd:output:0*
T0*+
_output_shapes
:����������
5batch_normalization_14/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
#batch_normalization_14/moments/meanMeanconv1d_14/Relu:activations:0>batch_normalization_14/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
+batch_normalization_14/moments/StopGradientStopGradient,batch_normalization_14/moments/mean:output:0*
T0*"
_output_shapes
:�
0batch_normalization_14/moments/SquaredDifferenceSquaredDifferenceconv1d_14/Relu:activations:04batch_normalization_14/moments/StopGradient:output:0*
T0*+
_output_shapes
:����������
9batch_normalization_14/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
'batch_normalization_14/moments/varianceMean4batch_normalization_14/moments/SquaredDifference:z:0Bbatch_normalization_14/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
&batch_normalization_14/moments/SqueezeSqueeze,batch_normalization_14/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
(batch_normalization_14/moments/Squeeze_1Squeeze0batch_normalization_14/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_14/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
5batch_normalization_14/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_14_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
*batch_normalization_14/AssignMovingAvg/subSub=batch_normalization_14/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_14/moments/Squeeze:output:0*
T0*
_output_shapes
:�
*batch_normalization_14/AssignMovingAvg/mulMul.batch_normalization_14/AssignMovingAvg/sub:z:05batch_normalization_14/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
&batch_normalization_14/AssignMovingAvgAssignSubVariableOp>batch_normalization_14_assignmovingavg_readvariableop_resource.batch_normalization_14/AssignMovingAvg/mul:z:06^batch_normalization_14/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_14/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
7batch_normalization_14/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_14_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
,batch_normalization_14/AssignMovingAvg_1/subSub?batch_normalization_14/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_14/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
,batch_normalization_14/AssignMovingAvg_1/mulMul0batch_normalization_14/AssignMovingAvg_1/sub:z:07batch_normalization_14/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
(batch_normalization_14/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_14_assignmovingavg_1_readvariableop_resource0batch_normalization_14/AssignMovingAvg_1/mul:z:08^batch_normalization_14/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_14/batchnorm/addAddV21batch_normalization_14/moments/Squeeze_1:output:0/batch_normalization_14/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_14/batchnorm/RsqrtRsqrt(batch_normalization_14/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_14/batchnorm/mulMul*batch_normalization_14/batchnorm/Rsqrt:y:0;batch_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_14/batchnorm/mul_1Mulconv1d_14/Relu:activations:0(batch_normalization_14/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
&batch_normalization_14/batchnorm/mul_2Mul/batch_normalization_14/moments/Squeeze:output:0(batch_normalization_14/batchnorm/mul:z:0*
T0*
_output_shapes
:�
/batch_normalization_14/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_14_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_14/batchnorm/subSub7batch_normalization_14/batchnorm/ReadVariableOp:value:0*batch_normalization_14/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_14/batchnorm/add_1AddV2*batch_normalization_14/batchnorm/mul_1:z:0(batch_normalization_14/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������j
conv1d_15/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_15/Conv1D/ExpandDims
ExpandDims*batch_normalization_14/batchnorm/add_1:z:0(conv1d_15/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_15/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_15_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_15/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_15/Conv1D/ExpandDims_1
ExpandDims4conv1d_15/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_15/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_15/Conv1DConv2D$conv1d_15/Conv1D/ExpandDims:output:0&conv1d_15/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv1d_15/Conv1D/SqueezeSqueezeconv1d_15/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_15/BiasAdd/ReadVariableOpReadVariableOp)conv1d_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_15/BiasAddBiasAdd!conv1d_15/Conv1D/Squeeze:output:0(conv1d_15/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_15/ReluReluconv1d_15/BiasAdd:output:0*
T0*+
_output_shapes
:����������
5batch_normalization_15/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
#batch_normalization_15/moments/meanMeanconv1d_15/Relu:activations:0>batch_normalization_15/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
+batch_normalization_15/moments/StopGradientStopGradient,batch_normalization_15/moments/mean:output:0*
T0*"
_output_shapes
:�
0batch_normalization_15/moments/SquaredDifferenceSquaredDifferenceconv1d_15/Relu:activations:04batch_normalization_15/moments/StopGradient:output:0*
T0*+
_output_shapes
:����������
9batch_normalization_15/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
'batch_normalization_15/moments/varianceMean4batch_normalization_15/moments/SquaredDifference:z:0Bbatch_normalization_15/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
&batch_normalization_15/moments/SqueezeSqueeze,batch_normalization_15/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
(batch_normalization_15/moments/Squeeze_1Squeeze0batch_normalization_15/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_15/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
5batch_normalization_15/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_15_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
*batch_normalization_15/AssignMovingAvg/subSub=batch_normalization_15/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_15/moments/Squeeze:output:0*
T0*
_output_shapes
:�
*batch_normalization_15/AssignMovingAvg/mulMul.batch_normalization_15/AssignMovingAvg/sub:z:05batch_normalization_15/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
&batch_normalization_15/AssignMovingAvgAssignSubVariableOp>batch_normalization_15_assignmovingavg_readvariableop_resource.batch_normalization_15/AssignMovingAvg/mul:z:06^batch_normalization_15/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_15/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
7batch_normalization_15/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_15_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
,batch_normalization_15/AssignMovingAvg_1/subSub?batch_normalization_15/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_15/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
,batch_normalization_15/AssignMovingAvg_1/mulMul0batch_normalization_15/AssignMovingAvg_1/sub:z:07batch_normalization_15/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
(batch_normalization_15/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_15_assignmovingavg_1_readvariableop_resource0batch_normalization_15/AssignMovingAvg_1/mul:z:08^batch_normalization_15/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_15/batchnorm/addAddV21batch_normalization_15/moments/Squeeze_1:output:0/batch_normalization_15/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_15/batchnorm/RsqrtRsqrt(batch_normalization_15/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_15/batchnorm/mulMul*batch_normalization_15/batchnorm/Rsqrt:y:0;batch_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_15/batchnorm/mul_1Mulconv1d_15/Relu:activations:0(batch_normalization_15/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
&batch_normalization_15/batchnorm/mul_2Mul/batch_normalization_15/moments/Squeeze:output:0(batch_normalization_15/batchnorm/mul:z:0*
T0*
_output_shapes
:�
/batch_normalization_15/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_15_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_15/batchnorm/subSub7batch_normalization_15/batchnorm/ReadVariableOp:value:0*batch_normalization_15/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_15/batchnorm/add_1AddV2*batch_normalization_15/batchnorm/mul_1:z:0(batch_normalization_15/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������s
1global_average_pooling1d_6/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_average_pooling1d_6/MeanMean*batch_normalization_15/batchnorm/add_1:z:0:global_average_pooling1d_6/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_29/MatMulMatMul(global_average_pooling1d_6/Mean:output:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_29/ReluReludense_29/BiasAdd:output:0*
T0*'
_output_shapes
:��������� \
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_7/dropout/MulMuldense_29/Relu:activations:0 dropout_7/dropout/Const:output:0*
T0*'
_output_shapes
:��������� b
dropout_7/dropout/ShapeShapedense_29/Relu:activations:0*
T0*
_output_shapes
:�
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*

seed*e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� ^
dropout_7/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_7/dropout/SelectV2SelectV2"dropout_7/dropout/GreaterEqual:z:0dropout_7/dropout/Mul:z:0"dropout_7/dropout/Const_1:output:0*
T0*'
_output_shapes
:��������� �
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes

: <*
dtype0�
dense_30/MatMulMatMul#dropout_7/dropout/SelectV2:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<�
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<Y
reshape_10/ShapeShapedense_30/BiasAdd:output:0*
T0*
_output_shapes
:h
reshape_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_10/strided_sliceStridedSlicereshape_10/Shape:output:0'reshape_10/strided_slice/stack:output:0)reshape_10/strided_slice/stack_1:output:0)reshape_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_10/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_10/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_10/Reshape/shapePack!reshape_10/strided_slice:output:0#reshape_10/Reshape/shape/1:output:0#reshape_10/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reshape_10/ReshapeReshapedense_30/BiasAdd:output:0!reshape_10/Reshape/shape:output:0*
T0*+
_output_shapes
:���������n
IdentityIdentityreshape_10/Reshape:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp'^batch_normalization_12/AssignMovingAvg6^batch_normalization_12/AssignMovingAvg/ReadVariableOp)^batch_normalization_12/AssignMovingAvg_18^batch_normalization_12/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_12/batchnorm/ReadVariableOp4^batch_normalization_12/batchnorm/mul/ReadVariableOp'^batch_normalization_13/AssignMovingAvg6^batch_normalization_13/AssignMovingAvg/ReadVariableOp)^batch_normalization_13/AssignMovingAvg_18^batch_normalization_13/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_13/batchnorm/ReadVariableOp4^batch_normalization_13/batchnorm/mul/ReadVariableOp'^batch_normalization_14/AssignMovingAvg6^batch_normalization_14/AssignMovingAvg/ReadVariableOp)^batch_normalization_14/AssignMovingAvg_18^batch_normalization_14/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_14/batchnorm/ReadVariableOp4^batch_normalization_14/batchnorm/mul/ReadVariableOp'^batch_normalization_15/AssignMovingAvg6^batch_normalization_15/AssignMovingAvg/ReadVariableOp)^batch_normalization_15/AssignMovingAvg_18^batch_normalization_15/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_15/batchnorm/ReadVariableOp4^batch_normalization_15/batchnorm/mul/ReadVariableOp!^conv1d_12/BiasAdd/ReadVariableOp-^conv1d_12/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_13/BiasAdd/ReadVariableOp-^conv1d_13/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_14/BiasAdd/ReadVariableOp-^conv1d_14/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_15/BiasAdd/ReadVariableOp-^conv1d_15/Conv1D/ExpandDims_1/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_12/AssignMovingAvg&batch_normalization_12/AssignMovingAvg2n
5batch_normalization_12/AssignMovingAvg/ReadVariableOp5batch_normalization_12/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_12/AssignMovingAvg_1(batch_normalization_12/AssignMovingAvg_12r
7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_12/batchnorm/ReadVariableOp/batch_normalization_12/batchnorm/ReadVariableOp2j
3batch_normalization_12/batchnorm/mul/ReadVariableOp3batch_normalization_12/batchnorm/mul/ReadVariableOp2P
&batch_normalization_13/AssignMovingAvg&batch_normalization_13/AssignMovingAvg2n
5batch_normalization_13/AssignMovingAvg/ReadVariableOp5batch_normalization_13/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_13/AssignMovingAvg_1(batch_normalization_13/AssignMovingAvg_12r
7batch_normalization_13/AssignMovingAvg_1/ReadVariableOp7batch_normalization_13/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_13/batchnorm/ReadVariableOp/batch_normalization_13/batchnorm/ReadVariableOp2j
3batch_normalization_13/batchnorm/mul/ReadVariableOp3batch_normalization_13/batchnorm/mul/ReadVariableOp2P
&batch_normalization_14/AssignMovingAvg&batch_normalization_14/AssignMovingAvg2n
5batch_normalization_14/AssignMovingAvg/ReadVariableOp5batch_normalization_14/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_14/AssignMovingAvg_1(batch_normalization_14/AssignMovingAvg_12r
7batch_normalization_14/AssignMovingAvg_1/ReadVariableOp7batch_normalization_14/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_14/batchnorm/ReadVariableOp/batch_normalization_14/batchnorm/ReadVariableOp2j
3batch_normalization_14/batchnorm/mul/ReadVariableOp3batch_normalization_14/batchnorm/mul/ReadVariableOp2P
&batch_normalization_15/AssignMovingAvg&batch_normalization_15/AssignMovingAvg2n
5batch_normalization_15/AssignMovingAvg/ReadVariableOp5batch_normalization_15/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_15/AssignMovingAvg_1(batch_normalization_15/AssignMovingAvg_12r
7batch_normalization_15/AssignMovingAvg_1/ReadVariableOp7batch_normalization_15/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_15/batchnorm/ReadVariableOp/batch_normalization_15/batchnorm/ReadVariableOp2j
3batch_normalization_15/batchnorm/mul/ReadVariableOp3batch_normalization_15/batchnorm/mul/ReadVariableOp2D
 conv1d_12/BiasAdd/ReadVariableOp conv1d_12/BiasAdd/ReadVariableOp2\
,conv1d_12/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_12/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_13/BiasAdd/ReadVariableOp conv1d_13/BiasAdd/ReadVariableOp2\
,conv1d_13/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_13/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_14/BiasAdd/ReadVariableOp conv1d_14/BiasAdd/ReadVariableOp2\
,conv1d_14/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_14/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_15/BiasAdd/ReadVariableOp conv1d_15/BiasAdd/ReadVariableOp2\
,conv1d_15/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_15/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�&
�
T__inference_batch_normalization_12_layer_call_and_return_conditional_losses_28142087

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
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
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
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
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
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
 :������������������h
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
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
7__inference_Federated_CNN_F5_H12_layer_call_fn_28141603

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
identity��StatefulPartitionedCall�
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
:���������*6
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141150s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

f
G__inference_dropout_7_layer_call_and_return_conditional_losses_28142460

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:��������� C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

f
G__inference_dropout_7_layer_call_and_return_conditional_losses_28140941

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:��������� C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
9__inference_batch_normalization_14_layer_call_fn_28142243

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_14_layer_call_and_return_conditional_losses_28140542|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
,__inference_conv1d_14_layer_call_fn_28142201

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_14_layer_call_and_return_conditional_losses_28140743s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
9__inference_batch_normalization_15_layer_call_fn_28142348

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_15_layer_call_and_return_conditional_losses_28140624|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�&
�
T__inference_batch_normalization_14_layer_call_and_return_conditional_losses_28140542

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
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
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
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
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
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
 :������������������h
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
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�&
�
T__inference_batch_normalization_12_layer_call_and_return_conditional_losses_28140378

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
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
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
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
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
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
 :������������������h
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
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�

�
F__inference_dense_29_layer_call_and_return_conditional_losses_28140801

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_signature_wrapper_28141481	
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
identity��StatefulPartitionedCall�
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
:���������*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_28140307s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:���������

_user_specified_nameInput
�
H
,__inference_dropout_7_layer_call_fn_28142438

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_7_layer_call_and_return_conditional_losses_28140812`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
F__inference_dense_29_layer_call_and_return_conditional_losses_28142433

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_conv1d_12_layer_call_fn_28141991

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_12_layer_call_and_return_conditional_losses_28140681s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_15_layer_call_and_return_conditional_losses_28140577

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
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
 :������������������z
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
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_14_layer_call_and_return_conditional_losses_28140495

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
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
 :������������������z
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
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�

d
H__inference_reshape_10_layer_call_and_return_conditional_losses_28140843

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
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
value	B :�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������<:O K
'
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
G__inference_conv1d_12_layer_call_and_return_conditional_losses_28140681

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
9__inference_batch_normalization_12_layer_call_fn_28142033

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_12_layer_call_and_return_conditional_losses_28140378|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�{
�
$__inference__traced_restore_28142698
file_prefix7
!assignvariableop_conv1d_12_kernel:/
!assignvariableop_1_conv1d_12_bias:=
/assignvariableop_2_batch_normalization_12_gamma:<
.assignvariableop_3_batch_normalization_12_beta:C
5assignvariableop_4_batch_normalization_12_moving_mean:G
9assignvariableop_5_batch_normalization_12_moving_variance:9
#assignvariableop_6_conv1d_13_kernel:/
!assignvariableop_7_conv1d_13_bias:=
/assignvariableop_8_batch_normalization_13_gamma:<
.assignvariableop_9_batch_normalization_13_beta:D
6assignvariableop_10_batch_normalization_13_moving_mean:H
:assignvariableop_11_batch_normalization_13_moving_variance::
$assignvariableop_12_conv1d_14_kernel:0
"assignvariableop_13_conv1d_14_bias:>
0assignvariableop_14_batch_normalization_14_gamma:=
/assignvariableop_15_batch_normalization_14_beta:D
6assignvariableop_16_batch_normalization_14_moving_mean:H
:assignvariableop_17_batch_normalization_14_moving_variance::
$assignvariableop_18_conv1d_15_kernel:0
"assignvariableop_19_conv1d_15_bias:>
0assignvariableop_20_batch_normalization_15_gamma:=
/assignvariableop_21_batch_normalization_15_beta:D
6assignvariableop_22_batch_normalization_15_moving_mean:H
:assignvariableop_23_batch_normalization_15_moving_variance:5
#assignvariableop_24_dense_29_kernel: /
!assignvariableop_25_dense_29_bias: 5
#assignvariableop_26_dense_30_kernel: </
!assignvariableop_27_dense_30_bias:<
identity_29��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv1d_12_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv1d_12_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_12_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_12_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_12_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_12_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv1d_13_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv1d_13_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_13_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_13_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_13_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_13_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv1d_14_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv1d_14_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_14_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_14_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_14_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_14_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv1d_15_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv1d_15_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_15_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_15_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_15_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_15_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_29_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_29_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp#assignvariableop_26_dense_30_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp!assignvariableop_27_dense_30_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_29Identity_29:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
9__inference_batch_normalization_14_layer_call_fn_28142230

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_14_layer_call_and_return_conditional_losses_28140495|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
b
F__inference_lambda_3_layer_call_and_return_conditional_losses_28141974

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
G__inference_dropout_7_layer_call_and_return_conditional_losses_28140812

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:��������� [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:��������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�#
#__inference__wrapped_model_28140307	
input`
Jfederated_cnn_f5_h12_conv1d_12_conv1d_expanddims_1_readvariableop_resource:L
>federated_cnn_f5_h12_conv1d_12_biasadd_readvariableop_resource:[
Mfederated_cnn_f5_h12_batch_normalization_12_batchnorm_readvariableop_resource:_
Qfederated_cnn_f5_h12_batch_normalization_12_batchnorm_mul_readvariableop_resource:]
Ofederated_cnn_f5_h12_batch_normalization_12_batchnorm_readvariableop_1_resource:]
Ofederated_cnn_f5_h12_batch_normalization_12_batchnorm_readvariableop_2_resource:`
Jfederated_cnn_f5_h12_conv1d_13_conv1d_expanddims_1_readvariableop_resource:L
>federated_cnn_f5_h12_conv1d_13_biasadd_readvariableop_resource:[
Mfederated_cnn_f5_h12_batch_normalization_13_batchnorm_readvariableop_resource:_
Qfederated_cnn_f5_h12_batch_normalization_13_batchnorm_mul_readvariableop_resource:]
Ofederated_cnn_f5_h12_batch_normalization_13_batchnorm_readvariableop_1_resource:]
Ofederated_cnn_f5_h12_batch_normalization_13_batchnorm_readvariableop_2_resource:`
Jfederated_cnn_f5_h12_conv1d_14_conv1d_expanddims_1_readvariableop_resource:L
>federated_cnn_f5_h12_conv1d_14_biasadd_readvariableop_resource:[
Mfederated_cnn_f5_h12_batch_normalization_14_batchnorm_readvariableop_resource:_
Qfederated_cnn_f5_h12_batch_normalization_14_batchnorm_mul_readvariableop_resource:]
Ofederated_cnn_f5_h12_batch_normalization_14_batchnorm_readvariableop_1_resource:]
Ofederated_cnn_f5_h12_batch_normalization_14_batchnorm_readvariableop_2_resource:`
Jfederated_cnn_f5_h12_conv1d_15_conv1d_expanddims_1_readvariableop_resource:L
>federated_cnn_f5_h12_conv1d_15_biasadd_readvariableop_resource:[
Mfederated_cnn_f5_h12_batch_normalization_15_batchnorm_readvariableop_resource:_
Qfederated_cnn_f5_h12_batch_normalization_15_batchnorm_mul_readvariableop_resource:]
Ofederated_cnn_f5_h12_batch_normalization_15_batchnorm_readvariableop_1_resource:]
Ofederated_cnn_f5_h12_batch_normalization_15_batchnorm_readvariableop_2_resource:N
<federated_cnn_f5_h12_dense_29_matmul_readvariableop_resource: K
=federated_cnn_f5_h12_dense_29_biasadd_readvariableop_resource: N
<federated_cnn_f5_h12_dense_30_matmul_readvariableop_resource: <K
=federated_cnn_f5_h12_dense_30_biasadd_readvariableop_resource:<
identity��DFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp�FFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp_1�FFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp_2�HFederated_CNN_F5_H12/batch_normalization_12/batchnorm/mul/ReadVariableOp�DFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp�FFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp_1�FFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp_2�HFederated_CNN_F5_H12/batch_normalization_13/batchnorm/mul/ReadVariableOp�DFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp�FFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp_1�FFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp_2�HFederated_CNN_F5_H12/batch_normalization_14/batchnorm/mul/ReadVariableOp�DFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp�FFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp_1�FFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp_2�HFederated_CNN_F5_H12/batch_normalization_15/batchnorm/mul/ReadVariableOp�5Federated_CNN_F5_H12/conv1d_12/BiasAdd/ReadVariableOp�AFederated_CNN_F5_H12/conv1d_12/Conv1D/ExpandDims_1/ReadVariableOp�5Federated_CNN_F5_H12/conv1d_13/BiasAdd/ReadVariableOp�AFederated_CNN_F5_H12/conv1d_13/Conv1D/ExpandDims_1/ReadVariableOp�5Federated_CNN_F5_H12/conv1d_14/BiasAdd/ReadVariableOp�AFederated_CNN_F5_H12/conv1d_14/Conv1D/ExpandDims_1/ReadVariableOp�5Federated_CNN_F5_H12/conv1d_15/BiasAdd/ReadVariableOp�AFederated_CNN_F5_H12/conv1d_15/Conv1D/ExpandDims_1/ReadVariableOp�4Federated_CNN_F5_H12/dense_29/BiasAdd/ReadVariableOp�3Federated_CNN_F5_H12/dense_29/MatMul/ReadVariableOp�4Federated_CNN_F5_H12/dense_30/BiasAdd/ReadVariableOp�3Federated_CNN_F5_H12/dense_30/MatMul/ReadVariableOp�
1Federated_CNN_F5_H12/lambda_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    �
3Federated_CNN_F5_H12/lambda_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            �
3Federated_CNN_F5_H12/lambda_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
+Federated_CNN_F5_H12/lambda_3/strided_sliceStridedSliceinput:Federated_CNN_F5_H12/lambda_3/strided_slice/stack:output:0<Federated_CNN_F5_H12/lambda_3/strided_slice/stack_1:output:0<Federated_CNN_F5_H12/lambda_3/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask
4Federated_CNN_F5_H12/conv1d_12/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
0Federated_CNN_F5_H12/conv1d_12/Conv1D/ExpandDims
ExpandDims4Federated_CNN_F5_H12/lambda_3/strided_slice:output:0=Federated_CNN_F5_H12/conv1d_12/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
AFederated_CNN_F5_H12/conv1d_12/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpJfederated_cnn_f5_h12_conv1d_12_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0x
6Federated_CNN_F5_H12/conv1d_12/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
2Federated_CNN_F5_H12/conv1d_12/Conv1D/ExpandDims_1
ExpandDimsIFederated_CNN_F5_H12/conv1d_12/Conv1D/ExpandDims_1/ReadVariableOp:value:0?Federated_CNN_F5_H12/conv1d_12/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
%Federated_CNN_F5_H12/conv1d_12/Conv1DConv2D9Federated_CNN_F5_H12/conv1d_12/Conv1D/ExpandDims:output:0;Federated_CNN_F5_H12/conv1d_12/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
-Federated_CNN_F5_H12/conv1d_12/Conv1D/SqueezeSqueeze.Federated_CNN_F5_H12/conv1d_12/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
5Federated_CNN_F5_H12/conv1d_12/BiasAdd/ReadVariableOpReadVariableOp>federated_cnn_f5_h12_conv1d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
&Federated_CNN_F5_H12/conv1d_12/BiasAddBiasAdd6Federated_CNN_F5_H12/conv1d_12/Conv1D/Squeeze:output:0=Federated_CNN_F5_H12/conv1d_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:����������
#Federated_CNN_F5_H12/conv1d_12/ReluRelu/Federated_CNN_F5_H12/conv1d_12/BiasAdd:output:0*
T0*+
_output_shapes
:����������
DFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOpReadVariableOpMfederated_cnn_f5_h12_batch_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
;Federated_CNN_F5_H12/batch_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
9Federated_CNN_F5_H12/batch_normalization_12/batchnorm/addAddV2LFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp:value:0DFederated_CNN_F5_H12/batch_normalization_12/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_12/batchnorm/RsqrtRsqrt=Federated_CNN_F5_H12/batch_normalization_12/batchnorm/add:z:0*
T0*
_output_shapes
:�
HFederated_CNN_F5_H12/batch_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOpQfederated_cnn_f5_h12_batch_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
9Federated_CNN_F5_H12/batch_normalization_12/batchnorm/mulMul?Federated_CNN_F5_H12/batch_normalization_12/batchnorm/Rsqrt:y:0PFederated_CNN_F5_H12/batch_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_12/batchnorm/mul_1Mul1Federated_CNN_F5_H12/conv1d_12/Relu:activations:0=Federated_CNN_F5_H12/batch_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
FFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp_1ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_12_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
;Federated_CNN_F5_H12/batch_normalization_12/batchnorm/mul_2MulNFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp_1:value:0=Federated_CNN_F5_H12/batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes
:�
FFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp_2ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_12_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
9Federated_CNN_F5_H12/batch_normalization_12/batchnorm/subSubNFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp_2:value:0?Federated_CNN_F5_H12/batch_normalization_12/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_12/batchnorm/add_1AddV2?Federated_CNN_F5_H12/batch_normalization_12/batchnorm/mul_1:z:0=Federated_CNN_F5_H12/batch_normalization_12/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������
4Federated_CNN_F5_H12/conv1d_13/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
0Federated_CNN_F5_H12/conv1d_13/Conv1D/ExpandDims
ExpandDims?Federated_CNN_F5_H12/batch_normalization_12/batchnorm/add_1:z:0=Federated_CNN_F5_H12/conv1d_13/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
AFederated_CNN_F5_H12/conv1d_13/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpJfederated_cnn_f5_h12_conv1d_13_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0x
6Federated_CNN_F5_H12/conv1d_13/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
2Federated_CNN_F5_H12/conv1d_13/Conv1D/ExpandDims_1
ExpandDimsIFederated_CNN_F5_H12/conv1d_13/Conv1D/ExpandDims_1/ReadVariableOp:value:0?Federated_CNN_F5_H12/conv1d_13/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
%Federated_CNN_F5_H12/conv1d_13/Conv1DConv2D9Federated_CNN_F5_H12/conv1d_13/Conv1D/ExpandDims:output:0;Federated_CNN_F5_H12/conv1d_13/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
-Federated_CNN_F5_H12/conv1d_13/Conv1D/SqueezeSqueeze.Federated_CNN_F5_H12/conv1d_13/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
5Federated_CNN_F5_H12/conv1d_13/BiasAdd/ReadVariableOpReadVariableOp>federated_cnn_f5_h12_conv1d_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
&Federated_CNN_F5_H12/conv1d_13/BiasAddBiasAdd6Federated_CNN_F5_H12/conv1d_13/Conv1D/Squeeze:output:0=Federated_CNN_F5_H12/conv1d_13/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:����������
#Federated_CNN_F5_H12/conv1d_13/ReluRelu/Federated_CNN_F5_H12/conv1d_13/BiasAdd:output:0*
T0*+
_output_shapes
:����������
DFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOpReadVariableOpMfederated_cnn_f5_h12_batch_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
;Federated_CNN_F5_H12/batch_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
9Federated_CNN_F5_H12/batch_normalization_13/batchnorm/addAddV2LFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp:value:0DFederated_CNN_F5_H12/batch_normalization_13/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_13/batchnorm/RsqrtRsqrt=Federated_CNN_F5_H12/batch_normalization_13/batchnorm/add:z:0*
T0*
_output_shapes
:�
HFederated_CNN_F5_H12/batch_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOpQfederated_cnn_f5_h12_batch_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
9Federated_CNN_F5_H12/batch_normalization_13/batchnorm/mulMul?Federated_CNN_F5_H12/batch_normalization_13/batchnorm/Rsqrt:y:0PFederated_CNN_F5_H12/batch_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_13/batchnorm/mul_1Mul1Federated_CNN_F5_H12/conv1d_13/Relu:activations:0=Federated_CNN_F5_H12/batch_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
FFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp_1ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_13_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
;Federated_CNN_F5_H12/batch_normalization_13/batchnorm/mul_2MulNFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp_1:value:0=Federated_CNN_F5_H12/batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes
:�
FFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp_2ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_13_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
9Federated_CNN_F5_H12/batch_normalization_13/batchnorm/subSubNFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp_2:value:0?Federated_CNN_F5_H12/batch_normalization_13/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_13/batchnorm/add_1AddV2?Federated_CNN_F5_H12/batch_normalization_13/batchnorm/mul_1:z:0=Federated_CNN_F5_H12/batch_normalization_13/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������
4Federated_CNN_F5_H12/conv1d_14/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
0Federated_CNN_F5_H12/conv1d_14/Conv1D/ExpandDims
ExpandDims?Federated_CNN_F5_H12/batch_normalization_13/batchnorm/add_1:z:0=Federated_CNN_F5_H12/conv1d_14/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
AFederated_CNN_F5_H12/conv1d_14/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpJfederated_cnn_f5_h12_conv1d_14_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0x
6Federated_CNN_F5_H12/conv1d_14/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
2Federated_CNN_F5_H12/conv1d_14/Conv1D/ExpandDims_1
ExpandDimsIFederated_CNN_F5_H12/conv1d_14/Conv1D/ExpandDims_1/ReadVariableOp:value:0?Federated_CNN_F5_H12/conv1d_14/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
%Federated_CNN_F5_H12/conv1d_14/Conv1DConv2D9Federated_CNN_F5_H12/conv1d_14/Conv1D/ExpandDims:output:0;Federated_CNN_F5_H12/conv1d_14/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
-Federated_CNN_F5_H12/conv1d_14/Conv1D/SqueezeSqueeze.Federated_CNN_F5_H12/conv1d_14/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
5Federated_CNN_F5_H12/conv1d_14/BiasAdd/ReadVariableOpReadVariableOp>federated_cnn_f5_h12_conv1d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
&Federated_CNN_F5_H12/conv1d_14/BiasAddBiasAdd6Federated_CNN_F5_H12/conv1d_14/Conv1D/Squeeze:output:0=Federated_CNN_F5_H12/conv1d_14/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:����������
#Federated_CNN_F5_H12/conv1d_14/ReluRelu/Federated_CNN_F5_H12/conv1d_14/BiasAdd:output:0*
T0*+
_output_shapes
:����������
DFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOpReadVariableOpMfederated_cnn_f5_h12_batch_normalization_14_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
;Federated_CNN_F5_H12/batch_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
9Federated_CNN_F5_H12/batch_normalization_14/batchnorm/addAddV2LFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp:value:0DFederated_CNN_F5_H12/batch_normalization_14/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_14/batchnorm/RsqrtRsqrt=Federated_CNN_F5_H12/batch_normalization_14/batchnorm/add:z:0*
T0*
_output_shapes
:�
HFederated_CNN_F5_H12/batch_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOpQfederated_cnn_f5_h12_batch_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
9Federated_CNN_F5_H12/batch_normalization_14/batchnorm/mulMul?Federated_CNN_F5_H12/batch_normalization_14/batchnorm/Rsqrt:y:0PFederated_CNN_F5_H12/batch_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_14/batchnorm/mul_1Mul1Federated_CNN_F5_H12/conv1d_14/Relu:activations:0=Federated_CNN_F5_H12/batch_normalization_14/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
FFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp_1ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_14_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
;Federated_CNN_F5_H12/batch_normalization_14/batchnorm/mul_2MulNFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp_1:value:0=Federated_CNN_F5_H12/batch_normalization_14/batchnorm/mul:z:0*
T0*
_output_shapes
:�
FFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp_2ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_14_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
9Federated_CNN_F5_H12/batch_normalization_14/batchnorm/subSubNFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp_2:value:0?Federated_CNN_F5_H12/batch_normalization_14/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_14/batchnorm/add_1AddV2?Federated_CNN_F5_H12/batch_normalization_14/batchnorm/mul_1:z:0=Federated_CNN_F5_H12/batch_normalization_14/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������
4Federated_CNN_F5_H12/conv1d_15/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
0Federated_CNN_F5_H12/conv1d_15/Conv1D/ExpandDims
ExpandDims?Federated_CNN_F5_H12/batch_normalization_14/batchnorm/add_1:z:0=Federated_CNN_F5_H12/conv1d_15/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
AFederated_CNN_F5_H12/conv1d_15/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpJfederated_cnn_f5_h12_conv1d_15_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0x
6Federated_CNN_F5_H12/conv1d_15/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
2Federated_CNN_F5_H12/conv1d_15/Conv1D/ExpandDims_1
ExpandDimsIFederated_CNN_F5_H12/conv1d_15/Conv1D/ExpandDims_1/ReadVariableOp:value:0?Federated_CNN_F5_H12/conv1d_15/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
%Federated_CNN_F5_H12/conv1d_15/Conv1DConv2D9Federated_CNN_F5_H12/conv1d_15/Conv1D/ExpandDims:output:0;Federated_CNN_F5_H12/conv1d_15/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
-Federated_CNN_F5_H12/conv1d_15/Conv1D/SqueezeSqueeze.Federated_CNN_F5_H12/conv1d_15/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
5Federated_CNN_F5_H12/conv1d_15/BiasAdd/ReadVariableOpReadVariableOp>federated_cnn_f5_h12_conv1d_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
&Federated_CNN_F5_H12/conv1d_15/BiasAddBiasAdd6Federated_CNN_F5_H12/conv1d_15/Conv1D/Squeeze:output:0=Federated_CNN_F5_H12/conv1d_15/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:����������
#Federated_CNN_F5_H12/conv1d_15/ReluRelu/Federated_CNN_F5_H12/conv1d_15/BiasAdd:output:0*
T0*+
_output_shapes
:����������
DFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOpReadVariableOpMfederated_cnn_f5_h12_batch_normalization_15_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
;Federated_CNN_F5_H12/batch_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
9Federated_CNN_F5_H12/batch_normalization_15/batchnorm/addAddV2LFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp:value:0DFederated_CNN_F5_H12/batch_normalization_15/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_15/batchnorm/RsqrtRsqrt=Federated_CNN_F5_H12/batch_normalization_15/batchnorm/add:z:0*
T0*
_output_shapes
:�
HFederated_CNN_F5_H12/batch_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOpQfederated_cnn_f5_h12_batch_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
9Federated_CNN_F5_H12/batch_normalization_15/batchnorm/mulMul?Federated_CNN_F5_H12/batch_normalization_15/batchnorm/Rsqrt:y:0PFederated_CNN_F5_H12/batch_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_15/batchnorm/mul_1Mul1Federated_CNN_F5_H12/conv1d_15/Relu:activations:0=Federated_CNN_F5_H12/batch_normalization_15/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
FFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp_1ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_15_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
;Federated_CNN_F5_H12/batch_normalization_15/batchnorm/mul_2MulNFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp_1:value:0=Federated_CNN_F5_H12/batch_normalization_15/batchnorm/mul:z:0*
T0*
_output_shapes
:�
FFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp_2ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_15_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
9Federated_CNN_F5_H12/batch_normalization_15/batchnorm/subSubNFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp_2:value:0?Federated_CNN_F5_H12/batch_normalization_15/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_15/batchnorm/add_1AddV2?Federated_CNN_F5_H12/batch_normalization_15/batchnorm/mul_1:z:0=Federated_CNN_F5_H12/batch_normalization_15/batchnorm/sub:z:0*
T0*+
_output_shapes
:����������
FFederated_CNN_F5_H12/global_average_pooling1d_6/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
4Federated_CNN_F5_H12/global_average_pooling1d_6/MeanMean?Federated_CNN_F5_H12/batch_normalization_15/batchnorm/add_1:z:0OFederated_CNN_F5_H12/global_average_pooling1d_6/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
3Federated_CNN_F5_H12/dense_29/MatMul/ReadVariableOpReadVariableOp<federated_cnn_f5_h12_dense_29_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
$Federated_CNN_F5_H12/dense_29/MatMulMatMul=Federated_CNN_F5_H12/global_average_pooling1d_6/Mean:output:0;Federated_CNN_F5_H12/dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
4Federated_CNN_F5_H12/dense_29/BiasAdd/ReadVariableOpReadVariableOp=federated_cnn_f5_h12_dense_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
%Federated_CNN_F5_H12/dense_29/BiasAddBiasAdd.Federated_CNN_F5_H12/dense_29/MatMul:product:0<Federated_CNN_F5_H12/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
"Federated_CNN_F5_H12/dense_29/ReluRelu.Federated_CNN_F5_H12/dense_29/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
'Federated_CNN_F5_H12/dropout_7/IdentityIdentity0Federated_CNN_F5_H12/dense_29/Relu:activations:0*
T0*'
_output_shapes
:��������� �
3Federated_CNN_F5_H12/dense_30/MatMul/ReadVariableOpReadVariableOp<federated_cnn_f5_h12_dense_30_matmul_readvariableop_resource*
_output_shapes

: <*
dtype0�
$Federated_CNN_F5_H12/dense_30/MatMulMatMul0Federated_CNN_F5_H12/dropout_7/Identity:output:0;Federated_CNN_F5_H12/dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<�
4Federated_CNN_F5_H12/dense_30/BiasAdd/ReadVariableOpReadVariableOp=federated_cnn_f5_h12_dense_30_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
%Federated_CNN_F5_H12/dense_30/BiasAddBiasAdd.Federated_CNN_F5_H12/dense_30/MatMul:product:0<Federated_CNN_F5_H12/dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<�
%Federated_CNN_F5_H12/reshape_10/ShapeShape.Federated_CNN_F5_H12/dense_30/BiasAdd:output:0*
T0*
_output_shapes
:}
3Federated_CNN_F5_H12/reshape_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5Federated_CNN_F5_H12/reshape_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5Federated_CNN_F5_H12/reshape_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-Federated_CNN_F5_H12/reshape_10/strided_sliceStridedSlice.Federated_CNN_F5_H12/reshape_10/Shape:output:0<Federated_CNN_F5_H12/reshape_10/strided_slice/stack:output:0>Federated_CNN_F5_H12/reshape_10/strided_slice/stack_1:output:0>Federated_CNN_F5_H12/reshape_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/Federated_CNN_F5_H12/reshape_10/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :q
/Federated_CNN_F5_H12/reshape_10/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
-Federated_CNN_F5_H12/reshape_10/Reshape/shapePack6Federated_CNN_F5_H12/reshape_10/strided_slice:output:08Federated_CNN_F5_H12/reshape_10/Reshape/shape/1:output:08Federated_CNN_F5_H12/reshape_10/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
'Federated_CNN_F5_H12/reshape_10/ReshapeReshape.Federated_CNN_F5_H12/dense_30/BiasAdd:output:06Federated_CNN_F5_H12/reshape_10/Reshape/shape:output:0*
T0*+
_output_shapes
:����������
IdentityIdentity0Federated_CNN_F5_H12/reshape_10/Reshape:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOpE^Federated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOpG^Federated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp_1G^Federated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp_2I^Federated_CNN_F5_H12/batch_normalization_12/batchnorm/mul/ReadVariableOpE^Federated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOpG^Federated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp_1G^Federated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp_2I^Federated_CNN_F5_H12/batch_normalization_13/batchnorm/mul/ReadVariableOpE^Federated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOpG^Federated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp_1G^Federated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp_2I^Federated_CNN_F5_H12/batch_normalization_14/batchnorm/mul/ReadVariableOpE^Federated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOpG^Federated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp_1G^Federated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp_2I^Federated_CNN_F5_H12/batch_normalization_15/batchnorm/mul/ReadVariableOp6^Federated_CNN_F5_H12/conv1d_12/BiasAdd/ReadVariableOpB^Federated_CNN_F5_H12/conv1d_12/Conv1D/ExpandDims_1/ReadVariableOp6^Federated_CNN_F5_H12/conv1d_13/BiasAdd/ReadVariableOpB^Federated_CNN_F5_H12/conv1d_13/Conv1D/ExpandDims_1/ReadVariableOp6^Federated_CNN_F5_H12/conv1d_14/BiasAdd/ReadVariableOpB^Federated_CNN_F5_H12/conv1d_14/Conv1D/ExpandDims_1/ReadVariableOp6^Federated_CNN_F5_H12/conv1d_15/BiasAdd/ReadVariableOpB^Federated_CNN_F5_H12/conv1d_15/Conv1D/ExpandDims_1/ReadVariableOp5^Federated_CNN_F5_H12/dense_29/BiasAdd/ReadVariableOp4^Federated_CNN_F5_H12/dense_29/MatMul/ReadVariableOp5^Federated_CNN_F5_H12/dense_30/BiasAdd/ReadVariableOp4^Federated_CNN_F5_H12/dense_30/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2�
DFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOpDFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp2�
FFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp_1FFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp_12�
FFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp_2FFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp_22�
HFederated_CNN_F5_H12/batch_normalization_12/batchnorm/mul/ReadVariableOpHFederated_CNN_F5_H12/batch_normalization_12/batchnorm/mul/ReadVariableOp2�
DFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOpDFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp2�
FFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp_1FFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp_12�
FFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp_2FFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp_22�
HFederated_CNN_F5_H12/batch_normalization_13/batchnorm/mul/ReadVariableOpHFederated_CNN_F5_H12/batch_normalization_13/batchnorm/mul/ReadVariableOp2�
DFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOpDFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp2�
FFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp_1FFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp_12�
FFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp_2FFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp_22�
HFederated_CNN_F5_H12/batch_normalization_14/batchnorm/mul/ReadVariableOpHFederated_CNN_F5_H12/batch_normalization_14/batchnorm/mul/ReadVariableOp2�
DFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOpDFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp2�
FFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp_1FFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp_12�
FFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp_2FFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp_22�
HFederated_CNN_F5_H12/batch_normalization_15/batchnorm/mul/ReadVariableOpHFederated_CNN_F5_H12/batch_normalization_15/batchnorm/mul/ReadVariableOp2n
5Federated_CNN_F5_H12/conv1d_12/BiasAdd/ReadVariableOp5Federated_CNN_F5_H12/conv1d_12/BiasAdd/ReadVariableOp2�
AFederated_CNN_F5_H12/conv1d_12/Conv1D/ExpandDims_1/ReadVariableOpAFederated_CNN_F5_H12/conv1d_12/Conv1D/ExpandDims_1/ReadVariableOp2n
5Federated_CNN_F5_H12/conv1d_13/BiasAdd/ReadVariableOp5Federated_CNN_F5_H12/conv1d_13/BiasAdd/ReadVariableOp2�
AFederated_CNN_F5_H12/conv1d_13/Conv1D/ExpandDims_1/ReadVariableOpAFederated_CNN_F5_H12/conv1d_13/Conv1D/ExpandDims_1/ReadVariableOp2n
5Federated_CNN_F5_H12/conv1d_14/BiasAdd/ReadVariableOp5Federated_CNN_F5_H12/conv1d_14/BiasAdd/ReadVariableOp2�
AFederated_CNN_F5_H12/conv1d_14/Conv1D/ExpandDims_1/ReadVariableOpAFederated_CNN_F5_H12/conv1d_14/Conv1D/ExpandDims_1/ReadVariableOp2n
5Federated_CNN_F5_H12/conv1d_15/BiasAdd/ReadVariableOp5Federated_CNN_F5_H12/conv1d_15/BiasAdd/ReadVariableOp2�
AFederated_CNN_F5_H12/conv1d_15/Conv1D/ExpandDims_1/ReadVariableOpAFederated_CNN_F5_H12/conv1d_15/Conv1D/ExpandDims_1/ReadVariableOp2l
4Federated_CNN_F5_H12/dense_29/BiasAdd/ReadVariableOp4Federated_CNN_F5_H12/dense_29/BiasAdd/ReadVariableOp2j
3Federated_CNN_F5_H12/dense_29/MatMul/ReadVariableOp3Federated_CNN_F5_H12/dense_29/MatMul/ReadVariableOp2l
4Federated_CNN_F5_H12/dense_30/BiasAdd/ReadVariableOp4Federated_CNN_F5_H12/dense_30/BiasAdd/ReadVariableOp2j
3Federated_CNN_F5_H12/dense_30/MatMul/ReadVariableOp3Federated_CNN_F5_H12/dense_30/MatMul/ReadVariableOp:R N
+
_output_shapes
:���������

_user_specified_nameInput
�
�
+__inference_dense_29_layer_call_fn_28142422

inputs
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_29_layer_call_and_return_conditional_losses_28140801o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_12_layer_call_and_return_conditional_losses_28142053

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
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
 :������������������z
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
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
e
G__inference_dropout_7_layer_call_and_return_conditional_losses_28142448

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:��������� [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:��������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
7__inference_Federated_CNN_F5_H12_layer_call_fn_28141542

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
identity��StatefulPartitionedCall�
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
:���������*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28140846s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
9__inference_batch_normalization_15_layer_call_fn_28142335

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_15_layer_call_and_return_conditional_losses_28140577|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
G__inference_conv1d_15_layer_call_and_return_conditional_losses_28140774

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_conv1d_14_layer_call_and_return_conditional_losses_28142217

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_13_layer_call_and_return_conditional_losses_28140413

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
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
 :������������������z
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
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�&
�
T__inference_batch_normalization_15_layer_call_and_return_conditional_losses_28142402

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
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
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
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
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
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
 :������������������h
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
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
G
+__inference_lambda_3_layer_call_fn_28141966

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_lambda_3_layer_call_and_return_conditional_losses_28141010d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_dense_30_layer_call_fn_28142469

inputs
unknown: <
	unknown_0:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_30_layer_call_and_return_conditional_losses_28140824o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
G__inference_conv1d_12_layer_call_and_return_conditional_losses_28142007

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_15_layer_call_and_return_conditional_losses_28142368

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
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
 :������������������z
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
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_13_layer_call_and_return_conditional_losses_28142158

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
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
 :������������������z
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
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
9__inference_batch_normalization_13_layer_call_fn_28142125

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_13_layer_call_and_return_conditional_losses_28140413|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
7__inference_Federated_CNN_F5_H12_layer_call_fn_28140905	
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
identity��StatefulPartitionedCall�
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
:���������*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28140846s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:���������

_user_specified_nameInput
�
�
T__inference_batch_normalization_12_layer_call_and_return_conditional_losses_28140331

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
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
 :������������������z
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
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
b
F__inference_lambda_3_layer_call_and_return_conditional_losses_28140663

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
t
X__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_28142413

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
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
G__inference_conv1d_13_layer_call_and_return_conditional_losses_28142112

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141344	
input(
conv1d_12_28141274: 
conv1d_12_28141276:-
batch_normalization_12_28141279:-
batch_normalization_12_28141281:-
batch_normalization_12_28141283:-
batch_normalization_12_28141285:(
conv1d_13_28141288: 
conv1d_13_28141290:-
batch_normalization_13_28141293:-
batch_normalization_13_28141295:-
batch_normalization_13_28141297:-
batch_normalization_13_28141299:(
conv1d_14_28141302: 
conv1d_14_28141304:-
batch_normalization_14_28141307:-
batch_normalization_14_28141309:-
batch_normalization_14_28141311:-
batch_normalization_14_28141313:(
conv1d_15_28141316: 
conv1d_15_28141318:-
batch_normalization_15_28141321:-
batch_normalization_15_28141323:-
batch_normalization_15_28141325:-
batch_normalization_15_28141327:#
dense_29_28141331: 
dense_29_28141333: #
dense_30_28141337: <
dense_30_28141339:<
identity��.batch_normalization_12/StatefulPartitionedCall�.batch_normalization_13/StatefulPartitionedCall�.batch_normalization_14/StatefulPartitionedCall�.batch_normalization_15/StatefulPartitionedCall�!conv1d_12/StatefulPartitionedCall�!conv1d_13/StatefulPartitionedCall�!conv1d_14/StatefulPartitionedCall�!conv1d_15/StatefulPartitionedCall� dense_29/StatefulPartitionedCall� dense_30/StatefulPartitionedCall�
lambda_3/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_lambda_3_layer_call_and_return_conditional_losses_28140663�
!conv1d_12/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0conv1d_12_28141274conv1d_12_28141276*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_12_layer_call_and_return_conditional_losses_28140681�
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall*conv1d_12/StatefulPartitionedCall:output:0batch_normalization_12_28141279batch_normalization_12_28141281batch_normalization_12_28141283batch_normalization_12_28141285*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_12_layer_call_and_return_conditional_losses_28140331�
!conv1d_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0conv1d_13_28141288conv1d_13_28141290*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_13_layer_call_and_return_conditional_losses_28140712�
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall*conv1d_13/StatefulPartitionedCall:output:0batch_normalization_13_28141293batch_normalization_13_28141295batch_normalization_13_28141297batch_normalization_13_28141299*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_13_layer_call_and_return_conditional_losses_28140413�
!conv1d_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0conv1d_14_28141302conv1d_14_28141304*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_14_layer_call_and_return_conditional_losses_28140743�
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall*conv1d_14/StatefulPartitionedCall:output:0batch_normalization_14_28141307batch_normalization_14_28141309batch_normalization_14_28141311batch_normalization_14_28141313*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_14_layer_call_and_return_conditional_losses_28140495�
!conv1d_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0conv1d_15_28141316conv1d_15_28141318*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_15_layer_call_and_return_conditional_losses_28140774�
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv1d_15/StatefulPartitionedCall:output:0batch_normalization_15_28141321batch_normalization_15_28141323batch_normalization_15_28141325batch_normalization_15_28141327*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_15_layer_call_and_return_conditional_losses_28140577�
*global_average_pooling1d_6/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *a
f\RZ
X__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_28140645�
 dense_29/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_6/PartitionedCall:output:0dense_29_28141331dense_29_28141333*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_29_layer_call_and_return_conditional_losses_28140801�
dropout_7/PartitionedCallPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_7_layer_call_and_return_conditional_losses_28140812�
 dense_30/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_30_28141337dense_30_28141339*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_30_layer_call_and_return_conditional_losses_28140824�
reshape_10/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reshape_10_layer_call_and_return_conditional_losses_28140843v
IdentityIdentity#reshape_10/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall"^conv1d_12/StatefulPartitionedCall"^conv1d_13/StatefulPartitionedCall"^conv1d_14/StatefulPartitionedCall"^conv1d_15/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2F
!conv1d_12/StatefulPartitionedCall!conv1d_12/StatefulPartitionedCall2F
!conv1d_13/StatefulPartitionedCall!conv1d_13/StatefulPartitionedCall2F
!conv1d_14/StatefulPartitionedCall!conv1d_14/StatefulPartitionedCall2F
!conv1d_15/StatefulPartitionedCall!conv1d_15/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall:R N
+
_output_shapes
:���������

_user_specified_nameInput
�J
�
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28140846

inputs(
conv1d_12_28140682: 
conv1d_12_28140684:-
batch_normalization_12_28140687:-
batch_normalization_12_28140689:-
batch_normalization_12_28140691:-
batch_normalization_12_28140693:(
conv1d_13_28140713: 
conv1d_13_28140715:-
batch_normalization_13_28140718:-
batch_normalization_13_28140720:-
batch_normalization_13_28140722:-
batch_normalization_13_28140724:(
conv1d_14_28140744: 
conv1d_14_28140746:-
batch_normalization_14_28140749:-
batch_normalization_14_28140751:-
batch_normalization_14_28140753:-
batch_normalization_14_28140755:(
conv1d_15_28140775: 
conv1d_15_28140777:-
batch_normalization_15_28140780:-
batch_normalization_15_28140782:-
batch_normalization_15_28140784:-
batch_normalization_15_28140786:#
dense_29_28140802: 
dense_29_28140804: #
dense_30_28140825: <
dense_30_28140827:<
identity��.batch_normalization_12/StatefulPartitionedCall�.batch_normalization_13/StatefulPartitionedCall�.batch_normalization_14/StatefulPartitionedCall�.batch_normalization_15/StatefulPartitionedCall�!conv1d_12/StatefulPartitionedCall�!conv1d_13/StatefulPartitionedCall�!conv1d_14/StatefulPartitionedCall�!conv1d_15/StatefulPartitionedCall� dense_29/StatefulPartitionedCall� dense_30/StatefulPartitionedCall�
lambda_3/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_lambda_3_layer_call_and_return_conditional_losses_28140663�
!conv1d_12/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0conv1d_12_28140682conv1d_12_28140684*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_12_layer_call_and_return_conditional_losses_28140681�
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall*conv1d_12/StatefulPartitionedCall:output:0batch_normalization_12_28140687batch_normalization_12_28140689batch_normalization_12_28140691batch_normalization_12_28140693*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_12_layer_call_and_return_conditional_losses_28140331�
!conv1d_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0conv1d_13_28140713conv1d_13_28140715*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_13_layer_call_and_return_conditional_losses_28140712�
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall*conv1d_13/StatefulPartitionedCall:output:0batch_normalization_13_28140718batch_normalization_13_28140720batch_normalization_13_28140722batch_normalization_13_28140724*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_13_layer_call_and_return_conditional_losses_28140413�
!conv1d_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0conv1d_14_28140744conv1d_14_28140746*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_14_layer_call_and_return_conditional_losses_28140743�
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall*conv1d_14/StatefulPartitionedCall:output:0batch_normalization_14_28140749batch_normalization_14_28140751batch_normalization_14_28140753batch_normalization_14_28140755*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_14_layer_call_and_return_conditional_losses_28140495�
!conv1d_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0conv1d_15_28140775conv1d_15_28140777*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_15_layer_call_and_return_conditional_losses_28140774�
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv1d_15/StatefulPartitionedCall:output:0batch_normalization_15_28140780batch_normalization_15_28140782batch_normalization_15_28140784batch_normalization_15_28140786*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_15_layer_call_and_return_conditional_losses_28140577�
*global_average_pooling1d_6/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *a
f\RZ
X__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_28140645�
 dense_29/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_6/PartitionedCall:output:0dense_29_28140802dense_29_28140804*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_29_layer_call_and_return_conditional_losses_28140801�
dropout_7/PartitionedCallPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_7_layer_call_and_return_conditional_losses_28140812�
 dense_30/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_30_28140825dense_30_28140827*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_30_layer_call_and_return_conditional_losses_28140824�
reshape_10/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reshape_10_layer_call_and_return_conditional_losses_28140843v
IdentityIdentity#reshape_10/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall"^conv1d_12/StatefulPartitionedCall"^conv1d_13/StatefulPartitionedCall"^conv1d_14/StatefulPartitionedCall"^conv1d_15/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2F
!conv1d_12/StatefulPartitionedCall!conv1d_12/StatefulPartitionedCall2F
!conv1d_13/StatefulPartitionedCall!conv1d_13/StatefulPartitionedCall2F
!conv1d_14/StatefulPartitionedCall!conv1d_14/StatefulPartitionedCall2F
!conv1d_15/StatefulPartitionedCall!conv1d_15/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
t
X__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_28140645

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
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�K
�
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141150

inputs(
conv1d_12_28141080: 
conv1d_12_28141082:-
batch_normalization_12_28141085:-
batch_normalization_12_28141087:-
batch_normalization_12_28141089:-
batch_normalization_12_28141091:(
conv1d_13_28141094: 
conv1d_13_28141096:-
batch_normalization_13_28141099:-
batch_normalization_13_28141101:-
batch_normalization_13_28141103:-
batch_normalization_13_28141105:(
conv1d_14_28141108: 
conv1d_14_28141110:-
batch_normalization_14_28141113:-
batch_normalization_14_28141115:-
batch_normalization_14_28141117:-
batch_normalization_14_28141119:(
conv1d_15_28141122: 
conv1d_15_28141124:-
batch_normalization_15_28141127:-
batch_normalization_15_28141129:-
batch_normalization_15_28141131:-
batch_normalization_15_28141133:#
dense_29_28141137: 
dense_29_28141139: #
dense_30_28141143: <
dense_30_28141145:<
identity��.batch_normalization_12/StatefulPartitionedCall�.batch_normalization_13/StatefulPartitionedCall�.batch_normalization_14/StatefulPartitionedCall�.batch_normalization_15/StatefulPartitionedCall�!conv1d_12/StatefulPartitionedCall�!conv1d_13/StatefulPartitionedCall�!conv1d_14/StatefulPartitionedCall�!conv1d_15/StatefulPartitionedCall� dense_29/StatefulPartitionedCall� dense_30/StatefulPartitionedCall�!dropout_7/StatefulPartitionedCall�
lambda_3/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_lambda_3_layer_call_and_return_conditional_losses_28141010�
!conv1d_12/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0conv1d_12_28141080conv1d_12_28141082*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_12_layer_call_and_return_conditional_losses_28140681�
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall*conv1d_12/StatefulPartitionedCall:output:0batch_normalization_12_28141085batch_normalization_12_28141087batch_normalization_12_28141089batch_normalization_12_28141091*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_12_layer_call_and_return_conditional_losses_28140378�
!conv1d_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0conv1d_13_28141094conv1d_13_28141096*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_13_layer_call_and_return_conditional_losses_28140712�
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall*conv1d_13/StatefulPartitionedCall:output:0batch_normalization_13_28141099batch_normalization_13_28141101batch_normalization_13_28141103batch_normalization_13_28141105*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_13_layer_call_and_return_conditional_losses_28140460�
!conv1d_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0conv1d_14_28141108conv1d_14_28141110*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_14_layer_call_and_return_conditional_losses_28140743�
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall*conv1d_14/StatefulPartitionedCall:output:0batch_normalization_14_28141113batch_normalization_14_28141115batch_normalization_14_28141117batch_normalization_14_28141119*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_14_layer_call_and_return_conditional_losses_28140542�
!conv1d_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0conv1d_15_28141122conv1d_15_28141124*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_15_layer_call_and_return_conditional_losses_28140774�
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv1d_15/StatefulPartitionedCall:output:0batch_normalization_15_28141127batch_normalization_15_28141129batch_normalization_15_28141131batch_normalization_15_28141133*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_batch_normalization_15_layer_call_and_return_conditional_losses_28140624�
*global_average_pooling1d_6/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *a
f\RZ
X__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_28140645�
 dense_29/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_6/PartitionedCall:output:0dense_29_28141137dense_29_28141139*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_29_layer_call_and_return_conditional_losses_28140801�
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_7_layer_call_and_return_conditional_losses_28140941�
 dense_30/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_30_28141143dense_30_28141145*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_30_layer_call_and_return_conditional_losses_28140824�
reshape_10/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reshape_10_layer_call_and_return_conditional_losses_28140843v
IdentityIdentity#reshape_10/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall"^conv1d_12/StatefulPartitionedCall"^conv1d_13/StatefulPartitionedCall"^conv1d_14/StatefulPartitionedCall"^conv1d_15/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2F
!conv1d_12/StatefulPartitionedCall!conv1d_12/StatefulPartitionedCall2F
!conv1d_13/StatefulPartitionedCall!conv1d_13/StatefulPartitionedCall2F
!conv1d_14/StatefulPartitionedCall!conv1d_14/StatefulPartitionedCall2F
!conv1d_15/StatefulPartitionedCall!conv1d_15/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�&
�
T__inference_batch_normalization_13_layer_call_and_return_conditional_losses_28140460

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
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
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
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
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
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
 :������������������h
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
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
,__inference_conv1d_13_layer_call_fn_28142096

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv1d_13_layer_call_and_return_conditional_losses_28140712s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
Input2
serving_default_Input:0���������B

reshape_104
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
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
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
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
�
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
�
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
�
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
�
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
�
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
�
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
�
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
�
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
�
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

zkernel
{bias"
_tf_keras_layer
�
|	variables
}trainable_variables
~regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
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
�26
�27"
trackable_list_wrapper
�
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
�18
�19"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
7__inference_Federated_CNN_F5_H12_layer_call_fn_28140905
7__inference_Federated_CNN_F5_H12_layer_call_fn_28141542
7__inference_Federated_CNN_F5_H12_layer_call_fn_28141603
7__inference_Federated_CNN_F5_H12_layer_call_fn_28141270�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141748
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141956
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141344
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141418�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
#__inference__wrapped_model_28140307Input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
-
�serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_lambda_3_layer_call_fn_28141961
+__inference_lambda_3_layer_call_fn_28141966�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_lambda_3_layer_call_and_return_conditional_losses_28141974
F__inference_lambda_3_layer_call_and_return_conditional_losses_28141982�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_conv1d_12_layer_call_fn_28141991�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_conv1d_12_layer_call_and_return_conditional_losses_28142007�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
&:$2conv1d_12/kernel
:2conv1d_12/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_batch_normalization_12_layer_call_fn_28142020
9__inference_batch_normalization_12_layer_call_fn_28142033�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_batch_normalization_12_layer_call_and_return_conditional_losses_28142053
T__inference_batch_normalization_12_layer_call_and_return_conditional_losses_28142087�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_12/gamma
):'2batch_normalization_12/beta
2:0 (2"batch_normalization_12/moving_mean
6:4 (2&batch_normalization_12/moving_variance
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_conv1d_13_layer_call_fn_28142096�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_conv1d_13_layer_call_and_return_conditional_losses_28142112�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
&:$2conv1d_13/kernel
:2conv1d_13/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_batch_normalization_13_layer_call_fn_28142125
9__inference_batch_normalization_13_layer_call_fn_28142138�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_batch_normalization_13_layer_call_and_return_conditional_losses_28142158
T__inference_batch_normalization_13_layer_call_and_return_conditional_losses_28142192�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_13/gamma
):'2batch_normalization_13/beta
2:0 (2"batch_normalization_13/moving_mean
6:4 (2&batch_normalization_13/moving_variance
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_conv1d_14_layer_call_fn_28142201�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_conv1d_14_layer_call_and_return_conditional_losses_28142217�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
&:$2conv1d_14/kernel
:2conv1d_14/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_batch_normalization_14_layer_call_fn_28142230
9__inference_batch_normalization_14_layer_call_fn_28142243�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_batch_normalization_14_layer_call_and_return_conditional_losses_28142263
T__inference_batch_normalization_14_layer_call_and_return_conditional_losses_28142297�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_14/gamma
):'2batch_normalization_14/beta
2:0 (2"batch_normalization_14/moving_mean
6:4 (2&batch_normalization_14/moving_variance
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_conv1d_15_layer_call_fn_28142306�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_conv1d_15_layer_call_and_return_conditional_losses_28142322�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
&:$2conv1d_15/kernel
:2conv1d_15/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_batch_normalization_15_layer_call_fn_28142335
9__inference_batch_normalization_15_layer_call_fn_28142348�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_batch_normalization_15_layer_call_and_return_conditional_losses_28142368
T__inference_batch_normalization_15_layer_call_and_return_conditional_losses_28142402�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_15/gamma
):'2batch_normalization_15/beta
2:0 (2"batch_normalization_15/moving_mean
6:4 (2&batch_normalization_15/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
=__inference_global_average_pooling1d_6_layer_call_fn_28142407�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
X__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_28142413�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_dense_29_layer_call_fn_28142422�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_dense_29_layer_call_and_return_conditional_losses_28142433�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!: 2dense_29/kernel
: 2dense_29/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
|	variables
}trainable_variables
~regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_7_layer_call_fn_28142438
,__inference_dropout_7_layer_call_fn_28142443�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_7_layer_call_and_return_conditional_losses_28142448
G__inference_dropout_7_layer_call_and_return_conditional_losses_28142460�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_dense_30_layer_call_fn_28142469�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_dense_30_layer_call_and_return_conditional_losses_28142479�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!: <2dense_30/kernel
:<2dense_30/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_reshape_10_layer_call_fn_28142484�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_reshape_10_layer_call_and_return_conditional_losses_28142497�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
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
�
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
�B�
7__inference_Federated_CNN_F5_H12_layer_call_fn_28140905Input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_Federated_CNN_F5_H12_layer_call_fn_28141542inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_Federated_CNN_F5_H12_layer_call_fn_28141603inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_Federated_CNN_F5_H12_layer_call_fn_28141270Input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141748inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141956inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141344Input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141418Input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_signature_wrapper_28141481Input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_lambda_3_layer_call_fn_28141961inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_lambda_3_layer_call_fn_28141966inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_lambda_3_layer_call_and_return_conditional_losses_28141974inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_lambda_3_layer_call_and_return_conditional_losses_28141982inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_conv1d_12_layer_call_fn_28141991inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_conv1d_12_layer_call_and_return_conditional_losses_28142007inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
9__inference_batch_normalization_12_layer_call_fn_28142020inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_batch_normalization_12_layer_call_fn_28142033inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_12_layer_call_and_return_conditional_losses_28142053inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_12_layer_call_and_return_conditional_losses_28142087inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_conv1d_13_layer_call_fn_28142096inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_conv1d_13_layer_call_and_return_conditional_losses_28142112inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
9__inference_batch_normalization_13_layer_call_fn_28142125inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_batch_normalization_13_layer_call_fn_28142138inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_13_layer_call_and_return_conditional_losses_28142158inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_13_layer_call_and_return_conditional_losses_28142192inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_conv1d_14_layer_call_fn_28142201inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_conv1d_14_layer_call_and_return_conditional_losses_28142217inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
9__inference_batch_normalization_14_layer_call_fn_28142230inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_batch_normalization_14_layer_call_fn_28142243inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_14_layer_call_and_return_conditional_losses_28142263inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_14_layer_call_and_return_conditional_losses_28142297inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_conv1d_15_layer_call_fn_28142306inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_conv1d_15_layer_call_and_return_conditional_losses_28142322inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
9__inference_batch_normalization_15_layer_call_fn_28142335inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_batch_normalization_15_layer_call_fn_28142348inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_15_layer_call_and_return_conditional_losses_28142368inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_15_layer_call_and_return_conditional_losses_28142402inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
=__inference_global_average_pooling1d_6_layer_call_fn_28142407inputs"�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
X__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_28142413inputs"�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_dense_29_layer_call_fn_28142422inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dense_29_layer_call_and_return_conditional_losses_28142433inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_dropout_7_layer_call_fn_28142438inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_7_layer_call_fn_28142443inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_7_layer_call_and_return_conditional_losses_28142448inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_7_layer_call_and_return_conditional_losses_28142460inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_dense_30_layer_call_fn_28142469inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dense_30_layer_call_and_return_conditional_losses_28142479inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_reshape_10_layer_call_fn_28142484inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_reshape_10_layer_call_and_return_conditional_losses_28142497inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141344�$%1.0/89EBDCLMYVXW`amjlkz{��:�7
0�-
#� 
Input���������
p 

 
� "0�-
&�#
tensor_0���������
� �
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141418�$%01./89DEBCLMXYVW`almjkz{��:�7
0�-
#� 
Input���������
p

 
� "0�-
&�#
tensor_0���������
� �
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141748�$%1.0/89EBDCLMYVXW`amjlkz{��;�8
1�.
$�!
inputs���������
p 

 
� "0�-
&�#
tensor_0���������
� �
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_28141956�$%01./89DEBCLMXYVW`almjkz{��;�8
1�.
$�!
inputs���������
p

 
� "0�-
&�#
tensor_0���������
� �
7__inference_Federated_CNN_F5_H12_layer_call_fn_28140905�$%1.0/89EBDCLMYVXW`amjlkz{��:�7
0�-
#� 
Input���������
p 

 
� "%�"
unknown����������
7__inference_Federated_CNN_F5_H12_layer_call_fn_28141270�$%01./89DEBCLMXYVW`almjkz{��:�7
0�-
#� 
Input���������
p

 
� "%�"
unknown����������
7__inference_Federated_CNN_F5_H12_layer_call_fn_28141542�$%1.0/89EBDCLMYVXW`amjlkz{��;�8
1�.
$�!
inputs���������
p 

 
� "%�"
unknown����������
7__inference_Federated_CNN_F5_H12_layer_call_fn_28141603�$%01./89DEBCLMXYVW`almjkz{��;�8
1�.
$�!
inputs���������
p

 
� "%�"
unknown����������
#__inference__wrapped_model_28140307�$%1.0/89EBDCLMYVXW`amjlkz{��2�/
(�%
#� 
Input���������
� ";�8
6

reshape_10(�%

reshape_10����������
T__inference_batch_normalization_12_layer_call_and_return_conditional_losses_28142053�1.0/@�=
6�3
-�*
inputs������������������
p 
� "9�6
/�,
tensor_0������������������
� �
T__inference_batch_normalization_12_layer_call_and_return_conditional_losses_28142087�01./@�=
6�3
-�*
inputs������������������
p
� "9�6
/�,
tensor_0������������������
� �
9__inference_batch_normalization_12_layer_call_fn_28142020x1.0/@�=
6�3
-�*
inputs������������������
p 
� ".�+
unknown�������������������
9__inference_batch_normalization_12_layer_call_fn_28142033x01./@�=
6�3
-�*
inputs������������������
p
� ".�+
unknown�������������������
T__inference_batch_normalization_13_layer_call_and_return_conditional_losses_28142158�EBDC@�=
6�3
-�*
inputs������������������
p 
� "9�6
/�,
tensor_0������������������
� �
T__inference_batch_normalization_13_layer_call_and_return_conditional_losses_28142192�DEBC@�=
6�3
-�*
inputs������������������
p
� "9�6
/�,
tensor_0������������������
� �
9__inference_batch_normalization_13_layer_call_fn_28142125xEBDC@�=
6�3
-�*
inputs������������������
p 
� ".�+
unknown�������������������
9__inference_batch_normalization_13_layer_call_fn_28142138xDEBC@�=
6�3
-�*
inputs������������������
p
� ".�+
unknown�������������������
T__inference_batch_normalization_14_layer_call_and_return_conditional_losses_28142263�YVXW@�=
6�3
-�*
inputs������������������
p 
� "9�6
/�,
tensor_0������������������
� �
T__inference_batch_normalization_14_layer_call_and_return_conditional_losses_28142297�XYVW@�=
6�3
-�*
inputs������������������
p
� "9�6
/�,
tensor_0������������������
� �
9__inference_batch_normalization_14_layer_call_fn_28142230xYVXW@�=
6�3
-�*
inputs������������������
p 
� ".�+
unknown�������������������
9__inference_batch_normalization_14_layer_call_fn_28142243xXYVW@�=
6�3
-�*
inputs������������������
p
� ".�+
unknown�������������������
T__inference_batch_normalization_15_layer_call_and_return_conditional_losses_28142368�mjlk@�=
6�3
-�*
inputs������������������
p 
� "9�6
/�,
tensor_0������������������
� �
T__inference_batch_normalization_15_layer_call_and_return_conditional_losses_28142402�lmjk@�=
6�3
-�*
inputs������������������
p
� "9�6
/�,
tensor_0������������������
� �
9__inference_batch_normalization_15_layer_call_fn_28142335xmjlk@�=
6�3
-�*
inputs������������������
p 
� ".�+
unknown�������������������
9__inference_batch_normalization_15_layer_call_fn_28142348xlmjk@�=
6�3
-�*
inputs������������������
p
� ".�+
unknown�������������������
G__inference_conv1d_12_layer_call_and_return_conditional_losses_28142007k$%3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
,__inference_conv1d_12_layer_call_fn_28141991`$%3�0
)�&
$�!
inputs���������
� "%�"
unknown����������
G__inference_conv1d_13_layer_call_and_return_conditional_losses_28142112k893�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
,__inference_conv1d_13_layer_call_fn_28142096`893�0
)�&
$�!
inputs���������
� "%�"
unknown����������
G__inference_conv1d_14_layer_call_and_return_conditional_losses_28142217kLM3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
,__inference_conv1d_14_layer_call_fn_28142201`LM3�0
)�&
$�!
inputs���������
� "%�"
unknown����������
G__inference_conv1d_15_layer_call_and_return_conditional_losses_28142322k`a3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
,__inference_conv1d_15_layer_call_fn_28142306``a3�0
)�&
$�!
inputs���������
� "%�"
unknown����������
F__inference_dense_29_layer_call_and_return_conditional_losses_28142433cz{/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0��������� 
� �
+__inference_dense_29_layer_call_fn_28142422Xz{/�,
%�"
 �
inputs���������
� "!�
unknown��������� �
F__inference_dense_30_layer_call_and_return_conditional_losses_28142479e��/�,
%�"
 �
inputs��������� 
� ",�)
"�
tensor_0���������<
� �
+__inference_dense_30_layer_call_fn_28142469Z��/�,
%�"
 �
inputs��������� 
� "!�
unknown���������<�
G__inference_dropout_7_layer_call_and_return_conditional_losses_28142448c3�0
)�&
 �
inputs��������� 
p 
� ",�)
"�
tensor_0��������� 
� �
G__inference_dropout_7_layer_call_and_return_conditional_losses_28142460c3�0
)�&
 �
inputs��������� 
p
� ",�)
"�
tensor_0��������� 
� �
,__inference_dropout_7_layer_call_fn_28142438X3�0
)�&
 �
inputs��������� 
p 
� "!�
unknown��������� �
,__inference_dropout_7_layer_call_fn_28142443X3�0
)�&
 �
inputs��������� 
p
� "!�
unknown��������� �
X__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_28142413�I�F
?�<
6�3
inputs'���������������������������

 
� "5�2
+�(
tensor_0������������������
� �
=__inference_global_average_pooling1d_6_layer_call_fn_28142407wI�F
?�<
6�3
inputs'���������������������������

 
� "*�'
unknown�������������������
F__inference_lambda_3_layer_call_and_return_conditional_losses_28141974o;�8
1�.
$�!
inputs���������

 
p 
� "0�-
&�#
tensor_0���������
� �
F__inference_lambda_3_layer_call_and_return_conditional_losses_28141982o;�8
1�.
$�!
inputs���������

 
p
� "0�-
&�#
tensor_0���������
� �
+__inference_lambda_3_layer_call_fn_28141961d;�8
1�.
$�!
inputs���������

 
p 
� "%�"
unknown����������
+__inference_lambda_3_layer_call_fn_28141966d;�8
1�.
$�!
inputs���������

 
p
� "%�"
unknown����������
H__inference_reshape_10_layer_call_and_return_conditional_losses_28142497c/�,
%�"
 �
inputs���������<
� "0�-
&�#
tensor_0���������
� �
-__inference_reshape_10_layer_call_fn_28142484X/�,
%�"
 �
inputs���������<
� "%�"
unknown����������
&__inference_signature_wrapper_28141481�$%1.0/89EBDCLMYVXW`amjlkz{��;�8
� 
1�.
,
Input#� 
input���������";�8
6

reshape_10(�%

reshape_10���������