��
��
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
�
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
$
DisableCopyOnRead
resource�
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
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
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
d
Shape

input"T&
output"out_type��out_type"	
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
 �"serve*
2.12.0-rc12v2.12.0-rc0-46-g0d8efc960d28��
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
�
Adam/v/dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*%
shared_nameAdam/v/dense_30/bias
y
(Adam/v/dense_30/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_30/bias*
_output_shapes
:<*
dtype0
�
Adam/m/dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*%
shared_nameAdam/m/dense_30/bias
y
(Adam/m/dense_30/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_30/bias*
_output_shapes
:<*
dtype0
�
Adam/v/dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: <*'
shared_nameAdam/v/dense_30/kernel
�
*Adam/v/dense_30/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_30/kernel*
_output_shapes

: <*
dtype0
�
Adam/m/dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: <*'
shared_nameAdam/m/dense_30/kernel
�
*Adam/m/dense_30/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_30/kernel*
_output_shapes

: <*
dtype0
�
Adam/v/dense_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/dense_29/bias
y
(Adam/v/dense_29/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_29/bias*
_output_shapes
: *
dtype0
�
Adam/m/dense_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/dense_29/bias
y
(Adam/m/dense_29/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_29/bias*
_output_shapes
: *
dtype0
�
Adam/v/dense_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/v/dense_29/kernel
�
*Adam/v/dense_29/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_29/kernel*
_output_shapes

: *
dtype0
�
Adam/m/dense_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/m/dense_29/kernel
�
*Adam/m/dense_29/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_29/kernel*
_output_shapes

: *
dtype0
�
"Adam/v/batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_15/beta
�
6Adam/v/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_15/beta*
_output_shapes
:*
dtype0
�
"Adam/m/batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_15/beta
�
6Adam/m/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_15/beta*
_output_shapes
:*
dtype0
�
#Adam/v/batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/v/batch_normalization_15/gamma
�
7Adam/v/batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_15/gamma*
_output_shapes
:*
dtype0
�
#Adam/m/batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/m/batch_normalization_15/gamma
�
7Adam/m/batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_15/gamma*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv1d_15/bias
{
)Adam/v/conv1d_15/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_15/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv1d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv1d_15/bias
{
)Adam/m/conv1d_15/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_15/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv1d_15/kernel
�
+Adam/v/conv1d_15/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_15/kernel*"
_output_shapes
:*
dtype0
�
Adam/m/conv1d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv1d_15/kernel
�
+Adam/m/conv1d_15/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_15/kernel*"
_output_shapes
:*
dtype0
�
"Adam/v/batch_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_14/beta
�
6Adam/v/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_14/beta*
_output_shapes
:*
dtype0
�
"Adam/m/batch_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_14/beta
�
6Adam/m/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_14/beta*
_output_shapes
:*
dtype0
�
#Adam/v/batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/v/batch_normalization_14/gamma
�
7Adam/v/batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_14/gamma*
_output_shapes
:*
dtype0
�
#Adam/m/batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/m/batch_normalization_14/gamma
�
7Adam/m/batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_14/gamma*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv1d_14/bias
{
)Adam/v/conv1d_14/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_14/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv1d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv1d_14/bias
{
)Adam/m/conv1d_14/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_14/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv1d_14/kernel
�
+Adam/v/conv1d_14/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_14/kernel*"
_output_shapes
:*
dtype0
�
Adam/m/conv1d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv1d_14/kernel
�
+Adam/m/conv1d_14/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_14/kernel*"
_output_shapes
:*
dtype0
�
"Adam/v/batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_13/beta
�
6Adam/v/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_13/beta*
_output_shapes
:*
dtype0
�
"Adam/m/batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_13/beta
�
6Adam/m/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_13/beta*
_output_shapes
:*
dtype0
�
#Adam/v/batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/v/batch_normalization_13/gamma
�
7Adam/v/batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_13/gamma*
_output_shapes
:*
dtype0
�
#Adam/m/batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/m/batch_normalization_13/gamma
�
7Adam/m/batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_13/gamma*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv1d_13/bias
{
)Adam/v/conv1d_13/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_13/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv1d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv1d_13/bias
{
)Adam/m/conv1d_13/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_13/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv1d_13/kernel
�
+Adam/v/conv1d_13/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_13/kernel*"
_output_shapes
:*
dtype0
�
Adam/m/conv1d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv1d_13/kernel
�
+Adam/m/conv1d_13/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_13/kernel*"
_output_shapes
:*
dtype0
�
"Adam/v/batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_12/beta
�
6Adam/v/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_12/beta*
_output_shapes
:*
dtype0
�
"Adam/m/batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_12/beta
�
6Adam/m/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_12/beta*
_output_shapes
:*
dtype0
�
#Adam/v/batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/v/batch_normalization_12/gamma
�
7Adam/v/batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_12/gamma*
_output_shapes
:*
dtype0
�
#Adam/m/batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/m/batch_normalization_12/gamma
�
7Adam/m/batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_12/gamma*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv1d_12/bias
{
)Adam/v/conv1d_12/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_12/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv1d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv1d_12/bias
{
)Adam/m/conv1d_12/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_12/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv1d_12/kernel
�
+Adam/v/conv1d_12/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_12/kernel*"
_output_shapes
:*
dtype0
�
Adam/m/conv1d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv1d_12/kernel
�
+Adam/m/conv1d_12/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_12/kernel*"
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
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
GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_9852949

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ƞ
value��B�� B��
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
signatures
#_self_saveable_object_factories
	optimizer*
'
#_self_saveable_object_factories* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
#!_self_saveable_object_factories* 
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
#*_self_saveable_object_factories
 +_jit_compiled_convolution_op*
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses
2axis
	3gamma
4beta
5moving_mean
6moving_variance
#7_self_saveable_object_factories*
�
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias
#@_self_saveable_object_factories
 A_jit_compiled_convolution_op*
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses
Haxis
	Igamma
Jbeta
Kmoving_mean
Lmoving_variance
#M_self_saveable_object_factories*
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias
#V_self_saveable_object_factories
 W_jit_compiled_convolution_op*
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^axis
	_gamma
`beta
amoving_mean
bmoving_variance
#c_self_saveable_object_factories*
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

jkernel
kbias
#l_self_saveable_object_factories
 m_jit_compiled_convolution_op*
�
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses
taxis
	ugamma
vbeta
wmoving_mean
xmoving_variance
#y_self_saveable_object_factories*
�
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
(0
)1
32
43
54
65
>6
?7
I8
J9
K10
L11
T12
U13
_14
`15
a16
b17
j18
k19
u20
v21
w22
x23
�24
�25
�26
�27*
�
(0
)1
32
43
>4
?5
I6
J7
T8
U9
_10
`11
j12
k13
u14
v15
�16
�17
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
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

(0
)1*

(0
)1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv1d_12/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_12/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
 
30
41
52
63*

30
41*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

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
* 

>0
?1*

>0
?1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv1d_13/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_13/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
 
I0
J1
K2
L3*

I0
J1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

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
* 

T0
U1*

T0
U1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv1d_14/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_14/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
 
_0
`1
a2
b3*

_0
`1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*

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
* 

j0
k1*
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
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv1d_15/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_15/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
 
u0
v1
w2
x3*

u0
v1*
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
&s"call_and_return_conditional_losses*

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
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

�0
�1*

�0
�1*
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
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_29/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_29/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
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

�trace_0
�trace_1* 

�trace_0
�trace_1* 
(
$�_self_saveable_object_factories* 
* 

�0
�1*

�0
�1*
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
* 
<
50
61
K2
L3
a4
b5
w6
x7*
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
$
�0
�1
�2
�3*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19*
* 
* 
* 
* 
* 
* 
* 
* 
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
50
61*
* 
* 
* 
* 
* 
* 
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
K0
L1*
* 
* 
* 
* 
* 
* 
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
a0
b1*
* 
* 
* 
* 
* 
* 
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
w0
x1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
b\
VARIABLE_VALUEAdam/m/conv1d_12/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv1d_12/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv1d_12/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv1d_12/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/m/batch_normalization_12/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/v/batch_normalization_12/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/batch_normalization_12/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/batch_normalization_12/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv1d_13/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv1d_13/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv1d_13/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv1d_13/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_13/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_13/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_13/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_13/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv1d_14/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv1d_14/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv1d_14/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv1d_14/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_14/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_14/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_14/beta2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_14/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv1d_15/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv1d_15/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv1d_15/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv1d_15/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_15/gamma2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_15/gamma2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_15/beta2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_15/beta2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_29/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_29/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_29/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_29/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_30/kernel2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_30/kernel2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_30/bias2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_30/bias2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv1d_12/kernelconv1d_12/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv1d_13/kernelconv1d_13/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv1d_14/kernelconv1d_14/biasbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_varianceconv1d_15/kernelconv1d_15/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_variancedense_29/kerneldense_29/biasdense_30/kerneldense_30/bias	iterationlearning_rateAdam/m/conv1d_12/kernelAdam/v/conv1d_12/kernelAdam/m/conv1d_12/biasAdam/v/conv1d_12/bias#Adam/m/batch_normalization_12/gamma#Adam/v/batch_normalization_12/gamma"Adam/m/batch_normalization_12/beta"Adam/v/batch_normalization_12/betaAdam/m/conv1d_13/kernelAdam/v/conv1d_13/kernelAdam/m/conv1d_13/biasAdam/v/conv1d_13/bias#Adam/m/batch_normalization_13/gamma#Adam/v/batch_normalization_13/gamma"Adam/m/batch_normalization_13/beta"Adam/v/batch_normalization_13/betaAdam/m/conv1d_14/kernelAdam/v/conv1d_14/kernelAdam/m/conv1d_14/biasAdam/v/conv1d_14/bias#Adam/m/batch_normalization_14/gamma#Adam/v/batch_normalization_14/gamma"Adam/m/batch_normalization_14/beta"Adam/v/batch_normalization_14/betaAdam/m/conv1d_15/kernelAdam/v/conv1d_15/kernelAdam/m/conv1d_15/biasAdam/v/conv1d_15/bias#Adam/m/batch_normalization_15/gamma#Adam/v/batch_normalization_15/gamma"Adam/m/batch_normalization_15/beta"Adam/v/batch_normalization_15/betaAdam/m/dense_29/kernelAdam/v/dense_29/kernelAdam/m/dense_29/biasAdam/v/dense_29/biasAdam/m/dense_30/kernelAdam/v/dense_30/kernelAdam/m/dense_30/biasAdam/v/dense_30/biastotal_3count_3total_2count_2total_1count_1totalcountConst*[
TinT
R2P*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_9854456
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_12/kernelconv1d_12/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv1d_13/kernelconv1d_13/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv1d_14/kernelconv1d_14/biasbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_varianceconv1d_15/kernelconv1d_15/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_variancedense_29/kerneldense_29/biasdense_30/kerneldense_30/bias	iterationlearning_rateAdam/m/conv1d_12/kernelAdam/v/conv1d_12/kernelAdam/m/conv1d_12/biasAdam/v/conv1d_12/bias#Adam/m/batch_normalization_12/gamma#Adam/v/batch_normalization_12/gamma"Adam/m/batch_normalization_12/beta"Adam/v/batch_normalization_12/betaAdam/m/conv1d_13/kernelAdam/v/conv1d_13/kernelAdam/m/conv1d_13/biasAdam/v/conv1d_13/bias#Adam/m/batch_normalization_13/gamma#Adam/v/batch_normalization_13/gamma"Adam/m/batch_normalization_13/beta"Adam/v/batch_normalization_13/betaAdam/m/conv1d_14/kernelAdam/v/conv1d_14/kernelAdam/m/conv1d_14/biasAdam/v/conv1d_14/bias#Adam/m/batch_normalization_14/gamma#Adam/v/batch_normalization_14/gamma"Adam/m/batch_normalization_14/beta"Adam/v/batch_normalization_14/betaAdam/m/conv1d_15/kernelAdam/v/conv1d_15/kernelAdam/m/conv1d_15/biasAdam/v/conv1d_15/bias#Adam/m/batch_normalization_15/gamma#Adam/v/batch_normalization_15/gamma"Adam/m/batch_normalization_15/beta"Adam/v/batch_normalization_15/betaAdam/m/dense_29/kernelAdam/v/dense_29/kernelAdam/m/dense_29/biasAdam/v/dense_29/biasAdam/m/dense_30/kernelAdam/v/dense_30/kernelAdam/m/dense_30/biasAdam/v/dense_30/biastotal_3count_3total_2count_2total_1count_1totalcount*Z
TinS
Q2O*
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_9854700��
�K
�
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9852316	
input'
conv1d_12_9852145:
conv1d_12_9852147:,
batch_normalization_12_9852150:,
batch_normalization_12_9852152:,
batch_normalization_12_9852154:,
batch_normalization_12_9852156:'
conv1d_13_9852176:
conv1d_13_9852178:,
batch_normalization_13_9852181:,
batch_normalization_13_9852183:,
batch_normalization_13_9852185:,
batch_normalization_13_9852187:'
conv1d_14_9852207:
conv1d_14_9852209:,
batch_normalization_14_9852212:,
batch_normalization_14_9852214:,
batch_normalization_14_9852216:,
batch_normalization_14_9852218:'
conv1d_15_9852238:
conv1d_15_9852240:,
batch_normalization_15_9852243:,
batch_normalization_15_9852245:,
batch_normalization_15_9852247:,
batch_normalization_15_9852249:"
dense_29_9852265: 
dense_29_9852267: "
dense_30_9852295: <
dense_30_9852297:<
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
GPU 2J 8� *N
fIRG
E__inference_lambda_3_layer_call_and_return_conditional_losses_9852126�
!conv1d_12/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0conv1d_12_9852145conv1d_12_9852147*
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
GPU 2J 8� *O
fJRH
F__inference_conv1d_12_layer_call_and_return_conditional_losses_9852144�
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall*conv1d_12/StatefulPartitionedCall:output:0batch_normalization_12_9852150batch_normalization_12_9852152batch_normalization_12_9852154batch_normalization_12_9852156*
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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_9851808�
!conv1d_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0conv1d_13_9852176conv1d_13_9852178*
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
GPU 2J 8� *O
fJRH
F__inference_conv1d_13_layer_call_and_return_conditional_losses_9852175�
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall*conv1d_13/StatefulPartitionedCall:output:0batch_normalization_13_9852181batch_normalization_13_9852183batch_normalization_13_9852185batch_normalization_13_9852187*
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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_9851890�
!conv1d_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0conv1d_14_9852207conv1d_14_9852209*
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
GPU 2J 8� *O
fJRH
F__inference_conv1d_14_layer_call_and_return_conditional_losses_9852206�
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall*conv1d_14/StatefulPartitionedCall:output:0batch_normalization_14_9852212batch_normalization_14_9852214batch_normalization_14_9852216batch_normalization_14_9852218*
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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_9851972�
!conv1d_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0conv1d_15_9852238conv1d_15_9852240*
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
GPU 2J 8� *O
fJRH
F__inference_conv1d_15_layer_call_and_return_conditional_losses_9852237�
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv1d_15/StatefulPartitionedCall:output:0batch_normalization_15_9852243batch_normalization_15_9852245batch_normalization_15_9852247batch_normalization_15_9852249*
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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9852054�
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
GPU 2J 8� *`
f[RY
W__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_9852108�
 dense_29/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_6/PartitionedCall:output:0dense_29_9852265dense_29_9852267*
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
GPU 2J 8� *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_9852264�
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
GPU 2J 8� *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_9852282�
 dense_30/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_30_9852295dense_30_9852297*
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
GPU 2J 8� *N
fIRG
E__inference_dense_30_layer_call_and_return_conditional_losses_9852294�
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
GPU 2J 8� *P
fKRI
G__inference_reshape_10_layer_call_and_return_conditional_losses_9852313v
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
�

c
G__inference_reshape_10_layer_call_and_return_conditional_losses_9853965

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
�K
�
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9852480

inputs'
conv1d_12_9852410:
conv1d_12_9852412:,
batch_normalization_12_9852415:,
batch_normalization_12_9852417:,
batch_normalization_12_9852419:,
batch_normalization_12_9852421:'
conv1d_13_9852424:
conv1d_13_9852426:,
batch_normalization_13_9852429:,
batch_normalization_13_9852431:,
batch_normalization_13_9852433:,
batch_normalization_13_9852435:'
conv1d_14_9852438:
conv1d_14_9852440:,
batch_normalization_14_9852443:,
batch_normalization_14_9852445:,
batch_normalization_14_9852447:,
batch_normalization_14_9852449:'
conv1d_15_9852452:
conv1d_15_9852454:,
batch_normalization_15_9852457:,
batch_normalization_15_9852459:,
batch_normalization_15_9852461:,
batch_normalization_15_9852463:"
dense_29_9852467: 
dense_29_9852469: "
dense_30_9852473: <
dense_30_9852475:<
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
GPU 2J 8� *N
fIRG
E__inference_lambda_3_layer_call_and_return_conditional_losses_9852126�
!conv1d_12/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0conv1d_12_9852410conv1d_12_9852412*
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
GPU 2J 8� *O
fJRH
F__inference_conv1d_12_layer_call_and_return_conditional_losses_9852144�
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall*conv1d_12/StatefulPartitionedCall:output:0batch_normalization_12_9852415batch_normalization_12_9852417batch_normalization_12_9852419batch_normalization_12_9852421*
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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_9851808�
!conv1d_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0conv1d_13_9852424conv1d_13_9852426*
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
GPU 2J 8� *O
fJRH
F__inference_conv1d_13_layer_call_and_return_conditional_losses_9852175�
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall*conv1d_13/StatefulPartitionedCall:output:0batch_normalization_13_9852429batch_normalization_13_9852431batch_normalization_13_9852433batch_normalization_13_9852435*
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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_9851890�
!conv1d_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0conv1d_14_9852438conv1d_14_9852440*
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
GPU 2J 8� *O
fJRH
F__inference_conv1d_14_layer_call_and_return_conditional_losses_9852206�
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall*conv1d_14/StatefulPartitionedCall:output:0batch_normalization_14_9852443batch_normalization_14_9852445batch_normalization_14_9852447batch_normalization_14_9852449*
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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_9851972�
!conv1d_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0conv1d_15_9852452conv1d_15_9852454*
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
GPU 2J 8� *O
fJRH
F__inference_conv1d_15_layer_call_and_return_conditional_losses_9852237�
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv1d_15/StatefulPartitionedCall:output:0batch_normalization_15_9852457batch_normalization_15_9852459batch_normalization_15_9852461batch_normalization_15_9852463*
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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9852054�
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
GPU 2J 8� *`
f[RY
W__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_9852108�
 dense_29/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_6/PartitionedCall:output:0dense_29_9852467dense_29_9852469*
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
GPU 2J 8� *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_9852264�
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
GPU 2J 8� *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_9852282�
 dense_30/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_30_9852473dense_30_9852475*
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
GPU 2J 8� *N
fIRG
E__inference_dense_30_layer_call_and_return_conditional_losses_9852294�
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
GPU 2J 8� *P
fKRI
G__inference_reshape_10_layer_call_and_return_conditional_losses_9852313v
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
�J
�
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9852403	
input'
conv1d_12_9852328:
conv1d_12_9852330:,
batch_normalization_12_9852333:,
batch_normalization_12_9852335:,
batch_normalization_12_9852337:,
batch_normalization_12_9852339:'
conv1d_13_9852342:
conv1d_13_9852344:,
batch_normalization_13_9852347:,
batch_normalization_13_9852349:,
batch_normalization_13_9852351:,
batch_normalization_13_9852353:'
conv1d_14_9852356:
conv1d_14_9852358:,
batch_normalization_14_9852361:,
batch_normalization_14_9852363:,
batch_normalization_14_9852365:,
batch_normalization_14_9852367:'
conv1d_15_9852370:
conv1d_15_9852372:,
batch_normalization_15_9852375:,
batch_normalization_15_9852377:,
batch_normalization_15_9852379:,
batch_normalization_15_9852381:"
dense_29_9852385: 
dense_29_9852387: "
dense_30_9852396: <
dense_30_9852398:<
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
GPU 2J 8� *N
fIRG
E__inference_lambda_3_layer_call_and_return_conditional_losses_9852326�
!conv1d_12/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0conv1d_12_9852328conv1d_12_9852330*
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
GPU 2J 8� *O
fJRH
F__inference_conv1d_12_layer_call_and_return_conditional_losses_9852144�
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall*conv1d_12/StatefulPartitionedCall:output:0batch_normalization_12_9852333batch_normalization_12_9852335batch_normalization_12_9852337batch_normalization_12_9852339*
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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_9851828�
!conv1d_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0conv1d_13_9852342conv1d_13_9852344*
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
GPU 2J 8� *O
fJRH
F__inference_conv1d_13_layer_call_and_return_conditional_losses_9852175�
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall*conv1d_13/StatefulPartitionedCall:output:0batch_normalization_13_9852347batch_normalization_13_9852349batch_normalization_13_9852351batch_normalization_13_9852353*
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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_9851910�
!conv1d_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0conv1d_14_9852356conv1d_14_9852358*
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
GPU 2J 8� *O
fJRH
F__inference_conv1d_14_layer_call_and_return_conditional_losses_9852206�
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall*conv1d_14/StatefulPartitionedCall:output:0batch_normalization_14_9852361batch_normalization_14_9852363batch_normalization_14_9852365batch_normalization_14_9852367*
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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_9851992�
!conv1d_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0conv1d_15_9852370conv1d_15_9852372*
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
GPU 2J 8� *O
fJRH
F__inference_conv1d_15_layer_call_and_return_conditional_losses_9852237�
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv1d_15/StatefulPartitionedCall:output:0batch_normalization_15_9852375batch_normalization_15_9852377batch_normalization_15_9852379batch_normalization_15_9852381*
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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9852074�
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
GPU 2J 8� *`
f[RY
W__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_9852108�
 dense_29/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_6/PartitionedCall:output:0dense_29_9852385dense_29_9852387*
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
GPU 2J 8� *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_9852264�
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
GPU 2J 8� *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_9852394�
 dense_30/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_30_9852396dense_30_9852398*
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
GPU 2J 8� *N
fIRG
E__inference_dense_30_layer_call_and_return_conditional_losses_9852294�
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
GPU 2J 8� *P
fKRI
G__inference_reshape_10_layer_call_and_return_conditional_losses_9852313v
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
�	
�
E__inference_dense_30_layer_call_and_return_conditional_losses_9853947

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
�
�
F__inference_conv1d_13_layer_call_and_return_conditional_losses_9853580

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
E__inference_dense_29_layer_call_and_return_conditional_losses_9852264

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
a
E__inference_lambda_3_layer_call_and_return_conditional_losses_9852326

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
+__inference_conv1d_12_layer_call_fn_9853459

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
GPU 2J 8� *O
fJRH
F__inference_conv1d_12_layer_call_and_return_conditional_losses_9852144s
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
�
F__inference_conv1d_12_layer_call_and_return_conditional_losses_9852144

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
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_9853555

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
(:������������������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
a
E__inference_lambda_3_layer_call_and_return_conditional_losses_9852126

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
�
F__inference_conv1d_13_layer_call_and_return_conditional_losses_9852175

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
�
6__inference_Federated_CNN_F5_H12_layer_call_fn_9852539	
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
GPU 2J 8� *Z
fURS
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9852480s
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
"__inference__wrapped_model_9851773	
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
::��}
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
FFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp_1FFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp_12�
FFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp_2FFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp_22�
DFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOpDFederated_CNN_F5_H12/batch_normalization_12/batchnorm/ReadVariableOp2�
HFederated_CNN_F5_H12/batch_normalization_12/batchnorm/mul/ReadVariableOpHFederated_CNN_F5_H12/batch_normalization_12/batchnorm/mul/ReadVariableOp2�
FFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp_1FFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp_12�
FFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp_2FFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp_22�
DFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOpDFederated_CNN_F5_H12/batch_normalization_13/batchnorm/ReadVariableOp2�
HFederated_CNN_F5_H12/batch_normalization_13/batchnorm/mul/ReadVariableOpHFederated_CNN_F5_H12/batch_normalization_13/batchnorm/mul/ReadVariableOp2�
FFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp_1FFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp_12�
FFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp_2FFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp_22�
DFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOpDFederated_CNN_F5_H12/batch_normalization_14/batchnorm/ReadVariableOp2�
HFederated_CNN_F5_H12/batch_normalization_14/batchnorm/mul/ReadVariableOpHFederated_CNN_F5_H12/batch_normalization_14/batchnorm/mul/ReadVariableOp2�
FFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp_1FFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp_12�
FFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp_2FFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp_22�
DFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOpDFederated_CNN_F5_H12/batch_normalization_15/batchnorm/ReadVariableOp2�
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
�
�
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_9851828

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
(:������������������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
F
*__inference_lambda_3_layer_call_fn_9853434

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
GPU 2J 8� *N
fIRG
E__inference_lambda_3_layer_call_and_return_conditional_losses_9852326d
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
8__inference_batch_normalization_14_layer_call_fn_9853711

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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_9851992|
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
�	
�
E__inference_dense_30_layer_call_and_return_conditional_losses_9852294

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
�
s
W__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_9852108

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
�
�
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_9851992

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
(:������������������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
F
*__inference_lambda_3_layer_call_fn_9853429

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
GPU 2J 8� *N
fIRG
E__inference_lambda_3_layer_call_and_return_conditional_losses_9852126d
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
+__inference_conv1d_13_layer_call_fn_9853564

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
GPU 2J 8� *O
fJRH
F__inference_conv1d_13_layer_call_and_return_conditional_losses_9852175s
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
8__inference_batch_normalization_15_layer_call_fn_9853803

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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9852054|
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
F__inference_conv1d_12_layer_call_and_return_conditional_losses_9853475

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
��
�
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9853279

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
:��������� p
dropout_7/dropout/ShapeShapedense_29/Relu:activations:0*
T0*
_output_shapes
::���
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0e
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
:���������<g
reshape_10/ShapeShapedense_30/BiasAdd:output:0*
T0*
_output_shapes
::��h
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
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2n
5batch_normalization_12/AssignMovingAvg/ReadVariableOp5batch_normalization_12/AssignMovingAvg/ReadVariableOp2r
7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp2T
(batch_normalization_12/AssignMovingAvg_1(batch_normalization_12/AssignMovingAvg_12P
&batch_normalization_12/AssignMovingAvg&batch_normalization_12/AssignMovingAvg2b
/batch_normalization_12/batchnorm/ReadVariableOp/batch_normalization_12/batchnorm/ReadVariableOp2j
3batch_normalization_12/batchnorm/mul/ReadVariableOp3batch_normalization_12/batchnorm/mul/ReadVariableOp2n
5batch_normalization_13/AssignMovingAvg/ReadVariableOp5batch_normalization_13/AssignMovingAvg/ReadVariableOp2r
7batch_normalization_13/AssignMovingAvg_1/ReadVariableOp7batch_normalization_13/AssignMovingAvg_1/ReadVariableOp2T
(batch_normalization_13/AssignMovingAvg_1(batch_normalization_13/AssignMovingAvg_12P
&batch_normalization_13/AssignMovingAvg&batch_normalization_13/AssignMovingAvg2b
/batch_normalization_13/batchnorm/ReadVariableOp/batch_normalization_13/batchnorm/ReadVariableOp2j
3batch_normalization_13/batchnorm/mul/ReadVariableOp3batch_normalization_13/batchnorm/mul/ReadVariableOp2n
5batch_normalization_14/AssignMovingAvg/ReadVariableOp5batch_normalization_14/AssignMovingAvg/ReadVariableOp2r
7batch_normalization_14/AssignMovingAvg_1/ReadVariableOp7batch_normalization_14/AssignMovingAvg_1/ReadVariableOp2T
(batch_normalization_14/AssignMovingAvg_1(batch_normalization_14/AssignMovingAvg_12P
&batch_normalization_14/AssignMovingAvg&batch_normalization_14/AssignMovingAvg2b
/batch_normalization_14/batchnorm/ReadVariableOp/batch_normalization_14/batchnorm/ReadVariableOp2j
3batch_normalization_14/batchnorm/mul/ReadVariableOp3batch_normalization_14/batchnorm/mul/ReadVariableOp2n
5batch_normalization_15/AssignMovingAvg/ReadVariableOp5batch_normalization_15/AssignMovingAvg/ReadVariableOp2r
7batch_normalization_15/AssignMovingAvg_1/ReadVariableOp7batch_normalization_15/AssignMovingAvg_1/ReadVariableOp2T
(batch_normalization_15/AssignMovingAvg_1(batch_normalization_15/AssignMovingAvg_12P
&batch_normalization_15/AssignMovingAvg&batch_normalization_15/AssignMovingAvg2b
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
�
�
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9852074

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
(:������������������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
��
�I
 __inference__traced_save_9854456
file_prefix=
'read_disablecopyonread_conv1d_12_kernel:5
'read_1_disablecopyonread_conv1d_12_bias:C
5read_2_disablecopyonread_batch_normalization_12_gamma:B
4read_3_disablecopyonread_batch_normalization_12_beta:I
;read_4_disablecopyonread_batch_normalization_12_moving_mean:M
?read_5_disablecopyonread_batch_normalization_12_moving_variance:?
)read_6_disablecopyonread_conv1d_13_kernel:5
'read_7_disablecopyonread_conv1d_13_bias:C
5read_8_disablecopyonread_batch_normalization_13_gamma:B
4read_9_disablecopyonread_batch_normalization_13_beta:J
<read_10_disablecopyonread_batch_normalization_13_moving_mean:N
@read_11_disablecopyonread_batch_normalization_13_moving_variance:@
*read_12_disablecopyonread_conv1d_14_kernel:6
(read_13_disablecopyonread_conv1d_14_bias:D
6read_14_disablecopyonread_batch_normalization_14_gamma:C
5read_15_disablecopyonread_batch_normalization_14_beta:J
<read_16_disablecopyonread_batch_normalization_14_moving_mean:N
@read_17_disablecopyonread_batch_normalization_14_moving_variance:@
*read_18_disablecopyonread_conv1d_15_kernel:6
(read_19_disablecopyonread_conv1d_15_bias:D
6read_20_disablecopyonread_batch_normalization_15_gamma:C
5read_21_disablecopyonread_batch_normalization_15_beta:J
<read_22_disablecopyonread_batch_normalization_15_moving_mean:N
@read_23_disablecopyonread_batch_normalization_15_moving_variance:;
)read_24_disablecopyonread_dense_29_kernel: 5
'read_25_disablecopyonread_dense_29_bias: ;
)read_26_disablecopyonread_dense_30_kernel: <5
'read_27_disablecopyonread_dense_30_bias:<-
#read_28_disablecopyonread_iteration:	 1
'read_29_disablecopyonread_learning_rate: G
1read_30_disablecopyonread_adam_m_conv1d_12_kernel:G
1read_31_disablecopyonread_adam_v_conv1d_12_kernel:=
/read_32_disablecopyonread_adam_m_conv1d_12_bias:=
/read_33_disablecopyonread_adam_v_conv1d_12_bias:K
=read_34_disablecopyonread_adam_m_batch_normalization_12_gamma:K
=read_35_disablecopyonread_adam_v_batch_normalization_12_gamma:J
<read_36_disablecopyonread_adam_m_batch_normalization_12_beta:J
<read_37_disablecopyonread_adam_v_batch_normalization_12_beta:G
1read_38_disablecopyonread_adam_m_conv1d_13_kernel:G
1read_39_disablecopyonread_adam_v_conv1d_13_kernel:=
/read_40_disablecopyonread_adam_m_conv1d_13_bias:=
/read_41_disablecopyonread_adam_v_conv1d_13_bias:K
=read_42_disablecopyonread_adam_m_batch_normalization_13_gamma:K
=read_43_disablecopyonread_adam_v_batch_normalization_13_gamma:J
<read_44_disablecopyonread_adam_m_batch_normalization_13_beta:J
<read_45_disablecopyonread_adam_v_batch_normalization_13_beta:G
1read_46_disablecopyonread_adam_m_conv1d_14_kernel:G
1read_47_disablecopyonread_adam_v_conv1d_14_kernel:=
/read_48_disablecopyonread_adam_m_conv1d_14_bias:=
/read_49_disablecopyonread_adam_v_conv1d_14_bias:K
=read_50_disablecopyonread_adam_m_batch_normalization_14_gamma:K
=read_51_disablecopyonread_adam_v_batch_normalization_14_gamma:J
<read_52_disablecopyonread_adam_m_batch_normalization_14_beta:J
<read_53_disablecopyonread_adam_v_batch_normalization_14_beta:G
1read_54_disablecopyonread_adam_m_conv1d_15_kernel:G
1read_55_disablecopyonread_adam_v_conv1d_15_kernel:=
/read_56_disablecopyonread_adam_m_conv1d_15_bias:=
/read_57_disablecopyonread_adam_v_conv1d_15_bias:K
=read_58_disablecopyonread_adam_m_batch_normalization_15_gamma:K
=read_59_disablecopyonread_adam_v_batch_normalization_15_gamma:J
<read_60_disablecopyonread_adam_m_batch_normalization_15_beta:J
<read_61_disablecopyonread_adam_v_batch_normalization_15_beta:B
0read_62_disablecopyonread_adam_m_dense_29_kernel: B
0read_63_disablecopyonread_adam_v_dense_29_kernel: <
.read_64_disablecopyonread_adam_m_dense_29_bias: <
.read_65_disablecopyonread_adam_v_dense_29_bias: B
0read_66_disablecopyonread_adam_m_dense_30_kernel: <B
0read_67_disablecopyonread_adam_v_dense_30_kernel: <<
.read_68_disablecopyonread_adam_m_dense_30_bias:<<
.read_69_disablecopyonread_adam_v_dense_30_bias:<+
!read_70_disablecopyonread_total_3: +
!read_71_disablecopyonread_count_3: +
!read_72_disablecopyonread_total_2: +
!read_73_disablecopyonread_count_2: +
!read_74_disablecopyonread_total_1: +
!read_75_disablecopyonread_count_1: )
read_76_disablecopyonread_total: )
read_77_disablecopyonread_count: 
savev2_const
identity_157��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv1d_12_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv1d_12_kernel^Read/DisableCopyOnRead"/device:CPU:0*"
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
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv1d_12_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv1d_12_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_2/DisableCopyOnReadDisableCopyOnRead5read_2_disablecopyonread_batch_normalization_12_gamma"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp5read_2_disablecopyonread_batch_normalization_12_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_3/DisableCopyOnReadDisableCopyOnRead4read_3_disablecopyonread_batch_normalization_12_beta"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp4read_3_disablecopyonread_batch_normalization_12_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_4/DisableCopyOnReadDisableCopyOnRead;read_4_disablecopyonread_batch_normalization_12_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp;read_4_disablecopyonread_batch_normalization_12_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_5/DisableCopyOnReadDisableCopyOnRead?read_5_disablecopyonread_batch_normalization_12_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp?read_5_disablecopyonread_batch_normalization_12_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
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
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv1d_13_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv1d_13_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*"
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
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv1d_13_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv1d_13_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_8/DisableCopyOnReadDisableCopyOnRead5read_8_disablecopyonread_batch_normalization_13_gamma"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp5read_8_disablecopyonread_batch_normalization_13_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_9/DisableCopyOnReadDisableCopyOnRead4read_9_disablecopyonread_batch_normalization_13_beta"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp4read_9_disablecopyonread_batch_normalization_13_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_10/DisableCopyOnReadDisableCopyOnRead<read_10_disablecopyonread_batch_normalization_13_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp<read_10_disablecopyonread_batch_normalization_13_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_11/DisableCopyOnReadDisableCopyOnRead@read_11_disablecopyonread_batch_normalization_13_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp@read_11_disablecopyonread_batch_normalization_13_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
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
Read_12/DisableCopyOnReadDisableCopyOnRead*read_12_disablecopyonread_conv1d_14_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp*read_12_disablecopyonread_conv1d_14_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*"
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
Read_13/DisableCopyOnReadDisableCopyOnRead(read_13_disablecopyonread_conv1d_14_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp(read_13_disablecopyonread_conv1d_14_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_14/DisableCopyOnReadDisableCopyOnRead6read_14_disablecopyonread_batch_normalization_14_gamma"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp6read_14_disablecopyonread_batch_normalization_14_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_batch_normalization_14_beta"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_batch_normalization_14_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_16/DisableCopyOnReadDisableCopyOnRead<read_16_disablecopyonread_batch_normalization_14_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp<read_16_disablecopyonread_batch_normalization_14_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_17/DisableCopyOnReadDisableCopyOnRead@read_17_disablecopyonread_batch_normalization_14_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp@read_17_disablecopyonread_batch_normalization_14_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
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
Read_18/DisableCopyOnReadDisableCopyOnRead*read_18_disablecopyonread_conv1d_15_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp*read_18_disablecopyonread_conv1d_15_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*"
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
Read_19/DisableCopyOnReadDisableCopyOnRead(read_19_disablecopyonread_conv1d_15_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp(read_19_disablecopyonread_conv1d_15_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_batch_normalization_15_gamma"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_batch_normalization_15_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_21/DisableCopyOnReadDisableCopyOnRead5read_21_disablecopyonread_batch_normalization_15_beta"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp5read_21_disablecopyonread_batch_normalization_15_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_22/DisableCopyOnReadDisableCopyOnRead<read_22_disablecopyonread_batch_normalization_15_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp<read_22_disablecopyonread_batch_normalization_15_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
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
:�
Read_23/DisableCopyOnReadDisableCopyOnRead@read_23_disablecopyonread_batch_normalization_15_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp@read_23_disablecopyonread_batch_normalization_15_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
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
Read_24/DisableCopyOnReadDisableCopyOnRead)read_24_disablecopyonread_dense_29_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp)read_24_disablecopyonread_dense_29_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
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
Read_25/DisableCopyOnReadDisableCopyOnRead'read_25_disablecopyonread_dense_29_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp'read_25_disablecopyonread_dense_29_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
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
Read_26/DisableCopyOnReadDisableCopyOnRead)read_26_disablecopyonread_dense_30_kernel"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp)read_26_disablecopyonread_dense_30_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*
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
Read_27/DisableCopyOnReadDisableCopyOnRead'read_27_disablecopyonread_dense_30_bias"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp'read_27_disablecopyonread_dense_30_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
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
:<x
Read_28/DisableCopyOnReadDisableCopyOnRead#read_28_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp#read_28_disablecopyonread_iteration^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_29/DisableCopyOnReadDisableCopyOnRead'read_29_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp'read_29_disablecopyonread_learning_rate^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_30/DisableCopyOnReadDisableCopyOnRead1read_30_disablecopyonread_adam_m_conv1d_12_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp1read_30_disablecopyonread_adam_m_conv1d_12_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_31/DisableCopyOnReadDisableCopyOnRead1read_31_disablecopyonread_adam_v_conv1d_12_kernel"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp1read_31_disablecopyonread_adam_v_conv1d_12_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_32/DisableCopyOnReadDisableCopyOnRead/read_32_disablecopyonread_adam_m_conv1d_12_bias"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp/read_32_disablecopyonread_adam_m_conv1d_12_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_33/DisableCopyOnReadDisableCopyOnRead/read_33_disablecopyonread_adam_v_conv1d_12_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp/read_33_disablecopyonread_adam_v_conv1d_12_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_34/DisableCopyOnReadDisableCopyOnRead=read_34_disablecopyonread_adam_m_batch_normalization_12_gamma"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp=read_34_disablecopyonread_adam_m_batch_normalization_12_gamma^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_35/DisableCopyOnReadDisableCopyOnRead=read_35_disablecopyonread_adam_v_batch_normalization_12_gamma"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp=read_35_disablecopyonread_adam_v_batch_normalization_12_gamma^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_36/DisableCopyOnReadDisableCopyOnRead<read_36_disablecopyonread_adam_m_batch_normalization_12_beta"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp<read_36_disablecopyonread_adam_m_batch_normalization_12_beta^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_37/DisableCopyOnReadDisableCopyOnRead<read_37_disablecopyonread_adam_v_batch_normalization_12_beta"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp<read_37_disablecopyonread_adam_v_batch_normalization_12_beta^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_38/DisableCopyOnReadDisableCopyOnRead1read_38_disablecopyonread_adam_m_conv1d_13_kernel"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp1read_38_disablecopyonread_adam_m_conv1d_13_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_39/DisableCopyOnReadDisableCopyOnRead1read_39_disablecopyonread_adam_v_conv1d_13_kernel"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp1read_39_disablecopyonread_adam_v_conv1d_13_kernel^Read_39/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_40/DisableCopyOnReadDisableCopyOnRead/read_40_disablecopyonread_adam_m_conv1d_13_bias"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp/read_40_disablecopyonread_adam_m_conv1d_13_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_41/DisableCopyOnReadDisableCopyOnRead/read_41_disablecopyonread_adam_v_conv1d_13_bias"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp/read_41_disablecopyonread_adam_v_conv1d_13_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_42/DisableCopyOnReadDisableCopyOnRead=read_42_disablecopyonread_adam_m_batch_normalization_13_gamma"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp=read_42_disablecopyonread_adam_m_batch_normalization_13_gamma^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_43/DisableCopyOnReadDisableCopyOnRead=read_43_disablecopyonread_adam_v_batch_normalization_13_gamma"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp=read_43_disablecopyonread_adam_v_batch_normalization_13_gamma^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_44/DisableCopyOnReadDisableCopyOnRead<read_44_disablecopyonread_adam_m_batch_normalization_13_beta"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp<read_44_disablecopyonread_adam_m_batch_normalization_13_beta^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_45/DisableCopyOnReadDisableCopyOnRead<read_45_disablecopyonread_adam_v_batch_normalization_13_beta"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp<read_45_disablecopyonread_adam_v_batch_normalization_13_beta^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_46/DisableCopyOnReadDisableCopyOnRead1read_46_disablecopyonread_adam_m_conv1d_14_kernel"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp1read_46_disablecopyonread_adam_m_conv1d_14_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_47/DisableCopyOnReadDisableCopyOnRead1read_47_disablecopyonread_adam_v_conv1d_14_kernel"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp1read_47_disablecopyonread_adam_v_conv1d_14_kernel^Read_47/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_48/DisableCopyOnReadDisableCopyOnRead/read_48_disablecopyonread_adam_m_conv1d_14_bias"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp/read_48_disablecopyonread_adam_m_conv1d_14_bias^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_49/DisableCopyOnReadDisableCopyOnRead/read_49_disablecopyonread_adam_v_conv1d_14_bias"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp/read_49_disablecopyonread_adam_v_conv1d_14_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_50/DisableCopyOnReadDisableCopyOnRead=read_50_disablecopyonread_adam_m_batch_normalization_14_gamma"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp=read_50_disablecopyonread_adam_m_batch_normalization_14_gamma^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_51/DisableCopyOnReadDisableCopyOnRead=read_51_disablecopyonread_adam_v_batch_normalization_14_gamma"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp=read_51_disablecopyonread_adam_v_batch_normalization_14_gamma^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_52/DisableCopyOnReadDisableCopyOnRead<read_52_disablecopyonread_adam_m_batch_normalization_14_beta"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp<read_52_disablecopyonread_adam_m_batch_normalization_14_beta^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_53/DisableCopyOnReadDisableCopyOnRead<read_53_disablecopyonread_adam_v_batch_normalization_14_beta"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp<read_53_disablecopyonread_adam_v_batch_normalization_14_beta^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_54/DisableCopyOnReadDisableCopyOnRead1read_54_disablecopyonread_adam_m_conv1d_15_kernel"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp1read_54_disablecopyonread_adam_m_conv1d_15_kernel^Read_54/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_55/DisableCopyOnReadDisableCopyOnRead1read_55_disablecopyonread_adam_v_conv1d_15_kernel"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp1read_55_disablecopyonread_adam_v_conv1d_15_kernel^Read_55/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0t
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:k
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_56/DisableCopyOnReadDisableCopyOnRead/read_56_disablecopyonread_adam_m_conv1d_15_bias"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp/read_56_disablecopyonread_adam_m_conv1d_15_bias^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_57/DisableCopyOnReadDisableCopyOnRead/read_57_disablecopyonread_adam_v_conv1d_15_bias"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp/read_57_disablecopyonread_adam_v_conv1d_15_bias^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_58/DisableCopyOnReadDisableCopyOnRead=read_58_disablecopyonread_adam_m_batch_normalization_15_gamma"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp=read_58_disablecopyonread_adam_m_batch_normalization_15_gamma^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_59/DisableCopyOnReadDisableCopyOnRead=read_59_disablecopyonread_adam_v_batch_normalization_15_gamma"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp=read_59_disablecopyonread_adam_v_batch_normalization_15_gamma^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_60/DisableCopyOnReadDisableCopyOnRead<read_60_disablecopyonread_adam_m_batch_normalization_15_beta"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp<read_60_disablecopyonread_adam_m_batch_normalization_15_beta^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_61/DisableCopyOnReadDisableCopyOnRead<read_61_disablecopyonread_adam_v_batch_normalization_15_beta"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp<read_61_disablecopyonread_adam_v_batch_normalization_15_beta^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_62/DisableCopyOnReadDisableCopyOnRead0read_62_disablecopyonread_adam_m_dense_29_kernel"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp0read_62_disablecopyonread_adam_m_dense_29_kernel^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0p
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: g
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_63/DisableCopyOnReadDisableCopyOnRead0read_63_disablecopyonread_adam_v_dense_29_kernel"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp0read_63_disablecopyonread_adam_v_dense_29_kernel^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0p
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: g
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_64/DisableCopyOnReadDisableCopyOnRead.read_64_disablecopyonread_adam_m_dense_29_bias"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp.read_64_disablecopyonread_adam_m_dense_29_bias^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_65/DisableCopyOnReadDisableCopyOnRead.read_65_disablecopyonread_adam_v_dense_29_bias"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp.read_65_disablecopyonread_adam_v_dense_29_bias^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_66/DisableCopyOnReadDisableCopyOnRead0read_66_disablecopyonread_adam_m_dense_30_kernel"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp0read_66_disablecopyonread_adam_m_dense_30_kernel^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: <*
dtype0p
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: <g
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes

: <�
Read_67/DisableCopyOnReadDisableCopyOnRead0read_67_disablecopyonread_adam_v_dense_30_kernel"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp0read_67_disablecopyonread_adam_v_dense_30_kernel^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: <*
dtype0p
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: <g
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes

: <�
Read_68/DisableCopyOnReadDisableCopyOnRead.read_68_disablecopyonread_adam_m_dense_30_bias"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp.read_68_disablecopyonread_adam_m_dense_30_bias^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_69/DisableCopyOnReadDisableCopyOnRead.read_69_disablecopyonread_adam_v_dense_30_bias"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp.read_69_disablecopyonread_adam_v_dense_30_bias^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
:<v
Read_70/DisableCopyOnReadDisableCopyOnRead!read_70_disablecopyonread_total_3"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp!read_70_disablecopyonread_total_3^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_71/DisableCopyOnReadDisableCopyOnRead!read_71_disablecopyonread_count_3"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp!read_71_disablecopyonread_count_3^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_72/DisableCopyOnReadDisableCopyOnRead!read_72_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp!read_72_disablecopyonread_total_2^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_73/DisableCopyOnReadDisableCopyOnRead!read_73_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp!read_73_disablecopyonread_count_2^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_74/DisableCopyOnReadDisableCopyOnRead!read_74_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp!read_74_disablecopyonread_total_1^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_75/DisableCopyOnReadDisableCopyOnRead!read_75_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp!read_75_disablecopyonread_count_1^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_76/DisableCopyOnReadDisableCopyOnReadread_76_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOpread_76_disablecopyonread_total^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_77/DisableCopyOnReadDisableCopyOnReadread_77_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOpread_77_disablecopyonread_count^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes
: �!
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*�!
value�!B�!OB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*�
value�B�OB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *]
dtypesS
Q2O	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_156Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_157IdentityIdentity_156:output:0^NoOp*
T0*
_output_shapes
: � 
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "%
identity_157Identity_157:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:O

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
8__inference_batch_normalization_12_layer_call_fn_9853501

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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_9851828|
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
X
<__inference_global_average_pooling1d_6_layer_call_fn_9853875

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
GPU 2J 8� *`
f[RY
W__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_9852108i
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
�
F__inference_conv1d_15_layer_call_and_return_conditional_losses_9852237

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
�%
�
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_9851808

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
(:������������������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
*__inference_dense_30_layer_call_fn_9853937

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
GPU 2J 8� *N
fIRG
E__inference_dense_30_layer_call_and_return_conditional_losses_9852294o
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

e
F__inference_dropout_7_layer_call_and_return_conditional_losses_9853923

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
:��������� Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0[
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
�
d
F__inference_dropout_7_layer_call_and_return_conditional_losses_9852394

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
6__inference_Federated_CNN_F5_H12_layer_call_fn_9853071

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
GPU 2J 8� *Z
fURS
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9852615s
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

c
G__inference_reshape_10_layer_call_and_return_conditional_losses_9852313

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
a
E__inference_lambda_3_layer_call_and_return_conditional_losses_9853442

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
a
E__inference_lambda_3_layer_call_and_return_conditional_losses_9853450

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
�
d
+__inference_dropout_7_layer_call_fn_9853906

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
GPU 2J 8� *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_9852282o
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
8__inference_batch_normalization_13_layer_call_fn_9853606

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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_9851910|
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
�
�
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9853870

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
(:������������������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�%
�
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_9853535

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
(:������������������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
d
F__inference_dropout_7_layer_call_and_return_conditional_losses_9853928

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
�
H
,__inference_reshape_10_layer_call_fn_9853952

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
GPU 2J 8� *P
fKRI
G__inference_reshape_10_layer_call_and_return_conditional_losses_9852313d
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
�
G
+__inference_dropout_7_layer_call_fn_9853911

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
GPU 2J 8� *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_9852394`
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
�
�
6__inference_Federated_CNN_F5_H12_layer_call_fn_9852674	
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
GPU 2J 8� *Z
fURS
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9852615s
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

�
E__inference_dense_29_layer_call_and_return_conditional_losses_9853901

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
�

e
F__inference_dropout_7_layer_call_and_return_conditional_losses_9852282

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
:��������� Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0[
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
�%
�
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_9851972

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
(:������������������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
*__inference_dense_29_layer_call_fn_9853890

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
GPU 2J 8� *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_9852264o
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
�
�
+__inference_conv1d_15_layer_call_fn_9853774

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
GPU 2J 8� *O
fJRH
F__inference_conv1d_15_layer_call_and_return_conditional_losses_9852237s
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
�%
�
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_9853745

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
(:������������������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
%__inference_signature_wrapper_9852949	
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
GPU 2J 8� *+
f&R$
"__inference__wrapped_model_9851773s
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
�
�
8__inference_batch_normalization_12_layer_call_fn_9853488

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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_9851808|
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
F__inference_conv1d_14_layer_call_and_return_conditional_losses_9853685

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
�%
�
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9852054

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
(:������������������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_9851910

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
(:������������������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�%
�
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_9851890

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
(:������������������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
8__inference_batch_normalization_14_layer_call_fn_9853698

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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_9851972|
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
�J
�
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9852615

inputs'
conv1d_12_9852545:
conv1d_12_9852547:,
batch_normalization_12_9852550:,
batch_normalization_12_9852552:,
batch_normalization_12_9852554:,
batch_normalization_12_9852556:'
conv1d_13_9852559:
conv1d_13_9852561:,
batch_normalization_13_9852564:,
batch_normalization_13_9852566:,
batch_normalization_13_9852568:,
batch_normalization_13_9852570:'
conv1d_14_9852573:
conv1d_14_9852575:,
batch_normalization_14_9852578:,
batch_normalization_14_9852580:,
batch_normalization_14_9852582:,
batch_normalization_14_9852584:'
conv1d_15_9852587:
conv1d_15_9852589:,
batch_normalization_15_9852592:,
batch_normalization_15_9852594:,
batch_normalization_15_9852596:,
batch_normalization_15_9852598:"
dense_29_9852602: 
dense_29_9852604: "
dense_30_9852608: <
dense_30_9852610:<
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
GPU 2J 8� *N
fIRG
E__inference_lambda_3_layer_call_and_return_conditional_losses_9852326�
!conv1d_12/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0conv1d_12_9852545conv1d_12_9852547*
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
GPU 2J 8� *O
fJRH
F__inference_conv1d_12_layer_call_and_return_conditional_losses_9852144�
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall*conv1d_12/StatefulPartitionedCall:output:0batch_normalization_12_9852550batch_normalization_12_9852552batch_normalization_12_9852554batch_normalization_12_9852556*
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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_9851828�
!conv1d_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0conv1d_13_9852559conv1d_13_9852561*
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
GPU 2J 8� *O
fJRH
F__inference_conv1d_13_layer_call_and_return_conditional_losses_9852175�
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall*conv1d_13/StatefulPartitionedCall:output:0batch_normalization_13_9852564batch_normalization_13_9852566batch_normalization_13_9852568batch_normalization_13_9852570*
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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_9851910�
!conv1d_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0conv1d_14_9852573conv1d_14_9852575*
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
GPU 2J 8� *O
fJRH
F__inference_conv1d_14_layer_call_and_return_conditional_losses_9852206�
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall*conv1d_14/StatefulPartitionedCall:output:0batch_normalization_14_9852578batch_normalization_14_9852580batch_normalization_14_9852582batch_normalization_14_9852584*
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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_9851992�
!conv1d_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0conv1d_15_9852587conv1d_15_9852589*
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
GPU 2J 8� *O
fJRH
F__inference_conv1d_15_layer_call_and_return_conditional_losses_9852237�
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv1d_15/StatefulPartitionedCall:output:0batch_normalization_15_9852592batch_normalization_15_9852594batch_normalization_15_9852596batch_normalization_15_9852598*
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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9852074�
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
GPU 2J 8� *`
f[RY
W__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_9852108�
 dense_29/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_6/PartitionedCall:output:0dense_29_9852602dense_29_9852604*
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
GPU 2J 8� *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_9852264�
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
GPU 2J 8� *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_9852394�
 dense_30/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_30_9852608dense_30_9852610*
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
GPU 2J 8� *N
fIRG
E__inference_dense_30_layer_call_and_return_conditional_losses_9852294�
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
GPU 2J 8� *P
fKRI
G__inference_reshape_10_layer_call_and_return_conditional_losses_9852313v
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
�%
�
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_9853640

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
(:������������������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_9853660

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
(:������������������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�%
�
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9853850

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
(:������������������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
8__inference_batch_normalization_15_layer_call_fn_9853816

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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9852074|
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
��
�
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9853424

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
:���������<g
reshape_10/ShapeShapedense_30/BiasAdd:output:0*
T0*
_output_shapes
::��h
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
O:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2f
1batch_normalization_12/batchnorm/ReadVariableOp_11batch_normalization_12/batchnorm/ReadVariableOp_12f
1batch_normalization_12/batchnorm/ReadVariableOp_21batch_normalization_12/batchnorm/ReadVariableOp_22b
/batch_normalization_12/batchnorm/ReadVariableOp/batch_normalization_12/batchnorm/ReadVariableOp2j
3batch_normalization_12/batchnorm/mul/ReadVariableOp3batch_normalization_12/batchnorm/mul/ReadVariableOp2f
1batch_normalization_13/batchnorm/ReadVariableOp_11batch_normalization_13/batchnorm/ReadVariableOp_12f
1batch_normalization_13/batchnorm/ReadVariableOp_21batch_normalization_13/batchnorm/ReadVariableOp_22b
/batch_normalization_13/batchnorm/ReadVariableOp/batch_normalization_13/batchnorm/ReadVariableOp2j
3batch_normalization_13/batchnorm/mul/ReadVariableOp3batch_normalization_13/batchnorm/mul/ReadVariableOp2f
1batch_normalization_14/batchnorm/ReadVariableOp_11batch_normalization_14/batchnorm/ReadVariableOp_12f
1batch_normalization_14/batchnorm/ReadVariableOp_21batch_normalization_14/batchnorm/ReadVariableOp_22b
/batch_normalization_14/batchnorm/ReadVariableOp/batch_normalization_14/batchnorm/ReadVariableOp2j
3batch_normalization_14/batchnorm/mul/ReadVariableOp3batch_normalization_14/batchnorm/mul/ReadVariableOp2f
1batch_normalization_15/batchnorm/ReadVariableOp_11batch_normalization_15/batchnorm/ReadVariableOp_12f
1batch_normalization_15/batchnorm/ReadVariableOp_21batch_normalization_15/batchnorm/ReadVariableOp_22b
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
��
�2
#__inference__traced_restore_9854700
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
!assignvariableop_27_dense_30_bias:<'
assignvariableop_28_iteration:	 +
!assignvariableop_29_learning_rate: A
+assignvariableop_30_adam_m_conv1d_12_kernel:A
+assignvariableop_31_adam_v_conv1d_12_kernel:7
)assignvariableop_32_adam_m_conv1d_12_bias:7
)assignvariableop_33_adam_v_conv1d_12_bias:E
7assignvariableop_34_adam_m_batch_normalization_12_gamma:E
7assignvariableop_35_adam_v_batch_normalization_12_gamma:D
6assignvariableop_36_adam_m_batch_normalization_12_beta:D
6assignvariableop_37_adam_v_batch_normalization_12_beta:A
+assignvariableop_38_adam_m_conv1d_13_kernel:A
+assignvariableop_39_adam_v_conv1d_13_kernel:7
)assignvariableop_40_adam_m_conv1d_13_bias:7
)assignvariableop_41_adam_v_conv1d_13_bias:E
7assignvariableop_42_adam_m_batch_normalization_13_gamma:E
7assignvariableop_43_adam_v_batch_normalization_13_gamma:D
6assignvariableop_44_adam_m_batch_normalization_13_beta:D
6assignvariableop_45_adam_v_batch_normalization_13_beta:A
+assignvariableop_46_adam_m_conv1d_14_kernel:A
+assignvariableop_47_adam_v_conv1d_14_kernel:7
)assignvariableop_48_adam_m_conv1d_14_bias:7
)assignvariableop_49_adam_v_conv1d_14_bias:E
7assignvariableop_50_adam_m_batch_normalization_14_gamma:E
7assignvariableop_51_adam_v_batch_normalization_14_gamma:D
6assignvariableop_52_adam_m_batch_normalization_14_beta:D
6assignvariableop_53_adam_v_batch_normalization_14_beta:A
+assignvariableop_54_adam_m_conv1d_15_kernel:A
+assignvariableop_55_adam_v_conv1d_15_kernel:7
)assignvariableop_56_adam_m_conv1d_15_bias:7
)assignvariableop_57_adam_v_conv1d_15_bias:E
7assignvariableop_58_adam_m_batch_normalization_15_gamma:E
7assignvariableop_59_adam_v_batch_normalization_15_gamma:D
6assignvariableop_60_adam_m_batch_normalization_15_beta:D
6assignvariableop_61_adam_v_batch_normalization_15_beta:<
*assignvariableop_62_adam_m_dense_29_kernel: <
*assignvariableop_63_adam_v_dense_29_kernel: 6
(assignvariableop_64_adam_m_dense_29_bias: 6
(assignvariableop_65_adam_v_dense_29_bias: <
*assignvariableop_66_adam_m_dense_30_kernel: <<
*assignvariableop_67_adam_v_dense_30_kernel: <6
(assignvariableop_68_adam_m_dense_30_bias:<6
(assignvariableop_69_adam_v_dense_30_bias:<%
assignvariableop_70_total_3: %
assignvariableop_71_count_3: %
assignvariableop_72_total_2: %
assignvariableop_73_count_2: %
assignvariableop_74_total_1: %
assignvariableop_75_count_1: #
assignvariableop_76_total: #
assignvariableop_77_count: 
identity_79��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_8�AssignVariableOp_9�!
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*�!
value�!B�!OB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*�
value�B�OB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*]
dtypesS
Q2O	[
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
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_iterationIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp!assignvariableop_29_learning_rateIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_m_conv1d_12_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_v_conv1d_12_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_m_conv1d_12_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_v_conv1d_12_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp7assignvariableop_34_adam_m_batch_normalization_12_gammaIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp7assignvariableop_35_adam_v_batch_normalization_12_gammaIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_m_batch_normalization_12_betaIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_v_batch_normalization_12_betaIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_m_conv1d_13_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_v_conv1d_13_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_m_conv1d_13_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_v_conv1d_13_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp7assignvariableop_42_adam_m_batch_normalization_13_gammaIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp7assignvariableop_43_adam_v_batch_normalization_13_gammaIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp6assignvariableop_44_adam_m_batch_normalization_13_betaIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp6assignvariableop_45_adam_v_batch_normalization_13_betaIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp+assignvariableop_46_adam_m_conv1d_14_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_v_conv1d_14_kernelIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_m_conv1d_14_biasIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_v_conv1d_14_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp7assignvariableop_50_adam_m_batch_normalization_14_gammaIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp7assignvariableop_51_adam_v_batch_normalization_14_gammaIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp6assignvariableop_52_adam_m_batch_normalization_14_betaIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp6assignvariableop_53_adam_v_batch_normalization_14_betaIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp+assignvariableop_54_adam_m_conv1d_15_kernelIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp+assignvariableop_55_adam_v_conv1d_15_kernelIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_m_conv1d_15_biasIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_v_conv1d_15_biasIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp7assignvariableop_58_adam_m_batch_normalization_15_gammaIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp7assignvariableop_59_adam_v_batch_normalization_15_gammaIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp6assignvariableop_60_adam_m_batch_normalization_15_betaIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp6assignvariableop_61_adam_v_batch_normalization_15_betaIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp*assignvariableop_62_adam_m_dense_29_kernelIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp*assignvariableop_63_adam_v_dense_29_kernelIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp(assignvariableop_64_adam_m_dense_29_biasIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp(assignvariableop_65_adam_v_dense_29_biasIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp*assignvariableop_66_adam_m_dense_30_kernelIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_v_dense_30_kernelIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_m_dense_30_biasIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp(assignvariableop_69_adam_v_dense_30_biasIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOpassignvariableop_70_total_3Identity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOpassignvariableop_71_count_3Identity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOpassignvariableop_72_total_2Identity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOpassignvariableop_73_count_2Identity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOpassignvariableop_74_total_1Identity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOpassignvariableop_75_count_1Identity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOpassignvariableop_76_totalIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOpassignvariableop_77_countIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_78Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_79IdentityIdentity_78:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_79Identity_79:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
6__inference_Federated_CNN_F5_H12_layer_call_fn_9853010

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
GPU 2J 8� *Z
fURS
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9852480s
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
�
�
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_9853765

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
(:������������������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
8__inference_batch_normalization_13_layer_call_fn_9853593

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
GPU 2J 8� *\
fWRU
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_9851890|
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
+__inference_conv1d_14_layer_call_fn_9853669

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
GPU 2J 8� *O
fJRH
F__inference_conv1d_14_layer_call_and_return_conditional_losses_9852206s
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
�
F__inference_conv1d_14_layer_call_and_return_conditional_losses_9852206

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
s
W__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_9853881

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
F__inference_conv1d_15_layer_call_and_return_conditional_losses_9853790

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
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
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
signatures
#_self_saveable_object_factories
	optimizer"
_tf_keras_network
D
#_self_saveable_object_factories"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
#!_self_saveable_object_factories"
_tf_keras_layer
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
#*_self_saveable_object_factories
 +_jit_compiled_convolution_op"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses
2axis
	3gamma
4beta
5moving_mean
6moving_variance
#7_self_saveable_object_factories"
_tf_keras_layer
�
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias
#@_self_saveable_object_factories
 A_jit_compiled_convolution_op"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses
Haxis
	Igamma
Jbeta
Kmoving_mean
Lmoving_variance
#M_self_saveable_object_factories"
_tf_keras_layer
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias
#V_self_saveable_object_factories
 W_jit_compiled_convolution_op"
_tf_keras_layer
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^axis
	_gamma
`beta
amoving_mean
bmoving_variance
#c_self_saveable_object_factories"
_tf_keras_layer
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

jkernel
kbias
#l_self_saveable_object_factories
 m_jit_compiled_convolution_op"
_tf_keras_layer
�
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses
taxis
	ugamma
vbeta
wmoving_mean
xmoving_variance
#y_self_saveable_object_factories"
_tf_keras_layer
�
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
(0
)1
32
43
54
65
>6
?7
I8
J9
K10
L11
T12
U13
_14
`15
a16
b17
j18
k19
u20
v21
w22
x23
�24
�25
�26
�27"
trackable_list_wrapper
�
(0
)1
32
43
>4
?5
I6
J7
T8
U9
_10
`11
j12
k13
u14
v15
�16
�17
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
6__inference_Federated_CNN_F5_H12_layer_call_fn_9852539
6__inference_Federated_CNN_F5_H12_layer_call_fn_9852674
6__inference_Federated_CNN_F5_H12_layer_call_fn_9853010
6__inference_Federated_CNN_F5_H12_layer_call_fn_9853071�
���
FullArgSpec)
args!�
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
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9852316
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9852403
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9853279
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9853424�
���
FullArgSpec)
args!�
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
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
"__inference__wrapped_model_9851773Input"�
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
trackable_dict_wrapper
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla"
experimentalOptimizer
 "
trackable_dict_wrapper
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
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
*__inference_lambda_3_layer_call_fn_9853429
*__inference_lambda_3_layer_call_fn_9853434�
���
FullArgSpec)
args!�
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
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_lambda_3_layer_call_and_return_conditional_losses_9853442
E__inference_lambda_3_layer_call_and_return_conditional_losses_9853450�
���
FullArgSpec)
args!�
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
annotations� *
 z�trace_0z�trace_1
 "
trackable_dict_wrapper
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv1d_12_layer_call_fn_9853459�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv1d_12_layer_call_and_return_conditional_losses_9853475�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
&:$2conv1d_12/kernel
:2conv1d_12/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
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
annotations� *
 0
<
30
41
52
63"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_12_layer_call_fn_9853488
8__inference_batch_normalization_12_layer_call_fn_9853501�
���
FullArgSpec)
args!�
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
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_9853535
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_9853555�
���
FullArgSpec)
args!�
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
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_12/gamma
):'2batch_normalization_12/beta
2:0 (2"batch_normalization_12/moving_mean
6:4 (2&batch_normalization_12/moving_variance
 "
trackable_dict_wrapper
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv1d_13_layer_call_fn_9853564�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv1d_13_layer_call_and_return_conditional_losses_9853580�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
&:$2conv1d_13/kernel
:2conv1d_13/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
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
annotations� *
 0
<
I0
J1
K2
L3"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_13_layer_call_fn_9853593
8__inference_batch_normalization_13_layer_call_fn_9853606�
���
FullArgSpec)
args!�
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
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_9853640
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_9853660�
���
FullArgSpec)
args!�
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
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_13/gamma
):'2batch_normalization_13/beta
2:0 (2"batch_normalization_13/moving_mean
6:4 (2&batch_normalization_13/moving_variance
 "
trackable_dict_wrapper
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv1d_14_layer_call_fn_9853669�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv1d_14_layer_call_and_return_conditional_losses_9853685�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
&:$2conv1d_14/kernel
:2conv1d_14/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
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
annotations� *
 0
<
_0
`1
a2
b3"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_14_layer_call_fn_9853698
8__inference_batch_normalization_14_layer_call_fn_9853711�
���
FullArgSpec)
args!�
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
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_9853745
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_9853765�
���
FullArgSpec)
args!�
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
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_14/gamma
):'2batch_normalization_14/beta
2:0 (2"batch_normalization_14/moving_mean
6:4 (2&batch_normalization_14/moving_variance
 "
trackable_dict_wrapper
.
j0
k1"
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
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv1d_15_layer_call_fn_9853774�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv1d_15_layer_call_and_return_conditional_losses_9853790�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
&:$2conv1d_15/kernel
:2conv1d_15/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
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
annotations� *
 0
<
u0
v1
w2
x3"
trackable_list_wrapper
.
u0
v1"
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
�trace_0
�trace_12�
8__inference_batch_normalization_15_layer_call_fn_9853803
8__inference_batch_normalization_15_layer_call_fn_9853816�
���
FullArgSpec)
args!�
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
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9853850
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9853870�
���
FullArgSpec)
args!�
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
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_15/gamma
):'2batch_normalization_15/beta
2:0 (2"batch_normalization_15/moving_mean
6:4 (2&batch_normalization_15/moving_variance
 "
trackable_dict_wrapper
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
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
<__inference_global_average_pooling1d_6_layer_call_fn_9853875�
���
FullArgSpec
args�
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
annotations� *
 z�trace_0
�
�trace_02�
W__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_9853881�
���
FullArgSpec
args�
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
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
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
*__inference_dense_29_layer_call_fn_9853890�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_29_layer_call_and_return_conditional_losses_9853901�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
!: 2dense_29/kernel
: 2dense_29/bias
 "
trackable_dict_wrapper
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
�
�trace_0
�trace_12�
+__inference_dropout_7_layer_call_fn_9853906
+__inference_dropout_7_layer_call_fn_9853911�
���
FullArgSpec!
args�
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
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_7_layer_call_and_return_conditional_losses_9853923
F__inference_dropout_7_layer_call_and_return_conditional_losses_9853928�
���
FullArgSpec!
args�
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
annotations� *
 z�trace_0z�trace_1
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
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
*__inference_dense_30_layer_call_fn_9853937�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_30_layer_call_and_return_conditional_losses_9853947�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
!: <2dense_30/kernel
:<2dense_30/bias
 "
trackable_dict_wrapper
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
,__inference_reshape_10_layer_call_fn_9853952�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_reshape_10_layer_call_and_return_conditional_losses_9853965�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
X
50
61
K2
L3
a4
b5
w6
x7"
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
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_Federated_CNN_F5_H12_layer_call_fn_9852539Input"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
6__inference_Federated_CNN_F5_H12_layer_call_fn_9852674Input"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
6__inference_Federated_CNN_F5_H12_layer_call_fn_9853010inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
6__inference_Federated_CNN_F5_H12_layer_call_fn_9853071inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9852316Input"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9852403Input"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9853279inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9853424inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
%__inference_signature_wrapper_9852949Input"�
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
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
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
*__inference_lambda_3_layer_call_fn_9853429inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
*__inference_lambda_3_layer_call_fn_9853434inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
E__inference_lambda_3_layer_call_and_return_conditional_losses_9853442inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
E__inference_lambda_3_layer_call_and_return_conditional_losses_9853450inputs"�
���
FullArgSpec)
args!�
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
+__inference_conv1d_12_layer_call_fn_9853459inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
F__inference_conv1d_12_layer_call_and_return_conditional_losses_9853475inputs"�
���
FullArgSpec
args�

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
annotations� *
 
.
50
61"
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
8__inference_batch_normalization_12_layer_call_fn_9853488inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
8__inference_batch_normalization_12_layer_call_fn_9853501inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_9853535inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_9853555inputs"�
���
FullArgSpec)
args!�
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
+__inference_conv1d_13_layer_call_fn_9853564inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
F__inference_conv1d_13_layer_call_and_return_conditional_losses_9853580inputs"�
���
FullArgSpec
args�

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
annotations� *
 
.
K0
L1"
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
8__inference_batch_normalization_13_layer_call_fn_9853593inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
8__inference_batch_normalization_13_layer_call_fn_9853606inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_9853640inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_9853660inputs"�
���
FullArgSpec)
args!�
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
+__inference_conv1d_14_layer_call_fn_9853669inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
F__inference_conv1d_14_layer_call_and_return_conditional_losses_9853685inputs"�
���
FullArgSpec
args�

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
annotations� *
 
.
a0
b1"
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
8__inference_batch_normalization_14_layer_call_fn_9853698inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
8__inference_batch_normalization_14_layer_call_fn_9853711inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_9853745inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_9853765inputs"�
���
FullArgSpec)
args!�
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
+__inference_conv1d_15_layer_call_fn_9853774inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
F__inference_conv1d_15_layer_call_and_return_conditional_losses_9853790inputs"�
���
FullArgSpec
args�

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
annotations� *
 
.
w0
x1"
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
8__inference_batch_normalization_15_layer_call_fn_9853803inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
8__inference_batch_normalization_15_layer_call_fn_9853816inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9853850inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9853870inputs"�
���
FullArgSpec)
args!�
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
<__inference_global_average_pooling1d_6_layer_call_fn_9853875inputs"�
���
FullArgSpec
args�
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
annotations� *
 
�B�
W__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_9853881inputs"�
���
FullArgSpec
args�
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
*__inference_dense_29_layer_call_fn_9853890inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
E__inference_dense_29_layer_call_and_return_conditional_losses_9853901inputs"�
���
FullArgSpec
args�

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
+__inference_dropout_7_layer_call_fn_9853906inputs"�
���
FullArgSpec!
args�
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
annotations� *
 
�B�
+__inference_dropout_7_layer_call_fn_9853911inputs"�
���
FullArgSpec!
args�
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
annotations� *
 
�B�
F__inference_dropout_7_layer_call_and_return_conditional_losses_9853923inputs"�
���
FullArgSpec!
args�
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
annotations� *
 
�B�
F__inference_dropout_7_layer_call_and_return_conditional_losses_9853928inputs"�
���
FullArgSpec!
args�
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
annotations� *
 
 "
trackable_dict_wrapper
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
*__inference_dense_30_layer_call_fn_9853937inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
E__inference_dense_30_layer_call_and_return_conditional_losses_9853947inputs"�
���
FullArgSpec
args�

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
,__inference_reshape_10_layer_call_fn_9853952inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_reshape_10_layer_call_and_return_conditional_losses_9853965inputs"�
���
FullArgSpec
args�

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
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
+:)2Adam/m/conv1d_12/kernel
+:)2Adam/v/conv1d_12/kernel
!:2Adam/m/conv1d_12/bias
!:2Adam/v/conv1d_12/bias
/:-2#Adam/m/batch_normalization_12/gamma
/:-2#Adam/v/batch_normalization_12/gamma
.:,2"Adam/m/batch_normalization_12/beta
.:,2"Adam/v/batch_normalization_12/beta
+:)2Adam/m/conv1d_13/kernel
+:)2Adam/v/conv1d_13/kernel
!:2Adam/m/conv1d_13/bias
!:2Adam/v/conv1d_13/bias
/:-2#Adam/m/batch_normalization_13/gamma
/:-2#Adam/v/batch_normalization_13/gamma
.:,2"Adam/m/batch_normalization_13/beta
.:,2"Adam/v/batch_normalization_13/beta
+:)2Adam/m/conv1d_14/kernel
+:)2Adam/v/conv1d_14/kernel
!:2Adam/m/conv1d_14/bias
!:2Adam/v/conv1d_14/bias
/:-2#Adam/m/batch_normalization_14/gamma
/:-2#Adam/v/batch_normalization_14/gamma
.:,2"Adam/m/batch_normalization_14/beta
.:,2"Adam/v/batch_normalization_14/beta
+:)2Adam/m/conv1d_15/kernel
+:)2Adam/v/conv1d_15/kernel
!:2Adam/m/conv1d_15/bias
!:2Adam/v/conv1d_15/bias
/:-2#Adam/m/batch_normalization_15/gamma
/:-2#Adam/v/batch_normalization_15/gamma
.:,2"Adam/m/batch_normalization_15/beta
.:,2"Adam/v/batch_normalization_15/beta
&:$ 2Adam/m/dense_29/kernel
&:$ 2Adam/v/dense_29/kernel
 : 2Adam/m/dense_29/bias
 : 2Adam/v/dense_29/bias
&:$ <2Adam/m/dense_30/kernel
&:$ <2Adam/v/dense_30/kernel
 :<2Adam/m/dense_30/bias
 :<2Adam/v/dense_30/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9852316� ()5634>?KLIJTUab_`jkwxuv����:�7
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
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9852403� ()6354>?LIKJTUb_a`jkxuwv����:�7
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
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9853279� ()5634>?KLIJTUab_`jkwxuv����;�8
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
Q__inference_Federated_CNN_F5_H12_layer_call_and_return_conditional_losses_9853424� ()6354>?LIKJTUb_a`jkxuwv����;�8
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
6__inference_Federated_CNN_F5_H12_layer_call_fn_9852539� ()5634>?KLIJTUab_`jkwxuv����:�7
0�-
#� 
Input���������
p

 
� "%�"
unknown����������
6__inference_Federated_CNN_F5_H12_layer_call_fn_9852674� ()6354>?LIKJTUb_a`jkxuwv����:�7
0�-
#� 
Input���������
p 

 
� "%�"
unknown����������
6__inference_Federated_CNN_F5_H12_layer_call_fn_9853010� ()5634>?KLIJTUab_`jkwxuv����;�8
1�.
$�!
inputs���������
p

 
� "%�"
unknown����������
6__inference_Federated_CNN_F5_H12_layer_call_fn_9853071� ()6354>?LIKJTUb_a`jkxuwv����;�8
1�.
$�!
inputs���������
p 

 
� "%�"
unknown����������
"__inference__wrapped_model_9851773� ()6354>?LIKJTUb_a`jkxuwv����2�/
(�%
#� 
Input���������
� ";�8
6

reshape_10(�%

reshape_10����������
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_9853535�5634D�A
:�7
-�*
inputs������������������
p

 
� "9�6
/�,
tensor_0������������������
� �
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_9853555�6354D�A
:�7
-�*
inputs������������������
p 

 
� "9�6
/�,
tensor_0������������������
� �
8__inference_batch_normalization_12_layer_call_fn_9853488|5634D�A
:�7
-�*
inputs������������������
p

 
� ".�+
unknown�������������������
8__inference_batch_normalization_12_layer_call_fn_9853501|6354D�A
:�7
-�*
inputs������������������
p 

 
� ".�+
unknown�������������������
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_9853640�KLIJD�A
:�7
-�*
inputs������������������
p

 
� "9�6
/�,
tensor_0������������������
� �
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_9853660�LIKJD�A
:�7
-�*
inputs������������������
p 

 
� "9�6
/�,
tensor_0������������������
� �
8__inference_batch_normalization_13_layer_call_fn_9853593|KLIJD�A
:�7
-�*
inputs������������������
p

 
� ".�+
unknown�������������������
8__inference_batch_normalization_13_layer_call_fn_9853606|LIKJD�A
:�7
-�*
inputs������������������
p 

 
� ".�+
unknown�������������������
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_9853745�ab_`D�A
:�7
-�*
inputs������������������
p

 
� "9�6
/�,
tensor_0������������������
� �
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_9853765�b_a`D�A
:�7
-�*
inputs������������������
p 

 
� "9�6
/�,
tensor_0������������������
� �
8__inference_batch_normalization_14_layer_call_fn_9853698|ab_`D�A
:�7
-�*
inputs������������������
p

 
� ".�+
unknown�������������������
8__inference_batch_normalization_14_layer_call_fn_9853711|b_a`D�A
:�7
-�*
inputs������������������
p 

 
� ".�+
unknown�������������������
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9853850�wxuvD�A
:�7
-�*
inputs������������������
p

 
� "9�6
/�,
tensor_0������������������
� �
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9853870�xuwvD�A
:�7
-�*
inputs������������������
p 

 
� "9�6
/�,
tensor_0������������������
� �
8__inference_batch_normalization_15_layer_call_fn_9853803|wxuvD�A
:�7
-�*
inputs������������������
p

 
� ".�+
unknown�������������������
8__inference_batch_normalization_15_layer_call_fn_9853816|xuwvD�A
:�7
-�*
inputs������������������
p 

 
� ".�+
unknown�������������������
F__inference_conv1d_12_layer_call_and_return_conditional_losses_9853475k()3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
+__inference_conv1d_12_layer_call_fn_9853459`()3�0
)�&
$�!
inputs���������
� "%�"
unknown����������
F__inference_conv1d_13_layer_call_and_return_conditional_losses_9853580k>?3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
+__inference_conv1d_13_layer_call_fn_9853564`>?3�0
)�&
$�!
inputs���������
� "%�"
unknown����������
F__inference_conv1d_14_layer_call_and_return_conditional_losses_9853685kTU3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
+__inference_conv1d_14_layer_call_fn_9853669`TU3�0
)�&
$�!
inputs���������
� "%�"
unknown����������
F__inference_conv1d_15_layer_call_and_return_conditional_losses_9853790kjk3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
+__inference_conv1d_15_layer_call_fn_9853774`jk3�0
)�&
$�!
inputs���������
� "%�"
unknown����������
E__inference_dense_29_layer_call_and_return_conditional_losses_9853901e��/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0��������� 
� �
*__inference_dense_29_layer_call_fn_9853890Z��/�,
%�"
 �
inputs���������
� "!�
unknown��������� �
E__inference_dense_30_layer_call_and_return_conditional_losses_9853947e��/�,
%�"
 �
inputs��������� 
� ",�)
"�
tensor_0���������<
� �
*__inference_dense_30_layer_call_fn_9853937Z��/�,
%�"
 �
inputs��������� 
� "!�
unknown���������<�
F__inference_dropout_7_layer_call_and_return_conditional_losses_9853923c3�0
)�&
 �
inputs��������� 
p
� ",�)
"�
tensor_0��������� 
� �
F__inference_dropout_7_layer_call_and_return_conditional_losses_9853928c3�0
)�&
 �
inputs��������� 
p 
� ",�)
"�
tensor_0��������� 
� �
+__inference_dropout_7_layer_call_fn_9853906X3�0
)�&
 �
inputs��������� 
p
� "!�
unknown��������� �
+__inference_dropout_7_layer_call_fn_9853911X3�0
)�&
 �
inputs��������� 
p 
� "!�
unknown��������� �
W__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_9853881�I�F
?�<
6�3
inputs'���������������������������

 
� "5�2
+�(
tensor_0������������������
� �
<__inference_global_average_pooling1d_6_layer_call_fn_9853875wI�F
?�<
6�3
inputs'���������������������������

 
� "*�'
unknown�������������������
E__inference_lambda_3_layer_call_and_return_conditional_losses_9853442o;�8
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
E__inference_lambda_3_layer_call_and_return_conditional_losses_9853450o;�8
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
*__inference_lambda_3_layer_call_fn_9853429d;�8
1�.
$�!
inputs���������

 
p
� "%�"
unknown����������
*__inference_lambda_3_layer_call_fn_9853434d;�8
1�.
$�!
inputs���������

 
p 
� "%�"
unknown����������
G__inference_reshape_10_layer_call_and_return_conditional_losses_9853965c/�,
%�"
 �
inputs���������<
� "0�-
&�#
tensor_0���������
� �
,__inference_reshape_10_layer_call_fn_9853952X/�,
%�"
 �
inputs���������<
� "%�"
unknown����������
%__inference_signature_wrapper_9852949� ()6354>?LIKJTUb_a`jkxuwv����;�8
� 
1�.
,
Input#� 
input���������";�8
6

reshape_10(�%

reshape_10���������