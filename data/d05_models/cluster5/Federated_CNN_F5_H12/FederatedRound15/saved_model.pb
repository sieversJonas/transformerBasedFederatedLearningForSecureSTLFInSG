�
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
dense_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_namedense_48/bias
k
!dense_48/bias/Read/ReadVariableOpReadVariableOpdense_48/bias*
_output_shapes
:<*
dtype0
z
dense_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: <* 
shared_namedense_48/kernel
s
#dense_48/kernel/Read/ReadVariableOpReadVariableOpdense_48/kernel*
_output_shapes

: <*
dtype0
r
dense_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_47/bias
k
!dense_47/bias/Read/ReadVariableOpReadVariableOpdense_47/bias*
_output_shapes
: *
dtype0
z
dense_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_47/kernel
s
#dense_47/kernel/Read/ReadVariableOpReadVariableOpdense_47/kernel*
_output_shapes

: *
dtype0
�
&batch_normalization_23/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_23/moving_variance
�
:batch_normalization_23/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_23/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_23/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_23/moving_mean
�
6batch_normalization_23/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_23/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_23/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_23/beta
�
/batch_normalization_23/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_23/beta*
_output_shapes
:*
dtype0
�
batch_normalization_23/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_23/gamma
�
0batch_normalization_23/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_23/gamma*
_output_shapes
:*
dtype0
t
conv1d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_23/bias
m
"conv1d_23/bias/Read/ReadVariableOpReadVariableOpconv1d_23/bias*
_output_shapes
:*
dtype0
�
conv1d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_23/kernel
y
$conv1d_23/kernel/Read/ReadVariableOpReadVariableOpconv1d_23/kernel*"
_output_shapes
:*
dtype0
�
&batch_normalization_22/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_22/moving_variance
�
:batch_normalization_22/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_22/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_22/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_22/moving_mean
�
6batch_normalization_22/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_22/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_22/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_22/beta
�
/batch_normalization_22/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_22/beta*
_output_shapes
:*
dtype0
�
batch_normalization_22/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_22/gamma
�
0batch_normalization_22/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_22/gamma*
_output_shapes
:*
dtype0
t
conv1d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_22/bias
m
"conv1d_22/bias/Read/ReadVariableOpReadVariableOpconv1d_22/bias*
_output_shapes
:*
dtype0
�
conv1d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_22/kernel
y
$conv1d_22/kernel/Read/ReadVariableOpReadVariableOpconv1d_22/kernel*"
_output_shapes
:*
dtype0
�
&batch_normalization_21/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_21/moving_variance
�
:batch_normalization_21/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_21/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_21/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_21/moving_mean
�
6batch_normalization_21/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_21/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_21/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_21/beta
�
/batch_normalization_21/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_21/beta*
_output_shapes
:*
dtype0
�
batch_normalization_21/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_21/gamma
�
0batch_normalization_21/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_21/gamma*
_output_shapes
:*
dtype0
t
conv1d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_21/bias
m
"conv1d_21/bias/Read/ReadVariableOpReadVariableOpconv1d_21/bias*
_output_shapes
:*
dtype0
�
conv1d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_21/kernel
y
$conv1d_21/kernel/Read/ReadVariableOpReadVariableOpconv1d_21/kernel*"
_output_shapes
:*
dtype0
�
&batch_normalization_20/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_20/moving_variance
�
:batch_normalization_20/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_20/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_20/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_20/moving_mean
�
6batch_normalization_20/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_20/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_20/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_20/beta
�
/batch_normalization_20/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_20/beta*
_output_shapes
:*
dtype0
�
batch_normalization_20/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_20/gamma
�
0batch_normalization_20/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_20/gamma*
_output_shapes
:*
dtype0
t
conv1d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_20/bias
m
"conv1d_20/bias/Read/ReadVariableOpReadVariableOpconv1d_20/bias*
_output_shapes
:*
dtype0
�
conv1d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_20/kernel
y
$conv1d_20/kernel/Read/ReadVariableOpReadVariableOpconv1d_20/kernel*"
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_Inputconv1d_20/kernelconv1d_20/bias&batch_normalization_20/moving_variancebatch_normalization_20/gamma"batch_normalization_20/moving_meanbatch_normalization_20/betaconv1d_21/kernelconv1d_21/bias&batch_normalization_21/moving_variancebatch_normalization_21/gamma"batch_normalization_21/moving_meanbatch_normalization_21/betaconv1d_22/kernelconv1d_22/bias&batch_normalization_22/moving_variancebatch_normalization_22/gamma"batch_normalization_22/moving_meanbatch_normalization_22/betaconv1d_23/kernelconv1d_23/bias&batch_normalization_23/moving_variancebatch_normalization_23/gamma"batch_normalization_23/moving_meanbatch_normalization_23/betadense_47/kerneldense_47/biasdense_48/kerneldense_48/bias*(
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
&__inference_signature_wrapper_46257867

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
VARIABLE_VALUEconv1d_20/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_20/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEbatch_normalization_20/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_20/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_20/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_20/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv1d_21/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_21/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEbatch_normalization_21/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_21/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_21/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_21/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv1d_22/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_22/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEbatch_normalization_22/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_22/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_22/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_22/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv1d_23/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_23/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEbatch_normalization_23/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_23/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_23/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_23/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_47/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_47/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_48/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_48/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv1d_20/kernel/Read/ReadVariableOp"conv1d_20/bias/Read/ReadVariableOp0batch_normalization_20/gamma/Read/ReadVariableOp/batch_normalization_20/beta/Read/ReadVariableOp6batch_normalization_20/moving_mean/Read/ReadVariableOp:batch_normalization_20/moving_variance/Read/ReadVariableOp$conv1d_21/kernel/Read/ReadVariableOp"conv1d_21/bias/Read/ReadVariableOp0batch_normalization_21/gamma/Read/ReadVariableOp/batch_normalization_21/beta/Read/ReadVariableOp6batch_normalization_21/moving_mean/Read/ReadVariableOp:batch_normalization_21/moving_variance/Read/ReadVariableOp$conv1d_22/kernel/Read/ReadVariableOp"conv1d_22/bias/Read/ReadVariableOp0batch_normalization_22/gamma/Read/ReadVariableOp/batch_normalization_22/beta/Read/ReadVariableOp6batch_normalization_22/moving_mean/Read/ReadVariableOp:batch_normalization_22/moving_variance/Read/ReadVariableOp$conv1d_23/kernel/Read/ReadVariableOp"conv1d_23/bias/Read/ReadVariableOp0batch_normalization_23/gamma/Read/ReadVariableOp/batch_normalization_23/beta/Read/ReadVariableOp6batch_normalization_23/moving_mean/Read/ReadVariableOp:batch_normalization_23/moving_variance/Read/ReadVariableOp#dense_47/kernel/Read/ReadVariableOp!dense_47/bias/Read/ReadVariableOp#dense_48/kernel/Read/ReadVariableOp!dense_48/bias/Read/ReadVariableOpConst*)
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
!__inference__traced_save_46258990
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_20/kernelconv1d_20/biasbatch_normalization_20/gammabatch_normalization_20/beta"batch_normalization_20/moving_mean&batch_normalization_20/moving_varianceconv1d_21/kernelconv1d_21/biasbatch_normalization_21/gammabatch_normalization_21/beta"batch_normalization_21/moving_mean&batch_normalization_21/moving_varianceconv1d_22/kernelconv1d_22/biasbatch_normalization_22/gammabatch_normalization_22/beta"batch_normalization_22/moving_mean&batch_normalization_22/moving_varianceconv1d_23/kernelconv1d_23/biasbatch_normalization_23/gammabatch_normalization_23/beta"batch_normalization_23/moving_mean&batch_normalization_23/moving_variancedense_47/kerneldense_47/biasdense_48/kerneldense_48/bias*(
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
$__inference__traced_restore_46259084��
�
f
-__inference_dropout_11_layer_call_fn_46258829

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
GPU 2J 8� *Q
fLRJ
H__inference_dropout_11_layer_call_and_return_conditional_losses_46257327o
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
�
�
9__inference_batch_normalization_22_layer_call_fn_46258629

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
T__inference_batch_normalization_22_layer_call_and_return_conditional_losses_46256928|
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
T__inference_batch_normalization_21_layer_call_and_return_conditional_losses_46256846

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
+__inference_lambda_5_layer_call_fn_46258352

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
F__inference_lambda_5_layer_call_and_return_conditional_losses_46257396d
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
�

d
H__inference_reshape_16_layer_call_and_return_conditional_losses_46258883

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
�
b
F__inference_lambda_5_layer_call_and_return_conditional_losses_46257396

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
�
�
7__inference_Federated_CNN_F5_H12_layer_call_fn_46257291	
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
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46257232s
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
�
�#
#__inference__wrapped_model_46256693	
input`
Jfederated_cnn_f5_h12_conv1d_20_conv1d_expanddims_1_readvariableop_resource:L
>federated_cnn_f5_h12_conv1d_20_biasadd_readvariableop_resource:[
Mfederated_cnn_f5_h12_batch_normalization_20_batchnorm_readvariableop_resource:_
Qfederated_cnn_f5_h12_batch_normalization_20_batchnorm_mul_readvariableop_resource:]
Ofederated_cnn_f5_h12_batch_normalization_20_batchnorm_readvariableop_1_resource:]
Ofederated_cnn_f5_h12_batch_normalization_20_batchnorm_readvariableop_2_resource:`
Jfederated_cnn_f5_h12_conv1d_21_conv1d_expanddims_1_readvariableop_resource:L
>federated_cnn_f5_h12_conv1d_21_biasadd_readvariableop_resource:[
Mfederated_cnn_f5_h12_batch_normalization_21_batchnorm_readvariableop_resource:_
Qfederated_cnn_f5_h12_batch_normalization_21_batchnorm_mul_readvariableop_resource:]
Ofederated_cnn_f5_h12_batch_normalization_21_batchnorm_readvariableop_1_resource:]
Ofederated_cnn_f5_h12_batch_normalization_21_batchnorm_readvariableop_2_resource:`
Jfederated_cnn_f5_h12_conv1d_22_conv1d_expanddims_1_readvariableop_resource:L
>federated_cnn_f5_h12_conv1d_22_biasadd_readvariableop_resource:[
Mfederated_cnn_f5_h12_batch_normalization_22_batchnorm_readvariableop_resource:_
Qfederated_cnn_f5_h12_batch_normalization_22_batchnorm_mul_readvariableop_resource:]
Ofederated_cnn_f5_h12_batch_normalization_22_batchnorm_readvariableop_1_resource:]
Ofederated_cnn_f5_h12_batch_normalization_22_batchnorm_readvariableop_2_resource:`
Jfederated_cnn_f5_h12_conv1d_23_conv1d_expanddims_1_readvariableop_resource:L
>federated_cnn_f5_h12_conv1d_23_biasadd_readvariableop_resource:[
Mfederated_cnn_f5_h12_batch_normalization_23_batchnorm_readvariableop_resource:_
Qfederated_cnn_f5_h12_batch_normalization_23_batchnorm_mul_readvariableop_resource:]
Ofederated_cnn_f5_h12_batch_normalization_23_batchnorm_readvariableop_1_resource:]
Ofederated_cnn_f5_h12_batch_normalization_23_batchnorm_readvariableop_2_resource:N
<federated_cnn_f5_h12_dense_47_matmul_readvariableop_resource: K
=federated_cnn_f5_h12_dense_47_biasadd_readvariableop_resource: N
<federated_cnn_f5_h12_dense_48_matmul_readvariableop_resource: <K
=federated_cnn_f5_h12_dense_48_biasadd_readvariableop_resource:<
identity��DFederated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOp�FFederated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOp_1�FFederated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOp_2�HFederated_CNN_F5_H12/batch_normalization_20/batchnorm/mul/ReadVariableOp�DFederated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOp�FFederated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOp_1�FFederated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOp_2�HFederated_CNN_F5_H12/batch_normalization_21/batchnorm/mul/ReadVariableOp�DFederated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOp�FFederated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOp_1�FFederated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOp_2�HFederated_CNN_F5_H12/batch_normalization_22/batchnorm/mul/ReadVariableOp�DFederated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOp�FFederated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOp_1�FFederated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOp_2�HFederated_CNN_F5_H12/batch_normalization_23/batchnorm/mul/ReadVariableOp�5Federated_CNN_F5_H12/conv1d_20/BiasAdd/ReadVariableOp�AFederated_CNN_F5_H12/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp�5Federated_CNN_F5_H12/conv1d_21/BiasAdd/ReadVariableOp�AFederated_CNN_F5_H12/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp�5Federated_CNN_F5_H12/conv1d_22/BiasAdd/ReadVariableOp�AFederated_CNN_F5_H12/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp�5Federated_CNN_F5_H12/conv1d_23/BiasAdd/ReadVariableOp�AFederated_CNN_F5_H12/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp�4Federated_CNN_F5_H12/dense_47/BiasAdd/ReadVariableOp�3Federated_CNN_F5_H12/dense_47/MatMul/ReadVariableOp�4Federated_CNN_F5_H12/dense_48/BiasAdd/ReadVariableOp�3Federated_CNN_F5_H12/dense_48/MatMul/ReadVariableOp�
1Federated_CNN_F5_H12/lambda_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    �
3Federated_CNN_F5_H12/lambda_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            �
3Federated_CNN_F5_H12/lambda_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
+Federated_CNN_F5_H12/lambda_5/strided_sliceStridedSliceinput:Federated_CNN_F5_H12/lambda_5/strided_slice/stack:output:0<Federated_CNN_F5_H12/lambda_5/strided_slice/stack_1:output:0<Federated_CNN_F5_H12/lambda_5/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask
4Federated_CNN_F5_H12/conv1d_20/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
0Federated_CNN_F5_H12/conv1d_20/Conv1D/ExpandDims
ExpandDims4Federated_CNN_F5_H12/lambda_5/strided_slice:output:0=Federated_CNN_F5_H12/conv1d_20/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
AFederated_CNN_F5_H12/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpJfederated_cnn_f5_h12_conv1d_20_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0x
6Federated_CNN_F5_H12/conv1d_20/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
2Federated_CNN_F5_H12/conv1d_20/Conv1D/ExpandDims_1
ExpandDimsIFederated_CNN_F5_H12/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp:value:0?Federated_CNN_F5_H12/conv1d_20/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
%Federated_CNN_F5_H12/conv1d_20/Conv1DConv2D9Federated_CNN_F5_H12/conv1d_20/Conv1D/ExpandDims:output:0;Federated_CNN_F5_H12/conv1d_20/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
-Federated_CNN_F5_H12/conv1d_20/Conv1D/SqueezeSqueeze.Federated_CNN_F5_H12/conv1d_20/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
5Federated_CNN_F5_H12/conv1d_20/BiasAdd/ReadVariableOpReadVariableOp>federated_cnn_f5_h12_conv1d_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
&Federated_CNN_F5_H12/conv1d_20/BiasAddBiasAdd6Federated_CNN_F5_H12/conv1d_20/Conv1D/Squeeze:output:0=Federated_CNN_F5_H12/conv1d_20/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:����������
#Federated_CNN_F5_H12/conv1d_20/ReluRelu/Federated_CNN_F5_H12/conv1d_20/BiasAdd:output:0*
T0*+
_output_shapes
:����������
DFederated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOpReadVariableOpMfederated_cnn_f5_h12_batch_normalization_20_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
;Federated_CNN_F5_H12/batch_normalization_20/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
9Federated_CNN_F5_H12/batch_normalization_20/batchnorm/addAddV2LFederated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOp:value:0DFederated_CNN_F5_H12/batch_normalization_20/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_20/batchnorm/RsqrtRsqrt=Federated_CNN_F5_H12/batch_normalization_20/batchnorm/add:z:0*
T0*
_output_shapes
:�
HFederated_CNN_F5_H12/batch_normalization_20/batchnorm/mul/ReadVariableOpReadVariableOpQfederated_cnn_f5_h12_batch_normalization_20_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
9Federated_CNN_F5_H12/batch_normalization_20/batchnorm/mulMul?Federated_CNN_F5_H12/batch_normalization_20/batchnorm/Rsqrt:y:0PFederated_CNN_F5_H12/batch_normalization_20/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_20/batchnorm/mul_1Mul1Federated_CNN_F5_H12/conv1d_20/Relu:activations:0=Federated_CNN_F5_H12/batch_normalization_20/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
FFederated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOp_1ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_20_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
;Federated_CNN_F5_H12/batch_normalization_20/batchnorm/mul_2MulNFederated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOp_1:value:0=Federated_CNN_F5_H12/batch_normalization_20/batchnorm/mul:z:0*
T0*
_output_shapes
:�
FFederated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOp_2ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_20_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
9Federated_CNN_F5_H12/batch_normalization_20/batchnorm/subSubNFederated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOp_2:value:0?Federated_CNN_F5_H12/batch_normalization_20/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_20/batchnorm/add_1AddV2?Federated_CNN_F5_H12/batch_normalization_20/batchnorm/mul_1:z:0=Federated_CNN_F5_H12/batch_normalization_20/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������
4Federated_CNN_F5_H12/conv1d_21/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
0Federated_CNN_F5_H12/conv1d_21/Conv1D/ExpandDims
ExpandDims?Federated_CNN_F5_H12/batch_normalization_20/batchnorm/add_1:z:0=Federated_CNN_F5_H12/conv1d_21/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
AFederated_CNN_F5_H12/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpJfederated_cnn_f5_h12_conv1d_21_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0x
6Federated_CNN_F5_H12/conv1d_21/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
2Federated_CNN_F5_H12/conv1d_21/Conv1D/ExpandDims_1
ExpandDimsIFederated_CNN_F5_H12/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp:value:0?Federated_CNN_F5_H12/conv1d_21/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
%Federated_CNN_F5_H12/conv1d_21/Conv1DConv2D9Federated_CNN_F5_H12/conv1d_21/Conv1D/ExpandDims:output:0;Federated_CNN_F5_H12/conv1d_21/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
-Federated_CNN_F5_H12/conv1d_21/Conv1D/SqueezeSqueeze.Federated_CNN_F5_H12/conv1d_21/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
5Federated_CNN_F5_H12/conv1d_21/BiasAdd/ReadVariableOpReadVariableOp>federated_cnn_f5_h12_conv1d_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
&Federated_CNN_F5_H12/conv1d_21/BiasAddBiasAdd6Federated_CNN_F5_H12/conv1d_21/Conv1D/Squeeze:output:0=Federated_CNN_F5_H12/conv1d_21/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:����������
#Federated_CNN_F5_H12/conv1d_21/ReluRelu/Federated_CNN_F5_H12/conv1d_21/BiasAdd:output:0*
T0*+
_output_shapes
:����������
DFederated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOpReadVariableOpMfederated_cnn_f5_h12_batch_normalization_21_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
;Federated_CNN_F5_H12/batch_normalization_21/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
9Federated_CNN_F5_H12/batch_normalization_21/batchnorm/addAddV2LFederated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOp:value:0DFederated_CNN_F5_H12/batch_normalization_21/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_21/batchnorm/RsqrtRsqrt=Federated_CNN_F5_H12/batch_normalization_21/batchnorm/add:z:0*
T0*
_output_shapes
:�
HFederated_CNN_F5_H12/batch_normalization_21/batchnorm/mul/ReadVariableOpReadVariableOpQfederated_cnn_f5_h12_batch_normalization_21_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
9Federated_CNN_F5_H12/batch_normalization_21/batchnorm/mulMul?Federated_CNN_F5_H12/batch_normalization_21/batchnorm/Rsqrt:y:0PFederated_CNN_F5_H12/batch_normalization_21/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_21/batchnorm/mul_1Mul1Federated_CNN_F5_H12/conv1d_21/Relu:activations:0=Federated_CNN_F5_H12/batch_normalization_21/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
FFederated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOp_1ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_21_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
;Federated_CNN_F5_H12/batch_normalization_21/batchnorm/mul_2MulNFederated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOp_1:value:0=Federated_CNN_F5_H12/batch_normalization_21/batchnorm/mul:z:0*
T0*
_output_shapes
:�
FFederated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOp_2ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_21_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
9Federated_CNN_F5_H12/batch_normalization_21/batchnorm/subSubNFederated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOp_2:value:0?Federated_CNN_F5_H12/batch_normalization_21/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_21/batchnorm/add_1AddV2?Federated_CNN_F5_H12/batch_normalization_21/batchnorm/mul_1:z:0=Federated_CNN_F5_H12/batch_normalization_21/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������
4Federated_CNN_F5_H12/conv1d_22/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
0Federated_CNN_F5_H12/conv1d_22/Conv1D/ExpandDims
ExpandDims?Federated_CNN_F5_H12/batch_normalization_21/batchnorm/add_1:z:0=Federated_CNN_F5_H12/conv1d_22/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
AFederated_CNN_F5_H12/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpJfederated_cnn_f5_h12_conv1d_22_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0x
6Federated_CNN_F5_H12/conv1d_22/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
2Federated_CNN_F5_H12/conv1d_22/Conv1D/ExpandDims_1
ExpandDimsIFederated_CNN_F5_H12/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp:value:0?Federated_CNN_F5_H12/conv1d_22/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
%Federated_CNN_F5_H12/conv1d_22/Conv1DConv2D9Federated_CNN_F5_H12/conv1d_22/Conv1D/ExpandDims:output:0;Federated_CNN_F5_H12/conv1d_22/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
-Federated_CNN_F5_H12/conv1d_22/Conv1D/SqueezeSqueeze.Federated_CNN_F5_H12/conv1d_22/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
5Federated_CNN_F5_H12/conv1d_22/BiasAdd/ReadVariableOpReadVariableOp>federated_cnn_f5_h12_conv1d_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
&Federated_CNN_F5_H12/conv1d_22/BiasAddBiasAdd6Federated_CNN_F5_H12/conv1d_22/Conv1D/Squeeze:output:0=Federated_CNN_F5_H12/conv1d_22/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:����������
#Federated_CNN_F5_H12/conv1d_22/ReluRelu/Federated_CNN_F5_H12/conv1d_22/BiasAdd:output:0*
T0*+
_output_shapes
:����������
DFederated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOpReadVariableOpMfederated_cnn_f5_h12_batch_normalization_22_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
;Federated_CNN_F5_H12/batch_normalization_22/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
9Federated_CNN_F5_H12/batch_normalization_22/batchnorm/addAddV2LFederated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOp:value:0DFederated_CNN_F5_H12/batch_normalization_22/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_22/batchnorm/RsqrtRsqrt=Federated_CNN_F5_H12/batch_normalization_22/batchnorm/add:z:0*
T0*
_output_shapes
:�
HFederated_CNN_F5_H12/batch_normalization_22/batchnorm/mul/ReadVariableOpReadVariableOpQfederated_cnn_f5_h12_batch_normalization_22_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
9Federated_CNN_F5_H12/batch_normalization_22/batchnorm/mulMul?Federated_CNN_F5_H12/batch_normalization_22/batchnorm/Rsqrt:y:0PFederated_CNN_F5_H12/batch_normalization_22/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_22/batchnorm/mul_1Mul1Federated_CNN_F5_H12/conv1d_22/Relu:activations:0=Federated_CNN_F5_H12/batch_normalization_22/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
FFederated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOp_1ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_22_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
;Federated_CNN_F5_H12/batch_normalization_22/batchnorm/mul_2MulNFederated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOp_1:value:0=Federated_CNN_F5_H12/batch_normalization_22/batchnorm/mul:z:0*
T0*
_output_shapes
:�
FFederated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOp_2ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_22_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
9Federated_CNN_F5_H12/batch_normalization_22/batchnorm/subSubNFederated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOp_2:value:0?Federated_CNN_F5_H12/batch_normalization_22/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_22/batchnorm/add_1AddV2?Federated_CNN_F5_H12/batch_normalization_22/batchnorm/mul_1:z:0=Federated_CNN_F5_H12/batch_normalization_22/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������
4Federated_CNN_F5_H12/conv1d_23/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
0Federated_CNN_F5_H12/conv1d_23/Conv1D/ExpandDims
ExpandDims?Federated_CNN_F5_H12/batch_normalization_22/batchnorm/add_1:z:0=Federated_CNN_F5_H12/conv1d_23/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
AFederated_CNN_F5_H12/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpJfederated_cnn_f5_h12_conv1d_23_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0x
6Federated_CNN_F5_H12/conv1d_23/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
2Federated_CNN_F5_H12/conv1d_23/Conv1D/ExpandDims_1
ExpandDimsIFederated_CNN_F5_H12/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp:value:0?Federated_CNN_F5_H12/conv1d_23/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
%Federated_CNN_F5_H12/conv1d_23/Conv1DConv2D9Federated_CNN_F5_H12/conv1d_23/Conv1D/ExpandDims:output:0;Federated_CNN_F5_H12/conv1d_23/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
-Federated_CNN_F5_H12/conv1d_23/Conv1D/SqueezeSqueeze.Federated_CNN_F5_H12/conv1d_23/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
5Federated_CNN_F5_H12/conv1d_23/BiasAdd/ReadVariableOpReadVariableOp>federated_cnn_f5_h12_conv1d_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
&Federated_CNN_F5_H12/conv1d_23/BiasAddBiasAdd6Federated_CNN_F5_H12/conv1d_23/Conv1D/Squeeze:output:0=Federated_CNN_F5_H12/conv1d_23/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:����������
#Federated_CNN_F5_H12/conv1d_23/ReluRelu/Federated_CNN_F5_H12/conv1d_23/BiasAdd:output:0*
T0*+
_output_shapes
:����������
DFederated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOpReadVariableOpMfederated_cnn_f5_h12_batch_normalization_23_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
;Federated_CNN_F5_H12/batch_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
9Federated_CNN_F5_H12/batch_normalization_23/batchnorm/addAddV2LFederated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOp:value:0DFederated_CNN_F5_H12/batch_normalization_23/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_23/batchnorm/RsqrtRsqrt=Federated_CNN_F5_H12/batch_normalization_23/batchnorm/add:z:0*
T0*
_output_shapes
:�
HFederated_CNN_F5_H12/batch_normalization_23/batchnorm/mul/ReadVariableOpReadVariableOpQfederated_cnn_f5_h12_batch_normalization_23_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
9Federated_CNN_F5_H12/batch_normalization_23/batchnorm/mulMul?Federated_CNN_F5_H12/batch_normalization_23/batchnorm/Rsqrt:y:0PFederated_CNN_F5_H12/batch_normalization_23/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_23/batchnorm/mul_1Mul1Federated_CNN_F5_H12/conv1d_23/Relu:activations:0=Federated_CNN_F5_H12/batch_normalization_23/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
FFederated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOp_1ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_23_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
;Federated_CNN_F5_H12/batch_normalization_23/batchnorm/mul_2MulNFederated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOp_1:value:0=Federated_CNN_F5_H12/batch_normalization_23/batchnorm/mul:z:0*
T0*
_output_shapes
:�
FFederated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOp_2ReadVariableOpOfederated_cnn_f5_h12_batch_normalization_23_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
9Federated_CNN_F5_H12/batch_normalization_23/batchnorm/subSubNFederated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOp_2:value:0?Federated_CNN_F5_H12/batch_normalization_23/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
;Federated_CNN_F5_H12/batch_normalization_23/batchnorm/add_1AddV2?Federated_CNN_F5_H12/batch_normalization_23/batchnorm/mul_1:z:0=Federated_CNN_F5_H12/batch_normalization_23/batchnorm/sub:z:0*
T0*+
_output_shapes
:����������
GFederated_CNN_F5_H12/global_average_pooling1d_10/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
5Federated_CNN_F5_H12/global_average_pooling1d_10/MeanMean?Federated_CNN_F5_H12/batch_normalization_23/batchnorm/add_1:z:0PFederated_CNN_F5_H12/global_average_pooling1d_10/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
3Federated_CNN_F5_H12/dense_47/MatMul/ReadVariableOpReadVariableOp<federated_cnn_f5_h12_dense_47_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
$Federated_CNN_F5_H12/dense_47/MatMulMatMul>Federated_CNN_F5_H12/global_average_pooling1d_10/Mean:output:0;Federated_CNN_F5_H12/dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
4Federated_CNN_F5_H12/dense_47/BiasAdd/ReadVariableOpReadVariableOp=federated_cnn_f5_h12_dense_47_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
%Federated_CNN_F5_H12/dense_47/BiasAddBiasAdd.Federated_CNN_F5_H12/dense_47/MatMul:product:0<Federated_CNN_F5_H12/dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
"Federated_CNN_F5_H12/dense_47/ReluRelu.Federated_CNN_F5_H12/dense_47/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
(Federated_CNN_F5_H12/dropout_11/IdentityIdentity0Federated_CNN_F5_H12/dense_47/Relu:activations:0*
T0*'
_output_shapes
:��������� �
3Federated_CNN_F5_H12/dense_48/MatMul/ReadVariableOpReadVariableOp<federated_cnn_f5_h12_dense_48_matmul_readvariableop_resource*
_output_shapes

: <*
dtype0�
$Federated_CNN_F5_H12/dense_48/MatMulMatMul1Federated_CNN_F5_H12/dropout_11/Identity:output:0;Federated_CNN_F5_H12/dense_48/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<�
4Federated_CNN_F5_H12/dense_48/BiasAdd/ReadVariableOpReadVariableOp=federated_cnn_f5_h12_dense_48_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
%Federated_CNN_F5_H12/dense_48/BiasAddBiasAdd.Federated_CNN_F5_H12/dense_48/MatMul:product:0<Federated_CNN_F5_H12/dense_48/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<�
%Federated_CNN_F5_H12/reshape_16/ShapeShape.Federated_CNN_F5_H12/dense_48/BiasAdd:output:0*
T0*
_output_shapes
:}
3Federated_CNN_F5_H12/reshape_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5Federated_CNN_F5_H12/reshape_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5Federated_CNN_F5_H12/reshape_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-Federated_CNN_F5_H12/reshape_16/strided_sliceStridedSlice.Federated_CNN_F5_H12/reshape_16/Shape:output:0<Federated_CNN_F5_H12/reshape_16/strided_slice/stack:output:0>Federated_CNN_F5_H12/reshape_16/strided_slice/stack_1:output:0>Federated_CNN_F5_H12/reshape_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/Federated_CNN_F5_H12/reshape_16/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :q
/Federated_CNN_F5_H12/reshape_16/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
-Federated_CNN_F5_H12/reshape_16/Reshape/shapePack6Federated_CNN_F5_H12/reshape_16/strided_slice:output:08Federated_CNN_F5_H12/reshape_16/Reshape/shape/1:output:08Federated_CNN_F5_H12/reshape_16/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
'Federated_CNN_F5_H12/reshape_16/ReshapeReshape.Federated_CNN_F5_H12/dense_48/BiasAdd:output:06Federated_CNN_F5_H12/reshape_16/Reshape/shape:output:0*
T0*+
_output_shapes
:����������
IdentityIdentity0Federated_CNN_F5_H12/reshape_16/Reshape:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOpE^Federated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOpG^Federated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOp_1G^Federated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOp_2I^Federated_CNN_F5_H12/batch_normalization_20/batchnorm/mul/ReadVariableOpE^Federated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOpG^Federated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOp_1G^Federated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOp_2I^Federated_CNN_F5_H12/batch_normalization_21/batchnorm/mul/ReadVariableOpE^Federated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOpG^Federated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOp_1G^Federated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOp_2I^Federated_CNN_F5_H12/batch_normalization_22/batchnorm/mul/ReadVariableOpE^Federated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOpG^Federated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOp_1G^Federated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOp_2I^Federated_CNN_F5_H12/batch_normalization_23/batchnorm/mul/ReadVariableOp6^Federated_CNN_F5_H12/conv1d_20/BiasAdd/ReadVariableOpB^Federated_CNN_F5_H12/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp6^Federated_CNN_F5_H12/conv1d_21/BiasAdd/ReadVariableOpB^Federated_CNN_F5_H12/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp6^Federated_CNN_F5_H12/conv1d_22/BiasAdd/ReadVariableOpB^Federated_CNN_F5_H12/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp6^Federated_CNN_F5_H12/conv1d_23/BiasAdd/ReadVariableOpB^Federated_CNN_F5_H12/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp5^Federated_CNN_F5_H12/dense_47/BiasAdd/ReadVariableOp4^Federated_CNN_F5_H12/dense_47/MatMul/ReadVariableOp5^Federated_CNN_F5_H12/dense_48/BiasAdd/ReadVariableOp4^Federated_CNN_F5_H12/dense_48/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2�
DFederated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOpDFederated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOp2�
FFederated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOp_1FFederated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOp_12�
FFederated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOp_2FFederated_CNN_F5_H12/batch_normalization_20/batchnorm/ReadVariableOp_22�
HFederated_CNN_F5_H12/batch_normalization_20/batchnorm/mul/ReadVariableOpHFederated_CNN_F5_H12/batch_normalization_20/batchnorm/mul/ReadVariableOp2�
DFederated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOpDFederated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOp2�
FFederated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOp_1FFederated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOp_12�
FFederated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOp_2FFederated_CNN_F5_H12/batch_normalization_21/batchnorm/ReadVariableOp_22�
HFederated_CNN_F5_H12/batch_normalization_21/batchnorm/mul/ReadVariableOpHFederated_CNN_F5_H12/batch_normalization_21/batchnorm/mul/ReadVariableOp2�
DFederated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOpDFederated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOp2�
FFederated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOp_1FFederated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOp_12�
FFederated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOp_2FFederated_CNN_F5_H12/batch_normalization_22/batchnorm/ReadVariableOp_22�
HFederated_CNN_F5_H12/batch_normalization_22/batchnorm/mul/ReadVariableOpHFederated_CNN_F5_H12/batch_normalization_22/batchnorm/mul/ReadVariableOp2�
DFederated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOpDFederated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOp2�
FFederated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOp_1FFederated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOp_12�
FFederated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOp_2FFederated_CNN_F5_H12/batch_normalization_23/batchnorm/ReadVariableOp_22�
HFederated_CNN_F5_H12/batch_normalization_23/batchnorm/mul/ReadVariableOpHFederated_CNN_F5_H12/batch_normalization_23/batchnorm/mul/ReadVariableOp2n
5Federated_CNN_F5_H12/conv1d_20/BiasAdd/ReadVariableOp5Federated_CNN_F5_H12/conv1d_20/BiasAdd/ReadVariableOp2�
AFederated_CNN_F5_H12/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOpAFederated_CNN_F5_H12/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp2n
5Federated_CNN_F5_H12/conv1d_21/BiasAdd/ReadVariableOp5Federated_CNN_F5_H12/conv1d_21/BiasAdd/ReadVariableOp2�
AFederated_CNN_F5_H12/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOpAFederated_CNN_F5_H12/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp2n
5Federated_CNN_F5_H12/conv1d_22/BiasAdd/ReadVariableOp5Federated_CNN_F5_H12/conv1d_22/BiasAdd/ReadVariableOp2�
AFederated_CNN_F5_H12/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOpAFederated_CNN_F5_H12/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp2n
5Federated_CNN_F5_H12/conv1d_23/BiasAdd/ReadVariableOp5Federated_CNN_F5_H12/conv1d_23/BiasAdd/ReadVariableOp2�
AFederated_CNN_F5_H12/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOpAFederated_CNN_F5_H12/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp2l
4Federated_CNN_F5_H12/dense_47/BiasAdd/ReadVariableOp4Federated_CNN_F5_H12/dense_47/BiasAdd/ReadVariableOp2j
3Federated_CNN_F5_H12/dense_47/MatMul/ReadVariableOp3Federated_CNN_F5_H12/dense_47/MatMul/ReadVariableOp2l
4Federated_CNN_F5_H12/dense_48/BiasAdd/ReadVariableOp4Federated_CNN_F5_H12/dense_48/BiasAdd/ReadVariableOp2j
3Federated_CNN_F5_H12/dense_48/MatMul/ReadVariableOp3Federated_CNN_F5_H12/dense_48/MatMul/ReadVariableOp:R N
+
_output_shapes
:���������

_user_specified_nameInput
�
�
+__inference_dense_47_layer_call_fn_46258808

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
F__inference_dense_47_layer_call_and_return_conditional_losses_46257187o
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
�
�
9__inference_batch_normalization_20_layer_call_fn_46258419

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
T__inference_batch_normalization_20_layer_call_and_return_conditional_losses_46256764|
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
G__inference_conv1d_21_layer_call_and_return_conditional_losses_46257098

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
G__inference_conv1d_22_layer_call_and_return_conditional_losses_46257129

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
�
�
,__inference_conv1d_21_layer_call_fn_46258482

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
G__inference_conv1d_21_layer_call_and_return_conditional_losses_46257098s
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
�
�
7__inference_Federated_CNN_F5_H12_layer_call_fn_46257928

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
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46257232s
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
�
�
,__inference_conv1d_22_layer_call_fn_46258587

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
G__inference_conv1d_22_layer_call_and_return_conditional_losses_46257129s
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
H__inference_reshape_16_layer_call_and_return_conditional_losses_46257229

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
�
�
,__inference_conv1d_23_layer_call_fn_46258692

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
G__inference_conv1d_23_layer_call_and_return_conditional_losses_46257160s
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
�
�
T__inference_batch_normalization_21_layer_call_and_return_conditional_losses_46256799

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
T__inference_batch_normalization_23_layer_call_and_return_conditional_losses_46256963

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
F__inference_lambda_5_layer_call_and_return_conditional_losses_46257049

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
�
�
T__inference_batch_normalization_22_layer_call_and_return_conditional_losses_46256881

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
�
F__inference_dense_48_layer_call_and_return_conditional_losses_46258865

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
�&
�
T__inference_batch_normalization_20_layer_call_and_return_conditional_losses_46258473

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
�
�
9__inference_batch_normalization_20_layer_call_fn_46258406

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
T__inference_batch_normalization_20_layer_call_and_return_conditional_losses_46256717|
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
�@
�
!__inference__traced_save_46258990
file_prefix/
+savev2_conv1d_20_kernel_read_readvariableop-
)savev2_conv1d_20_bias_read_readvariableop;
7savev2_batch_normalization_20_gamma_read_readvariableop:
6savev2_batch_normalization_20_beta_read_readvariableopA
=savev2_batch_normalization_20_moving_mean_read_readvariableopE
Asavev2_batch_normalization_20_moving_variance_read_readvariableop/
+savev2_conv1d_21_kernel_read_readvariableop-
)savev2_conv1d_21_bias_read_readvariableop;
7savev2_batch_normalization_21_gamma_read_readvariableop:
6savev2_batch_normalization_21_beta_read_readvariableopA
=savev2_batch_normalization_21_moving_mean_read_readvariableopE
Asavev2_batch_normalization_21_moving_variance_read_readvariableop/
+savev2_conv1d_22_kernel_read_readvariableop-
)savev2_conv1d_22_bias_read_readvariableop;
7savev2_batch_normalization_22_gamma_read_readvariableop:
6savev2_batch_normalization_22_beta_read_readvariableopA
=savev2_batch_normalization_22_moving_mean_read_readvariableopE
Asavev2_batch_normalization_22_moving_variance_read_readvariableop/
+savev2_conv1d_23_kernel_read_readvariableop-
)savev2_conv1d_23_bias_read_readvariableop;
7savev2_batch_normalization_23_gamma_read_readvariableop:
6savev2_batch_normalization_23_beta_read_readvariableopA
=savev2_batch_normalization_23_moving_mean_read_readvariableopE
Asavev2_batch_normalization_23_moving_variance_read_readvariableop.
*savev2_dense_47_kernel_read_readvariableop,
(savev2_dense_47_bias_read_readvariableop.
*savev2_dense_48_kernel_read_readvariableop,
(savev2_dense_48_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv1d_20_kernel_read_readvariableop)savev2_conv1d_20_bias_read_readvariableop7savev2_batch_normalization_20_gamma_read_readvariableop6savev2_batch_normalization_20_beta_read_readvariableop=savev2_batch_normalization_20_moving_mean_read_readvariableopAsavev2_batch_normalization_20_moving_variance_read_readvariableop+savev2_conv1d_21_kernel_read_readvariableop)savev2_conv1d_21_bias_read_readvariableop7savev2_batch_normalization_21_gamma_read_readvariableop6savev2_batch_normalization_21_beta_read_readvariableop=savev2_batch_normalization_21_moving_mean_read_readvariableopAsavev2_batch_normalization_21_moving_variance_read_readvariableop+savev2_conv1d_22_kernel_read_readvariableop)savev2_conv1d_22_bias_read_readvariableop7savev2_batch_normalization_22_gamma_read_readvariableop6savev2_batch_normalization_22_beta_read_readvariableop=savev2_batch_normalization_22_moving_mean_read_readvariableopAsavev2_batch_normalization_22_moving_variance_read_readvariableop+savev2_conv1d_23_kernel_read_readvariableop)savev2_conv1d_23_bias_read_readvariableop7savev2_batch_normalization_23_gamma_read_readvariableop6savev2_batch_normalization_23_beta_read_readvariableop=savev2_batch_normalization_23_moving_mean_read_readvariableopAsavev2_batch_normalization_23_moving_variance_read_readvariableop*savev2_dense_47_kernel_read_readvariableop(savev2_dense_47_bias_read_readvariableop*savev2_dense_48_kernel_read_readvariableop(savev2_dense_48_bias_read_readvariableopsavev2_const"/device:CPU:0*&
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
�
u
Y__inference_global_average_pooling1d_10_layer_call_and_return_conditional_losses_46258799

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
�
I
-__inference_dropout_11_layer_call_fn_46258824

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
GPU 2J 8� *Q
fLRJ
H__inference_dropout_11_layer_call_and_return_conditional_losses_46257198`
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
�
�
T__inference_batch_normalization_21_layer_call_and_return_conditional_losses_46258544

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
�
Z
>__inference_global_average_pooling1d_10_layer_call_fn_46258793

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
GPU 2J 8� *b
f]R[
Y__inference_global_average_pooling1d_10_layer_call_and_return_conditional_losses_46257031i
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
��
�
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46258342

inputsK
5conv1d_20_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_20_biasadd_readvariableop_resource:L
>batch_normalization_20_assignmovingavg_readvariableop_resource:N
@batch_normalization_20_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_20_batchnorm_mul_readvariableop_resource:F
8batch_normalization_20_batchnorm_readvariableop_resource:K
5conv1d_21_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_21_biasadd_readvariableop_resource:L
>batch_normalization_21_assignmovingavg_readvariableop_resource:N
@batch_normalization_21_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_21_batchnorm_mul_readvariableop_resource:F
8batch_normalization_21_batchnorm_readvariableop_resource:K
5conv1d_22_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_22_biasadd_readvariableop_resource:L
>batch_normalization_22_assignmovingavg_readvariableop_resource:N
@batch_normalization_22_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_22_batchnorm_mul_readvariableop_resource:F
8batch_normalization_22_batchnorm_readvariableop_resource:K
5conv1d_23_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_23_biasadd_readvariableop_resource:L
>batch_normalization_23_assignmovingavg_readvariableop_resource:N
@batch_normalization_23_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_23_batchnorm_mul_readvariableop_resource:F
8batch_normalization_23_batchnorm_readvariableop_resource:9
'dense_47_matmul_readvariableop_resource: 6
(dense_47_biasadd_readvariableop_resource: 9
'dense_48_matmul_readvariableop_resource: <6
(dense_48_biasadd_readvariableop_resource:<
identity��&batch_normalization_20/AssignMovingAvg�5batch_normalization_20/AssignMovingAvg/ReadVariableOp�(batch_normalization_20/AssignMovingAvg_1�7batch_normalization_20/AssignMovingAvg_1/ReadVariableOp�/batch_normalization_20/batchnorm/ReadVariableOp�3batch_normalization_20/batchnorm/mul/ReadVariableOp�&batch_normalization_21/AssignMovingAvg�5batch_normalization_21/AssignMovingAvg/ReadVariableOp�(batch_normalization_21/AssignMovingAvg_1�7batch_normalization_21/AssignMovingAvg_1/ReadVariableOp�/batch_normalization_21/batchnorm/ReadVariableOp�3batch_normalization_21/batchnorm/mul/ReadVariableOp�&batch_normalization_22/AssignMovingAvg�5batch_normalization_22/AssignMovingAvg/ReadVariableOp�(batch_normalization_22/AssignMovingAvg_1�7batch_normalization_22/AssignMovingAvg_1/ReadVariableOp�/batch_normalization_22/batchnorm/ReadVariableOp�3batch_normalization_22/batchnorm/mul/ReadVariableOp�&batch_normalization_23/AssignMovingAvg�5batch_normalization_23/AssignMovingAvg/ReadVariableOp�(batch_normalization_23/AssignMovingAvg_1�7batch_normalization_23/AssignMovingAvg_1/ReadVariableOp�/batch_normalization_23/batchnorm/ReadVariableOp�3batch_normalization_23/batchnorm/mul/ReadVariableOp� conv1d_20/BiasAdd/ReadVariableOp�,conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp� conv1d_21/BiasAdd/ReadVariableOp�,conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp� conv1d_22/BiasAdd/ReadVariableOp�,conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp� conv1d_23/BiasAdd/ReadVariableOp�,conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp�dense_47/BiasAdd/ReadVariableOp�dense_47/MatMul/ReadVariableOp�dense_48/BiasAdd/ReadVariableOp�dense_48/MatMul/ReadVariableOpq
lambda_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    s
lambda_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            s
lambda_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
lambda_5/strided_sliceStridedSliceinputs%lambda_5/strided_slice/stack:output:0'lambda_5/strided_slice/stack_1:output:0'lambda_5/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskj
conv1d_20/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_20/Conv1D/ExpandDims
ExpandDimslambda_5/strided_slice:output:0(conv1d_20/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_20/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_20_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_20/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_20/Conv1D/ExpandDims_1
ExpandDims4conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_20/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_20/Conv1DConv2D$conv1d_20/Conv1D/ExpandDims:output:0&conv1d_20/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv1d_20/Conv1D/SqueezeSqueezeconv1d_20/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_20/BiasAdd/ReadVariableOpReadVariableOp)conv1d_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_20/BiasAddBiasAdd!conv1d_20/Conv1D/Squeeze:output:0(conv1d_20/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_20/ReluReluconv1d_20/BiasAdd:output:0*
T0*+
_output_shapes
:����������
5batch_normalization_20/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
#batch_normalization_20/moments/meanMeanconv1d_20/Relu:activations:0>batch_normalization_20/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
+batch_normalization_20/moments/StopGradientStopGradient,batch_normalization_20/moments/mean:output:0*
T0*"
_output_shapes
:�
0batch_normalization_20/moments/SquaredDifferenceSquaredDifferenceconv1d_20/Relu:activations:04batch_normalization_20/moments/StopGradient:output:0*
T0*+
_output_shapes
:����������
9batch_normalization_20/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
'batch_normalization_20/moments/varianceMean4batch_normalization_20/moments/SquaredDifference:z:0Bbatch_normalization_20/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
&batch_normalization_20/moments/SqueezeSqueeze,batch_normalization_20/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
(batch_normalization_20/moments/Squeeze_1Squeeze0batch_normalization_20/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_20/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
5batch_normalization_20/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_20_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
*batch_normalization_20/AssignMovingAvg/subSub=batch_normalization_20/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_20/moments/Squeeze:output:0*
T0*
_output_shapes
:�
*batch_normalization_20/AssignMovingAvg/mulMul.batch_normalization_20/AssignMovingAvg/sub:z:05batch_normalization_20/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
&batch_normalization_20/AssignMovingAvgAssignSubVariableOp>batch_normalization_20_assignmovingavg_readvariableop_resource.batch_normalization_20/AssignMovingAvg/mul:z:06^batch_normalization_20/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_20/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
7batch_normalization_20/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_20_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
,batch_normalization_20/AssignMovingAvg_1/subSub?batch_normalization_20/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_20/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
,batch_normalization_20/AssignMovingAvg_1/mulMul0batch_normalization_20/AssignMovingAvg_1/sub:z:07batch_normalization_20/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
(batch_normalization_20/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_20_assignmovingavg_1_readvariableop_resource0batch_normalization_20/AssignMovingAvg_1/mul:z:08^batch_normalization_20/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_20/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_20/batchnorm/addAddV21batch_normalization_20/moments/Squeeze_1:output:0/batch_normalization_20/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_20/batchnorm/RsqrtRsqrt(batch_normalization_20/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_20/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_20_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_20/batchnorm/mulMul*batch_normalization_20/batchnorm/Rsqrt:y:0;batch_normalization_20/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_20/batchnorm/mul_1Mulconv1d_20/Relu:activations:0(batch_normalization_20/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
&batch_normalization_20/batchnorm/mul_2Mul/batch_normalization_20/moments/Squeeze:output:0(batch_normalization_20/batchnorm/mul:z:0*
T0*
_output_shapes
:�
/batch_normalization_20/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_20_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_20/batchnorm/subSub7batch_normalization_20/batchnorm/ReadVariableOp:value:0*batch_normalization_20/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_20/batchnorm/add_1AddV2*batch_normalization_20/batchnorm/mul_1:z:0(batch_normalization_20/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������j
conv1d_21/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_21/Conv1D/ExpandDims
ExpandDims*batch_normalization_20/batchnorm/add_1:z:0(conv1d_21/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_21/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_21_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_21/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_21/Conv1D/ExpandDims_1
ExpandDims4conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_21/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_21/Conv1DConv2D$conv1d_21/Conv1D/ExpandDims:output:0&conv1d_21/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv1d_21/Conv1D/SqueezeSqueezeconv1d_21/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_21/BiasAdd/ReadVariableOpReadVariableOp)conv1d_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_21/BiasAddBiasAdd!conv1d_21/Conv1D/Squeeze:output:0(conv1d_21/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_21/ReluReluconv1d_21/BiasAdd:output:0*
T0*+
_output_shapes
:����������
5batch_normalization_21/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
#batch_normalization_21/moments/meanMeanconv1d_21/Relu:activations:0>batch_normalization_21/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
+batch_normalization_21/moments/StopGradientStopGradient,batch_normalization_21/moments/mean:output:0*
T0*"
_output_shapes
:�
0batch_normalization_21/moments/SquaredDifferenceSquaredDifferenceconv1d_21/Relu:activations:04batch_normalization_21/moments/StopGradient:output:0*
T0*+
_output_shapes
:����������
9batch_normalization_21/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
'batch_normalization_21/moments/varianceMean4batch_normalization_21/moments/SquaredDifference:z:0Bbatch_normalization_21/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
&batch_normalization_21/moments/SqueezeSqueeze,batch_normalization_21/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
(batch_normalization_21/moments/Squeeze_1Squeeze0batch_normalization_21/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_21/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
5batch_normalization_21/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_21_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
*batch_normalization_21/AssignMovingAvg/subSub=batch_normalization_21/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_21/moments/Squeeze:output:0*
T0*
_output_shapes
:�
*batch_normalization_21/AssignMovingAvg/mulMul.batch_normalization_21/AssignMovingAvg/sub:z:05batch_normalization_21/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
&batch_normalization_21/AssignMovingAvgAssignSubVariableOp>batch_normalization_21_assignmovingavg_readvariableop_resource.batch_normalization_21/AssignMovingAvg/mul:z:06^batch_normalization_21/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_21/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
7batch_normalization_21/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_21_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
,batch_normalization_21/AssignMovingAvg_1/subSub?batch_normalization_21/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_21/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
,batch_normalization_21/AssignMovingAvg_1/mulMul0batch_normalization_21/AssignMovingAvg_1/sub:z:07batch_normalization_21/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
(batch_normalization_21/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_21_assignmovingavg_1_readvariableop_resource0batch_normalization_21/AssignMovingAvg_1/mul:z:08^batch_normalization_21/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_21/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_21/batchnorm/addAddV21batch_normalization_21/moments/Squeeze_1:output:0/batch_normalization_21/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_21/batchnorm/RsqrtRsqrt(batch_normalization_21/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_21/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_21_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_21/batchnorm/mulMul*batch_normalization_21/batchnorm/Rsqrt:y:0;batch_normalization_21/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_21/batchnorm/mul_1Mulconv1d_21/Relu:activations:0(batch_normalization_21/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
&batch_normalization_21/batchnorm/mul_2Mul/batch_normalization_21/moments/Squeeze:output:0(batch_normalization_21/batchnorm/mul:z:0*
T0*
_output_shapes
:�
/batch_normalization_21/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_21_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_21/batchnorm/subSub7batch_normalization_21/batchnorm/ReadVariableOp:value:0*batch_normalization_21/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_21/batchnorm/add_1AddV2*batch_normalization_21/batchnorm/mul_1:z:0(batch_normalization_21/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������j
conv1d_22/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_22/Conv1D/ExpandDims
ExpandDims*batch_normalization_21/batchnorm/add_1:z:0(conv1d_22/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_22/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_22_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_22/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_22/Conv1D/ExpandDims_1
ExpandDims4conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_22/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_22/Conv1DConv2D$conv1d_22/Conv1D/ExpandDims:output:0&conv1d_22/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv1d_22/Conv1D/SqueezeSqueezeconv1d_22/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_22/BiasAdd/ReadVariableOpReadVariableOp)conv1d_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_22/BiasAddBiasAdd!conv1d_22/Conv1D/Squeeze:output:0(conv1d_22/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_22/ReluReluconv1d_22/BiasAdd:output:0*
T0*+
_output_shapes
:����������
5batch_normalization_22/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
#batch_normalization_22/moments/meanMeanconv1d_22/Relu:activations:0>batch_normalization_22/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
+batch_normalization_22/moments/StopGradientStopGradient,batch_normalization_22/moments/mean:output:0*
T0*"
_output_shapes
:�
0batch_normalization_22/moments/SquaredDifferenceSquaredDifferenceconv1d_22/Relu:activations:04batch_normalization_22/moments/StopGradient:output:0*
T0*+
_output_shapes
:����������
9batch_normalization_22/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
'batch_normalization_22/moments/varianceMean4batch_normalization_22/moments/SquaredDifference:z:0Bbatch_normalization_22/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
&batch_normalization_22/moments/SqueezeSqueeze,batch_normalization_22/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
(batch_normalization_22/moments/Squeeze_1Squeeze0batch_normalization_22/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_22/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
5batch_normalization_22/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_22_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
*batch_normalization_22/AssignMovingAvg/subSub=batch_normalization_22/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_22/moments/Squeeze:output:0*
T0*
_output_shapes
:�
*batch_normalization_22/AssignMovingAvg/mulMul.batch_normalization_22/AssignMovingAvg/sub:z:05batch_normalization_22/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
&batch_normalization_22/AssignMovingAvgAssignSubVariableOp>batch_normalization_22_assignmovingavg_readvariableop_resource.batch_normalization_22/AssignMovingAvg/mul:z:06^batch_normalization_22/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_22/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
7batch_normalization_22/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_22_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
,batch_normalization_22/AssignMovingAvg_1/subSub?batch_normalization_22/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_22/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
,batch_normalization_22/AssignMovingAvg_1/mulMul0batch_normalization_22/AssignMovingAvg_1/sub:z:07batch_normalization_22/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
(batch_normalization_22/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_22_assignmovingavg_1_readvariableop_resource0batch_normalization_22/AssignMovingAvg_1/mul:z:08^batch_normalization_22/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_22/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_22/batchnorm/addAddV21batch_normalization_22/moments/Squeeze_1:output:0/batch_normalization_22/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_22/batchnorm/RsqrtRsqrt(batch_normalization_22/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_22/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_22_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_22/batchnorm/mulMul*batch_normalization_22/batchnorm/Rsqrt:y:0;batch_normalization_22/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_22/batchnorm/mul_1Mulconv1d_22/Relu:activations:0(batch_normalization_22/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
&batch_normalization_22/batchnorm/mul_2Mul/batch_normalization_22/moments/Squeeze:output:0(batch_normalization_22/batchnorm/mul:z:0*
T0*
_output_shapes
:�
/batch_normalization_22/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_22_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_22/batchnorm/subSub7batch_normalization_22/batchnorm/ReadVariableOp:value:0*batch_normalization_22/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_22/batchnorm/add_1AddV2*batch_normalization_22/batchnorm/mul_1:z:0(batch_normalization_22/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������j
conv1d_23/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_23/Conv1D/ExpandDims
ExpandDims*batch_normalization_22/batchnorm/add_1:z:0(conv1d_23/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_23/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_23_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_23/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_23/Conv1D/ExpandDims_1
ExpandDims4conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_23/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_23/Conv1DConv2D$conv1d_23/Conv1D/ExpandDims:output:0&conv1d_23/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv1d_23/Conv1D/SqueezeSqueezeconv1d_23/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_23/BiasAdd/ReadVariableOpReadVariableOp)conv1d_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_23/BiasAddBiasAdd!conv1d_23/Conv1D/Squeeze:output:0(conv1d_23/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_23/ReluReluconv1d_23/BiasAdd:output:0*
T0*+
_output_shapes
:����������
5batch_normalization_23/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
#batch_normalization_23/moments/meanMeanconv1d_23/Relu:activations:0>batch_normalization_23/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
+batch_normalization_23/moments/StopGradientStopGradient,batch_normalization_23/moments/mean:output:0*
T0*"
_output_shapes
:�
0batch_normalization_23/moments/SquaredDifferenceSquaredDifferenceconv1d_23/Relu:activations:04batch_normalization_23/moments/StopGradient:output:0*
T0*+
_output_shapes
:����������
9batch_normalization_23/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
'batch_normalization_23/moments/varianceMean4batch_normalization_23/moments/SquaredDifference:z:0Bbatch_normalization_23/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
&batch_normalization_23/moments/SqueezeSqueeze,batch_normalization_23/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
(batch_normalization_23/moments/Squeeze_1Squeeze0batch_normalization_23/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_23/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
5batch_normalization_23/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_23_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
*batch_normalization_23/AssignMovingAvg/subSub=batch_normalization_23/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_23/moments/Squeeze:output:0*
T0*
_output_shapes
:�
*batch_normalization_23/AssignMovingAvg/mulMul.batch_normalization_23/AssignMovingAvg/sub:z:05batch_normalization_23/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
&batch_normalization_23/AssignMovingAvgAssignSubVariableOp>batch_normalization_23_assignmovingavg_readvariableop_resource.batch_normalization_23/AssignMovingAvg/mul:z:06^batch_normalization_23/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_23/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
7batch_normalization_23/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_23_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
,batch_normalization_23/AssignMovingAvg_1/subSub?batch_normalization_23/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_23/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
,batch_normalization_23/AssignMovingAvg_1/mulMul0batch_normalization_23/AssignMovingAvg_1/sub:z:07batch_normalization_23/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
(batch_normalization_23/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_23_assignmovingavg_1_readvariableop_resource0batch_normalization_23/AssignMovingAvg_1/mul:z:08^batch_normalization_23/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_23/batchnorm/addAddV21batch_normalization_23/moments/Squeeze_1:output:0/batch_normalization_23/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_23/batchnorm/RsqrtRsqrt(batch_normalization_23/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_23/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_23_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_23/batchnorm/mulMul*batch_normalization_23/batchnorm/Rsqrt:y:0;batch_normalization_23/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_23/batchnorm/mul_1Mulconv1d_23/Relu:activations:0(batch_normalization_23/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
&batch_normalization_23/batchnorm/mul_2Mul/batch_normalization_23/moments/Squeeze:output:0(batch_normalization_23/batchnorm/mul:z:0*
T0*
_output_shapes
:�
/batch_normalization_23/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_23_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_23/batchnorm/subSub7batch_normalization_23/batchnorm/ReadVariableOp:value:0*batch_normalization_23/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_23/batchnorm/add_1AddV2*batch_normalization_23/batchnorm/mul_1:z:0(batch_normalization_23/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������t
2global_average_pooling1d_10/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
 global_average_pooling1d_10/MeanMean*batch_normalization_23/batchnorm/add_1:z:0;global_average_pooling1d_10/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_47/MatMulMatMul)global_average_pooling1d_10/Mean:output:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_47/ReluReludense_47/BiasAdd:output:0*
T0*'
_output_shapes
:��������� ]
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_11/dropout/MulMuldense_47/Relu:activations:0!dropout_11/dropout/Const:output:0*
T0*'
_output_shapes
:��������� c
dropout_11/dropout/ShapeShapedense_47/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*

seed*f
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� _
dropout_11/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_11/dropout/SelectV2SelectV2#dropout_11/dropout/GreaterEqual:z:0dropout_11/dropout/Mul:z:0#dropout_11/dropout/Const_1:output:0*
T0*'
_output_shapes
:��������� �
dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource*
_output_shapes

: <*
dtype0�
dense_48/MatMulMatMul$dropout_11/dropout/SelectV2:output:0&dense_48/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<�
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<Y
reshape_16/ShapeShapedense_48/BiasAdd:output:0*
T0*
_output_shapes
:h
reshape_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_16/strided_sliceStridedSlicereshape_16/Shape:output:0'reshape_16/strided_slice/stack:output:0)reshape_16/strided_slice/stack_1:output:0)reshape_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_16/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_16/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_16/Reshape/shapePack!reshape_16/strided_slice:output:0#reshape_16/Reshape/shape/1:output:0#reshape_16/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reshape_16/ReshapeReshapedense_48/BiasAdd:output:0!reshape_16/Reshape/shape:output:0*
T0*+
_output_shapes
:���������n
IdentityIdentityreshape_16/Reshape:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp'^batch_normalization_20/AssignMovingAvg6^batch_normalization_20/AssignMovingAvg/ReadVariableOp)^batch_normalization_20/AssignMovingAvg_18^batch_normalization_20/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_20/batchnorm/ReadVariableOp4^batch_normalization_20/batchnorm/mul/ReadVariableOp'^batch_normalization_21/AssignMovingAvg6^batch_normalization_21/AssignMovingAvg/ReadVariableOp)^batch_normalization_21/AssignMovingAvg_18^batch_normalization_21/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_21/batchnorm/ReadVariableOp4^batch_normalization_21/batchnorm/mul/ReadVariableOp'^batch_normalization_22/AssignMovingAvg6^batch_normalization_22/AssignMovingAvg/ReadVariableOp)^batch_normalization_22/AssignMovingAvg_18^batch_normalization_22/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_22/batchnorm/ReadVariableOp4^batch_normalization_22/batchnorm/mul/ReadVariableOp'^batch_normalization_23/AssignMovingAvg6^batch_normalization_23/AssignMovingAvg/ReadVariableOp)^batch_normalization_23/AssignMovingAvg_18^batch_normalization_23/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_23/batchnorm/ReadVariableOp4^batch_normalization_23/batchnorm/mul/ReadVariableOp!^conv1d_20/BiasAdd/ReadVariableOp-^conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_21/BiasAdd/ReadVariableOp-^conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_22/BiasAdd/ReadVariableOp-^conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_23/BiasAdd/ReadVariableOp-^conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_20/AssignMovingAvg&batch_normalization_20/AssignMovingAvg2n
5batch_normalization_20/AssignMovingAvg/ReadVariableOp5batch_normalization_20/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_20/AssignMovingAvg_1(batch_normalization_20/AssignMovingAvg_12r
7batch_normalization_20/AssignMovingAvg_1/ReadVariableOp7batch_normalization_20/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_20/batchnorm/ReadVariableOp/batch_normalization_20/batchnorm/ReadVariableOp2j
3batch_normalization_20/batchnorm/mul/ReadVariableOp3batch_normalization_20/batchnorm/mul/ReadVariableOp2P
&batch_normalization_21/AssignMovingAvg&batch_normalization_21/AssignMovingAvg2n
5batch_normalization_21/AssignMovingAvg/ReadVariableOp5batch_normalization_21/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_21/AssignMovingAvg_1(batch_normalization_21/AssignMovingAvg_12r
7batch_normalization_21/AssignMovingAvg_1/ReadVariableOp7batch_normalization_21/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_21/batchnorm/ReadVariableOp/batch_normalization_21/batchnorm/ReadVariableOp2j
3batch_normalization_21/batchnorm/mul/ReadVariableOp3batch_normalization_21/batchnorm/mul/ReadVariableOp2P
&batch_normalization_22/AssignMovingAvg&batch_normalization_22/AssignMovingAvg2n
5batch_normalization_22/AssignMovingAvg/ReadVariableOp5batch_normalization_22/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_22/AssignMovingAvg_1(batch_normalization_22/AssignMovingAvg_12r
7batch_normalization_22/AssignMovingAvg_1/ReadVariableOp7batch_normalization_22/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_22/batchnorm/ReadVariableOp/batch_normalization_22/batchnorm/ReadVariableOp2j
3batch_normalization_22/batchnorm/mul/ReadVariableOp3batch_normalization_22/batchnorm/mul/ReadVariableOp2P
&batch_normalization_23/AssignMovingAvg&batch_normalization_23/AssignMovingAvg2n
5batch_normalization_23/AssignMovingAvg/ReadVariableOp5batch_normalization_23/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_23/AssignMovingAvg_1(batch_normalization_23/AssignMovingAvg_12r
7batch_normalization_23/AssignMovingAvg_1/ReadVariableOp7batch_normalization_23/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_23/batchnorm/ReadVariableOp/batch_normalization_23/batchnorm/ReadVariableOp2j
3batch_normalization_23/batchnorm/mul/ReadVariableOp3batch_normalization_23/batchnorm/mul/ReadVariableOp2D
 conv1d_20/BiasAdd/ReadVariableOp conv1d_20/BiasAdd/ReadVariableOp2\
,conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_21/BiasAdd/ReadVariableOp conv1d_21/BiasAdd/ReadVariableOp2\
,conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_22/BiasAdd/ReadVariableOp conv1d_22/BiasAdd/ReadVariableOp2\
,conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_23/BiasAdd/ReadVariableOp conv1d_23/BiasAdd/ReadVariableOp2\
,conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�&
�
T__inference_batch_normalization_21_layer_call_and_return_conditional_losses_46258578

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
�
�
9__inference_batch_normalization_21_layer_call_fn_46258511

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
T__inference_batch_normalization_21_layer_call_and_return_conditional_losses_46256799|
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
G__inference_conv1d_21_layer_call_and_return_conditional_losses_46258498

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
�
G
+__inference_lambda_5_layer_call_fn_46258347

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
F__inference_lambda_5_layer_call_and_return_conditional_losses_46257049d
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
�
�
9__inference_batch_normalization_23_layer_call_fn_46258734

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
T__inference_batch_normalization_23_layer_call_and_return_conditional_losses_46257010|
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
T__inference_batch_normalization_22_layer_call_and_return_conditional_losses_46258683

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
7__inference_Federated_CNN_F5_H12_layer_call_fn_46257656	
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
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46257536s
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
�
b
F__inference_lambda_5_layer_call_and_return_conditional_losses_46258360

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
�
�
,__inference_conv1d_20_layer_call_fn_46258377

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
G__inference_conv1d_20_layer_call_and_return_conditional_losses_46257067s
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
�
�
&__inference_signature_wrapper_46257867	
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
#__inference__wrapped_model_46256693s
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
�

g
H__inference_dropout_11_layer_call_and_return_conditional_losses_46257327

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
��
�
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46258134

inputsK
5conv1d_20_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_20_biasadd_readvariableop_resource:F
8batch_normalization_20_batchnorm_readvariableop_resource:J
<batch_normalization_20_batchnorm_mul_readvariableop_resource:H
:batch_normalization_20_batchnorm_readvariableop_1_resource:H
:batch_normalization_20_batchnorm_readvariableop_2_resource:K
5conv1d_21_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_21_biasadd_readvariableop_resource:F
8batch_normalization_21_batchnorm_readvariableop_resource:J
<batch_normalization_21_batchnorm_mul_readvariableop_resource:H
:batch_normalization_21_batchnorm_readvariableop_1_resource:H
:batch_normalization_21_batchnorm_readvariableop_2_resource:K
5conv1d_22_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_22_biasadd_readvariableop_resource:F
8batch_normalization_22_batchnorm_readvariableop_resource:J
<batch_normalization_22_batchnorm_mul_readvariableop_resource:H
:batch_normalization_22_batchnorm_readvariableop_1_resource:H
:batch_normalization_22_batchnorm_readvariableop_2_resource:K
5conv1d_23_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_23_biasadd_readvariableop_resource:F
8batch_normalization_23_batchnorm_readvariableop_resource:J
<batch_normalization_23_batchnorm_mul_readvariableop_resource:H
:batch_normalization_23_batchnorm_readvariableop_1_resource:H
:batch_normalization_23_batchnorm_readvariableop_2_resource:9
'dense_47_matmul_readvariableop_resource: 6
(dense_47_biasadd_readvariableop_resource: 9
'dense_48_matmul_readvariableop_resource: <6
(dense_48_biasadd_readvariableop_resource:<
identity��/batch_normalization_20/batchnorm/ReadVariableOp�1batch_normalization_20/batchnorm/ReadVariableOp_1�1batch_normalization_20/batchnorm/ReadVariableOp_2�3batch_normalization_20/batchnorm/mul/ReadVariableOp�/batch_normalization_21/batchnorm/ReadVariableOp�1batch_normalization_21/batchnorm/ReadVariableOp_1�1batch_normalization_21/batchnorm/ReadVariableOp_2�3batch_normalization_21/batchnorm/mul/ReadVariableOp�/batch_normalization_22/batchnorm/ReadVariableOp�1batch_normalization_22/batchnorm/ReadVariableOp_1�1batch_normalization_22/batchnorm/ReadVariableOp_2�3batch_normalization_22/batchnorm/mul/ReadVariableOp�/batch_normalization_23/batchnorm/ReadVariableOp�1batch_normalization_23/batchnorm/ReadVariableOp_1�1batch_normalization_23/batchnorm/ReadVariableOp_2�3batch_normalization_23/batchnorm/mul/ReadVariableOp� conv1d_20/BiasAdd/ReadVariableOp�,conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp� conv1d_21/BiasAdd/ReadVariableOp�,conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp� conv1d_22/BiasAdd/ReadVariableOp�,conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp� conv1d_23/BiasAdd/ReadVariableOp�,conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp�dense_47/BiasAdd/ReadVariableOp�dense_47/MatMul/ReadVariableOp�dense_48/BiasAdd/ReadVariableOp�dense_48/MatMul/ReadVariableOpq
lambda_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    s
lambda_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            s
lambda_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
lambda_5/strided_sliceStridedSliceinputs%lambda_5/strided_slice/stack:output:0'lambda_5/strided_slice/stack_1:output:0'lambda_5/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskj
conv1d_20/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_20/Conv1D/ExpandDims
ExpandDimslambda_5/strided_slice:output:0(conv1d_20/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_20/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_20_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_20/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_20/Conv1D/ExpandDims_1
ExpandDims4conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_20/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_20/Conv1DConv2D$conv1d_20/Conv1D/ExpandDims:output:0&conv1d_20/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv1d_20/Conv1D/SqueezeSqueezeconv1d_20/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_20/BiasAdd/ReadVariableOpReadVariableOp)conv1d_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_20/BiasAddBiasAdd!conv1d_20/Conv1D/Squeeze:output:0(conv1d_20/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_20/ReluReluconv1d_20/BiasAdd:output:0*
T0*+
_output_shapes
:����������
/batch_normalization_20/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_20_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_20/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_20/batchnorm/addAddV27batch_normalization_20/batchnorm/ReadVariableOp:value:0/batch_normalization_20/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_20/batchnorm/RsqrtRsqrt(batch_normalization_20/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_20/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_20_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_20/batchnorm/mulMul*batch_normalization_20/batchnorm/Rsqrt:y:0;batch_normalization_20/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_20/batchnorm/mul_1Mulconv1d_20/Relu:activations:0(batch_normalization_20/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
1batch_normalization_20/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_20_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
&batch_normalization_20/batchnorm/mul_2Mul9batch_normalization_20/batchnorm/ReadVariableOp_1:value:0(batch_normalization_20/batchnorm/mul:z:0*
T0*
_output_shapes
:�
1batch_normalization_20/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_20_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
$batch_normalization_20/batchnorm/subSub9batch_normalization_20/batchnorm/ReadVariableOp_2:value:0*batch_normalization_20/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_20/batchnorm/add_1AddV2*batch_normalization_20/batchnorm/mul_1:z:0(batch_normalization_20/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������j
conv1d_21/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_21/Conv1D/ExpandDims
ExpandDims*batch_normalization_20/batchnorm/add_1:z:0(conv1d_21/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_21/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_21_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_21/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_21/Conv1D/ExpandDims_1
ExpandDims4conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_21/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_21/Conv1DConv2D$conv1d_21/Conv1D/ExpandDims:output:0&conv1d_21/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv1d_21/Conv1D/SqueezeSqueezeconv1d_21/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_21/BiasAdd/ReadVariableOpReadVariableOp)conv1d_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_21/BiasAddBiasAdd!conv1d_21/Conv1D/Squeeze:output:0(conv1d_21/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_21/ReluReluconv1d_21/BiasAdd:output:0*
T0*+
_output_shapes
:����������
/batch_normalization_21/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_21_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_21/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_21/batchnorm/addAddV27batch_normalization_21/batchnorm/ReadVariableOp:value:0/batch_normalization_21/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_21/batchnorm/RsqrtRsqrt(batch_normalization_21/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_21/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_21_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_21/batchnorm/mulMul*batch_normalization_21/batchnorm/Rsqrt:y:0;batch_normalization_21/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_21/batchnorm/mul_1Mulconv1d_21/Relu:activations:0(batch_normalization_21/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
1batch_normalization_21/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_21_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
&batch_normalization_21/batchnorm/mul_2Mul9batch_normalization_21/batchnorm/ReadVariableOp_1:value:0(batch_normalization_21/batchnorm/mul:z:0*
T0*
_output_shapes
:�
1batch_normalization_21/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_21_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
$batch_normalization_21/batchnorm/subSub9batch_normalization_21/batchnorm/ReadVariableOp_2:value:0*batch_normalization_21/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_21/batchnorm/add_1AddV2*batch_normalization_21/batchnorm/mul_1:z:0(batch_normalization_21/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������j
conv1d_22/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_22/Conv1D/ExpandDims
ExpandDims*batch_normalization_21/batchnorm/add_1:z:0(conv1d_22/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_22/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_22_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_22/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_22/Conv1D/ExpandDims_1
ExpandDims4conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_22/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_22/Conv1DConv2D$conv1d_22/Conv1D/ExpandDims:output:0&conv1d_22/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv1d_22/Conv1D/SqueezeSqueezeconv1d_22/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_22/BiasAdd/ReadVariableOpReadVariableOp)conv1d_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_22/BiasAddBiasAdd!conv1d_22/Conv1D/Squeeze:output:0(conv1d_22/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_22/ReluReluconv1d_22/BiasAdd:output:0*
T0*+
_output_shapes
:����������
/batch_normalization_22/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_22_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_22/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_22/batchnorm/addAddV27batch_normalization_22/batchnorm/ReadVariableOp:value:0/batch_normalization_22/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_22/batchnorm/RsqrtRsqrt(batch_normalization_22/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_22/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_22_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_22/batchnorm/mulMul*batch_normalization_22/batchnorm/Rsqrt:y:0;batch_normalization_22/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_22/batchnorm/mul_1Mulconv1d_22/Relu:activations:0(batch_normalization_22/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
1batch_normalization_22/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_22_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
&batch_normalization_22/batchnorm/mul_2Mul9batch_normalization_22/batchnorm/ReadVariableOp_1:value:0(batch_normalization_22/batchnorm/mul:z:0*
T0*
_output_shapes
:�
1batch_normalization_22/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_22_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
$batch_normalization_22/batchnorm/subSub9batch_normalization_22/batchnorm/ReadVariableOp_2:value:0*batch_normalization_22/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_22/batchnorm/add_1AddV2*batch_normalization_22/batchnorm/mul_1:z:0(batch_normalization_22/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������j
conv1d_23/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_23/Conv1D/ExpandDims
ExpandDims*batch_normalization_22/batchnorm/add_1:z:0(conv1d_23/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_23/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_23_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_23/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_23/Conv1D/ExpandDims_1
ExpandDims4conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_23/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_23/Conv1DConv2D$conv1d_23/Conv1D/ExpandDims:output:0&conv1d_23/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv1d_23/Conv1D/SqueezeSqueezeconv1d_23/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
 conv1d_23/BiasAdd/ReadVariableOpReadVariableOp)conv1d_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_23/BiasAddBiasAdd!conv1d_23/Conv1D/Squeeze:output:0(conv1d_23/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������h
conv1d_23/ReluReluconv1d_23/BiasAdd:output:0*
T0*+
_output_shapes
:����������
/batch_normalization_23/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_23_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_23/batchnorm/addAddV27batch_normalization_23/batchnorm/ReadVariableOp:value:0/batch_normalization_23/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_23/batchnorm/RsqrtRsqrt(batch_normalization_23/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_23/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_23_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_23/batchnorm/mulMul*batch_normalization_23/batchnorm/Rsqrt:y:0;batch_normalization_23/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_23/batchnorm/mul_1Mulconv1d_23/Relu:activations:0(batch_normalization_23/batchnorm/mul:z:0*
T0*+
_output_shapes
:����������
1batch_normalization_23/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_23_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
&batch_normalization_23/batchnorm/mul_2Mul9batch_normalization_23/batchnorm/ReadVariableOp_1:value:0(batch_normalization_23/batchnorm/mul:z:0*
T0*
_output_shapes
:�
1batch_normalization_23/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_23_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
$batch_normalization_23/batchnorm/subSub9batch_normalization_23/batchnorm/ReadVariableOp_2:value:0*batch_normalization_23/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_23/batchnorm/add_1AddV2*batch_normalization_23/batchnorm/mul_1:z:0(batch_normalization_23/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������t
2global_average_pooling1d_10/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
 global_average_pooling1d_10/MeanMean*batch_normalization_23/batchnorm/add_1:z:0;global_average_pooling1d_10/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_47/MatMulMatMul)global_average_pooling1d_10/Mean:output:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_47/ReluReludense_47/BiasAdd:output:0*
T0*'
_output_shapes
:��������� n
dropout_11/IdentityIdentitydense_47/Relu:activations:0*
T0*'
_output_shapes
:��������� �
dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource*
_output_shapes

: <*
dtype0�
dense_48/MatMulMatMuldropout_11/Identity:output:0&dense_48/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<�
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<Y
reshape_16/ShapeShapedense_48/BiasAdd:output:0*
T0*
_output_shapes
:h
reshape_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_16/strided_sliceStridedSlicereshape_16/Shape:output:0'reshape_16/strided_slice/stack:output:0)reshape_16/strided_slice/stack_1:output:0)reshape_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_16/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_16/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_16/Reshape/shapePack!reshape_16/strided_slice:output:0#reshape_16/Reshape/shape/1:output:0#reshape_16/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reshape_16/ReshapeReshapedense_48/BiasAdd:output:0!reshape_16/Reshape/shape:output:0*
T0*+
_output_shapes
:���������n
IdentityIdentityreshape_16/Reshape:output:0^NoOp*
T0*+
_output_shapes
:����������

NoOpNoOp0^batch_normalization_20/batchnorm/ReadVariableOp2^batch_normalization_20/batchnorm/ReadVariableOp_12^batch_normalization_20/batchnorm/ReadVariableOp_24^batch_normalization_20/batchnorm/mul/ReadVariableOp0^batch_normalization_21/batchnorm/ReadVariableOp2^batch_normalization_21/batchnorm/ReadVariableOp_12^batch_normalization_21/batchnorm/ReadVariableOp_24^batch_normalization_21/batchnorm/mul/ReadVariableOp0^batch_normalization_22/batchnorm/ReadVariableOp2^batch_normalization_22/batchnorm/ReadVariableOp_12^batch_normalization_22/batchnorm/ReadVariableOp_24^batch_normalization_22/batchnorm/mul/ReadVariableOp0^batch_normalization_23/batchnorm/ReadVariableOp2^batch_normalization_23/batchnorm/ReadVariableOp_12^batch_normalization_23/batchnorm/ReadVariableOp_24^batch_normalization_23/batchnorm/mul/ReadVariableOp!^conv1d_20/BiasAdd/ReadVariableOp-^conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_21/BiasAdd/ReadVariableOp-^conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_22/BiasAdd/ReadVariableOp-^conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_23/BiasAdd/ReadVariableOp-^conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_20/batchnorm/ReadVariableOp/batch_normalization_20/batchnorm/ReadVariableOp2f
1batch_normalization_20/batchnorm/ReadVariableOp_11batch_normalization_20/batchnorm/ReadVariableOp_12f
1batch_normalization_20/batchnorm/ReadVariableOp_21batch_normalization_20/batchnorm/ReadVariableOp_22j
3batch_normalization_20/batchnorm/mul/ReadVariableOp3batch_normalization_20/batchnorm/mul/ReadVariableOp2b
/batch_normalization_21/batchnorm/ReadVariableOp/batch_normalization_21/batchnorm/ReadVariableOp2f
1batch_normalization_21/batchnorm/ReadVariableOp_11batch_normalization_21/batchnorm/ReadVariableOp_12f
1batch_normalization_21/batchnorm/ReadVariableOp_21batch_normalization_21/batchnorm/ReadVariableOp_22j
3batch_normalization_21/batchnorm/mul/ReadVariableOp3batch_normalization_21/batchnorm/mul/ReadVariableOp2b
/batch_normalization_22/batchnorm/ReadVariableOp/batch_normalization_22/batchnorm/ReadVariableOp2f
1batch_normalization_22/batchnorm/ReadVariableOp_11batch_normalization_22/batchnorm/ReadVariableOp_12f
1batch_normalization_22/batchnorm/ReadVariableOp_21batch_normalization_22/batchnorm/ReadVariableOp_22j
3batch_normalization_22/batchnorm/mul/ReadVariableOp3batch_normalization_22/batchnorm/mul/ReadVariableOp2b
/batch_normalization_23/batchnorm/ReadVariableOp/batch_normalization_23/batchnorm/ReadVariableOp2f
1batch_normalization_23/batchnorm/ReadVariableOp_11batch_normalization_23/batchnorm/ReadVariableOp_12f
1batch_normalization_23/batchnorm/ReadVariableOp_21batch_normalization_23/batchnorm/ReadVariableOp_22j
3batch_normalization_23/batchnorm/mul/ReadVariableOp3batch_normalization_23/batchnorm/mul/ReadVariableOp2D
 conv1d_20/BiasAdd/ReadVariableOp conv1d_20/BiasAdd/ReadVariableOp2\
,conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_21/BiasAdd/ReadVariableOp conv1d_21/BiasAdd/ReadVariableOp2\
,conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_22/BiasAdd/ReadVariableOp conv1d_22/BiasAdd/ReadVariableOp2\
,conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_23/BiasAdd/ReadVariableOp conv1d_23/BiasAdd/ReadVariableOp2\
,conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_20_layer_call_and_return_conditional_losses_46256717

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

g
H__inference_dropout_11_layer_call_and_return_conditional_losses_46258846

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
�
�
G__inference_conv1d_22_layer_call_and_return_conditional_losses_46258603

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
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46257232

inputs(
conv1d_20_46257068: 
conv1d_20_46257070:-
batch_normalization_20_46257073:-
batch_normalization_20_46257075:-
batch_normalization_20_46257077:-
batch_normalization_20_46257079:(
conv1d_21_46257099: 
conv1d_21_46257101:-
batch_normalization_21_46257104:-
batch_normalization_21_46257106:-
batch_normalization_21_46257108:-
batch_normalization_21_46257110:(
conv1d_22_46257130: 
conv1d_22_46257132:-
batch_normalization_22_46257135:-
batch_normalization_22_46257137:-
batch_normalization_22_46257139:-
batch_normalization_22_46257141:(
conv1d_23_46257161: 
conv1d_23_46257163:-
batch_normalization_23_46257166:-
batch_normalization_23_46257168:-
batch_normalization_23_46257170:-
batch_normalization_23_46257172:#
dense_47_46257188: 
dense_47_46257190: #
dense_48_46257211: <
dense_48_46257213:<
identity��.batch_normalization_20/StatefulPartitionedCall�.batch_normalization_21/StatefulPartitionedCall�.batch_normalization_22/StatefulPartitionedCall�.batch_normalization_23/StatefulPartitionedCall�!conv1d_20/StatefulPartitionedCall�!conv1d_21/StatefulPartitionedCall�!conv1d_22/StatefulPartitionedCall�!conv1d_23/StatefulPartitionedCall� dense_47/StatefulPartitionedCall� dense_48/StatefulPartitionedCall�
lambda_5/PartitionedCallPartitionedCallinputs*
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
F__inference_lambda_5_layer_call_and_return_conditional_losses_46257049�
!conv1d_20/StatefulPartitionedCallStatefulPartitionedCall!lambda_5/PartitionedCall:output:0conv1d_20_46257068conv1d_20_46257070*
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
G__inference_conv1d_20_layer_call_and_return_conditional_losses_46257067�
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall*conv1d_20/StatefulPartitionedCall:output:0batch_normalization_20_46257073batch_normalization_20_46257075batch_normalization_20_46257077batch_normalization_20_46257079*
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
T__inference_batch_normalization_20_layer_call_and_return_conditional_losses_46256717�
!conv1d_21/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0conv1d_21_46257099conv1d_21_46257101*
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
G__inference_conv1d_21_layer_call_and_return_conditional_losses_46257098�
.batch_normalization_21/StatefulPartitionedCallStatefulPartitionedCall*conv1d_21/StatefulPartitionedCall:output:0batch_normalization_21_46257104batch_normalization_21_46257106batch_normalization_21_46257108batch_normalization_21_46257110*
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
T__inference_batch_normalization_21_layer_call_and_return_conditional_losses_46256799�
!conv1d_22/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_21/StatefulPartitionedCall:output:0conv1d_22_46257130conv1d_22_46257132*
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
G__inference_conv1d_22_layer_call_and_return_conditional_losses_46257129�
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall*conv1d_22/StatefulPartitionedCall:output:0batch_normalization_22_46257135batch_normalization_22_46257137batch_normalization_22_46257139batch_normalization_22_46257141*
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
T__inference_batch_normalization_22_layer_call_and_return_conditional_losses_46256881�
!conv1d_23/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0conv1d_23_46257161conv1d_23_46257163*
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
G__inference_conv1d_23_layer_call_and_return_conditional_losses_46257160�
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall*conv1d_23/StatefulPartitionedCall:output:0batch_normalization_23_46257166batch_normalization_23_46257168batch_normalization_23_46257170batch_normalization_23_46257172*
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
T__inference_batch_normalization_23_layer_call_and_return_conditional_losses_46256963�
+global_average_pooling1d_10/PartitionedCallPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *b
f]R[
Y__inference_global_average_pooling1d_10_layer_call_and_return_conditional_losses_46257031�
 dense_47/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling1d_10/PartitionedCall:output:0dense_47_46257188dense_47_46257190*
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
F__inference_dense_47_layer_call_and_return_conditional_losses_46257187�
dropout_11/PartitionedCallPartitionedCall)dense_47/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *Q
fLRJ
H__inference_dropout_11_layer_call_and_return_conditional_losses_46257198�
 dense_48/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_48_46257211dense_48_46257213*
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
F__inference_dense_48_layer_call_and_return_conditional_losses_46257210�
reshape_16/PartitionedCallPartitionedCall)dense_48/StatefulPartitionedCall:output:0*
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
H__inference_reshape_16_layer_call_and_return_conditional_losses_46257229v
IdentityIdentity#reshape_16/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp/^batch_normalization_20/StatefulPartitionedCall/^batch_normalization_21/StatefulPartitionedCall/^batch_normalization_22/StatefulPartitionedCall/^batch_normalization_23/StatefulPartitionedCall"^conv1d_20/StatefulPartitionedCall"^conv1d_21/StatefulPartitionedCall"^conv1d_22/StatefulPartitionedCall"^conv1d_23/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2`
.batch_normalization_21/StatefulPartitionedCall.batch_normalization_21/StatefulPartitionedCall2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2F
!conv1d_20/StatefulPartitionedCall!conv1d_20/StatefulPartitionedCall2F
!conv1d_21/StatefulPartitionedCall!conv1d_21/StatefulPartitionedCall2F
!conv1d_22/StatefulPartitionedCall!conv1d_22/StatefulPartitionedCall2F
!conv1d_23/StatefulPartitionedCall!conv1d_23/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_20_layer_call_and_return_conditional_losses_46258439

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
�
�
G__inference_conv1d_20_layer_call_and_return_conditional_losses_46257067

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
�
f
H__inference_dropout_11_layer_call_and_return_conditional_losses_46258834

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
�
f
H__inference_dropout_11_layer_call_and_return_conditional_losses_46257198

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
�
�
9__inference_batch_normalization_21_layer_call_fn_46258524

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
T__inference_batch_normalization_21_layer_call_and_return_conditional_losses_46256846|
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
$__inference__traced_restore_46259084
file_prefix7
!assignvariableop_conv1d_20_kernel:/
!assignvariableop_1_conv1d_20_bias:=
/assignvariableop_2_batch_normalization_20_gamma:<
.assignvariableop_3_batch_normalization_20_beta:C
5assignvariableop_4_batch_normalization_20_moving_mean:G
9assignvariableop_5_batch_normalization_20_moving_variance:9
#assignvariableop_6_conv1d_21_kernel:/
!assignvariableop_7_conv1d_21_bias:=
/assignvariableop_8_batch_normalization_21_gamma:<
.assignvariableop_9_batch_normalization_21_beta:D
6assignvariableop_10_batch_normalization_21_moving_mean:H
:assignvariableop_11_batch_normalization_21_moving_variance::
$assignvariableop_12_conv1d_22_kernel:0
"assignvariableop_13_conv1d_22_bias:>
0assignvariableop_14_batch_normalization_22_gamma:=
/assignvariableop_15_batch_normalization_22_beta:D
6assignvariableop_16_batch_normalization_22_moving_mean:H
:assignvariableop_17_batch_normalization_22_moving_variance::
$assignvariableop_18_conv1d_23_kernel:0
"assignvariableop_19_conv1d_23_bias:>
0assignvariableop_20_batch_normalization_23_gamma:=
/assignvariableop_21_batch_normalization_23_beta:D
6assignvariableop_22_batch_normalization_23_moving_mean:H
:assignvariableop_23_batch_normalization_23_moving_variance:5
#assignvariableop_24_dense_47_kernel: /
!assignvariableop_25_dense_47_bias: 5
#assignvariableop_26_dense_48_kernel: </
!assignvariableop_27_dense_48_bias:<
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
AssignVariableOpAssignVariableOp!assignvariableop_conv1d_20_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv1d_20_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_20_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_20_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_20_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_20_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv1d_21_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv1d_21_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_21_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_21_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_21_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_21_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv1d_22_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv1d_22_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_22_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_22_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_22_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_22_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv1d_23_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv1d_23_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_23_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_23_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_23_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_23_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_47_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_47_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp#assignvariableop_26_dense_48_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp!assignvariableop_27_dense_48_biasIdentity_27:output:0"/device:CPU:0*&
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
�K
�
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46257804	
input(
conv1d_20_46257734: 
conv1d_20_46257736:-
batch_normalization_20_46257739:-
batch_normalization_20_46257741:-
batch_normalization_20_46257743:-
batch_normalization_20_46257745:(
conv1d_21_46257748: 
conv1d_21_46257750:-
batch_normalization_21_46257753:-
batch_normalization_21_46257755:-
batch_normalization_21_46257757:-
batch_normalization_21_46257759:(
conv1d_22_46257762: 
conv1d_22_46257764:-
batch_normalization_22_46257767:-
batch_normalization_22_46257769:-
batch_normalization_22_46257771:-
batch_normalization_22_46257773:(
conv1d_23_46257776: 
conv1d_23_46257778:-
batch_normalization_23_46257781:-
batch_normalization_23_46257783:-
batch_normalization_23_46257785:-
batch_normalization_23_46257787:#
dense_47_46257791: 
dense_47_46257793: #
dense_48_46257797: <
dense_48_46257799:<
identity��.batch_normalization_20/StatefulPartitionedCall�.batch_normalization_21/StatefulPartitionedCall�.batch_normalization_22/StatefulPartitionedCall�.batch_normalization_23/StatefulPartitionedCall�!conv1d_20/StatefulPartitionedCall�!conv1d_21/StatefulPartitionedCall�!conv1d_22/StatefulPartitionedCall�!conv1d_23/StatefulPartitionedCall� dense_47/StatefulPartitionedCall� dense_48/StatefulPartitionedCall�"dropout_11/StatefulPartitionedCall�
lambda_5/PartitionedCallPartitionedCallinput*
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
F__inference_lambda_5_layer_call_and_return_conditional_losses_46257396�
!conv1d_20/StatefulPartitionedCallStatefulPartitionedCall!lambda_5/PartitionedCall:output:0conv1d_20_46257734conv1d_20_46257736*
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
G__inference_conv1d_20_layer_call_and_return_conditional_losses_46257067�
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall*conv1d_20/StatefulPartitionedCall:output:0batch_normalization_20_46257739batch_normalization_20_46257741batch_normalization_20_46257743batch_normalization_20_46257745*
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
T__inference_batch_normalization_20_layer_call_and_return_conditional_losses_46256764�
!conv1d_21/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0conv1d_21_46257748conv1d_21_46257750*
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
G__inference_conv1d_21_layer_call_and_return_conditional_losses_46257098�
.batch_normalization_21/StatefulPartitionedCallStatefulPartitionedCall*conv1d_21/StatefulPartitionedCall:output:0batch_normalization_21_46257753batch_normalization_21_46257755batch_normalization_21_46257757batch_normalization_21_46257759*
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
T__inference_batch_normalization_21_layer_call_and_return_conditional_losses_46256846�
!conv1d_22/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_21/StatefulPartitionedCall:output:0conv1d_22_46257762conv1d_22_46257764*
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
G__inference_conv1d_22_layer_call_and_return_conditional_losses_46257129�
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall*conv1d_22/StatefulPartitionedCall:output:0batch_normalization_22_46257767batch_normalization_22_46257769batch_normalization_22_46257771batch_normalization_22_46257773*
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
T__inference_batch_normalization_22_layer_call_and_return_conditional_losses_46256928�
!conv1d_23/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0conv1d_23_46257776conv1d_23_46257778*
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
G__inference_conv1d_23_layer_call_and_return_conditional_losses_46257160�
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall*conv1d_23/StatefulPartitionedCall:output:0batch_normalization_23_46257781batch_normalization_23_46257783batch_normalization_23_46257785batch_normalization_23_46257787*
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
T__inference_batch_normalization_23_layer_call_and_return_conditional_losses_46257010�
+global_average_pooling1d_10/PartitionedCallPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *b
f]R[
Y__inference_global_average_pooling1d_10_layer_call_and_return_conditional_losses_46257031�
 dense_47/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling1d_10/PartitionedCall:output:0dense_47_46257791dense_47_46257793*
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
F__inference_dense_47_layer_call_and_return_conditional_losses_46257187�
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall)dense_47/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *Q
fLRJ
H__inference_dropout_11_layer_call_and_return_conditional_losses_46257327�
 dense_48/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_48_46257797dense_48_46257799*
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
F__inference_dense_48_layer_call_and_return_conditional_losses_46257210�
reshape_16/PartitionedCallPartitionedCall)dense_48/StatefulPartitionedCall:output:0*
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
H__inference_reshape_16_layer_call_and_return_conditional_losses_46257229v
IdentityIdentity#reshape_16/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp/^batch_normalization_20/StatefulPartitionedCall/^batch_normalization_21/StatefulPartitionedCall/^batch_normalization_22/StatefulPartitionedCall/^batch_normalization_23/StatefulPartitionedCall"^conv1d_20/StatefulPartitionedCall"^conv1d_21/StatefulPartitionedCall"^conv1d_22/StatefulPartitionedCall"^conv1d_23/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2`
.batch_normalization_21/StatefulPartitionedCall.batch_normalization_21/StatefulPartitionedCall2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2F
!conv1d_20/StatefulPartitionedCall!conv1d_20/StatefulPartitionedCall2F
!conv1d_21/StatefulPartitionedCall!conv1d_21/StatefulPartitionedCall2F
!conv1d_22/StatefulPartitionedCall!conv1d_22/StatefulPartitionedCall2F
!conv1d_23/StatefulPartitionedCall!conv1d_23/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall:R N
+
_output_shapes
:���������

_user_specified_nameInput
�K
�
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46257536

inputs(
conv1d_20_46257466: 
conv1d_20_46257468:-
batch_normalization_20_46257471:-
batch_normalization_20_46257473:-
batch_normalization_20_46257475:-
batch_normalization_20_46257477:(
conv1d_21_46257480: 
conv1d_21_46257482:-
batch_normalization_21_46257485:-
batch_normalization_21_46257487:-
batch_normalization_21_46257489:-
batch_normalization_21_46257491:(
conv1d_22_46257494: 
conv1d_22_46257496:-
batch_normalization_22_46257499:-
batch_normalization_22_46257501:-
batch_normalization_22_46257503:-
batch_normalization_22_46257505:(
conv1d_23_46257508: 
conv1d_23_46257510:-
batch_normalization_23_46257513:-
batch_normalization_23_46257515:-
batch_normalization_23_46257517:-
batch_normalization_23_46257519:#
dense_47_46257523: 
dense_47_46257525: #
dense_48_46257529: <
dense_48_46257531:<
identity��.batch_normalization_20/StatefulPartitionedCall�.batch_normalization_21/StatefulPartitionedCall�.batch_normalization_22/StatefulPartitionedCall�.batch_normalization_23/StatefulPartitionedCall�!conv1d_20/StatefulPartitionedCall�!conv1d_21/StatefulPartitionedCall�!conv1d_22/StatefulPartitionedCall�!conv1d_23/StatefulPartitionedCall� dense_47/StatefulPartitionedCall� dense_48/StatefulPartitionedCall�"dropout_11/StatefulPartitionedCall�
lambda_5/PartitionedCallPartitionedCallinputs*
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
F__inference_lambda_5_layer_call_and_return_conditional_losses_46257396�
!conv1d_20/StatefulPartitionedCallStatefulPartitionedCall!lambda_5/PartitionedCall:output:0conv1d_20_46257466conv1d_20_46257468*
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
G__inference_conv1d_20_layer_call_and_return_conditional_losses_46257067�
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall*conv1d_20/StatefulPartitionedCall:output:0batch_normalization_20_46257471batch_normalization_20_46257473batch_normalization_20_46257475batch_normalization_20_46257477*
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
T__inference_batch_normalization_20_layer_call_and_return_conditional_losses_46256764�
!conv1d_21/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0conv1d_21_46257480conv1d_21_46257482*
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
G__inference_conv1d_21_layer_call_and_return_conditional_losses_46257098�
.batch_normalization_21/StatefulPartitionedCallStatefulPartitionedCall*conv1d_21/StatefulPartitionedCall:output:0batch_normalization_21_46257485batch_normalization_21_46257487batch_normalization_21_46257489batch_normalization_21_46257491*
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
T__inference_batch_normalization_21_layer_call_and_return_conditional_losses_46256846�
!conv1d_22/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_21/StatefulPartitionedCall:output:0conv1d_22_46257494conv1d_22_46257496*
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
G__inference_conv1d_22_layer_call_and_return_conditional_losses_46257129�
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall*conv1d_22/StatefulPartitionedCall:output:0batch_normalization_22_46257499batch_normalization_22_46257501batch_normalization_22_46257503batch_normalization_22_46257505*
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
T__inference_batch_normalization_22_layer_call_and_return_conditional_losses_46256928�
!conv1d_23/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0conv1d_23_46257508conv1d_23_46257510*
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
G__inference_conv1d_23_layer_call_and_return_conditional_losses_46257160�
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall*conv1d_23/StatefulPartitionedCall:output:0batch_normalization_23_46257513batch_normalization_23_46257515batch_normalization_23_46257517batch_normalization_23_46257519*
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
T__inference_batch_normalization_23_layer_call_and_return_conditional_losses_46257010�
+global_average_pooling1d_10/PartitionedCallPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *b
f]R[
Y__inference_global_average_pooling1d_10_layer_call_and_return_conditional_losses_46257031�
 dense_47/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling1d_10/PartitionedCall:output:0dense_47_46257523dense_47_46257525*
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
F__inference_dense_47_layer_call_and_return_conditional_losses_46257187�
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall)dense_47/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *Q
fLRJ
H__inference_dropout_11_layer_call_and_return_conditional_losses_46257327�
 dense_48/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_48_46257529dense_48_46257531*
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
F__inference_dense_48_layer_call_and_return_conditional_losses_46257210�
reshape_16/PartitionedCallPartitionedCall)dense_48/StatefulPartitionedCall:output:0*
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
H__inference_reshape_16_layer_call_and_return_conditional_losses_46257229v
IdentityIdentity#reshape_16/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp/^batch_normalization_20/StatefulPartitionedCall/^batch_normalization_21/StatefulPartitionedCall/^batch_normalization_22/StatefulPartitionedCall/^batch_normalization_23/StatefulPartitionedCall"^conv1d_20/StatefulPartitionedCall"^conv1d_21/StatefulPartitionedCall"^conv1d_22/StatefulPartitionedCall"^conv1d_23/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2`
.batch_normalization_21/StatefulPartitionedCall.batch_normalization_21/StatefulPartitionedCall2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2F
!conv1d_20/StatefulPartitionedCall!conv1d_20/StatefulPartitionedCall2F
!conv1d_21/StatefulPartitionedCall!conv1d_21/StatefulPartitionedCall2F
!conv1d_22/StatefulPartitionedCall!conv1d_22/StatefulPartitionedCall2F
!conv1d_23/StatefulPartitionedCall!conv1d_23/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
F__inference_dense_47_layer_call_and_return_conditional_losses_46258819

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
�&
�
T__inference_batch_normalization_23_layer_call_and_return_conditional_losses_46257010

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
�
�
9__inference_batch_normalization_23_layer_call_fn_46258721

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
T__inference_batch_normalization_23_layer_call_and_return_conditional_losses_46256963|
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
T__inference_batch_normalization_20_layer_call_and_return_conditional_losses_46256764

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
�J
�
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46257730	
input(
conv1d_20_46257660: 
conv1d_20_46257662:-
batch_normalization_20_46257665:-
batch_normalization_20_46257667:-
batch_normalization_20_46257669:-
batch_normalization_20_46257671:(
conv1d_21_46257674: 
conv1d_21_46257676:-
batch_normalization_21_46257679:-
batch_normalization_21_46257681:-
batch_normalization_21_46257683:-
batch_normalization_21_46257685:(
conv1d_22_46257688: 
conv1d_22_46257690:-
batch_normalization_22_46257693:-
batch_normalization_22_46257695:-
batch_normalization_22_46257697:-
batch_normalization_22_46257699:(
conv1d_23_46257702: 
conv1d_23_46257704:-
batch_normalization_23_46257707:-
batch_normalization_23_46257709:-
batch_normalization_23_46257711:-
batch_normalization_23_46257713:#
dense_47_46257717: 
dense_47_46257719: #
dense_48_46257723: <
dense_48_46257725:<
identity��.batch_normalization_20/StatefulPartitionedCall�.batch_normalization_21/StatefulPartitionedCall�.batch_normalization_22/StatefulPartitionedCall�.batch_normalization_23/StatefulPartitionedCall�!conv1d_20/StatefulPartitionedCall�!conv1d_21/StatefulPartitionedCall�!conv1d_22/StatefulPartitionedCall�!conv1d_23/StatefulPartitionedCall� dense_47/StatefulPartitionedCall� dense_48/StatefulPartitionedCall�
lambda_5/PartitionedCallPartitionedCallinput*
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
F__inference_lambda_5_layer_call_and_return_conditional_losses_46257049�
!conv1d_20/StatefulPartitionedCallStatefulPartitionedCall!lambda_5/PartitionedCall:output:0conv1d_20_46257660conv1d_20_46257662*
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
G__inference_conv1d_20_layer_call_and_return_conditional_losses_46257067�
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall*conv1d_20/StatefulPartitionedCall:output:0batch_normalization_20_46257665batch_normalization_20_46257667batch_normalization_20_46257669batch_normalization_20_46257671*
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
T__inference_batch_normalization_20_layer_call_and_return_conditional_losses_46256717�
!conv1d_21/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0conv1d_21_46257674conv1d_21_46257676*
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
G__inference_conv1d_21_layer_call_and_return_conditional_losses_46257098�
.batch_normalization_21/StatefulPartitionedCallStatefulPartitionedCall*conv1d_21/StatefulPartitionedCall:output:0batch_normalization_21_46257679batch_normalization_21_46257681batch_normalization_21_46257683batch_normalization_21_46257685*
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
T__inference_batch_normalization_21_layer_call_and_return_conditional_losses_46256799�
!conv1d_22/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_21/StatefulPartitionedCall:output:0conv1d_22_46257688conv1d_22_46257690*
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
G__inference_conv1d_22_layer_call_and_return_conditional_losses_46257129�
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall*conv1d_22/StatefulPartitionedCall:output:0batch_normalization_22_46257693batch_normalization_22_46257695batch_normalization_22_46257697batch_normalization_22_46257699*
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
T__inference_batch_normalization_22_layer_call_and_return_conditional_losses_46256881�
!conv1d_23/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0conv1d_23_46257702conv1d_23_46257704*
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
G__inference_conv1d_23_layer_call_and_return_conditional_losses_46257160�
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall*conv1d_23/StatefulPartitionedCall:output:0batch_normalization_23_46257707batch_normalization_23_46257709batch_normalization_23_46257711batch_normalization_23_46257713*
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
T__inference_batch_normalization_23_layer_call_and_return_conditional_losses_46256963�
+global_average_pooling1d_10/PartitionedCallPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *b
f]R[
Y__inference_global_average_pooling1d_10_layer_call_and_return_conditional_losses_46257031�
 dense_47/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling1d_10/PartitionedCall:output:0dense_47_46257717dense_47_46257719*
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
F__inference_dense_47_layer_call_and_return_conditional_losses_46257187�
dropout_11/PartitionedCallPartitionedCall)dense_47/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *Q
fLRJ
H__inference_dropout_11_layer_call_and_return_conditional_losses_46257198�
 dense_48/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_48_46257723dense_48_46257725*
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
F__inference_dense_48_layer_call_and_return_conditional_losses_46257210�
reshape_16/PartitionedCallPartitionedCall)dense_48/StatefulPartitionedCall:output:0*
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
H__inference_reshape_16_layer_call_and_return_conditional_losses_46257229v
IdentityIdentity#reshape_16/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp/^batch_normalization_20/StatefulPartitionedCall/^batch_normalization_21/StatefulPartitionedCall/^batch_normalization_22/StatefulPartitionedCall/^batch_normalization_23/StatefulPartitionedCall"^conv1d_20/StatefulPartitionedCall"^conv1d_21/StatefulPartitionedCall"^conv1d_22/StatefulPartitionedCall"^conv1d_23/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2`
.batch_normalization_21/StatefulPartitionedCall.batch_normalization_21/StatefulPartitionedCall2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2F
!conv1d_20/StatefulPartitionedCall!conv1d_20/StatefulPartitionedCall2F
!conv1d_21/StatefulPartitionedCall!conv1d_21/StatefulPartitionedCall2F
!conv1d_22/StatefulPartitionedCall!conv1d_22/StatefulPartitionedCall2F
!conv1d_23/StatefulPartitionedCall!conv1d_23/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall:R N
+
_output_shapes
:���������

_user_specified_nameInput
�
�
+__inference_dense_48_layer_call_fn_46258855

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
F__inference_dense_48_layer_call_and_return_conditional_losses_46257210o
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
�	
�
F__inference_dense_48_layer_call_and_return_conditional_losses_46257210

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
T__inference_batch_normalization_23_layer_call_and_return_conditional_losses_46258754

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
�
u
Y__inference_global_average_pooling1d_10_layer_call_and_return_conditional_losses_46257031

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
G__inference_conv1d_23_layer_call_and_return_conditional_losses_46257160

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
�
b
F__inference_lambda_5_layer_call_and_return_conditional_losses_46258368

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
�
�
T__inference_batch_normalization_22_layer_call_and_return_conditional_losses_46258649

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
9__inference_batch_normalization_22_layer_call_fn_46258616

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
T__inference_batch_normalization_22_layer_call_and_return_conditional_losses_46256881|
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
G__inference_conv1d_20_layer_call_and_return_conditional_losses_46258393

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
�&
�
T__inference_batch_normalization_22_layer_call_and_return_conditional_losses_46256928

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
7__inference_Federated_CNN_F5_H12_layer_call_fn_46257989

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
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46257536s
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

�
F__inference_dense_47_layer_call_and_return_conditional_losses_46257187

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
�
G__inference_conv1d_23_layer_call_and_return_conditional_losses_46258708

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
�&
�
T__inference_batch_normalization_23_layer_call_and_return_conditional_losses_46258788

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
I
-__inference_reshape_16_layer_call_fn_46258870

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
H__inference_reshape_16_layer_call_and_return_conditional_losses_46257229d
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

reshape_164
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
7__inference_Federated_CNN_F5_H12_layer_call_fn_46257291
7__inference_Federated_CNN_F5_H12_layer_call_fn_46257928
7__inference_Federated_CNN_F5_H12_layer_call_fn_46257989
7__inference_Federated_CNN_F5_H12_layer_call_fn_46257656�
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
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46258134
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46258342
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46257730
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46257804�
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
#__inference__wrapped_model_46256693Input"�
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
+__inference_lambda_5_layer_call_fn_46258347
+__inference_lambda_5_layer_call_fn_46258352�
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
F__inference_lambda_5_layer_call_and_return_conditional_losses_46258360
F__inference_lambda_5_layer_call_and_return_conditional_losses_46258368�
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
,__inference_conv1d_20_layer_call_fn_46258377�
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
G__inference_conv1d_20_layer_call_and_return_conditional_losses_46258393�
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
&:$2conv1d_20/kernel
:2conv1d_20/bias
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
9__inference_batch_normalization_20_layer_call_fn_46258406
9__inference_batch_normalization_20_layer_call_fn_46258419�
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
T__inference_batch_normalization_20_layer_call_and_return_conditional_losses_46258439
T__inference_batch_normalization_20_layer_call_and_return_conditional_losses_46258473�
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
*:(2batch_normalization_20/gamma
):'2batch_normalization_20/beta
2:0 (2"batch_normalization_20/moving_mean
6:4 (2&batch_normalization_20/moving_variance
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
,__inference_conv1d_21_layer_call_fn_46258482�
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
G__inference_conv1d_21_layer_call_and_return_conditional_losses_46258498�
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
&:$2conv1d_21/kernel
:2conv1d_21/bias
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
9__inference_batch_normalization_21_layer_call_fn_46258511
9__inference_batch_normalization_21_layer_call_fn_46258524�
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
T__inference_batch_normalization_21_layer_call_and_return_conditional_losses_46258544
T__inference_batch_normalization_21_layer_call_and_return_conditional_losses_46258578�
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
*:(2batch_normalization_21/gamma
):'2batch_normalization_21/beta
2:0 (2"batch_normalization_21/moving_mean
6:4 (2&batch_normalization_21/moving_variance
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
,__inference_conv1d_22_layer_call_fn_46258587�
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
G__inference_conv1d_22_layer_call_and_return_conditional_losses_46258603�
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
&:$2conv1d_22/kernel
:2conv1d_22/bias
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
9__inference_batch_normalization_22_layer_call_fn_46258616
9__inference_batch_normalization_22_layer_call_fn_46258629�
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
T__inference_batch_normalization_22_layer_call_and_return_conditional_losses_46258649
T__inference_batch_normalization_22_layer_call_and_return_conditional_losses_46258683�
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
*:(2batch_normalization_22/gamma
):'2batch_normalization_22/beta
2:0 (2"batch_normalization_22/moving_mean
6:4 (2&batch_normalization_22/moving_variance
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
,__inference_conv1d_23_layer_call_fn_46258692�
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
G__inference_conv1d_23_layer_call_and_return_conditional_losses_46258708�
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
&:$2conv1d_23/kernel
:2conv1d_23/bias
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
9__inference_batch_normalization_23_layer_call_fn_46258721
9__inference_batch_normalization_23_layer_call_fn_46258734�
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
T__inference_batch_normalization_23_layer_call_and_return_conditional_losses_46258754
T__inference_batch_normalization_23_layer_call_and_return_conditional_losses_46258788�
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
*:(2batch_normalization_23/gamma
):'2batch_normalization_23/beta
2:0 (2"batch_normalization_23/moving_mean
6:4 (2&batch_normalization_23/moving_variance
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
>__inference_global_average_pooling1d_10_layer_call_fn_46258793�
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
Y__inference_global_average_pooling1d_10_layer_call_and_return_conditional_losses_46258799�
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
+__inference_dense_47_layer_call_fn_46258808�
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
F__inference_dense_47_layer_call_and_return_conditional_losses_46258819�
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
!: 2dense_47/kernel
: 2dense_47/bias
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
-__inference_dropout_11_layer_call_fn_46258824
-__inference_dropout_11_layer_call_fn_46258829�
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
H__inference_dropout_11_layer_call_and_return_conditional_losses_46258834
H__inference_dropout_11_layer_call_and_return_conditional_losses_46258846�
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
+__inference_dense_48_layer_call_fn_46258855�
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
F__inference_dense_48_layer_call_and_return_conditional_losses_46258865�
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
!: <2dense_48/kernel
:<2dense_48/bias
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
-__inference_reshape_16_layer_call_fn_46258870�
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
H__inference_reshape_16_layer_call_and_return_conditional_losses_46258883�
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
7__inference_Federated_CNN_F5_H12_layer_call_fn_46257291Input"�
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
7__inference_Federated_CNN_F5_H12_layer_call_fn_46257928inputs"�
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
7__inference_Federated_CNN_F5_H12_layer_call_fn_46257989inputs"�
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
7__inference_Federated_CNN_F5_H12_layer_call_fn_46257656Input"�
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
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46258134inputs"�
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
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46258342inputs"�
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
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46257730Input"�
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
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46257804Input"�
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
&__inference_signature_wrapper_46257867Input"�
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
+__inference_lambda_5_layer_call_fn_46258347inputs"�
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
+__inference_lambda_5_layer_call_fn_46258352inputs"�
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
F__inference_lambda_5_layer_call_and_return_conditional_losses_46258360inputs"�
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
F__inference_lambda_5_layer_call_and_return_conditional_losses_46258368inputs"�
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
,__inference_conv1d_20_layer_call_fn_46258377inputs"�
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
G__inference_conv1d_20_layer_call_and_return_conditional_losses_46258393inputs"�
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
9__inference_batch_normalization_20_layer_call_fn_46258406inputs"�
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
9__inference_batch_normalization_20_layer_call_fn_46258419inputs"�
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
T__inference_batch_normalization_20_layer_call_and_return_conditional_losses_46258439inputs"�
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
T__inference_batch_normalization_20_layer_call_and_return_conditional_losses_46258473inputs"�
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
,__inference_conv1d_21_layer_call_fn_46258482inputs"�
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
G__inference_conv1d_21_layer_call_and_return_conditional_losses_46258498inputs"�
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
9__inference_batch_normalization_21_layer_call_fn_46258511inputs"�
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
9__inference_batch_normalization_21_layer_call_fn_46258524inputs"�
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
T__inference_batch_normalization_21_layer_call_and_return_conditional_losses_46258544inputs"�
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
T__inference_batch_normalization_21_layer_call_and_return_conditional_losses_46258578inputs"�
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
,__inference_conv1d_22_layer_call_fn_46258587inputs"�
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
G__inference_conv1d_22_layer_call_and_return_conditional_losses_46258603inputs"�
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
9__inference_batch_normalization_22_layer_call_fn_46258616inputs"�
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
9__inference_batch_normalization_22_layer_call_fn_46258629inputs"�
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
T__inference_batch_normalization_22_layer_call_and_return_conditional_losses_46258649inputs"�
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
T__inference_batch_normalization_22_layer_call_and_return_conditional_losses_46258683inputs"�
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
,__inference_conv1d_23_layer_call_fn_46258692inputs"�
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
G__inference_conv1d_23_layer_call_and_return_conditional_losses_46258708inputs"�
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
9__inference_batch_normalization_23_layer_call_fn_46258721inputs"�
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
9__inference_batch_normalization_23_layer_call_fn_46258734inputs"�
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
T__inference_batch_normalization_23_layer_call_and_return_conditional_losses_46258754inputs"�
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
T__inference_batch_normalization_23_layer_call_and_return_conditional_losses_46258788inputs"�
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
>__inference_global_average_pooling1d_10_layer_call_fn_46258793inputs"�
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
Y__inference_global_average_pooling1d_10_layer_call_and_return_conditional_losses_46258799inputs"�
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
+__inference_dense_47_layer_call_fn_46258808inputs"�
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
F__inference_dense_47_layer_call_and_return_conditional_losses_46258819inputs"�
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
-__inference_dropout_11_layer_call_fn_46258824inputs"�
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
-__inference_dropout_11_layer_call_fn_46258829inputs"�
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
H__inference_dropout_11_layer_call_and_return_conditional_losses_46258834inputs"�
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
H__inference_dropout_11_layer_call_and_return_conditional_losses_46258846inputs"�
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
+__inference_dense_48_layer_call_fn_46258855inputs"�
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
F__inference_dense_48_layer_call_and_return_conditional_losses_46258865inputs"�
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
-__inference_reshape_16_layer_call_fn_46258870inputs"�
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
H__inference_reshape_16_layer_call_and_return_conditional_losses_46258883inputs"�
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
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46257730�$%1.0/89EBDCLMYVXW`amjlkz{��:�7
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
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46257804�$%01./89DEBCLMXYVW`almjkz{��:�7
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
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46258134�$%1.0/89EBDCLMYVXW`amjlkz{��;�8
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
R__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_46258342�$%01./89DEBCLMXYVW`almjkz{��;�8
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
7__inference_Federated_CNN_F5_H12_layer_call_fn_46257291�$%1.0/89EBDCLMYVXW`amjlkz{��:�7
0�-
#� 
Input���������
p 

 
� "%�"
unknown����������
7__inference_Federated_CNN_F5_H12_layer_call_fn_46257656�$%01./89DEBCLMXYVW`almjkz{��:�7
0�-
#� 
Input���������
p

 
� "%�"
unknown����������
7__inference_Federated_CNN_F5_H12_layer_call_fn_46257928�$%1.0/89EBDCLMYVXW`amjlkz{��;�8
1�.
$�!
inputs���������
p 

 
� "%�"
unknown����������
7__inference_Federated_CNN_F5_H12_layer_call_fn_46257989�$%01./89DEBCLMXYVW`almjkz{��;�8
1�.
$�!
inputs���������
p

 
� "%�"
unknown����������
#__inference__wrapped_model_46256693�$%1.0/89EBDCLMYVXW`amjlkz{��2�/
(�%
#� 
Input���������
� ";�8
6

reshape_16(�%

reshape_16����������
T__inference_batch_normalization_20_layer_call_and_return_conditional_losses_46258439�1.0/@�=
6�3
-�*
inputs������������������
p 
� "9�6
/�,
tensor_0������������������
� �
T__inference_batch_normalization_20_layer_call_and_return_conditional_losses_46258473�01./@�=
6�3
-�*
inputs������������������
p
� "9�6
/�,
tensor_0������������������
� �
9__inference_batch_normalization_20_layer_call_fn_46258406x1.0/@�=
6�3
-�*
inputs������������������
p 
� ".�+
unknown�������������������
9__inference_batch_normalization_20_layer_call_fn_46258419x01./@�=
6�3
-�*
inputs������������������
p
� ".�+
unknown�������������������
T__inference_batch_normalization_21_layer_call_and_return_conditional_losses_46258544�EBDC@�=
6�3
-�*
inputs������������������
p 
� "9�6
/�,
tensor_0������������������
� �
T__inference_batch_normalization_21_layer_call_and_return_conditional_losses_46258578�DEBC@�=
6�3
-�*
inputs������������������
p
� "9�6
/�,
tensor_0������������������
� �
9__inference_batch_normalization_21_layer_call_fn_46258511xEBDC@�=
6�3
-�*
inputs������������������
p 
� ".�+
unknown�������������������
9__inference_batch_normalization_21_layer_call_fn_46258524xDEBC@�=
6�3
-�*
inputs������������������
p
� ".�+
unknown�������������������
T__inference_batch_normalization_22_layer_call_and_return_conditional_losses_46258649�YVXW@�=
6�3
-�*
inputs������������������
p 
� "9�6
/�,
tensor_0������������������
� �
T__inference_batch_normalization_22_layer_call_and_return_conditional_losses_46258683�XYVW@�=
6�3
-�*
inputs������������������
p
� "9�6
/�,
tensor_0������������������
� �
9__inference_batch_normalization_22_layer_call_fn_46258616xYVXW@�=
6�3
-�*
inputs������������������
p 
� ".�+
unknown�������������������
9__inference_batch_normalization_22_layer_call_fn_46258629xXYVW@�=
6�3
-�*
inputs������������������
p
� ".�+
unknown�������������������
T__inference_batch_normalization_23_layer_call_and_return_conditional_losses_46258754�mjlk@�=
6�3
-�*
inputs������������������
p 
� "9�6
/�,
tensor_0������������������
� �
T__inference_batch_normalization_23_layer_call_and_return_conditional_losses_46258788�lmjk@�=
6�3
-�*
inputs������������������
p
� "9�6
/�,
tensor_0������������������
� �
9__inference_batch_normalization_23_layer_call_fn_46258721xmjlk@�=
6�3
-�*
inputs������������������
p 
� ".�+
unknown�������������������
9__inference_batch_normalization_23_layer_call_fn_46258734xlmjk@�=
6�3
-�*
inputs������������������
p
� ".�+
unknown�������������������
G__inference_conv1d_20_layer_call_and_return_conditional_losses_46258393k$%3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
,__inference_conv1d_20_layer_call_fn_46258377`$%3�0
)�&
$�!
inputs���������
� "%�"
unknown����������
G__inference_conv1d_21_layer_call_and_return_conditional_losses_46258498k893�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
,__inference_conv1d_21_layer_call_fn_46258482`893�0
)�&
$�!
inputs���������
� "%�"
unknown����������
G__inference_conv1d_22_layer_call_and_return_conditional_losses_46258603kLM3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
,__inference_conv1d_22_layer_call_fn_46258587`LM3�0
)�&
$�!
inputs���������
� "%�"
unknown����������
G__inference_conv1d_23_layer_call_and_return_conditional_losses_46258708k`a3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
,__inference_conv1d_23_layer_call_fn_46258692``a3�0
)�&
$�!
inputs���������
� "%�"
unknown����������
F__inference_dense_47_layer_call_and_return_conditional_losses_46258819cz{/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0��������� 
� �
+__inference_dense_47_layer_call_fn_46258808Xz{/�,
%�"
 �
inputs���������
� "!�
unknown��������� �
F__inference_dense_48_layer_call_and_return_conditional_losses_46258865e��/�,
%�"
 �
inputs��������� 
� ",�)
"�
tensor_0���������<
� �
+__inference_dense_48_layer_call_fn_46258855Z��/�,
%�"
 �
inputs��������� 
� "!�
unknown���������<�
H__inference_dropout_11_layer_call_and_return_conditional_losses_46258834c3�0
)�&
 �
inputs��������� 
p 
� ",�)
"�
tensor_0��������� 
� �
H__inference_dropout_11_layer_call_and_return_conditional_losses_46258846c3�0
)�&
 �
inputs��������� 
p
� ",�)
"�
tensor_0��������� 
� �
-__inference_dropout_11_layer_call_fn_46258824X3�0
)�&
 �
inputs��������� 
p 
� "!�
unknown��������� �
-__inference_dropout_11_layer_call_fn_46258829X3�0
)�&
 �
inputs��������� 
p
� "!�
unknown��������� �
Y__inference_global_average_pooling1d_10_layer_call_and_return_conditional_losses_46258799�I�F
?�<
6�3
inputs'���������������������������

 
� "5�2
+�(
tensor_0������������������
� �
>__inference_global_average_pooling1d_10_layer_call_fn_46258793wI�F
?�<
6�3
inputs'���������������������������

 
� "*�'
unknown�������������������
F__inference_lambda_5_layer_call_and_return_conditional_losses_46258360o;�8
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
F__inference_lambda_5_layer_call_and_return_conditional_losses_46258368o;�8
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
+__inference_lambda_5_layer_call_fn_46258347d;�8
1�.
$�!
inputs���������

 
p 
� "%�"
unknown����������
+__inference_lambda_5_layer_call_fn_46258352d;�8
1�.
$�!
inputs���������

 
p
� "%�"
unknown����������
H__inference_reshape_16_layer_call_and_return_conditional_losses_46258883c/�,
%�"
 �
inputs���������<
� "0�-
&�#
tensor_0���������
� �
-__inference_reshape_16_layer_call_fn_46258870X/�,
%�"
 �
inputs���������<
� "%�"
unknown����������
&__inference_signature_wrapper_46257867�$%1.0/89EBDCLMYVXW`amjlkz{��;�8
� 
1�.
,
Input#� 
input���������";�8
6

reshape_16(�%

reshape_16���������