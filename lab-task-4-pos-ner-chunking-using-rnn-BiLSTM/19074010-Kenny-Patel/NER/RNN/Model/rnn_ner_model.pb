2
ë
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
-
Tanh
x"T
y"T"
Ttype:

2

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.4.12v2.4.1-0-g85c8b2a817f8äú.

embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¤Z*'
shared_nameembedding_3/embeddings

*embedding_3/embeddings/Read/ReadVariableOpReadVariableOpembedding_3/embeddings* 
_output_shapes
:
¤Z*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
ª
'simple_rnn_11/simple_rnn_cell_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Z@*8
shared_name)'simple_rnn_11/simple_rnn_cell_11/kernel
£
;simple_rnn_11/simple_rnn_cell_11/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_11/simple_rnn_cell_11/kernel*
_output_shapes

:Z@*
dtype0
¾
1simple_rnn_11/simple_rnn_cell_11/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*B
shared_name31simple_rnn_11/simple_rnn_cell_11/recurrent_kernel
·
Esimple_rnn_11/simple_rnn_cell_11/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_11/simple_rnn_cell_11/recurrent_kernel*
_output_shapes

:@@*
dtype0
¢
%simple_rnn_11/simple_rnn_cell_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%simple_rnn_11/simple_rnn_cell_11/bias

9simple_rnn_11/simple_rnn_cell_11/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_11/simple_rnn_cell_11/bias*
_output_shapes
:@*
dtype0
«
'simple_rnn_12/simple_rnn_cell_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*8
shared_name)'simple_rnn_12/simple_rnn_cell_12/kernel
¤
;simple_rnn_12/simple_rnn_cell_12/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_12/simple_rnn_cell_12/kernel*
_output_shapes
:	@*
dtype0
À
1simple_rnn_12/simple_rnn_cell_12/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*B
shared_name31simple_rnn_12/simple_rnn_cell_12/recurrent_kernel
¹
Esimple_rnn_12/simple_rnn_cell_12/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_12/simple_rnn_cell_12/recurrent_kernel* 
_output_shapes
:
*
dtype0
£
%simple_rnn_12/simple_rnn_cell_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%simple_rnn_12/simple_rnn_cell_12/bias

9simple_rnn_12/simple_rnn_cell_12/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_12/simple_rnn_cell_12/bias*
_output_shapes	
:*
dtype0
¬
'simple_rnn_13/simple_rnn_cell_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*8
shared_name)'simple_rnn_13/simple_rnn_cell_13/kernel
¥
;simple_rnn_13/simple_rnn_cell_13/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_13/simple_rnn_cell_13/kernel* 
_output_shapes
:
*
dtype0
À
1simple_rnn_13/simple_rnn_cell_13/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*B
shared_name31simple_rnn_13/simple_rnn_cell_13/recurrent_kernel
¹
Esimple_rnn_13/simple_rnn_cell_13/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_13/simple_rnn_cell_13/recurrent_kernel* 
_output_shapes
:
*
dtype0
£
%simple_rnn_13/simple_rnn_cell_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%simple_rnn_13/simple_rnn_cell_13/bias

9simple_rnn_13/simple_rnn_cell_13/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_13/simple_rnn_cell_13/bias*
_output_shapes	
:*
dtype0

time_distributed_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		**
shared_nametime_distributed_3/kernel

-time_distributed_3/kernel/Read/ReadVariableOpReadVariableOptime_distributed_3/kernel*
_output_shapes
:		*
dtype0

time_distributed_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nametime_distributed_3/bias

+time_distributed_3/bias/Read/ReadVariableOpReadVariableOptime_distributed_3/bias*
_output_shapes
:	*
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
¸
.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Z@*?
shared_name0.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/m
±
BAdam/simple_rnn_11/simple_rnn_cell_11/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/m*
_output_shapes

:Z@*
dtype0
Ì
8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*I
shared_name:8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/m
Å
LAdam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/m*
_output_shapes

:@@*
dtype0
°
,Adam/simple_rnn_11/simple_rnn_cell_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,Adam/simple_rnn_11/simple_rnn_cell_11/bias/m
©
@Adam/simple_rnn_11/simple_rnn_cell_11/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_11/simple_rnn_cell_11/bias/m*
_output_shapes
:@*
dtype0
¹
.Adam/simple_rnn_12/simple_rnn_cell_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*?
shared_name0.Adam/simple_rnn_12/simple_rnn_cell_12/kernel/m
²
BAdam/simple_rnn_12/simple_rnn_cell_12/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_12/simple_rnn_cell_12/kernel/m*
_output_shapes
:	@*
dtype0
Î
8Adam/simple_rnn_12/simple_rnn_cell_12/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*I
shared_name:8Adam/simple_rnn_12/simple_rnn_cell_12/recurrent_kernel/m
Ç
LAdam/simple_rnn_12/simple_rnn_cell_12/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_12/simple_rnn_cell_12/recurrent_kernel/m* 
_output_shapes
:
*
dtype0
±
,Adam/simple_rnn_12/simple_rnn_cell_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/simple_rnn_12/simple_rnn_cell_12/bias/m
ª
@Adam/simple_rnn_12/simple_rnn_cell_12/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_12/simple_rnn_cell_12/bias/m*
_output_shapes	
:*
dtype0
º
.Adam/simple_rnn_13/simple_rnn_cell_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.Adam/simple_rnn_13/simple_rnn_cell_13/kernel/m
³
BAdam/simple_rnn_13/simple_rnn_cell_13/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_13/simple_rnn_cell_13/kernel/m* 
_output_shapes
:
*
dtype0
Î
8Adam/simple_rnn_13/simple_rnn_cell_13/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*I
shared_name:8Adam/simple_rnn_13/simple_rnn_cell_13/recurrent_kernel/m
Ç
LAdam/simple_rnn_13/simple_rnn_cell_13/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_13/simple_rnn_cell_13/recurrent_kernel/m* 
_output_shapes
:
*
dtype0
±
,Adam/simple_rnn_13/simple_rnn_cell_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/simple_rnn_13/simple_rnn_cell_13/bias/m
ª
@Adam/simple_rnn_13/simple_rnn_cell_13/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_13/simple_rnn_cell_13/bias/m*
_output_shapes	
:*
dtype0

 Adam/time_distributed_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:		*1
shared_name" Adam/time_distributed_3/kernel/m

4Adam/time_distributed_3/kernel/m/Read/ReadVariableOpReadVariableOp Adam/time_distributed_3/kernel/m*
_output_shapes
:		*
dtype0

Adam/time_distributed_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*/
shared_name Adam/time_distributed_3/bias/m

2Adam/time_distributed_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_3/bias/m*
_output_shapes
:	*
dtype0
¸
.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Z@*?
shared_name0.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/v
±
BAdam/simple_rnn_11/simple_rnn_cell_11/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/v*
_output_shapes

:Z@*
dtype0
Ì
8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*I
shared_name:8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/v
Å
LAdam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/v*
_output_shapes

:@@*
dtype0
°
,Adam/simple_rnn_11/simple_rnn_cell_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,Adam/simple_rnn_11/simple_rnn_cell_11/bias/v
©
@Adam/simple_rnn_11/simple_rnn_cell_11/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_11/simple_rnn_cell_11/bias/v*
_output_shapes
:@*
dtype0
¹
.Adam/simple_rnn_12/simple_rnn_cell_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*?
shared_name0.Adam/simple_rnn_12/simple_rnn_cell_12/kernel/v
²
BAdam/simple_rnn_12/simple_rnn_cell_12/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_12/simple_rnn_cell_12/kernel/v*
_output_shapes
:	@*
dtype0
Î
8Adam/simple_rnn_12/simple_rnn_cell_12/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*I
shared_name:8Adam/simple_rnn_12/simple_rnn_cell_12/recurrent_kernel/v
Ç
LAdam/simple_rnn_12/simple_rnn_cell_12/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_12/simple_rnn_cell_12/recurrent_kernel/v* 
_output_shapes
:
*
dtype0
±
,Adam/simple_rnn_12/simple_rnn_cell_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/simple_rnn_12/simple_rnn_cell_12/bias/v
ª
@Adam/simple_rnn_12/simple_rnn_cell_12/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_12/simple_rnn_cell_12/bias/v*
_output_shapes	
:*
dtype0
º
.Adam/simple_rnn_13/simple_rnn_cell_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.Adam/simple_rnn_13/simple_rnn_cell_13/kernel/v
³
BAdam/simple_rnn_13/simple_rnn_cell_13/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_13/simple_rnn_cell_13/kernel/v* 
_output_shapes
:
*
dtype0
Î
8Adam/simple_rnn_13/simple_rnn_cell_13/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*I
shared_name:8Adam/simple_rnn_13/simple_rnn_cell_13/recurrent_kernel/v
Ç
LAdam/simple_rnn_13/simple_rnn_cell_13/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_13/simple_rnn_cell_13/recurrent_kernel/v* 
_output_shapes
:
*
dtype0
±
,Adam/simple_rnn_13/simple_rnn_cell_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/simple_rnn_13/simple_rnn_cell_13/bias/v
ª
@Adam/simple_rnn_13/simple_rnn_cell_13/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_13/simple_rnn_cell_13/bias/v*
_output_shapes	
:*
dtype0

 Adam/time_distributed_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:		*1
shared_name" Adam/time_distributed_3/kernel/v

4Adam/time_distributed_3/kernel/v/Read/ReadVariableOpReadVariableOp Adam/time_distributed_3/kernel/v*
_output_shapes
:		*
dtype0

Adam/time_distributed_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*/
shared_name Adam/time_distributed_3/bias/v

2Adam/time_distributed_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_3/bias/v*
_output_shapes
:	*
dtype0

NoOpNoOp
¼I
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*÷H
valueíHBêH BãH
´
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
 trainable_variables
!regularization_losses
"	keras_api
]
	#layer
$	variables
%trainable_variables
&regularization_losses
'	keras_api

(iter

)beta_1

*beta_2
	+decay
,learning_rate-m.m/m0m1m2m3m4m5m6m7m-v.v/v0v1v2v3v4v5v6v7v
V
0
-1
.2
/3
04
15
26
37
48
59
610
711
N
-0
.1
/2
03
14
25
36
47
58
69
710
 
­
	variables
trainable_variables
8metrics
9layer_regularization_losses
:layer_metrics
;non_trainable_variables

<layers
	regularization_losses
 
fd
VARIABLE_VALUEembedding_3/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 
 
­
	variables
trainable_variables
=layer_metrics
>layer_regularization_losses
?metrics
@non_trainable_variables

Alayers
regularization_losses
~

-kernel
.recurrent_kernel
/bias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
 

-0
.1
/2

-0
.1
/2
 
¹
	variables
trainable_variables
Flayer_metrics
Glayer_regularization_losses
Hmetrics

Istates
Jnon_trainable_variables

Klayers
regularization_losses
~

0kernel
1recurrent_kernel
2bias
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
 

00
11
22

00
11
22
 
¹
	variables
trainable_variables
Player_metrics
Qlayer_regularization_losses
Rmetrics

Sstates
Tnon_trainable_variables

Ulayers
regularization_losses
~

3kernel
4recurrent_kernel
5bias
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
 

30
41
52

30
41
52
 
¹
	variables
 trainable_variables
Zlayer_metrics
[layer_regularization_losses
\metrics

]states
^non_trainable_variables

_layers
!regularization_losses
h

6kernel
7bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api

60
71

60
71
 
­
$	variables
%trainable_variables
dlayer_metrics
elayer_regularization_losses
fmetrics
gnon_trainable_variables

hlayers
&regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'simple_rnn_11/simple_rnn_cell_11/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1simple_rnn_11/simple_rnn_cell_11/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%simple_rnn_11/simple_rnn_cell_11/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'simple_rnn_12/simple_rnn_cell_12/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1simple_rnn_12/simple_rnn_cell_12/recurrent_kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%simple_rnn_12/simple_rnn_cell_12/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'simple_rnn_13/simple_rnn_cell_13/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1simple_rnn_13/simple_rnn_cell_13/recurrent_kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%simple_rnn_13/simple_rnn_cell_13/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEtime_distributed_3/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEtime_distributed_3/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE

i0
j1
 
 

0
#
0
1
2
3
4
 
 
 

0
 

-0
.1
/2

-0
.1
/2
 
­
B	variables
Ctrainable_variables
klayer_metrics
llayer_regularization_losses
mmetrics
nnon_trainable_variables

olayers
Dregularization_losses
 
 
 
 
 

0

00
11
22

00
11
22
 
­
L	variables
Mtrainable_variables
player_metrics
qlayer_regularization_losses
rmetrics
snon_trainable_variables

tlayers
Nregularization_losses
 
 
 
 
 

0

30
41
52

30
41
52
 
­
V	variables
Wtrainable_variables
ulayer_metrics
vlayer_regularization_losses
wmetrics
xnon_trainable_variables

ylayers
Xregularization_losses
 
 
 
 
 

0

60
71

60
71
 
­
`	variables
atrainable_variables
zlayer_metrics
{layer_regularization_losses
|metrics
}non_trainable_variables

~layers
bregularization_losses
 
 
 
 

#0
7
	total

count
	variables
	keras_api
I

total

count

_fn_kwargs
	variables
	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

	variables

VARIABLE_VALUE.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/simple_rnn_11/simple_rnn_cell_11/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/simple_rnn_12/simple_rnn_cell_12/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE8Adam/simple_rnn_12/simple_rnn_cell_12/recurrent_kernel/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/simple_rnn_12/simple_rnn_cell_12/bias/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/simple_rnn_13/simple_rnn_cell_13/kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE8Adam/simple_rnn_13/simple_rnn_cell_13/recurrent_kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/simple_rnn_13/simple_rnn_cell_13/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/time_distributed_3/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/time_distributed_3/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/simple_rnn_11/simple_rnn_cell_11/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/simple_rnn_12/simple_rnn_cell_12/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE8Adam/simple_rnn_12/simple_rnn_cell_12/recurrent_kernel/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/simple_rnn_12/simple_rnn_cell_12/bias/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/simple_rnn_13/simple_rnn_cell_13/kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE8Adam/simple_rnn_13/simple_rnn_cell_13/recurrent_kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/simple_rnn_13/simple_rnn_cell_13/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/time_distributed_3/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/time_distributed_3/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

!serving_default_embedding_3_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿq
¬
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_3_inputembedding_3/embeddings'simple_rnn_11/simple_rnn_cell_11/kernel%simple_rnn_11/simple_rnn_cell_11/bias1simple_rnn_11/simple_rnn_cell_11/recurrent_kernel'simple_rnn_12/simple_rnn_cell_12/kernel%simple_rnn_12/simple_rnn_cell_12/bias1simple_rnn_12/simple_rnn_cell_12/recurrent_kernel'simple_rnn_13/simple_rnn_cell_13/kernel%simple_rnn_13/simple_rnn_cell_13/bias1simple_rnn_13/simple_rnn_cell_13/recurrent_kerneltime_distributed_3/kerneltime_distributed_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_12011
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ï
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_3/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp;simple_rnn_11/simple_rnn_cell_11/kernel/Read/ReadVariableOpEsimple_rnn_11/simple_rnn_cell_11/recurrent_kernel/Read/ReadVariableOp9simple_rnn_11/simple_rnn_cell_11/bias/Read/ReadVariableOp;simple_rnn_12/simple_rnn_cell_12/kernel/Read/ReadVariableOpEsimple_rnn_12/simple_rnn_cell_12/recurrent_kernel/Read/ReadVariableOp9simple_rnn_12/simple_rnn_cell_12/bias/Read/ReadVariableOp;simple_rnn_13/simple_rnn_cell_13/kernel/Read/ReadVariableOpEsimple_rnn_13/simple_rnn_cell_13/recurrent_kernel/Read/ReadVariableOp9simple_rnn_13/simple_rnn_cell_13/bias/Read/ReadVariableOp-time_distributed_3/kernel/Read/ReadVariableOp+time_distributed_3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpBAdam/simple_rnn_11/simple_rnn_cell_11/kernel/m/Read/ReadVariableOpLAdam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/m/Read/ReadVariableOp@Adam/simple_rnn_11/simple_rnn_cell_11/bias/m/Read/ReadVariableOpBAdam/simple_rnn_12/simple_rnn_cell_12/kernel/m/Read/ReadVariableOpLAdam/simple_rnn_12/simple_rnn_cell_12/recurrent_kernel/m/Read/ReadVariableOp@Adam/simple_rnn_12/simple_rnn_cell_12/bias/m/Read/ReadVariableOpBAdam/simple_rnn_13/simple_rnn_cell_13/kernel/m/Read/ReadVariableOpLAdam/simple_rnn_13/simple_rnn_cell_13/recurrent_kernel/m/Read/ReadVariableOp@Adam/simple_rnn_13/simple_rnn_cell_13/bias/m/Read/ReadVariableOp4Adam/time_distributed_3/kernel/m/Read/ReadVariableOp2Adam/time_distributed_3/bias/m/Read/ReadVariableOpBAdam/simple_rnn_11/simple_rnn_cell_11/kernel/v/Read/ReadVariableOpLAdam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/v/Read/ReadVariableOp@Adam/simple_rnn_11/simple_rnn_cell_11/bias/v/Read/ReadVariableOpBAdam/simple_rnn_12/simple_rnn_cell_12/kernel/v/Read/ReadVariableOpLAdam/simple_rnn_12/simple_rnn_cell_12/recurrent_kernel/v/Read/ReadVariableOp@Adam/simple_rnn_12/simple_rnn_cell_12/bias/v/Read/ReadVariableOpBAdam/simple_rnn_13/simple_rnn_cell_13/kernel/v/Read/ReadVariableOpLAdam/simple_rnn_13/simple_rnn_cell_13/recurrent_kernel/v/Read/ReadVariableOp@Adam/simple_rnn_13/simple_rnn_cell_13/bias/v/Read/ReadVariableOp4Adam/time_distributed_3/kernel/v/Read/ReadVariableOp2Adam/time_distributed_3/bias/v/Read/ReadVariableOpConst*8
Tin1
/2-	*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_14724

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_3/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate'simple_rnn_11/simple_rnn_cell_11/kernel1simple_rnn_11/simple_rnn_cell_11/recurrent_kernel%simple_rnn_11/simple_rnn_cell_11/bias'simple_rnn_12/simple_rnn_cell_12/kernel1simple_rnn_12/simple_rnn_cell_12/recurrent_kernel%simple_rnn_12/simple_rnn_cell_12/bias'simple_rnn_13/simple_rnn_cell_13/kernel1simple_rnn_13/simple_rnn_cell_13/recurrent_kernel%simple_rnn_13/simple_rnn_cell_13/biastime_distributed_3/kerneltime_distributed_3/biastotalcounttotal_1count_1.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/m8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/m,Adam/simple_rnn_11/simple_rnn_cell_11/bias/m.Adam/simple_rnn_12/simple_rnn_cell_12/kernel/m8Adam/simple_rnn_12/simple_rnn_cell_12/recurrent_kernel/m,Adam/simple_rnn_12/simple_rnn_cell_12/bias/m.Adam/simple_rnn_13/simple_rnn_cell_13/kernel/m8Adam/simple_rnn_13/simple_rnn_cell_13/recurrent_kernel/m,Adam/simple_rnn_13/simple_rnn_cell_13/bias/m Adam/time_distributed_3/kernel/mAdam/time_distributed_3/bias/m.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/v8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/v,Adam/simple_rnn_11/simple_rnn_cell_11/bias/v.Adam/simple_rnn_12/simple_rnn_cell_12/kernel/v8Adam/simple_rnn_12/simple_rnn_cell_12/recurrent_kernel/v,Adam/simple_rnn_12/simple_rnn_cell_12/bias/v.Adam/simple_rnn_13/simple_rnn_cell_13/kernel/v8Adam/simple_rnn_13/simple_rnn_cell_13/recurrent_kernel/v,Adam/simple_rnn_13/simple_rnn_cell_13/bias/v Adam/time_distributed_3/kernel/vAdam/time_distributed_3/bias/v*7
Tin0
.2,*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_14863¨-

´
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_10931

inputs
dense_3_10921
dense_3_10923
identity¢dense_3/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape
dense_3/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_3_10921dense_3_10923*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_108672!
dense_3/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape¤
	Reshape_1Reshape(dense_3/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	2
	Reshape_1
IdentityIdentityReshape_1:output:0 ^dense_3/StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


-__inference_simple_rnn_13_layer_call_fn_14010

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_117222
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿq:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
Í
¥
while_cond_10655
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_10655___redundant_placeholder03
/while_while_cond_10655___redundant_placeholder13
/while_while_cond_10655___redundant_placeholder23
/while_while_cond_10655___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¾

-__inference_simple_rnn_11_layer_call_fn_13026
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_simple_rnn_11_layer_call_and_return_conditional_losses_98122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ
"
_user_specified_name
inputs/0
Ú
|
'__inference_dense_3_layer_call_fn_14572

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_108672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
4

while_body_12826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_11_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_11_matmul_readvariableop_resource<
8while_simple_rnn_cell_11_biasadd_readvariableop_resource=
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_11/MatMul/ReadVariableOp¢0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÚ
.while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:Z@*
dtype020
.while/simple_rnn_cell_11/MatMul/ReadVariableOpè
while/simple_rnn_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_11/MatMulÙ
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpå
 while/simple_rnn_cell_11/BiasAddBiasAdd)while/simple_rnn_cell_11/MatMul:product:07while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_11/BiasAddà
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpÑ
!while/simple_rnn_cell_11/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/simple_rnn_cell_11/MatMul_1Ï
while/simple_rnn_cell_11/addAddV2)while/simple_rnn_cell_11/BiasAdd:output:0+while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_11/add
while/simple_rnn_cell_11/TanhTanh while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_11/Tanhå
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_11/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity!while/simple_rnn_cell_11/Tanh:y:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_11_matmul_readvariableop_resource9while_simple_rnn_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2b
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_11/MatMul/ReadVariableOp.while/simple_rnn_cell_11/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
¥#

while_body_10144
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0$
 while_simple_rnn_cell_12_10166_0$
 while_simple_rnn_cell_12_10168_0$
 while_simple_rnn_cell_12_10170_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor"
while_simple_rnn_cell_12_10166"
while_simple_rnn_cell_12_10168"
while_simple_rnn_cell_12_10170¢0while/simple_rnn_cell_12/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemØ
0while/simple_rnn_cell_12/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_12_10166_0 while_simple_rnn_cell_12_10168_0 while_simple_rnn_cell_12_10170_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_987022
0while/simple_rnn_cell_12/StatefulPartitionedCallý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_12/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:01^while/simple_rnn_cell_12/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity¤
while/Identity_1Identitywhile_while_maximum_iterations1^while/simple_rnn_cell_12/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:01^while/simple_rnn_cell_12/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2À
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:01^while/simple_rnn_cell_12/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ñ
while/Identity_4Identity9while/simple_rnn_cell_12/StatefulPartitionedCall:output:11^while/simple_rnn_cell_12/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_12_10166 while_simple_rnn_cell_12_10166_0"B
while_simple_rnn_cell_12_10168 while_simple_rnn_cell_12_10168_0"B
while_simple_rnn_cell_12_10170 while_simple_rnn_cell_12_10170_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2d
0while/simple_rnn_cell_12/StatefulPartitionedCall0while/simple_rnn_cell_12/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ë
¥
while_cond_12825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_12825___redundant_placeholder03
/while_while_cond_12825___redundant_placeholder13
/while_while_cond_12825___redundant_placeholder23
/while_while_cond_12825___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
H

H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_13138

inputs5
1simple_rnn_cell_11_matmul_readvariableop_resource6
2simple_rnn_cell_11_biasadd_readvariableop_resource7
3simple_rnn_cell_11_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_11/BiasAdd/ReadVariableOp¢(simple_rnn_cell_11/MatMul/ReadVariableOp¢*simple_rnn_cell_11/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿZ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
shrink_axis_mask2
strided_slice_2Æ
(simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:Z@*
dtype02*
(simple_rnn_cell_11/MatMul/ReadVariableOp¾
simple_rnn_cell_11/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/MatMulÅ
)simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_11/BiasAdd/ReadVariableOpÍ
simple_rnn_cell_11/BiasAddBiasAdd#simple_rnn_cell_11/MatMul:product:01simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/BiasAddÌ
*simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_11/MatMul_1/ReadVariableOpº
simple_rnn_cell_11/MatMul_1MatMulzeros:output:02simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/MatMul_1·
simple_rnn_cell_11/addAddV2#simple_rnn_cell_11/BiasAdd:output:0%simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/add
simple_rnn_cell_11/TanhTanhsimple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÅ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_11_matmul_readvariableop_resource2simple_rnn_cell_11_biasadd_readvariableop_resource3simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_13072*
condR
while_cond_13071*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@2
transpose_1ó
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_11/BiasAdd/ReadVariableOp)^simple_rnn_cell_11/MatMul/ReadVariableOp+^simple_rnn_cell_11/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿqZ:::2V
)simple_rnn_cell_11/BiasAdd/ReadVariableOp)simple_rnn_cell_11/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_11/MatMul/ReadVariableOp(simple_rnn_cell_11/MatMul/ReadVariableOp2X
*simple_rnn_cell_11/MatMul_1/ReadVariableOp*simple_rnn_cell_11/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ
 
_user_specified_nameinputs


-__inference_simple_rnn_11_layer_call_fn_13261

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_111042
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿqZ:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ
 
_user_specified_nameinputs
Ë
¥
while_cond_13183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_13183___redundant_placeholder03
/while_while_cond_13183___redundant_placeholder13
/while_while_cond_13183___redundant_placeholder23
/while_while_cond_13183___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
¥#

while_body_10261
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0$
 while_simple_rnn_cell_12_10283_0$
 while_simple_rnn_cell_12_10285_0$
 while_simple_rnn_cell_12_10287_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor"
while_simple_rnn_cell_12_10283"
while_simple_rnn_cell_12_10285"
while_simple_rnn_cell_12_10287¢0while/simple_rnn_cell_12/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemØ
0while/simple_rnn_cell_12/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_12_10283_0 while_simple_rnn_cell_12_10285_0 while_simple_rnn_cell_12_10287_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_988722
0while/simple_rnn_cell_12/StatefulPartitionedCallý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_12/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:01^while/simple_rnn_cell_12/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity¤
while/Identity_1Identitywhile_while_maximum_iterations1^while/simple_rnn_cell_12/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:01^while/simple_rnn_cell_12/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2À
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:01^while/simple_rnn_cell_12/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ñ
while/Identity_4Identity9while/simple_rnn_cell_12/StatefulPartitionedCall:output:11^while/simple_rnn_cell_12/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_12_10283 while_simple_rnn_cell_12_10283_0"B
while_simple_rnn_cell_12_10285 while_simple_rnn_cell_12_10285_0"B
while_simple_rnn_cell_12_10287 while_simple_rnn_cell_12_10287_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2d
0while/simple_rnn_cell_12/StatefulPartitionedCall0while/simple_rnn_cell_12/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ë
¥
while_cond_11037
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_11037___redundant_placeholder03
/while_while_cond_11037___redundant_placeholder13
/while_while_cond_11037___redundant_placeholder23
/while_while_cond_11037___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
#
þ
while_body_9749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0#
while_simple_rnn_cell_11_9771_0#
while_simple_rnn_cell_11_9773_0#
while_simple_rnn_cell_11_9775_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor!
while_simple_rnn_cell_11_9771!
while_simple_rnn_cell_11_9773!
while_simple_rnn_cell_11_9775¢0while/simple_rnn_cell_11/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÓ
0while/simple_rnn_cell_11/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_11_9771_0while_simple_rnn_cell_11_9773_0while_simple_rnn_cell_11_9775_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_937522
0while/simple_rnn_cell_11/StatefulPartitionedCallý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_11/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:01^while/simple_rnn_cell_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity¤
while/Identity_1Identitywhile_while_maximum_iterations1^while/simple_rnn_cell_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:01^while/simple_rnn_cell_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2À
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:01^while/simple_rnn_cell_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ð
while/Identity_4Identity9while/simple_rnn_cell_11/StatefulPartitionedCall:output:11^while/simple_rnn_cell_11/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_11_9771while_simple_rnn_cell_11_9771_0"@
while_simple_rnn_cell_11_9773while_simple_rnn_cell_11_9773_0"@
while_simple_rnn_cell_11_9775while_simple_rnn_cell_11_9775_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2d
0while/simple_rnn_cell_11/StatefulPartitionedCall0while/simple_rnn_cell_11/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
÷	
Û
B__inference_dense_3_layer_call_and_return_conditional_losses_10867

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
áH

H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_13384
inputs_05
1simple_rnn_cell_12_matmul_readvariableop_resource6
2simple_rnn_cell_12_biasadd_readvariableop_resource7
3simple_rnn_cell_12_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_12/BiasAdd/ReadVariableOp¢(simple_rnn_cell_12/MatMul/ReadVariableOp¢*simple_rnn_cell_12/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2Ç
(simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02*
(simple_rnn_cell_12/MatMul/ReadVariableOp¿
simple_rnn_cell_12/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/MatMulÆ
)simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)simple_rnn_cell_12/BiasAdd/ReadVariableOpÎ
simple_rnn_cell_12/BiasAddBiasAdd#simple_rnn_cell_12/MatMul:product:01simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/BiasAddÎ
*simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*simple_rnn_cell_12/MatMul_1/ReadVariableOp»
simple_rnn_cell_12/MatMul_1MatMulzeros:output:02simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/MatMul_1¸
simple_rnn_cell_12/addAddV2#simple_rnn_cell_12/BiasAdd:output:0%simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/add
simple_rnn_cell_12/SigmoidSigmoidsimple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/Sigmoid
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÇ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_12_matmul_readvariableop_resource2simple_rnn_cell_12_biasadd_readvariableop_resource3simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_13318*
condR
while_cond_13317*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1ý
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_12/BiasAdd/ReadVariableOp)^simple_rnn_cell_12/MatMul/ReadVariableOp+^simple_rnn_cell_12/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::2V
)simple_rnn_cell_12/BiasAdd/ReadVariableOp)simple_rnn_cell_12/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_12/MatMul/ReadVariableOp(simple_rnn_cell_12/MatMul/ReadVariableOp2X
*simple_rnn_cell_12/MatMul_1/ReadVariableOp*simple_rnn_cell_12/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
Ë
¥
while_cond_12937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_12937___redundant_placeholder03
/while_while_cond_12937___redundant_placeholder13
/while_while_cond_12937___redundant_placeholder23
/while_while_cond_12937___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Í
¥
while_cond_14055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_14055___redundant_placeholder03
/while_while_cond_14055___redundant_placeholder13
/while_while_cond_14055___redundant_placeholder23
/while_while_cond_14055___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ë
Ä
M__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_14383

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:Z@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tanh§
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity«

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿZ:ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
é	
´
2__inference_simple_rnn_cell_11_layer_call_fn_14414

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_93582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿZ:ÿÿÿÿÿÿÿÿÿ@:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
»4

while_body_13810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_13_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_13_matmul_readvariableop_resource<
8while_simple_rnn_cell_13_biasadd_readvariableop_resource=
9while_simple_rnn_cell_13_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_13/MatMul/ReadVariableOp¢0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÜ
.while/simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_13_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype020
.while/simple_rnn_cell_13/MatMul/ReadVariableOpé
while/simple_rnn_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_13/MatMulÚ
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpæ
 while/simple_rnn_cell_13/BiasAddBiasAdd)while/simple_rnn_cell_13/MatMul:product:07while/simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_13/BiasAddâ
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype022
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpÒ
!while/simple_rnn_cell_13/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/simple_rnn_cell_13/MatMul_1Ð
while/simple_rnn_cell_13/addAddV2)while/simple_rnn_cell_13/BiasAdd:output:0+while/simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_13/add
while/simple_rnn_cell_13/ReluRelu while/simple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_13/Reluï
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder+while/simple_rnn_cell_13/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3¦
while/Identity_4Identity+while/simple_rnn_cell_13/Relu:activations:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_13_biasadd_readvariableop_resource:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_13_matmul_1_readvariableop_resource;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_13_matmul_readvariableop_resource9while_simple_rnn_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2b
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_13/MatMul/ReadVariableOp.while/simple_rnn_cell_13/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOp0while/simple_rnn_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
4

while_body_13072
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_11_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_11_matmul_readvariableop_resource<
8while_simple_rnn_cell_11_biasadd_readvariableop_resource=
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_11/MatMul/ReadVariableOp¢0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÚ
.while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:Z@*
dtype020
.while/simple_rnn_cell_11/MatMul/ReadVariableOpè
while/simple_rnn_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_11/MatMulÙ
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpå
 while/simple_rnn_cell_11/BiasAddBiasAdd)while/simple_rnn_cell_11/MatMul:product:07while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_11/BiasAddà
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpÑ
!while/simple_rnn_cell_11/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/simple_rnn_cell_11/MatMul_1Ï
while/simple_rnn_cell_11/addAddV2)while/simple_rnn_cell_11/BiasAdd:output:0+while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_11/add
while/simple_rnn_cell_11/TanhTanh while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_11/Tanhå
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_11/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity!while/simple_rnn_cell_11/Tanh:y:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_11_matmul_readvariableop_resource9while_simple_rnn_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2b
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_11/MatMul/ReadVariableOp.while/simple_rnn_cell_11/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ö<
ö
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_10324

inputs
simple_rnn_cell_12_10249
simple_rnn_cell_12_10251
simple_rnn_cell_12_10253
identity¢*simple_rnn_cell_12/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2
*simple_rnn_cell_12/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_12_10249simple_rnn_cell_12_10251simple_rnn_cell_12_10253*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_98872,
*simple_rnn_cell_12/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterù
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_12_10249simple_rnn_cell_12_10251simple_rnn_cell_12_10253*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_10261*
condR
while_cond_10260*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1¦
IdentityIdentitytranspose_1:y:0+^simple_rnn_cell_12/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::2X
*simple_rnn_cell_12/StatefulPartitionedCall*simple_rnn_cell_12/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ç
Ä
M__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_14445

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid«
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¯

Identity_1IdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
Õ

M__inference_time_distributed_3_layer_call_and_return_conditional_losses_11781

inputs*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape¦
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:		*
dtype02
dense_3/MatMul/ReadVariableOp
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/MatMul¤
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02 
dense_3/BiasAdd/ReadVariableOp¡
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/Softmaxw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿq   	   2
Reshape_1/shape
	Reshape_1Reshapedense_3/Softmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2
	Reshape_1«
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿq::2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
´4

while_body_13676
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_12_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_12_matmul_readvariableop_resource<
8while_simple_rnn_cell_12_biasadd_readvariableop_resource=
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_12/MatMul/ReadVariableOp¢0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÛ
.while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype020
.while/simple_rnn_cell_12/MatMul/ReadVariableOpé
while/simple_rnn_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_12/MatMulÚ
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpæ
 while/simple_rnn_cell_12/BiasAddBiasAdd)while/simple_rnn_cell_12/MatMul:product:07while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_12/BiasAddâ
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype022
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpÒ
!while/simple_rnn_cell_12/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/simple_rnn_cell_12/MatMul_1Ð
while/simple_rnn_cell_12/addAddV2)while/simple_rnn_cell_12/BiasAdd:output:0+while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_12/add¤
 while/simple_rnn_cell_12/SigmoidSigmoid while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_12/Sigmoidè
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_12/Sigmoid:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity$while/simple_rnn_cell_12/Sigmoid:y:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_12_matmul_readvariableop_resource9while_simple_rnn_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2b
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_12/MatMul/ReadVariableOp.while/simple_rnn_cell_12/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ë

__inference__wrapped_model_9309
embedding_3_input2
.sequential_3_embedding_3_embedding_lookup_8966P
Lsequential_3_simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resourceQ
Msequential_3_simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resourceR
Nsequential_3_simple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resourceP
Lsequential_3_simple_rnn_12_simple_rnn_cell_12_matmul_readvariableop_resourceQ
Msequential_3_simple_rnn_12_simple_rnn_cell_12_biasadd_readvariableop_resourceR
Nsequential_3_simple_rnn_12_simple_rnn_cell_12_matmul_1_readvariableop_resourceP
Lsequential_3_simple_rnn_13_simple_rnn_cell_13_matmul_readvariableop_resourceQ
Msequential_3_simple_rnn_13_simple_rnn_cell_13_biasadd_readvariableop_resourceR
Nsequential_3_simple_rnn_13_simple_rnn_cell_13_matmul_1_readvariableop_resourceJ
Fsequential_3_time_distributed_3_dense_3_matmul_readvariableop_resourceK
Gsequential_3_time_distributed_3_dense_3_biasadd_readvariableop_resource
identity¢)sequential_3/embedding_3/embedding_lookup¢Dsequential_3/simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢Csequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp¢Esequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp¢ sequential_3/simple_rnn_11/while¢Dsequential_3/simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOp¢Csequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOp¢Esequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOp¢ sequential_3/simple_rnn_12/while¢Dsequential_3/simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOp¢Csequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOp¢Esequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOp¢ sequential_3/simple_rnn_13/while¢>sequential_3/time_distributed_3/dense_3/BiasAdd/ReadVariableOp¢=sequential_3/time_distributed_3/dense_3/MatMul/ReadVariableOp
sequential_3/embedding_3/CastCastembedding_3_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
sequential_3/embedding_3/Castö
)sequential_3/embedding_3/embedding_lookupResourceGather.sequential_3_embedding_3_embedding_lookup_8966!sequential_3/embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*A
_class7
53loc:@sequential_3/embedding_3/embedding_lookup/8966*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ*
dtype02+
)sequential_3/embedding_3/embedding_lookupÏ
2sequential_3/embedding_3/embedding_lookup/IdentityIdentity2sequential_3/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@sequential_3/embedding_3/embedding_lookup/8966*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ24
2sequential_3/embedding_3/embedding_lookup/Identityë
4sequential_3/embedding_3/embedding_lookup/Identity_1Identity;sequential_3/embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ26
4sequential_3/embedding_3/embedding_lookup/Identity_1±
 sequential_3/simple_rnn_11/ShapeShape=sequential_3/embedding_3/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2"
 sequential_3/simple_rnn_11/Shapeª
.sequential_3/simple_rnn_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_3/simple_rnn_11/strided_slice/stack®
0sequential_3/simple_rnn_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_3/simple_rnn_11/strided_slice/stack_1®
0sequential_3/simple_rnn_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_3/simple_rnn_11/strided_slice/stack_2
(sequential_3/simple_rnn_11/strided_sliceStridedSlice)sequential_3/simple_rnn_11/Shape:output:07sequential_3/simple_rnn_11/strided_slice/stack:output:09sequential_3/simple_rnn_11/strided_slice/stack_1:output:09sequential_3/simple_rnn_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_3/simple_rnn_11/strided_slice
&sequential_3/simple_rnn_11/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2(
&sequential_3/simple_rnn_11/zeros/mul/yØ
$sequential_3/simple_rnn_11/zeros/mulMul1sequential_3/simple_rnn_11/strided_slice:output:0/sequential_3/simple_rnn_11/zeros/mul/y:output:0*
T0*
_output_shapes
: 2&
$sequential_3/simple_rnn_11/zeros/mul
'sequential_3/simple_rnn_11/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2)
'sequential_3/simple_rnn_11/zeros/Less/yÓ
%sequential_3/simple_rnn_11/zeros/LessLess(sequential_3/simple_rnn_11/zeros/mul:z:00sequential_3/simple_rnn_11/zeros/Less/y:output:0*
T0*
_output_shapes
: 2'
%sequential_3/simple_rnn_11/zeros/Less
)sequential_3/simple_rnn_11/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_3/simple_rnn_11/zeros/packed/1ï
'sequential_3/simple_rnn_11/zeros/packedPack1sequential_3/simple_rnn_11/strided_slice:output:02sequential_3/simple_rnn_11/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_3/simple_rnn_11/zeros/packed
&sequential_3/simple_rnn_11/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&sequential_3/simple_rnn_11/zeros/Constá
 sequential_3/simple_rnn_11/zerosFill0sequential_3/simple_rnn_11/zeros/packed:output:0/sequential_3/simple_rnn_11/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 sequential_3/simple_rnn_11/zeros«
)sequential_3/simple_rnn_11/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)sequential_3/simple_rnn_11/transpose/perm
$sequential_3/simple_rnn_11/transpose	Transpose=sequential_3/embedding_3/embedding_lookup/Identity_1:output:02sequential_3/simple_rnn_11/transpose/perm:output:0*
T0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿZ2&
$sequential_3/simple_rnn_11/transpose 
"sequential_3/simple_rnn_11/Shape_1Shape(sequential_3/simple_rnn_11/transpose:y:0*
T0*
_output_shapes
:2$
"sequential_3/simple_rnn_11/Shape_1®
0sequential_3/simple_rnn_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential_3/simple_rnn_11/strided_slice_1/stack²
2sequential_3/simple_rnn_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_3/simple_rnn_11/strided_slice_1/stack_1²
2sequential_3/simple_rnn_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_3/simple_rnn_11/strided_slice_1/stack_2
*sequential_3/simple_rnn_11/strided_slice_1StridedSlice+sequential_3/simple_rnn_11/Shape_1:output:09sequential_3/simple_rnn_11/strided_slice_1/stack:output:0;sequential_3/simple_rnn_11/strided_slice_1/stack_1:output:0;sequential_3/simple_rnn_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_3/simple_rnn_11/strided_slice_1»
6sequential_3/simple_rnn_11/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ28
6sequential_3/simple_rnn_11/TensorArrayV2/element_shape
(sequential_3/simple_rnn_11/TensorArrayV2TensorListReserve?sequential_3/simple_rnn_11/TensorArrayV2/element_shape:output:03sequential_3/simple_rnn_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02*
(sequential_3/simple_rnn_11/TensorArrayV2õ
Psequential_3/simple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   2R
Psequential_3/simple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shapeä
Bsequential_3/simple_rnn_11/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(sequential_3/simple_rnn_11/transpose:y:0Ysequential_3/simple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02D
Bsequential_3/simple_rnn_11/TensorArrayUnstack/TensorListFromTensor®
0sequential_3/simple_rnn_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential_3/simple_rnn_11/strided_slice_2/stack²
2sequential_3/simple_rnn_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_3/simple_rnn_11/strided_slice_2/stack_1²
2sequential_3/simple_rnn_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_3/simple_rnn_11/strided_slice_2/stack_2
*sequential_3/simple_rnn_11/strided_slice_2StridedSlice(sequential_3/simple_rnn_11/transpose:y:09sequential_3/simple_rnn_11/strided_slice_2/stack:output:0;sequential_3/simple_rnn_11/strided_slice_2/stack_1:output:0;sequential_3/simple_rnn_11/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
shrink_axis_mask2,
*sequential_3/simple_rnn_11/strided_slice_2
Csequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOpLsequential_3_simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:Z@*
dtype02E
Csequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOpª
4sequential_3/simple_rnn_11/simple_rnn_cell_11/MatMulMatMul3sequential_3/simple_rnn_11/strided_slice_2:output:0Ksequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@26
4sequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul
Dsequential_3/simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOpMsequential_3_simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_3/simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp¹
5sequential_3/simple_rnn_11/simple_rnn_cell_11/BiasAddBiasAdd>sequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul:product:0Lsequential_3/simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@27
5sequential_3/simple_rnn_11/simple_rnn_cell_11/BiasAdd
Esequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOpNsequential_3_simple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02G
Esequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp¦
6sequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul_1MatMul)sequential_3/simple_rnn_11/zeros:output:0Msequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@28
6sequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul_1£
1sequential_3/simple_rnn_11/simple_rnn_cell_11/addAddV2>sequential_3/simple_rnn_11/simple_rnn_cell_11/BiasAdd:output:0@sequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1sequential_3/simple_rnn_11/simple_rnn_cell_11/addÙ
2sequential_3/simple_rnn_11/simple_rnn_cell_11/TanhTanh5sequential_3/simple_rnn_11/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2sequential_3/simple_rnn_11/simple_rnn_cell_11/TanhÅ
8sequential_3/simple_rnn_11/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2:
8sequential_3/simple_rnn_11/TensorArrayV2_1/element_shape¤
*sequential_3/simple_rnn_11/TensorArrayV2_1TensorListReserveAsequential_3/simple_rnn_11/TensorArrayV2_1/element_shape:output:03sequential_3/simple_rnn_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02,
*sequential_3/simple_rnn_11/TensorArrayV2_1
sequential_3/simple_rnn_11/timeConst*
_output_shapes
: *
dtype0*
value	B : 2!
sequential_3/simple_rnn_11/timeµ
3sequential_3/simple_rnn_11/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ25
3sequential_3/simple_rnn_11/while/maximum_iterations 
-sequential_3/simple_rnn_11/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/simple_rnn_11/while/loop_counter½
 sequential_3/simple_rnn_11/whileWhile6sequential_3/simple_rnn_11/while/loop_counter:output:0<sequential_3/simple_rnn_11/while/maximum_iterations:output:0(sequential_3/simple_rnn_11/time:output:03sequential_3/simple_rnn_11/TensorArrayV2_1:handle:0)sequential_3/simple_rnn_11/zeros:output:03sequential_3/simple_rnn_11/strided_slice_1:output:0Rsequential_3/simple_rnn_11/TensorArrayUnstack/TensorListFromTensor:output_handle:0Lsequential_3_simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resourceMsequential_3_simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resourceNsequential_3_simple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*6
body.R,
*sequential_3_simple_rnn_11_while_body_9014*6
cond.R,
*sequential_3_simple_rnn_11_while_cond_9013*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2"
 sequential_3/simple_rnn_11/whileë
Ksequential_3/simple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2M
Ksequential_3/simple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shapeÔ
=sequential_3/simple_rnn_11/TensorArrayV2Stack/TensorListStackTensorListStack)sequential_3/simple_rnn_11/while:output:3Tsequential_3/simple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿ@*
element_dtype02?
=sequential_3/simple_rnn_11/TensorArrayV2Stack/TensorListStack·
0sequential_3/simple_rnn_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ22
0sequential_3/simple_rnn_11/strided_slice_3/stack²
2sequential_3/simple_rnn_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 24
2sequential_3/simple_rnn_11/strided_slice_3/stack_1²
2sequential_3/simple_rnn_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_3/simple_rnn_11/strided_slice_3/stack_2¼
*sequential_3/simple_rnn_11/strided_slice_3StridedSliceFsequential_3/simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:09sequential_3/simple_rnn_11/strided_slice_3/stack:output:0;sequential_3/simple_rnn_11/strided_slice_3/stack_1:output:0;sequential_3/simple_rnn_11/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2,
*sequential_3/simple_rnn_11/strided_slice_3¯
+sequential_3/simple_rnn_11/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+sequential_3/simple_rnn_11/transpose_1/perm
&sequential_3/simple_rnn_11/transpose_1	TransposeFsequential_3/simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:04sequential_3/simple_rnn_11/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@2(
&sequential_3/simple_rnn_11/transpose_1
 sequential_3/simple_rnn_12/ShapeShape*sequential_3/simple_rnn_11/transpose_1:y:0*
T0*
_output_shapes
:2"
 sequential_3/simple_rnn_12/Shapeª
.sequential_3/simple_rnn_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_3/simple_rnn_12/strided_slice/stack®
0sequential_3/simple_rnn_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_3/simple_rnn_12/strided_slice/stack_1®
0sequential_3/simple_rnn_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_3/simple_rnn_12/strided_slice/stack_2
(sequential_3/simple_rnn_12/strided_sliceStridedSlice)sequential_3/simple_rnn_12/Shape:output:07sequential_3/simple_rnn_12/strided_slice/stack:output:09sequential_3/simple_rnn_12/strided_slice/stack_1:output:09sequential_3/simple_rnn_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_3/simple_rnn_12/strided_slice
&sequential_3/simple_rnn_12/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2(
&sequential_3/simple_rnn_12/zeros/mul/yØ
$sequential_3/simple_rnn_12/zeros/mulMul1sequential_3/simple_rnn_12/strided_slice:output:0/sequential_3/simple_rnn_12/zeros/mul/y:output:0*
T0*
_output_shapes
: 2&
$sequential_3/simple_rnn_12/zeros/mul
'sequential_3/simple_rnn_12/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2)
'sequential_3/simple_rnn_12/zeros/Less/yÓ
%sequential_3/simple_rnn_12/zeros/LessLess(sequential_3/simple_rnn_12/zeros/mul:z:00sequential_3/simple_rnn_12/zeros/Less/y:output:0*
T0*
_output_shapes
: 2'
%sequential_3/simple_rnn_12/zeros/Less
)sequential_3/simple_rnn_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2+
)sequential_3/simple_rnn_12/zeros/packed/1ï
'sequential_3/simple_rnn_12/zeros/packedPack1sequential_3/simple_rnn_12/strided_slice:output:02sequential_3/simple_rnn_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_3/simple_rnn_12/zeros/packed
&sequential_3/simple_rnn_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&sequential_3/simple_rnn_12/zeros/Constâ
 sequential_3/simple_rnn_12/zerosFill0sequential_3/simple_rnn_12/zeros/packed:output:0/sequential_3/simple_rnn_12/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_3/simple_rnn_12/zeros«
)sequential_3/simple_rnn_12/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)sequential_3/simple_rnn_12/transpose/permï
$sequential_3/simple_rnn_12/transpose	Transpose*sequential_3/simple_rnn_11/transpose_1:y:02sequential_3/simple_rnn_12/transpose/perm:output:0*
T0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿ@2&
$sequential_3/simple_rnn_12/transpose 
"sequential_3/simple_rnn_12/Shape_1Shape(sequential_3/simple_rnn_12/transpose:y:0*
T0*
_output_shapes
:2$
"sequential_3/simple_rnn_12/Shape_1®
0sequential_3/simple_rnn_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential_3/simple_rnn_12/strided_slice_1/stack²
2sequential_3/simple_rnn_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_3/simple_rnn_12/strided_slice_1/stack_1²
2sequential_3/simple_rnn_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_3/simple_rnn_12/strided_slice_1/stack_2
*sequential_3/simple_rnn_12/strided_slice_1StridedSlice+sequential_3/simple_rnn_12/Shape_1:output:09sequential_3/simple_rnn_12/strided_slice_1/stack:output:0;sequential_3/simple_rnn_12/strided_slice_1/stack_1:output:0;sequential_3/simple_rnn_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_3/simple_rnn_12/strided_slice_1»
6sequential_3/simple_rnn_12/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ28
6sequential_3/simple_rnn_12/TensorArrayV2/element_shape
(sequential_3/simple_rnn_12/TensorArrayV2TensorListReserve?sequential_3/simple_rnn_12/TensorArrayV2/element_shape:output:03sequential_3/simple_rnn_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02*
(sequential_3/simple_rnn_12/TensorArrayV2õ
Psequential_3/simple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2R
Psequential_3/simple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shapeä
Bsequential_3/simple_rnn_12/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(sequential_3/simple_rnn_12/transpose:y:0Ysequential_3/simple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02D
Bsequential_3/simple_rnn_12/TensorArrayUnstack/TensorListFromTensor®
0sequential_3/simple_rnn_12/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential_3/simple_rnn_12/strided_slice_2/stack²
2sequential_3/simple_rnn_12/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_3/simple_rnn_12/strided_slice_2/stack_1²
2sequential_3/simple_rnn_12/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_3/simple_rnn_12/strided_slice_2/stack_2
*sequential_3/simple_rnn_12/strided_slice_2StridedSlice(sequential_3/simple_rnn_12/transpose:y:09sequential_3/simple_rnn_12/strided_slice_2/stack:output:0;sequential_3/simple_rnn_12/strided_slice_2/stack_1:output:0;sequential_3/simple_rnn_12/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2,
*sequential_3/simple_rnn_12/strided_slice_2
Csequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOpLsequential_3_simple_rnn_12_simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02E
Csequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOp«
4sequential_3/simple_rnn_12/simple_rnn_cell_12/MatMulMatMul3sequential_3/simple_rnn_12/strided_slice_2:output:0Ksequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul
Dsequential_3/simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOpMsequential_3_simple_rnn_12_simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02F
Dsequential_3/simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOpº
5sequential_3/simple_rnn_12/simple_rnn_cell_12/BiasAddBiasAdd>sequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul:product:0Lsequential_3/simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_3/simple_rnn_12/simple_rnn_cell_12/BiasAdd
Esequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOpNsequential_3_simple_rnn_12_simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02G
Esequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOp§
6sequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul_1MatMul)sequential_3/simple_rnn_12/zeros:output:0Msequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul_1¤
1sequential_3/simple_rnn_12/simple_rnn_cell_12/addAddV2>sequential_3/simple_rnn_12/simple_rnn_cell_12/BiasAdd:output:0@sequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_3/simple_rnn_12/simple_rnn_cell_12/addã
5sequential_3/simple_rnn_12/simple_rnn_cell_12/SigmoidSigmoid5sequential_3/simple_rnn_12/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_3/simple_rnn_12/simple_rnn_cell_12/SigmoidÅ
8sequential_3/simple_rnn_12/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8sequential_3/simple_rnn_12/TensorArrayV2_1/element_shape¤
*sequential_3/simple_rnn_12/TensorArrayV2_1TensorListReserveAsequential_3/simple_rnn_12/TensorArrayV2_1/element_shape:output:03sequential_3/simple_rnn_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02,
*sequential_3/simple_rnn_12/TensorArrayV2_1
sequential_3/simple_rnn_12/timeConst*
_output_shapes
: *
dtype0*
value	B : 2!
sequential_3/simple_rnn_12/timeµ
3sequential_3/simple_rnn_12/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ25
3sequential_3/simple_rnn_12/while/maximum_iterations 
-sequential_3/simple_rnn_12/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/simple_rnn_12/while/loop_counter¿
 sequential_3/simple_rnn_12/whileWhile6sequential_3/simple_rnn_12/while/loop_counter:output:0<sequential_3/simple_rnn_12/while/maximum_iterations:output:0(sequential_3/simple_rnn_12/time:output:03sequential_3/simple_rnn_12/TensorArrayV2_1:handle:0)sequential_3/simple_rnn_12/zeros:output:03sequential_3/simple_rnn_12/strided_slice_1:output:0Rsequential_3/simple_rnn_12/TensorArrayUnstack/TensorListFromTensor:output_handle:0Lsequential_3_simple_rnn_12_simple_rnn_cell_12_matmul_readvariableop_resourceMsequential_3_simple_rnn_12_simple_rnn_cell_12_biasadd_readvariableop_resourceNsequential_3_simple_rnn_12_simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*6
body.R,
*sequential_3_simple_rnn_12_while_body_9122*6
cond.R,
*sequential_3_simple_rnn_12_while_cond_9121*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2"
 sequential_3/simple_rnn_12/whileë
Ksequential_3/simple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_3/simple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shapeÕ
=sequential_3/simple_rnn_12/TensorArrayV2Stack/TensorListStackTensorListStack)sequential_3/simple_rnn_12/while:output:3Tsequential_3/simple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ*
element_dtype02?
=sequential_3/simple_rnn_12/TensorArrayV2Stack/TensorListStack·
0sequential_3/simple_rnn_12/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ22
0sequential_3/simple_rnn_12/strided_slice_3/stack²
2sequential_3/simple_rnn_12/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 24
2sequential_3/simple_rnn_12/strided_slice_3/stack_1²
2sequential_3/simple_rnn_12/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_3/simple_rnn_12/strided_slice_3/stack_2½
*sequential_3/simple_rnn_12/strided_slice_3StridedSliceFsequential_3/simple_rnn_12/TensorArrayV2Stack/TensorListStack:tensor:09sequential_3/simple_rnn_12/strided_slice_3/stack:output:0;sequential_3/simple_rnn_12/strided_slice_3/stack_1:output:0;sequential_3/simple_rnn_12/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2,
*sequential_3/simple_rnn_12/strided_slice_3¯
+sequential_3/simple_rnn_12/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+sequential_3/simple_rnn_12/transpose_1/perm
&sequential_3/simple_rnn_12/transpose_1	TransposeFsequential_3/simple_rnn_12/TensorArrayV2Stack/TensorListStack:tensor:04sequential_3/simple_rnn_12/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2(
&sequential_3/simple_rnn_12/transpose_1
 sequential_3/simple_rnn_13/ShapeShape*sequential_3/simple_rnn_12/transpose_1:y:0*
T0*
_output_shapes
:2"
 sequential_3/simple_rnn_13/Shapeª
.sequential_3/simple_rnn_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_3/simple_rnn_13/strided_slice/stack®
0sequential_3/simple_rnn_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_3/simple_rnn_13/strided_slice/stack_1®
0sequential_3/simple_rnn_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_3/simple_rnn_13/strided_slice/stack_2
(sequential_3/simple_rnn_13/strided_sliceStridedSlice)sequential_3/simple_rnn_13/Shape:output:07sequential_3/simple_rnn_13/strided_slice/stack:output:09sequential_3/simple_rnn_13/strided_slice/stack_1:output:09sequential_3/simple_rnn_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_3/simple_rnn_13/strided_slice
&sequential_3/simple_rnn_13/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2(
&sequential_3/simple_rnn_13/zeros/mul/yØ
$sequential_3/simple_rnn_13/zeros/mulMul1sequential_3/simple_rnn_13/strided_slice:output:0/sequential_3/simple_rnn_13/zeros/mul/y:output:0*
T0*
_output_shapes
: 2&
$sequential_3/simple_rnn_13/zeros/mul
'sequential_3/simple_rnn_13/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2)
'sequential_3/simple_rnn_13/zeros/Less/yÓ
%sequential_3/simple_rnn_13/zeros/LessLess(sequential_3/simple_rnn_13/zeros/mul:z:00sequential_3/simple_rnn_13/zeros/Less/y:output:0*
T0*
_output_shapes
: 2'
%sequential_3/simple_rnn_13/zeros/Less
)sequential_3/simple_rnn_13/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2+
)sequential_3/simple_rnn_13/zeros/packed/1ï
'sequential_3/simple_rnn_13/zeros/packedPack1sequential_3/simple_rnn_13/strided_slice:output:02sequential_3/simple_rnn_13/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_3/simple_rnn_13/zeros/packed
&sequential_3/simple_rnn_13/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&sequential_3/simple_rnn_13/zeros/Constâ
 sequential_3/simple_rnn_13/zerosFill0sequential_3/simple_rnn_13/zeros/packed:output:0/sequential_3/simple_rnn_13/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_3/simple_rnn_13/zeros«
)sequential_3/simple_rnn_13/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)sequential_3/simple_rnn_13/transpose/permð
$sequential_3/simple_rnn_13/transpose	Transpose*sequential_3/simple_rnn_12/transpose_1:y:02sequential_3/simple_rnn_13/transpose/perm:output:0*
T0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ2&
$sequential_3/simple_rnn_13/transpose 
"sequential_3/simple_rnn_13/Shape_1Shape(sequential_3/simple_rnn_13/transpose:y:0*
T0*
_output_shapes
:2$
"sequential_3/simple_rnn_13/Shape_1®
0sequential_3/simple_rnn_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential_3/simple_rnn_13/strided_slice_1/stack²
2sequential_3/simple_rnn_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_3/simple_rnn_13/strided_slice_1/stack_1²
2sequential_3/simple_rnn_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_3/simple_rnn_13/strided_slice_1/stack_2
*sequential_3/simple_rnn_13/strided_slice_1StridedSlice+sequential_3/simple_rnn_13/Shape_1:output:09sequential_3/simple_rnn_13/strided_slice_1/stack:output:0;sequential_3/simple_rnn_13/strided_slice_1/stack_1:output:0;sequential_3/simple_rnn_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_3/simple_rnn_13/strided_slice_1»
6sequential_3/simple_rnn_13/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ28
6sequential_3/simple_rnn_13/TensorArrayV2/element_shape
(sequential_3/simple_rnn_13/TensorArrayV2TensorListReserve?sequential_3/simple_rnn_13/TensorArrayV2/element_shape:output:03sequential_3/simple_rnn_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02*
(sequential_3/simple_rnn_13/TensorArrayV2õ
Psequential_3/simple_rnn_13/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2R
Psequential_3/simple_rnn_13/TensorArrayUnstack/TensorListFromTensor/element_shapeä
Bsequential_3/simple_rnn_13/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(sequential_3/simple_rnn_13/transpose:y:0Ysequential_3/simple_rnn_13/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02D
Bsequential_3/simple_rnn_13/TensorArrayUnstack/TensorListFromTensor®
0sequential_3/simple_rnn_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential_3/simple_rnn_13/strided_slice_2/stack²
2sequential_3/simple_rnn_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_3/simple_rnn_13/strided_slice_2/stack_1²
2sequential_3/simple_rnn_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_3/simple_rnn_13/strided_slice_2/stack_2
*sequential_3/simple_rnn_13/strided_slice_2StridedSlice(sequential_3/simple_rnn_13/transpose:y:09sequential_3/simple_rnn_13/strided_slice_2/stack:output:0;sequential_3/simple_rnn_13/strided_slice_2/stack_1:output:0;sequential_3/simple_rnn_13/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2,
*sequential_3/simple_rnn_13/strided_slice_2
Csequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOpLsequential_3_simple_rnn_13_simple_rnn_cell_13_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02E
Csequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOp«
4sequential_3/simple_rnn_13/simple_rnn_cell_13/MatMulMatMul3sequential_3/simple_rnn_13/strided_slice_2:output:0Ksequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul
Dsequential_3/simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOpMsequential_3_simple_rnn_13_simple_rnn_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02F
Dsequential_3/simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOpº
5sequential_3/simple_rnn_13/simple_rnn_cell_13/BiasAddBiasAdd>sequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul:product:0Lsequential_3/simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_3/simple_rnn_13/simple_rnn_cell_13/BiasAdd
Esequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOpNsequential_3_simple_rnn_13_simple_rnn_cell_13_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02G
Esequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOp§
6sequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul_1MatMul)sequential_3/simple_rnn_13/zeros:output:0Msequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul_1¤
1sequential_3/simple_rnn_13/simple_rnn_cell_13/addAddV2>sequential_3/simple_rnn_13/simple_rnn_cell_13/BiasAdd:output:0@sequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_3/simple_rnn_13/simple_rnn_cell_13/addÚ
2sequential_3/simple_rnn_13/simple_rnn_cell_13/ReluRelu5sequential_3/simple_rnn_13/simple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_3/simple_rnn_13/simple_rnn_cell_13/ReluÅ
8sequential_3/simple_rnn_13/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8sequential_3/simple_rnn_13/TensorArrayV2_1/element_shape¤
*sequential_3/simple_rnn_13/TensorArrayV2_1TensorListReserveAsequential_3/simple_rnn_13/TensorArrayV2_1/element_shape:output:03sequential_3/simple_rnn_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02,
*sequential_3/simple_rnn_13/TensorArrayV2_1
sequential_3/simple_rnn_13/timeConst*
_output_shapes
: *
dtype0*
value	B : 2!
sequential_3/simple_rnn_13/timeµ
3sequential_3/simple_rnn_13/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ25
3sequential_3/simple_rnn_13/while/maximum_iterations 
-sequential_3/simple_rnn_13/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/simple_rnn_13/while/loop_counter¿
 sequential_3/simple_rnn_13/whileWhile6sequential_3/simple_rnn_13/while/loop_counter:output:0<sequential_3/simple_rnn_13/while/maximum_iterations:output:0(sequential_3/simple_rnn_13/time:output:03sequential_3/simple_rnn_13/TensorArrayV2_1:handle:0)sequential_3/simple_rnn_13/zeros:output:03sequential_3/simple_rnn_13/strided_slice_1:output:0Rsequential_3/simple_rnn_13/TensorArrayUnstack/TensorListFromTensor:output_handle:0Lsequential_3_simple_rnn_13_simple_rnn_cell_13_matmul_readvariableop_resourceMsequential_3_simple_rnn_13_simple_rnn_cell_13_biasadd_readvariableop_resourceNsequential_3_simple_rnn_13_simple_rnn_cell_13_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*6
body.R,
*sequential_3_simple_rnn_13_while_body_9230*6
cond.R,
*sequential_3_simple_rnn_13_while_cond_9229*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2"
 sequential_3/simple_rnn_13/whileë
Ksequential_3/simple_rnn_13/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_3/simple_rnn_13/TensorArrayV2Stack/TensorListStack/element_shapeÕ
=sequential_3/simple_rnn_13/TensorArrayV2Stack/TensorListStackTensorListStack)sequential_3/simple_rnn_13/while:output:3Tsequential_3/simple_rnn_13/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ*
element_dtype02?
=sequential_3/simple_rnn_13/TensorArrayV2Stack/TensorListStack·
0sequential_3/simple_rnn_13/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ22
0sequential_3/simple_rnn_13/strided_slice_3/stack²
2sequential_3/simple_rnn_13/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 24
2sequential_3/simple_rnn_13/strided_slice_3/stack_1²
2sequential_3/simple_rnn_13/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_3/simple_rnn_13/strided_slice_3/stack_2½
*sequential_3/simple_rnn_13/strided_slice_3StridedSliceFsequential_3/simple_rnn_13/TensorArrayV2Stack/TensorListStack:tensor:09sequential_3/simple_rnn_13/strided_slice_3/stack:output:0;sequential_3/simple_rnn_13/strided_slice_3/stack_1:output:0;sequential_3/simple_rnn_13/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2,
*sequential_3/simple_rnn_13/strided_slice_3¯
+sequential_3/simple_rnn_13/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+sequential_3/simple_rnn_13/transpose_1/perm
&sequential_3/simple_rnn_13/transpose_1	TransposeFsequential_3/simple_rnn_13/TensorArrayV2Stack/TensorListStack:tensor:04sequential_3/simple_rnn_13/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2(
&sequential_3/simple_rnn_13/transpose_1¯
-sequential_3/time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2/
-sequential_3/time_distributed_3/Reshape/shapeô
'sequential_3/time_distributed_3/ReshapeReshape*sequential_3/simple_rnn_13/transpose_1:y:06sequential_3/time_distributed_3/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_3/time_distributed_3/Reshape
=sequential_3/time_distributed_3/dense_3/MatMul/ReadVariableOpReadVariableOpFsequential_3_time_distributed_3_dense_3_matmul_readvariableop_resource*
_output_shapes
:		*
dtype02?
=sequential_3/time_distributed_3/dense_3/MatMul/ReadVariableOp
.sequential_3/time_distributed_3/dense_3/MatMulMatMul0sequential_3/time_distributed_3/Reshape:output:0Esequential_3/time_distributed_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	20
.sequential_3/time_distributed_3/dense_3/MatMul
>sequential_3/time_distributed_3/dense_3/BiasAdd/ReadVariableOpReadVariableOpGsequential_3_time_distributed_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02@
>sequential_3/time_distributed_3/dense_3/BiasAdd/ReadVariableOp¡
/sequential_3/time_distributed_3/dense_3/BiasAddBiasAdd8sequential_3/time_distributed_3/dense_3/MatMul:product:0Fsequential_3/time_distributed_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	21
/sequential_3/time_distributed_3/dense_3/BiasAddÙ
/sequential_3/time_distributed_3/dense_3/SoftmaxSoftmax8sequential_3/time_distributed_3/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	21
/sequential_3/time_distributed_3/dense_3/Softmax·
/sequential_3/time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿq   	   21
/sequential_3/time_distributed_3/Reshape_1/shape
)sequential_3/time_distributed_3/Reshape_1Reshape9sequential_3/time_distributed_3/dense_3/Softmax:softmax:08sequential_3/time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2+
)sequential_3/time_distributed_3/Reshape_1³
/sequential_3/time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   21
/sequential_3/time_distributed_3/Reshape_2/shapeú
)sequential_3/time_distributed_3/Reshape_2Reshape*sequential_3/simple_rnn_13/transpose_1:y:08sequential_3/time_distributed_3/Reshape_2/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_3/time_distributed_3/Reshape_2
IdentityIdentity2sequential_3/time_distributed_3/Reshape_1:output:0*^sequential_3/embedding_3/embedding_lookupE^sequential_3/simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOpD^sequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOpF^sequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp!^sequential_3/simple_rnn_11/whileE^sequential_3/simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOpD^sequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOpF^sequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOp!^sequential_3/simple_rnn_12/whileE^sequential_3/simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOpD^sequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOpF^sequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOp!^sequential_3/simple_rnn_13/while?^sequential_3/time_distributed_3/dense_3/BiasAdd/ReadVariableOp>^sequential_3/time_distributed_3/dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿq::::::::::::2V
)sequential_3/embedding_3/embedding_lookup)sequential_3/embedding_3/embedding_lookup2
Dsequential_3/simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOpDsequential_3/simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp2
Csequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOpCsequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp2
Esequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOpEsequential_3/simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp2D
 sequential_3/simple_rnn_11/while sequential_3/simple_rnn_11/while2
Dsequential_3/simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOpDsequential_3/simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOp2
Csequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOpCsequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOp2
Esequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOpEsequential_3/simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOp2D
 sequential_3/simple_rnn_12/while sequential_3/simple_rnn_12/while2
Dsequential_3/simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOpDsequential_3/simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOp2
Csequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOpCsequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOp2
Esequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOpEsequential_3/simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOp2D
 sequential_3/simple_rnn_13/while sequential_3/simple_rnn_13/while2
>sequential_3/time_distributed_3/dense_3/BiasAdd/ReadVariableOp>sequential_3/time_distributed_3/dense_3/BiasAdd/ReadVariableOp2~
=sequential_3/time_distributed_3/dense_3/MatMul/ReadVariableOp=sequential_3/time_distributed_3/dense_3/MatMul/ReadVariableOp:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
+
_user_specified_nameembedding_3_input
Í
¥
while_cond_11655
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_11655___redundant_placeholder03
/while_while_cond_11655___redundant_placeholder13
/while_while_cond_11655___redundant_placeholder23
/while_while_cond_11655___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Í
¥
while_cond_13317
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_13317___redundant_placeholder03
/while_while_cond_13317___redundant_placeholder13
/while_while_cond_13317___redundant_placeholder23
/while_while_cond_13317___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
­	

,__inference_sequential_3_layer_call_fn_12763

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_119452
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿq::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
Õ

M__inference_time_distributed_3_layer_call_and_return_conditional_losses_11766

inputs*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape¦
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:		*
dtype02
dense_3/MatMul/ReadVariableOp
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/MatMul¤
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02 
dense_3/BiasAdd/ReadVariableOp¡
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/Softmaxw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿq   	   2
Reshape_1/shape
	Reshape_1Reshapedense_3/Softmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2
	Reshape_1«
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿq::2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
Í
¥
while_cond_11402
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_11402___redundant_placeholder03
/while_while_cond_11402___redundant_placeholder13
/while_while_cond_11402___redundant_placeholder23
/while_while_cond_11402___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
4

while_body_11150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_11_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_11_matmul_readvariableop_resource<
8while_simple_rnn_cell_11_biasadd_readvariableop_resource=
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_11/MatMul/ReadVariableOp¢0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÚ
.while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:Z@*
dtype020
.while/simple_rnn_cell_11/MatMul/ReadVariableOpè
while/simple_rnn_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_11/MatMulÙ
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpå
 while/simple_rnn_cell_11/BiasAddBiasAdd)while/simple_rnn_cell_11/MatMul:product:07while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_11/BiasAddà
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpÑ
!while/simple_rnn_cell_11/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/simple_rnn_cell_11/MatMul_1Ï
while/simple_rnn_cell_11/addAddV2)while/simple_rnn_cell_11/BiasAdd:output:0+while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_11/add
while/simple_rnn_cell_11/TanhTanh while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_11/Tanhå
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_11/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity!while/simple_rnn_cell_11/Tanh:y:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_11_matmul_readvariableop_resource9while_simple_rnn_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2b
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_11/MatMul/ReadVariableOp.while/simple_rnn_cell_11/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Õ

M__inference_time_distributed_3_layer_call_and_return_conditional_losses_14333

inputs*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape¦
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:		*
dtype02
dense_3/MatMul/ReadVariableOp
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/MatMul¤
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02 
dense_3/BiasAdd/ReadVariableOp¡
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/Softmaxw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿq   	   2
Reshape_1/shape
	Reshape_1Reshapedense_3/Softmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2
	Reshape_1«
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿq::2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
S
±
*sequential_3_simple_rnn_12_while_body_9122R
Nsequential_3_simple_rnn_12_while_sequential_3_simple_rnn_12_while_loop_counterX
Tsequential_3_simple_rnn_12_while_sequential_3_simple_rnn_12_while_maximum_iterations0
,sequential_3_simple_rnn_12_while_placeholder2
.sequential_3_simple_rnn_12_while_placeholder_12
.sequential_3_simple_rnn_12_while_placeholder_2Q
Msequential_3_simple_rnn_12_while_sequential_3_simple_rnn_12_strided_slice_1_0
sequential_3_simple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0X
Tsequential_3_simple_rnn_12_while_simple_rnn_cell_12_matmul_readvariableop_resource_0Y
Usequential_3_simple_rnn_12_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0Z
Vsequential_3_simple_rnn_12_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0-
)sequential_3_simple_rnn_12_while_identity/
+sequential_3_simple_rnn_12_while_identity_1/
+sequential_3_simple_rnn_12_while_identity_2/
+sequential_3_simple_rnn_12_while_identity_3/
+sequential_3_simple_rnn_12_while_identity_4O
Ksequential_3_simple_rnn_12_while_sequential_3_simple_rnn_12_strided_slice_1
sequential_3_simple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_12_tensorarrayunstack_tensorlistfromtensorV
Rsequential_3_simple_rnn_12_while_simple_rnn_cell_12_matmul_readvariableop_resourceW
Ssequential_3_simple_rnn_12_while_simple_rnn_cell_12_biasadd_readvariableop_resourceX
Tsequential_3_simple_rnn_12_while_simple_rnn_cell_12_matmul_1_readvariableop_resource¢Jsequential_3/simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp¢Isequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp¢Ksequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOpù
Rsequential_3/simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2T
Rsequential_3/simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeö
Dsequential_3/simple_rnn_12/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_3_simple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0,sequential_3_simple_rnn_12_while_placeholder[sequential_3/simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02F
Dsequential_3/simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem¬
Isequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOpTsequential_3_simple_rnn_12_while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype02K
Isequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOpÕ
:sequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMulMatMulKsequential_3/simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem:item:0Qsequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2<
:sequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul«
Jsequential_3/simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOpUsequential_3_simple_rnn_12_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02L
Jsequential_3/simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpÒ
;sequential_3/simple_rnn_12/while/simple_rnn_cell_12/BiasAddBiasAddDsequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul:product:0Rsequential_3/simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2=
;sequential_3/simple_rnn_12/while/simple_rnn_cell_12/BiasAdd³
Ksequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOpVsequential_3_simple_rnn_12_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02M
Ksequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp¾
<sequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1MatMul.sequential_3_simple_rnn_12_while_placeholder_2Ssequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2>
<sequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1¼
7sequential_3/simple_rnn_12/while/simple_rnn_cell_12/addAddV2Dsequential_3/simple_rnn_12/while/simple_rnn_cell_12/BiasAdd:output:0Fsequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ29
7sequential_3/simple_rnn_12/while/simple_rnn_cell_12/addõ
;sequential_3/simple_rnn_12/while/simple_rnn_cell_12/SigmoidSigmoid;sequential_3/simple_rnn_12/while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2=
;sequential_3/simple_rnn_12/while/simple_rnn_cell_12/Sigmoidï
Esequential_3/simple_rnn_12/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.sequential_3_simple_rnn_12_while_placeholder_1,sequential_3_simple_rnn_12_while_placeholder?sequential_3/simple_rnn_12/while/simple_rnn_cell_12/Sigmoid:y:0*
_output_shapes
: *
element_dtype02G
Esequential_3/simple_rnn_12/while/TensorArrayV2Write/TensorListSetItem
&sequential_3/simple_rnn_12/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_3/simple_rnn_12/while/add/yÕ
$sequential_3/simple_rnn_12/while/addAddV2,sequential_3_simple_rnn_12_while_placeholder/sequential_3/simple_rnn_12/while/add/y:output:0*
T0*
_output_shapes
: 2&
$sequential_3/simple_rnn_12/while/add
(sequential_3/simple_rnn_12/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_3/simple_rnn_12/while/add_1/yý
&sequential_3/simple_rnn_12/while/add_1AddV2Nsequential_3_simple_rnn_12_while_sequential_3_simple_rnn_12_while_loop_counter1sequential_3/simple_rnn_12/while/add_1/y:output:0*
T0*
_output_shapes
: 2(
&sequential_3/simple_rnn_12/while/add_1
)sequential_3/simple_rnn_12/while/IdentityIdentity*sequential_3/simple_rnn_12/while/add_1:z:0K^sequential_3/simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpJ^sequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOpL^sequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2+
)sequential_3/simple_rnn_12/while/IdentityÄ
+sequential_3/simple_rnn_12/while/Identity_1IdentityTsequential_3_simple_rnn_12_while_sequential_3_simple_rnn_12_while_maximum_iterationsK^sequential_3/simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpJ^sequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOpL^sequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_3/simple_rnn_12/while/Identity_1
+sequential_3/simple_rnn_12/while/Identity_2Identity(sequential_3/simple_rnn_12/while/add:z:0K^sequential_3/simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpJ^sequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOpL^sequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_3/simple_rnn_12/while/Identity_2Å
+sequential_3/simple_rnn_12/while/Identity_3IdentityUsequential_3/simple_rnn_12/while/TensorArrayV2Write/TensorListSetItem:output_handle:0K^sequential_3/simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpJ^sequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOpL^sequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_3/simple_rnn_12/while/Identity_3Á
+sequential_3/simple_rnn_12/while/Identity_4Identity?sequential_3/simple_rnn_12/while/simple_rnn_cell_12/Sigmoid:y:0K^sequential_3/simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpJ^sequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOpL^sequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_3/simple_rnn_12/while/Identity_4"_
)sequential_3_simple_rnn_12_while_identity2sequential_3/simple_rnn_12/while/Identity:output:0"c
+sequential_3_simple_rnn_12_while_identity_14sequential_3/simple_rnn_12/while/Identity_1:output:0"c
+sequential_3_simple_rnn_12_while_identity_24sequential_3/simple_rnn_12/while/Identity_2:output:0"c
+sequential_3_simple_rnn_12_while_identity_34sequential_3/simple_rnn_12/while/Identity_3:output:0"c
+sequential_3_simple_rnn_12_while_identity_44sequential_3/simple_rnn_12/while/Identity_4:output:0"
Ksequential_3_simple_rnn_12_while_sequential_3_simple_rnn_12_strided_slice_1Msequential_3_simple_rnn_12_while_sequential_3_simple_rnn_12_strided_slice_1_0"¬
Ssequential_3_simple_rnn_12_while_simple_rnn_cell_12_biasadd_readvariableop_resourceUsequential_3_simple_rnn_12_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"®
Tsequential_3_simple_rnn_12_while_simple_rnn_cell_12_matmul_1_readvariableop_resourceVsequential_3_simple_rnn_12_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"ª
Rsequential_3_simple_rnn_12_while_simple_rnn_cell_12_matmul_readvariableop_resourceTsequential_3_simple_rnn_12_while_simple_rnn_cell_12_matmul_readvariableop_resource_0"
sequential_3_simple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_12_tensorarrayunstack_tensorlistfromtensorsequential_3_simple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2
Jsequential_3/simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpJsequential_3/simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2
Isequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOpIsequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp2
Ksequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOpKsequential_3/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Í
¥
while_cond_13563
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_13563___redundant_placeholder03
/while_while_cond_13563___redundant_placeholder13
/while_while_cond_13563___redundant_placeholder23
/while_while_cond_13563___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Î	
£
,__inference_sequential_3_layer_call_fn_11908
embedding_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_118812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿq::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
+
_user_specified_nameembedding_3_input


M__inference_time_distributed_3_layer_call_and_return_conditional_losses_14300

inputs*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape¦
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:		*
dtype02
dense_3/MatMul/ReadVariableOp
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/MatMul¤
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02 
dense_3/BiasAdd/ReadVariableOp¡
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/Softmaxq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense_3/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	2
	Reshape_1´
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í
¥
while_cond_10260
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_10260___redundant_placeholder03
/while_while_cond_10260___redundant_placeholder13
/while_while_cond_10260___redundant_placeholder23
/while_while_cond_10260___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ç
Ä
M__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_14462

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid«
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¯

Identity_1IdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
ï	
´
2__inference_simple_rnn_cell_12_layer_call_fn_14490

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_98872
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
é
Â
M__inference_simple_rnn_cell_13_layer_call_and_return_conditional_losses_10399

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addP
ReluReluadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu²
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¶

Identity_1IdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
¥

2__inference_time_distributed_3_layer_call_fn_14309

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_109312
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å

¯
simple_rnn_13_while_cond_126258
4simple_rnn_13_while_simple_rnn_13_while_loop_counter>
:simple_rnn_13_while_simple_rnn_13_while_maximum_iterations#
simple_rnn_13_while_placeholder%
!simple_rnn_13_while_placeholder_1%
!simple_rnn_13_while_placeholder_2:
6simple_rnn_13_while_less_simple_rnn_13_strided_slice_1O
Ksimple_rnn_13_while_simple_rnn_13_while_cond_12625___redundant_placeholder0O
Ksimple_rnn_13_while_simple_rnn_13_while_cond_12625___redundant_placeholder1O
Ksimple_rnn_13_while_simple_rnn_13_while_cond_12625___redundant_placeholder2O
Ksimple_rnn_13_while_simple_rnn_13_while_cond_12625___redundant_placeholder3 
simple_rnn_13_while_identity
¶
simple_rnn_13/while/LessLesssimple_rnn_13_while_placeholder6simple_rnn_13_while_less_simple_rnn_13_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_13/while/Less
simple_rnn_13/while/IdentityIdentitysimple_rnn_13/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_13/while/Identity"E
simple_rnn_13_while_identity%simple_rnn_13/while/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:


2__inference_time_distributed_3_layer_call_fn_14366

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_117812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿq::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
»4

while_body_14168
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_13_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_13_matmul_readvariableop_resource<
8while_simple_rnn_cell_13_biasadd_readvariableop_resource=
9while_simple_rnn_cell_13_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_13/MatMul/ReadVariableOp¢0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÜ
.while/simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_13_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype020
.while/simple_rnn_cell_13/MatMul/ReadVariableOpé
while/simple_rnn_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_13/MatMulÚ
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpæ
 while/simple_rnn_cell_13/BiasAddBiasAdd)while/simple_rnn_cell_13/MatMul:product:07while/simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_13/BiasAddâ
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype022
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpÒ
!while/simple_rnn_cell_13/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/simple_rnn_cell_13/MatMul_1Ð
while/simple_rnn_cell_13/addAddV2)while/simple_rnn_cell_13/BiasAdd:output:0+while/simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_13/add
while/simple_rnn_cell_13/ReluRelu while/simple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_13/Reluï
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder+while/simple_rnn_cell_13/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3¦
while/Identity_4Identity+while/simple_rnn_cell_13/Relu:activations:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_13_biasadd_readvariableop_resource:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_13_matmul_1_readvariableop_resource;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_13_matmul_readvariableop_resource9while_simple_rnn_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2b
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_13/MatMul/ReadVariableOp.while/simple_rnn_cell_13/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOp0while/simple_rnn_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ã

¯
simple_rnn_11_while_cond_120628
4simple_rnn_11_while_simple_rnn_11_while_loop_counter>
:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations#
simple_rnn_11_while_placeholder%
!simple_rnn_11_while_placeholder_1%
!simple_rnn_11_while_placeholder_2:
6simple_rnn_11_while_less_simple_rnn_11_strided_slice_1O
Ksimple_rnn_11_while_simple_rnn_11_while_cond_12062___redundant_placeholder0O
Ksimple_rnn_11_while_simple_rnn_11_while_cond_12062___redundant_placeholder1O
Ksimple_rnn_11_while_simple_rnn_11_while_cond_12062___redundant_placeholder2O
Ksimple_rnn_11_while_simple_rnn_11_while_cond_12062___redundant_placeholder3 
simple_rnn_11_while_identity
¶
simple_rnn_11/while/LessLesssimple_rnn_11_while_placeholder6simple_rnn_11_while_less_simple_rnn_11_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_11/while/Less
simple_rnn_11/while/IdentityIdentitysimple_rnn_11/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_11/while/Identity"E
simple_rnn_11_while_identity%simple_rnn_11/while/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
´4

while_body_11403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_12_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_12_matmul_readvariableop_resource<
8while_simple_rnn_cell_12_biasadd_readvariableop_resource=
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_12/MatMul/ReadVariableOp¢0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÛ
.while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype020
.while/simple_rnn_cell_12/MatMul/ReadVariableOpé
while/simple_rnn_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_12/MatMulÚ
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpæ
 while/simple_rnn_cell_12/BiasAddBiasAdd)while/simple_rnn_cell_12/MatMul:product:07while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_12/BiasAddâ
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype022
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpÒ
!while/simple_rnn_cell_12/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/simple_rnn_cell_12/MatMul_1Ð
while/simple_rnn_cell_12/addAddV2)while/simple_rnn_cell_12/BiasAdd:output:0+while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_12/add¤
 while/simple_rnn_cell_12/SigmoidSigmoid while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_12/Sigmoidè
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_12/Sigmoid:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity$while/simple_rnn_cell_12/Sigmoid:y:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_12_matmul_readvariableop_resource9while_simple_rnn_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2b
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_12/MatMul/ReadVariableOp.while/simple_rnn_cell_12/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÆH

H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_13004
inputs_05
1simple_rnn_cell_11_matmul_readvariableop_resource6
2simple_rnn_cell_11_biasadd_readvariableop_resource7
3simple_rnn_cell_11_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_11/BiasAdd/ReadVariableOp¢(simple_rnn_cell_11/MatMul/ReadVariableOp¢*simple_rnn_cell_11/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
shrink_axis_mask2
strided_slice_2Æ
(simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:Z@*
dtype02*
(simple_rnn_cell_11/MatMul/ReadVariableOp¾
simple_rnn_cell_11/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/MatMulÅ
)simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_11/BiasAdd/ReadVariableOpÍ
simple_rnn_cell_11/BiasAddBiasAdd#simple_rnn_cell_11/MatMul:product:01simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/BiasAddÌ
*simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_11/MatMul_1/ReadVariableOpº
simple_rnn_cell_11/MatMul_1MatMulzeros:output:02simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/MatMul_1·
simple_rnn_cell_11/addAddV2#simple_rnn_cell_11/BiasAdd:output:0%simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/add
simple_rnn_cell_11/TanhTanhsimple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÅ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_11_matmul_readvariableop_resource2simple_rnn_cell_11_biasadd_readvariableop_resource3simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_12938*
condR
while_cond_12937*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1ü
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_11/BiasAdd/ReadVariableOp)^simple_rnn_cell_11/MatMul/ReadVariableOp+^simple_rnn_cell_11/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ:::2V
)simple_rnn_cell_11/BiasAdd/ReadVariableOp)simple_rnn_cell_11/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_11/MatMul/ReadVariableOp(simple_rnn_cell_11/MatMul/ReadVariableOp2X
*simple_rnn_cell_11/MatMul_1/ReadVariableOp*simple_rnn_cell_11/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ
"
_user_specified_name
inputs/0
ö<
ö
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_10207

inputs
simple_rnn_cell_12_10132
simple_rnn_cell_12_10134
simple_rnn_cell_12_10136
identity¢*simple_rnn_cell_12/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2
*simple_rnn_cell_12/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_12_10132simple_rnn_cell_12_10134simple_rnn_cell_12_10136*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_98702,
*simple_rnn_cell_12/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterù
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_12_10132simple_rnn_cell_12_10134simple_rnn_cell_12_10136*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_10144*
condR
while_cond_10143*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1¦
IdentityIdentitytranspose_1:y:0+^simple_rnn_cell_12/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::2X
*simple_rnn_cell_12/StatefulPartitionedCall*simple_rnn_cell_12/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
H

H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_11610

inputs5
1simple_rnn_cell_13_matmul_readvariableop_resource6
2simple_rnn_cell_13_biasadd_readvariableop_resource7
3simple_rnn_cell_13_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_13/BiasAdd/ReadVariableOp¢(simple_rnn_cell_13/MatMul/ReadVariableOp¢*simple_rnn_cell_13/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2È
(simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_13_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(simple_rnn_cell_13/MatMul/ReadVariableOp¿
simple_rnn_cell_13/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/MatMulÆ
)simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)simple_rnn_cell_13/BiasAdd/ReadVariableOpÎ
simple_rnn_cell_13/BiasAddBiasAdd#simple_rnn_cell_13/MatMul:product:01simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/BiasAddÎ
*simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_13_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*simple_rnn_cell_13/MatMul_1/ReadVariableOp»
simple_rnn_cell_13/MatMul_1MatMulzeros:output:02simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/MatMul_1¸
simple_rnn_cell_13/addAddV2#simple_rnn_cell_13/BiasAdd:output:0%simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/add
simple_rnn_cell_13/ReluRelusimple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/Relu
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÇ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_13_matmul_readvariableop_resource2simple_rnn_cell_13_biasadd_readvariableop_resource3simple_rnn_cell_13_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_11544*
condR
while_cond_11543*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
transpose_1ô
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_13/BiasAdd/ReadVariableOp)^simple_rnn_cell_13/MatMul/ReadVariableOp+^simple_rnn_cell_13/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿq:::2V
)simple_rnn_cell_13/BiasAdd/ReadVariableOp)simple_rnn_cell_13/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_13/MatMul/ReadVariableOp(simple_rnn_cell_13/MatMul/ReadVariableOp2X
*simple_rnn_cell_13/MatMul_1/ReadVariableOp*simple_rnn_cell_13/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
û<
ö
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_10719

inputs
simple_rnn_cell_13_10644
simple_rnn_cell_13_10646
simple_rnn_cell_13_10648
identity¢*simple_rnn_cell_13/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
*simple_rnn_cell_13/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_13_10644simple_rnn_cell_13_10646simple_rnn_cell_13_10648*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_13_layer_call_and_return_conditional_losses_103822,
*simple_rnn_cell_13/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterù
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_13_10644simple_rnn_cell_13_10646simple_rnn_cell_13_10648*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_10656*
condR
while_cond_10655*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1¦
IdentityIdentitytranspose_1:y:0+^simple_rnn_cell_13/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2X
*simple_rnn_cell_13/StatefulPartitionedCall*simple_rnn_cell_13/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È
q
+__inference_embedding_3_layer_call_fn_12780

inputs
unknown
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_109812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ2

Identity"
identityIdentity:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿq:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
¥b
î
__inference__traced_save_14724
file_prefix5
1savev2_embedding_3_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopF
Bsavev2_simple_rnn_11_simple_rnn_cell_11_kernel_read_readvariableopP
Lsavev2_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_read_readvariableopD
@savev2_simple_rnn_11_simple_rnn_cell_11_bias_read_readvariableopF
Bsavev2_simple_rnn_12_simple_rnn_cell_12_kernel_read_readvariableopP
Lsavev2_simple_rnn_12_simple_rnn_cell_12_recurrent_kernel_read_readvariableopD
@savev2_simple_rnn_12_simple_rnn_cell_12_bias_read_readvariableopF
Bsavev2_simple_rnn_13_simple_rnn_cell_13_kernel_read_readvariableopP
Lsavev2_simple_rnn_13_simple_rnn_cell_13_recurrent_kernel_read_readvariableopD
@savev2_simple_rnn_13_simple_rnn_cell_13_bias_read_readvariableop8
4savev2_time_distributed_3_kernel_read_readvariableop6
2savev2_time_distributed_3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopM
Isavev2_adam_simple_rnn_11_simple_rnn_cell_11_kernel_m_read_readvariableopW
Ssavev2_adam_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_m_read_readvariableopK
Gsavev2_adam_simple_rnn_11_simple_rnn_cell_11_bias_m_read_readvariableopM
Isavev2_adam_simple_rnn_12_simple_rnn_cell_12_kernel_m_read_readvariableopW
Ssavev2_adam_simple_rnn_12_simple_rnn_cell_12_recurrent_kernel_m_read_readvariableopK
Gsavev2_adam_simple_rnn_12_simple_rnn_cell_12_bias_m_read_readvariableopM
Isavev2_adam_simple_rnn_13_simple_rnn_cell_13_kernel_m_read_readvariableopW
Ssavev2_adam_simple_rnn_13_simple_rnn_cell_13_recurrent_kernel_m_read_readvariableopK
Gsavev2_adam_simple_rnn_13_simple_rnn_cell_13_bias_m_read_readvariableop?
;savev2_adam_time_distributed_3_kernel_m_read_readvariableop=
9savev2_adam_time_distributed_3_bias_m_read_readvariableopM
Isavev2_adam_simple_rnn_11_simple_rnn_cell_11_kernel_v_read_readvariableopW
Ssavev2_adam_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_v_read_readvariableopK
Gsavev2_adam_simple_rnn_11_simple_rnn_cell_11_bias_v_read_readvariableopM
Isavev2_adam_simple_rnn_12_simple_rnn_cell_12_kernel_v_read_readvariableopW
Ssavev2_adam_simple_rnn_12_simple_rnn_cell_12_recurrent_kernel_v_read_readvariableopK
Gsavev2_adam_simple_rnn_12_simple_rnn_cell_12_bias_v_read_readvariableopM
Isavev2_adam_simple_rnn_13_simple_rnn_cell_13_kernel_v_read_readvariableopW
Ssavev2_adam_simple_rnn_13_simple_rnn_cell_13_recurrent_kernel_v_read_readvariableopK
Gsavev2_adam_simple_rnn_13_simple_rnn_cell_13_bias_v_read_readvariableop?
;savev2_adam_time_distributed_3_kernel_v_read_readvariableop=
9savev2_adam_time_distributed_3_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename°
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*Â
value¸Bµ,B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesà
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices¼
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_3_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopBsavev2_simple_rnn_11_simple_rnn_cell_11_kernel_read_readvariableopLsavev2_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_read_readvariableop@savev2_simple_rnn_11_simple_rnn_cell_11_bias_read_readvariableopBsavev2_simple_rnn_12_simple_rnn_cell_12_kernel_read_readvariableopLsavev2_simple_rnn_12_simple_rnn_cell_12_recurrent_kernel_read_readvariableop@savev2_simple_rnn_12_simple_rnn_cell_12_bias_read_readvariableopBsavev2_simple_rnn_13_simple_rnn_cell_13_kernel_read_readvariableopLsavev2_simple_rnn_13_simple_rnn_cell_13_recurrent_kernel_read_readvariableop@savev2_simple_rnn_13_simple_rnn_cell_13_bias_read_readvariableop4savev2_time_distributed_3_kernel_read_readvariableop2savev2_time_distributed_3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopIsavev2_adam_simple_rnn_11_simple_rnn_cell_11_kernel_m_read_readvariableopSsavev2_adam_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_m_read_readvariableopGsavev2_adam_simple_rnn_11_simple_rnn_cell_11_bias_m_read_readvariableopIsavev2_adam_simple_rnn_12_simple_rnn_cell_12_kernel_m_read_readvariableopSsavev2_adam_simple_rnn_12_simple_rnn_cell_12_recurrent_kernel_m_read_readvariableopGsavev2_adam_simple_rnn_12_simple_rnn_cell_12_bias_m_read_readvariableopIsavev2_adam_simple_rnn_13_simple_rnn_cell_13_kernel_m_read_readvariableopSsavev2_adam_simple_rnn_13_simple_rnn_cell_13_recurrent_kernel_m_read_readvariableopGsavev2_adam_simple_rnn_13_simple_rnn_cell_13_bias_m_read_readvariableop;savev2_adam_time_distributed_3_kernel_m_read_readvariableop9savev2_adam_time_distributed_3_bias_m_read_readvariableopIsavev2_adam_simple_rnn_11_simple_rnn_cell_11_kernel_v_read_readvariableopSsavev2_adam_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_v_read_readvariableopGsavev2_adam_simple_rnn_11_simple_rnn_cell_11_bias_v_read_readvariableopIsavev2_adam_simple_rnn_12_simple_rnn_cell_12_kernel_v_read_readvariableopSsavev2_adam_simple_rnn_12_simple_rnn_cell_12_recurrent_kernel_v_read_readvariableopGsavev2_adam_simple_rnn_12_simple_rnn_cell_12_bias_v_read_readvariableopIsavev2_adam_simple_rnn_13_simple_rnn_cell_13_kernel_v_read_readvariableopSsavev2_adam_simple_rnn_13_simple_rnn_cell_13_recurrent_kernel_v_read_readvariableopGsavev2_adam_simple_rnn_13_simple_rnn_cell_13_bias_v_read_readvariableop;savev2_adam_time_distributed_3_kernel_v_read_readvariableop9savev2_adam_time_distributed_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *:
dtypes0
.2,	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*ï
_input_shapesÝ
Ú: :
¤Z: : : : : :Z@:@@:@:	@:
::
:
::		:	: : : : :Z@:@@:@:	@:
::
:
::		:	:Z@:@@:@:	@:
::
:
::		:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
¤Z:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:Z@:$ 

_output_shapes

:@@: 	

_output_shapes
:@:%
!

_output_shapes
:	@:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:		: 

_output_shapes
:	:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:Z@:$ 

_output_shapes

:@@: 

_output_shapes
:@:%!

_output_shapes
:	@:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:		:  

_output_shapes
:	:$! 

_output_shapes

:Z@:$" 

_output_shapes

:@@: #

_output_shapes
:@:%$!

_output_shapes
:	@:&%"
 
_output_shapes
:
:!&

_output_shapes	
::&'"
 
_output_shapes
:
:&("
 
_output_shapes
:
:!)

_output_shapes	
::%*!

_output_shapes
:		: +

_output_shapes
:	:,

_output_shapes
: 
¥

2__inference_time_distributed_3_layer_call_fn_14318

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_109602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
4

while_body_11038
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_11_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_11_matmul_readvariableop_resource<
8while_simple_rnn_cell_11_biasadd_readvariableop_resource=
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_11/MatMul/ReadVariableOp¢0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÚ
.while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:Z@*
dtype020
.while/simple_rnn_cell_11/MatMul/ReadVariableOpè
while/simple_rnn_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_11/MatMulÙ
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpå
 while/simple_rnn_cell_11/BiasAddBiasAdd)while/simple_rnn_cell_11/MatMul:product:07while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_11/BiasAddà
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpÑ
!while/simple_rnn_cell_11/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/simple_rnn_cell_11/MatMul_1Ï
while/simple_rnn_cell_11/addAddV2)while/simple_rnn_cell_11/BiasAdd:output:0+while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_11/add
while/simple_rnn_cell_11/TanhTanh while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_11/Tanhå
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_11/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity!while/simple_rnn_cell_11/Tanh:y:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_11_matmul_readvariableop_resource9while_simple_rnn_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2b
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_11/MatMul/ReadVariableOp.while/simple_rnn_cell_11/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Æ
 
while_cond_9748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_9748___redundant_placeholder02
.while_while_cond_9748___redundant_placeholder12
.while_while_cond_9748___redundant_placeholder22
.while_while_cond_9748___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
"
ð
G__inference_sequential_3_layer_call_and_return_conditional_losses_11843
embedding_3_input
embedding_3_11811
simple_rnn_11_11814
simple_rnn_11_11816
simple_rnn_11_11818
simple_rnn_12_11821
simple_rnn_12_11823
simple_rnn_12_11825
simple_rnn_13_11828
simple_rnn_13_11830
simple_rnn_13_11832
time_distributed_3_11835
time_distributed_3_11837
identity¢#embedding_3/StatefulPartitionedCall¢%simple_rnn_11/StatefulPartitionedCall¢%simple_rnn_12/StatefulPartitionedCall¢%simple_rnn_13/StatefulPartitionedCall¢*time_distributed_3/StatefulPartitionedCall
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputembedding_3_11811*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_109812%
#embedding_3/StatefulPartitionedCallë
%simple_rnn_11/StatefulPartitionedCallStatefulPartitionedCall,embedding_3/StatefulPartitionedCall:output:0simple_rnn_11_11814simple_rnn_11_11816simple_rnn_11_11818*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_112162'
%simple_rnn_11/StatefulPartitionedCallî
%simple_rnn_12/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_11/StatefulPartitionedCall:output:0simple_rnn_12_11821simple_rnn_12_11823simple_rnn_12_11825*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_114692'
%simple_rnn_12/StatefulPartitionedCallî
%simple_rnn_13/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_12/StatefulPartitionedCall:output:0simple_rnn_13_11828simple_rnn_13_11830simple_rnn_13_11832*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_117222'
%simple_rnn_13/StatefulPartitionedCallï
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_13/StatefulPartitionedCall:output:0time_distributed_3_11835time_distributed_3_11837*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_117812,
*time_distributed_3/StatefulPartitionedCall
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2"
 time_distributed_3/Reshape/shapeÑ
time_distributed_3/ReshapeReshape.simple_rnn_13/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
time_distributed_3/ReshapeÖ
IdentityIdentity3time_distributed_3/StatefulPartitionedCall:output:0$^embedding_3/StatefulPartitionedCall&^simple_rnn_11/StatefulPartitionedCall&^simple_rnn_12/StatefulPartitionedCall&^simple_rnn_13/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿq::::::::::::2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2N
%simple_rnn_11/StatefulPartitionedCall%simple_rnn_11/StatefulPartitionedCall2N
%simple_rnn_12/StatefulPartitionedCall%simple_rnn_12/StatefulPartitionedCall2N
%simple_rnn_13/StatefulPartitionedCall%simple_rnn_13/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
+
_user_specified_nameembedding_3_input
D
¨
simple_rnn_11_while_body_124108
4simple_rnn_11_while_simple_rnn_11_while_loop_counter>
:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations#
simple_rnn_11_while_placeholder%
!simple_rnn_11_while_placeholder_1%
!simple_rnn_11_while_placeholder_27
3simple_rnn_11_while_simple_rnn_11_strided_slice_1_0s
osimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0K
Gsimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0L
Hsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0M
Isimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0 
simple_rnn_11_while_identity"
simple_rnn_11_while_identity_1"
simple_rnn_11_while_identity_2"
simple_rnn_11_while_identity_3"
simple_rnn_11_while_identity_45
1simple_rnn_11_while_simple_rnn_11_strided_slice_1q
msimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensorI
Esimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resourceJ
Fsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resourceK
Gsimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource¢=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp¢>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOpß
Esimple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   2G
Esimple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shape§
7simple_rnn_11/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_11_while_placeholderNsimple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
element_dtype029
7simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem
<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:Z@*
dtype02>
<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp 
-simple_rnn_11/while/simple_rnn_cell_11/MatMulMatMul>simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-simple_rnn_11/while/simple_rnn_cell_11/MatMul
=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02?
=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp
.simple_rnn_11/while/simple_rnn_cell_11/BiasAddBiasAdd7simple_rnn_11/while/simple_rnn_cell_11/MatMul:product:0Esimple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@20
.simple_rnn_11/while/simple_rnn_cell_11/BiasAdd
>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02@
>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp
/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1MatMul!simple_rnn_11_while_placeholder_2Fsimple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@21
/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1
*simple_rnn_11/while/simple_rnn_cell_11/addAddV27simple_rnn_11/while/simple_rnn_cell_11/BiasAdd:output:09simple_rnn_11/while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*simple_rnn_11/while/simple_rnn_cell_11/addÄ
+simple_rnn_11/while/simple_rnn_cell_11/TanhTanh.simple_rnn_11/while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+simple_rnn_11/while/simple_rnn_cell_11/Tanh«
8simple_rnn_11/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_11_while_placeholder_1simple_rnn_11_while_placeholder/simple_rnn_11/while/simple_rnn_cell_11/Tanh:y:0*
_output_shapes
: *
element_dtype02:
8simple_rnn_11/while/TensorArrayV2Write/TensorListSetItemx
simple_rnn_11/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_11/while/add/y¡
simple_rnn_11/while/addAddV2simple_rnn_11_while_placeholder"simple_rnn_11/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_11/while/add|
simple_rnn_11/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_11/while/add_1/y¼
simple_rnn_11/while/add_1AddV24simple_rnn_11_while_simple_rnn_11_while_loop_counter$simple_rnn_11/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_11/while/add_1È
simple_rnn_11/while/IdentityIdentitysimple_rnn_11/while/add_1:z:0>^simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp=^simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp?^simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_11/while/Identityé
simple_rnn_11/while/Identity_1Identity:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations>^simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp=^simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp?^simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_11/while/Identity_1Ê
simple_rnn_11/while/Identity_2Identitysimple_rnn_11/while/add:z:0>^simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp=^simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp?^simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_11/while/Identity_2÷
simple_rnn_11/while/Identity_3IdentityHsimple_rnn_11/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp=^simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp?^simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_11/while/Identity_3ï
simple_rnn_11/while/Identity_4Identity/simple_rnn_11/while/simple_rnn_cell_11/Tanh:y:0>^simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp=^simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp?^simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
simple_rnn_11/while/Identity_4"E
simple_rnn_11_while_identity%simple_rnn_11/while/Identity:output:0"I
simple_rnn_11_while_identity_1'simple_rnn_11/while/Identity_1:output:0"I
simple_rnn_11_while_identity_2'simple_rnn_11/while/Identity_2:output:0"I
simple_rnn_11_while_identity_3'simple_rnn_11/while/Identity_3:output:0"I
simple_rnn_11_while_identity_4'simple_rnn_11/while/Identity_4:output:0"h
1simple_rnn_11_while_simple_rnn_11_strided_slice_13simple_rnn_11_while_simple_rnn_11_strided_slice_1_0"
Fsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resourceHsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"
Gsimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resourceIsimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"
Esimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resourceGsimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0"à
msimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensorosimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2~
=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2|
<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp2
>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Ù
¡
*sequential_3_simple_rnn_12_while_cond_9121R
Nsequential_3_simple_rnn_12_while_sequential_3_simple_rnn_12_while_loop_counterX
Tsequential_3_simple_rnn_12_while_sequential_3_simple_rnn_12_while_maximum_iterations0
,sequential_3_simple_rnn_12_while_placeholder2
.sequential_3_simple_rnn_12_while_placeholder_12
.sequential_3_simple_rnn_12_while_placeholder_2T
Psequential_3_simple_rnn_12_while_less_sequential_3_simple_rnn_12_strided_slice_1h
dsequential_3_simple_rnn_12_while_sequential_3_simple_rnn_12_while_cond_9121___redundant_placeholder0h
dsequential_3_simple_rnn_12_while_sequential_3_simple_rnn_12_while_cond_9121___redundant_placeholder1h
dsequential_3_simple_rnn_12_while_sequential_3_simple_rnn_12_while_cond_9121___redundant_placeholder2h
dsequential_3_simple_rnn_12_while_sequential_3_simple_rnn_12_while_cond_9121___redundant_placeholder3-
)sequential_3_simple_rnn_12_while_identity
÷
%sequential_3/simple_rnn_12/while/LessLess,sequential_3_simple_rnn_12_while_placeholderPsequential_3_simple_rnn_12_while_less_sequential_3_simple_rnn_12_strided_slice_1*
T0*
_output_shapes
: 2'
%sequential_3/simple_rnn_12/while/Less®
)sequential_3/simple_rnn_12/while/IdentityIdentity)sequential_3/simple_rnn_12/while/Less:z:0*
T0
*
_output_shapes
: 2+
)sequential_3/simple_rnn_12/while/Identity"_
)sequential_3_simple_rnn_12_while_identity2sequential_3/simple_rnn_12/while/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Í
¥
while_cond_11543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_11543___redundant_placeholder03
/while_while_cond_11543___redundant_placeholder13
/while_while_cond_11543___redundant_placeholder23
/while_while_cond_11543___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¯D
¨
simple_rnn_13_while_body_122798
4simple_rnn_13_while_simple_rnn_13_while_loop_counter>
:simple_rnn_13_while_simple_rnn_13_while_maximum_iterations#
simple_rnn_13_while_placeholder%
!simple_rnn_13_while_placeholder_1%
!simple_rnn_13_while_placeholder_27
3simple_rnn_13_while_simple_rnn_13_strided_slice_1_0s
osimple_rnn_13_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_13_tensorarrayunstack_tensorlistfromtensor_0K
Gsimple_rnn_13_while_simple_rnn_cell_13_matmul_readvariableop_resource_0L
Hsimple_rnn_13_while_simple_rnn_cell_13_biasadd_readvariableop_resource_0M
Isimple_rnn_13_while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0 
simple_rnn_13_while_identity"
simple_rnn_13_while_identity_1"
simple_rnn_13_while_identity_2"
simple_rnn_13_while_identity_3"
simple_rnn_13_while_identity_45
1simple_rnn_13_while_simple_rnn_13_strided_slice_1q
msimple_rnn_13_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_13_tensorarrayunstack_tensorlistfromtensorI
Esimple_rnn_13_while_simple_rnn_cell_13_matmul_readvariableop_resourceJ
Fsimple_rnn_13_while_simple_rnn_cell_13_biasadd_readvariableop_resourceK
Gsimple_rnn_13_while_simple_rnn_cell_13_matmul_1_readvariableop_resource¢=simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp¢<simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp¢>simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOpß
Esimple_rnn_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2G
Esimple_rnn_13/while/TensorArrayV2Read/TensorListGetItem/element_shape¨
7simple_rnn_13/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_13_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_13_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_13_while_placeholderNsimple_rnn_13/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype029
7simple_rnn_13/while/TensorArrayV2Read/TensorListGetItem
<simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_13_while_simple_rnn_cell_13_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02>
<simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp¡
-simple_rnn_13/while/simple_rnn_cell_13/MatMulMatMul>simple_rnn_13/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-simple_rnn_13/while/simple_rnn_cell_13/MatMul
=simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_13_while_simple_rnn_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02?
=simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp
.simple_rnn_13/while/simple_rnn_cell_13/BiasAddBiasAdd7simple_rnn_13/while/simple_rnn_cell_13/MatMul:product:0Esimple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.simple_rnn_13/while/simple_rnn_cell_13/BiasAdd
>simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_13_while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02@
>simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp
/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1MatMul!simple_rnn_13_while_placeholder_2Fsimple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1
*simple_rnn_13/while/simple_rnn_cell_13/addAddV27simple_rnn_13/while/simple_rnn_cell_13/BiasAdd:output:09simple_rnn_13/while/simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*simple_rnn_13/while/simple_rnn_cell_13/addÅ
+simple_rnn_13/while/simple_rnn_cell_13/ReluRelu.simple_rnn_13/while/simple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+simple_rnn_13/while/simple_rnn_cell_13/Reluµ
8simple_rnn_13/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_13_while_placeholder_1simple_rnn_13_while_placeholder9simple_rnn_13/while/simple_rnn_cell_13/Relu:activations:0*
_output_shapes
: *
element_dtype02:
8simple_rnn_13/while/TensorArrayV2Write/TensorListSetItemx
simple_rnn_13/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_13/while/add/y¡
simple_rnn_13/while/addAddV2simple_rnn_13_while_placeholder"simple_rnn_13/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_13/while/add|
simple_rnn_13/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_13/while/add_1/y¼
simple_rnn_13/while/add_1AddV24simple_rnn_13_while_simple_rnn_13_while_loop_counter$simple_rnn_13/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_13/while/add_1È
simple_rnn_13/while/IdentityIdentitysimple_rnn_13/while/add_1:z:0>^simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp=^simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp?^simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_13/while/Identityé
simple_rnn_13/while/Identity_1Identity:simple_rnn_13_while_simple_rnn_13_while_maximum_iterations>^simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp=^simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp?^simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_13/while/Identity_1Ê
simple_rnn_13/while/Identity_2Identitysimple_rnn_13/while/add:z:0>^simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp=^simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp?^simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_13/while/Identity_2÷
simple_rnn_13/while/Identity_3IdentityHsimple_rnn_13/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp=^simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp?^simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_13/while/Identity_3ú
simple_rnn_13/while/Identity_4Identity9simple_rnn_13/while/simple_rnn_cell_13/Relu:activations:0>^simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp=^simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp?^simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
simple_rnn_13/while/Identity_4"E
simple_rnn_13_while_identity%simple_rnn_13/while/Identity:output:0"I
simple_rnn_13_while_identity_1'simple_rnn_13/while/Identity_1:output:0"I
simple_rnn_13_while_identity_2'simple_rnn_13/while/Identity_2:output:0"I
simple_rnn_13_while_identity_3'simple_rnn_13/while/Identity_3:output:0"I
simple_rnn_13_while_identity_4'simple_rnn_13/while/Identity_4:output:0"h
1simple_rnn_13_while_simple_rnn_13_strided_slice_13simple_rnn_13_while_simple_rnn_13_strided_slice_1_0"
Fsimple_rnn_13_while_simple_rnn_cell_13_biasadd_readvariableop_resourceHsimple_rnn_13_while_simple_rnn_cell_13_biasadd_readvariableop_resource_0"
Gsimple_rnn_13_while_simple_rnn_cell_13_matmul_1_readvariableop_resourceIsimple_rnn_13_while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0"
Esimple_rnn_13_while_simple_rnn_cell_13_matmul_readvariableop_resourceGsimple_rnn_13_while_simple_rnn_cell_13_matmul_readvariableop_resource_0"à
msimple_rnn_13_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_13_tensorarrayunstack_tensorlistfromtensorosimple_rnn_13_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_13_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2~
=simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp=simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp2|
<simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp<simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp2
>simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp>simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
4

while_body_12938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_11_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_11_matmul_readvariableop_resource<
8while_simple_rnn_cell_11_biasadd_readvariableop_resource=
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_11/MatMul/ReadVariableOp¢0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÚ
.while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:Z@*
dtype020
.while/simple_rnn_cell_11/MatMul/ReadVariableOpè
while/simple_rnn_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_11/MatMulÙ
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpå
 while/simple_rnn_cell_11/BiasAddBiasAdd)while/simple_rnn_cell_11/MatMul:product:07while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_11/BiasAddà
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpÑ
!while/simple_rnn_cell_11/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/simple_rnn_cell_11/MatMul_1Ï
while/simple_rnn_cell_11/addAddV2)while/simple_rnn_cell_11/BiasAdd:output:0+while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_11/add
while/simple_rnn_cell_11/TanhTanh while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_11/Tanhå
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_11/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity!while/simple_rnn_cell_11/Tanh:y:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_11_matmul_readvariableop_resource9while_simple_rnn_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2b
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_11/MatMul/ReadVariableOp.while/simple_rnn_cell_11/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
×
¡
*sequential_3_simple_rnn_11_while_cond_9013R
Nsequential_3_simple_rnn_11_while_sequential_3_simple_rnn_11_while_loop_counterX
Tsequential_3_simple_rnn_11_while_sequential_3_simple_rnn_11_while_maximum_iterations0
,sequential_3_simple_rnn_11_while_placeholder2
.sequential_3_simple_rnn_11_while_placeholder_12
.sequential_3_simple_rnn_11_while_placeholder_2T
Psequential_3_simple_rnn_11_while_less_sequential_3_simple_rnn_11_strided_slice_1h
dsequential_3_simple_rnn_11_while_sequential_3_simple_rnn_11_while_cond_9013___redundant_placeholder0h
dsequential_3_simple_rnn_11_while_sequential_3_simple_rnn_11_while_cond_9013___redundant_placeholder1h
dsequential_3_simple_rnn_11_while_sequential_3_simple_rnn_11_while_cond_9013___redundant_placeholder2h
dsequential_3_simple_rnn_11_while_sequential_3_simple_rnn_11_while_cond_9013___redundant_placeholder3-
)sequential_3_simple_rnn_11_while_identity
÷
%sequential_3/simple_rnn_11/while/LessLess,sequential_3_simple_rnn_11_while_placeholderPsequential_3_simple_rnn_11_while_less_sequential_3_simple_rnn_11_strided_slice_1*
T0*
_output_shapes
: 2'
%sequential_3/simple_rnn_11/while/Less®
)sequential_3/simple_rnn_11/while/IdentityIdentity)sequential_3/simple_rnn_11/while/Less:z:0*
T0
*
_output_shapes
: 2+
)sequential_3/simple_rnn_11/while/Identity"_
)sequential_3_simple_rnn_11_while_identity2sequential_3/simple_rnn_11/while/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:


2__inference_time_distributed_3_layer_call_fn_14357

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_117662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿq::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
ß<
ò
G__inference_simple_rnn_11_layer_call_and_return_conditional_losses_9695

inputs
simple_rnn_cell_11_9620
simple_rnn_cell_11_9622
simple_rnn_cell_11_9624
identity¢*simple_rnn_cell_11/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
shrink_axis_mask2
strided_slice_2
*simple_rnn_cell_11/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_11_9620simple_rnn_cell_11_9622simple_rnn_cell_11_9624*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_93582,
*simple_rnn_cell_11/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterò
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_11_9620simple_rnn_cell_11_9622simple_rnn_cell_11_9624*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_9632*
condR
while_cond_9631*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1¥
IdentityIdentitytranspose_1:y:0+^simple_rnn_cell_11/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ:::2X
*simple_rnn_cell_11/StatefulPartitionedCall*simple_rnn_cell_11/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ
 
_user_specified_nameinputs
§#

while_body_10773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0$
 while_simple_rnn_cell_13_10795_0$
 while_simple_rnn_cell_13_10797_0$
 while_simple_rnn_cell_13_10799_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor"
while_simple_rnn_cell_13_10795"
while_simple_rnn_cell_13_10797"
while_simple_rnn_cell_13_10799¢0while/simple_rnn_cell_13/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÙ
0while/simple_rnn_cell_13/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_13_10795_0 while_simple_rnn_cell_13_10797_0 while_simple_rnn_cell_13_10799_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_13_layer_call_and_return_conditional_losses_1039922
0while/simple_rnn_cell_13/StatefulPartitionedCallý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_13/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:01^while/simple_rnn_cell_13/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity¤
while/Identity_1Identitywhile_while_maximum_iterations1^while/simple_rnn_cell_13/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:01^while/simple_rnn_cell_13/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2À
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:01^while/simple_rnn_cell_13/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ñ
while/Identity_4Identity9while/simple_rnn_cell_13/StatefulPartitionedCall:output:11^while/simple_rnn_cell_13/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_13_10795 while_simple_rnn_cell_13_10795_0"B
while_simple_rnn_cell_13_10797 while_simple_rnn_cell_13_10797_0"B
while_simple_rnn_cell_13_10799 while_simple_rnn_cell_13_10799_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2d
0while/simple_rnn_cell_13/StatefulPartitionedCall0while/simple_rnn_cell_13/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Í
¥
while_cond_13429
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_13429___redundant_placeholder03
/while_while_cond_13429___redundant_placeholder13
/while_while_cond_13429___redundant_placeholder23
/while_while_cond_13429___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
»4

while_body_11544
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_13_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_13_matmul_readvariableop_resource<
8while_simple_rnn_cell_13_biasadd_readvariableop_resource=
9while_simple_rnn_cell_13_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_13/MatMul/ReadVariableOp¢0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÜ
.while/simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_13_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype020
.while/simple_rnn_cell_13/MatMul/ReadVariableOpé
while/simple_rnn_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_13/MatMulÚ
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpæ
 while/simple_rnn_cell_13/BiasAddBiasAdd)while/simple_rnn_cell_13/MatMul:product:07while/simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_13/BiasAddâ
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype022
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpÒ
!while/simple_rnn_cell_13/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/simple_rnn_cell_13/MatMul_1Ð
while/simple_rnn_cell_13/addAddV2)while/simple_rnn_cell_13/BiasAdd:output:0+while/simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_13/add
while/simple_rnn_cell_13/ReluRelu while/simple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_13/Reluï
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder+while/simple_rnn_cell_13/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3¦
while/Identity_4Identity+while/simple_rnn_cell_13/Relu:activations:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_13_biasadd_readvariableop_resource:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_13_matmul_1_readvariableop_resource;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_13_matmul_readvariableop_resource9while_simple_rnn_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2b
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_13/MatMul/ReadVariableOp.while/simple_rnn_cell_13/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOp0while/simple_rnn_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ä
Á
L__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_9358

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:Z@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tanh§
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity«

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿZ:ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
¢H

H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_11357

inputs5
1simple_rnn_cell_12_matmul_readvariableop_resource6
2simple_rnn_cell_12_biasadd_readvariableop_resource7
3simple_rnn_cell_12_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_12/BiasAdd/ReadVariableOp¢(simple_rnn_cell_12/MatMul/ReadVariableOp¢*simple_rnn_cell_12/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿ@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2Ç
(simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02*
(simple_rnn_cell_12/MatMul/ReadVariableOp¿
simple_rnn_cell_12/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/MatMulÆ
)simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)simple_rnn_cell_12/BiasAdd/ReadVariableOpÎ
simple_rnn_cell_12/BiasAddBiasAdd#simple_rnn_cell_12/MatMul:product:01simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/BiasAddÎ
*simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*simple_rnn_cell_12/MatMul_1/ReadVariableOp»
simple_rnn_cell_12/MatMul_1MatMulzeros:output:02simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/MatMul_1¸
simple_rnn_cell_12/addAddV2#simple_rnn_cell_12/BiasAdd:output:0%simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/add
simple_rnn_cell_12/SigmoidSigmoidsimple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/Sigmoid
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÇ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_12_matmul_readvariableop_resource2simple_rnn_cell_12_biasadd_readvariableop_resource3simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_11291*
condR
while_cond_11290*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
transpose_1ô
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_12/BiasAdd/ReadVariableOp)^simple_rnn_cell_12/MatMul/ReadVariableOp+^simple_rnn_cell_12/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿq@:::2V
)simple_rnn_cell_12/BiasAdd/ReadVariableOp)simple_rnn_cell_12/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_12/MatMul/ReadVariableOp(simple_rnn_cell_12/MatMul/ReadVariableOp2X
*simple_rnn_cell_12/MatMul_1/ReadVariableOp*simple_rnn_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@
 
_user_specified_nameinputs
Õ

M__inference_time_distributed_3_layer_call_and_return_conditional_losses_14348

inputs*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape¦
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:		*
dtype02
dense_3/MatMul/ReadVariableOp
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/MatMul¤
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02 
dense_3/BiasAdd/ReadVariableOp¡
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/Softmaxw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿq   	   2
Reshape_1/shape
	Reshape_1Reshapedense_3/Softmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2
	Reshape_1«
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿq::2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
Ú	

F__inference_embedding_3_layer_call_and_return_conditional_losses_12773

inputs
embedding_lookup_12767
identity¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
Castû
embedding_lookupResourceGatherembedding_lookup_12767Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/12767*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ*
dtype02
embedding_lookupì
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/12767*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ2
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ2

Identity"
identityIdentity:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿq:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
Ë
Ä
M__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_14400

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:Z@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tanh§
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity«

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿZ:ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
"
ð
G__inference_sequential_3_layer_call_and_return_conditional_losses_11808
embedding_3_input
embedding_3_10990
simple_rnn_11_11239
simple_rnn_11_11241
simple_rnn_11_11243
simple_rnn_12_11492
simple_rnn_12_11494
simple_rnn_12_11496
simple_rnn_13_11745
simple_rnn_13_11747
simple_rnn_13_11749
time_distributed_3_11800
time_distributed_3_11802
identity¢#embedding_3/StatefulPartitionedCall¢%simple_rnn_11/StatefulPartitionedCall¢%simple_rnn_12/StatefulPartitionedCall¢%simple_rnn_13/StatefulPartitionedCall¢*time_distributed_3/StatefulPartitionedCall
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputembedding_3_10990*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_109812%
#embedding_3/StatefulPartitionedCallë
%simple_rnn_11/StatefulPartitionedCallStatefulPartitionedCall,embedding_3/StatefulPartitionedCall:output:0simple_rnn_11_11239simple_rnn_11_11241simple_rnn_11_11243*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_111042'
%simple_rnn_11/StatefulPartitionedCallî
%simple_rnn_12/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_11/StatefulPartitionedCall:output:0simple_rnn_12_11492simple_rnn_12_11494simple_rnn_12_11496*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_113572'
%simple_rnn_12/StatefulPartitionedCallî
%simple_rnn_13/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_12/StatefulPartitionedCall:output:0simple_rnn_13_11745simple_rnn_13_11747simple_rnn_13_11749*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_116102'
%simple_rnn_13/StatefulPartitionedCallï
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_13/StatefulPartitionedCall:output:0time_distributed_3_11800time_distributed_3_11802*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_117662,
*time_distributed_3/StatefulPartitionedCall
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2"
 time_distributed_3/Reshape/shapeÑ
time_distributed_3/ReshapeReshape.simple_rnn_13/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
time_distributed_3/ReshapeÖ
IdentityIdentity3time_distributed_3/StatefulPartitionedCall:output:0$^embedding_3/StatefulPartitionedCall&^simple_rnn_11/StatefulPartitionedCall&^simple_rnn_12/StatefulPartitionedCall&^simple_rnn_13/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿq::::::::::::2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2N
%simple_rnn_11/StatefulPartitionedCall%simple_rnn_11/StatefulPartitionedCall2N
%simple_rnn_12/StatefulPartitionedCall%simple_rnn_12/StatefulPartitionedCall2N
%simple_rnn_13/StatefulPartitionedCall%simple_rnn_13/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
+
_user_specified_nameembedding_3_input


-__inference_simple_rnn_11_layer_call_fn_13272

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_112162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿqZ:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ
 
_user_specified_nameinputs

´
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_10960

inputs
dense_3_10950
dense_3_10952
identity¢dense_3/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape
dense_3/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_3_10950dense_3_10952*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_108672!
dense_3/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape¤
	Reshape_1Reshape(dense_3/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	2
	Reshape_1
IdentityIdentityReshape_1:output:0 ^dense_3/StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢H

H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_13630

inputs5
1simple_rnn_cell_12_matmul_readvariableop_resource6
2simple_rnn_cell_12_biasadd_readvariableop_resource7
3simple_rnn_cell_12_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_12/BiasAdd/ReadVariableOp¢(simple_rnn_cell_12/MatMul/ReadVariableOp¢*simple_rnn_cell_12/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿ@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2Ç
(simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02*
(simple_rnn_cell_12/MatMul/ReadVariableOp¿
simple_rnn_cell_12/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/MatMulÆ
)simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)simple_rnn_cell_12/BiasAdd/ReadVariableOpÎ
simple_rnn_cell_12/BiasAddBiasAdd#simple_rnn_cell_12/MatMul:product:01simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/BiasAddÎ
*simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*simple_rnn_cell_12/MatMul_1/ReadVariableOp»
simple_rnn_cell_12/MatMul_1MatMulzeros:output:02simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/MatMul_1¸
simple_rnn_cell_12/addAddV2#simple_rnn_cell_12/BiasAdd:output:0%simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/add
simple_rnn_cell_12/SigmoidSigmoidsimple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/Sigmoid
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÇ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_12_matmul_readvariableop_resource2simple_rnn_cell_12_biasadd_readvariableop_resource3simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_13564*
condR
while_cond_13563*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
transpose_1ô
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_12/BiasAdd/ReadVariableOp)^simple_rnn_cell_12/MatMul/ReadVariableOp+^simple_rnn_cell_12/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿq@:::2V
)simple_rnn_cell_12/BiasAdd/ReadVariableOp)simple_rnn_cell_12/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_12/MatMul/ReadVariableOp(simple_rnn_cell_12/MatMul/ReadVariableOp2X
*simple_rnn_cell_12/MatMul_1/ReadVariableOp*simple_rnn_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@
 
_user_specified_nameinputs
Í
¥
while_cond_10143
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_10143___redundant_placeholder03
/while_while_cond_10143___redundant_placeholder13
/while_while_cond_10143___redundant_placeholder23
/while_while_cond_10143___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:


-__inference_simple_rnn_12_layer_call_fn_13753

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_113572
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿq@:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@
 
_user_specified_nameinputs
§#

while_body_10656
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0$
 while_simple_rnn_cell_13_10678_0$
 while_simple_rnn_cell_13_10680_0$
 while_simple_rnn_cell_13_10682_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor"
while_simple_rnn_cell_13_10678"
while_simple_rnn_cell_13_10680"
while_simple_rnn_cell_13_10682¢0while/simple_rnn_cell_13/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÙ
0while/simple_rnn_cell_13/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_13_10678_0 while_simple_rnn_cell_13_10680_0 while_simple_rnn_cell_13_10682_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_13_layer_call_and_return_conditional_losses_1038222
0while/simple_rnn_cell_13/StatefulPartitionedCallý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_13/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:01^while/simple_rnn_cell_13/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity¤
while/Identity_1Identitywhile_while_maximum_iterations1^while/simple_rnn_cell_13/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:01^while/simple_rnn_cell_13/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2À
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:01^while/simple_rnn_cell_13/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ñ
while/Identity_4Identity9while/simple_rnn_cell_13/StatefulPartitionedCall:output:11^while/simple_rnn_cell_13/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_13_10678 while_simple_rnn_cell_13_10678_0"B
while_simple_rnn_cell_13_10680 while_simple_rnn_cell_13_10680_0"B
while_simple_rnn_cell_13_10682 while_simple_rnn_cell_13_10682_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2d
0while/simple_rnn_cell_13/StatefulPartitionedCall0while/simple_rnn_cell_13/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
H

H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_13988

inputs5
1simple_rnn_cell_13_matmul_readvariableop_resource6
2simple_rnn_cell_13_biasadd_readvariableop_resource7
3simple_rnn_cell_13_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_13/BiasAdd/ReadVariableOp¢(simple_rnn_cell_13/MatMul/ReadVariableOp¢*simple_rnn_cell_13/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2È
(simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_13_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(simple_rnn_cell_13/MatMul/ReadVariableOp¿
simple_rnn_cell_13/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/MatMulÆ
)simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)simple_rnn_cell_13/BiasAdd/ReadVariableOpÎ
simple_rnn_cell_13/BiasAddBiasAdd#simple_rnn_cell_13/MatMul:product:01simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/BiasAddÎ
*simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_13_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*simple_rnn_cell_13/MatMul_1/ReadVariableOp»
simple_rnn_cell_13/MatMul_1MatMulzeros:output:02simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/MatMul_1¸
simple_rnn_cell_13/addAddV2#simple_rnn_cell_13/BiasAdd:output:0%simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/add
simple_rnn_cell_13/ReluRelusimple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/Relu
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÇ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_13_matmul_readvariableop_resource2simple_rnn_cell_13_biasadd_readvariableop_resource3simple_rnn_cell_13_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_13922*
condR
while_cond_13921*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
transpose_1ô
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_13/BiasAdd/ReadVariableOp)^simple_rnn_cell_13/MatMul/ReadVariableOp+^simple_rnn_cell_13/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿq:::2V
)simple_rnn_cell_13/BiasAdd/ReadVariableOp)simple_rnn_cell_13/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_13/MatMul/ReadVariableOp(simple_rnn_cell_13/MatMul/ReadVariableOp2X
*simple_rnn_cell_13/MatMul_1/ReadVariableOp*simple_rnn_cell_13/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
´4

while_body_13430
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_12_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_12_matmul_readvariableop_resource<
8while_simple_rnn_cell_12_biasadd_readvariableop_resource=
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_12/MatMul/ReadVariableOp¢0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÛ
.while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype020
.while/simple_rnn_cell_12/MatMul/ReadVariableOpé
while/simple_rnn_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_12/MatMulÚ
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpæ
 while/simple_rnn_cell_12/BiasAddBiasAdd)while/simple_rnn_cell_12/MatMul:product:07while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_12/BiasAddâ
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype022
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpÒ
!while/simple_rnn_cell_12/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/simple_rnn_cell_12/MatMul_1Ð
while/simple_rnn_cell_12/addAddV2)while/simple_rnn_cell_12/BiasAdd:output:0+while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_12/add¤
 while/simple_rnn_cell_12/SigmoidSigmoid while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_12/Sigmoidè
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_12/Sigmoid:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity$while/simple_rnn_cell_12/Sigmoid:y:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_12_matmul_readvariableop_resource9while_simple_rnn_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2b
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_12/MatMul/ReadVariableOp.while/simple_rnn_cell_12/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 


-__inference_simple_rnn_13_layer_call_fn_13999

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_116102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿq:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
é	
´
2__inference_simple_rnn_cell_11_layer_call_fn_14428

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_93752
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿZ:ÿÿÿÿÿÿÿÿÿ@:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
¨D
¨
simple_rnn_12_while_body_121718
4simple_rnn_12_while_simple_rnn_12_while_loop_counter>
:simple_rnn_12_while_simple_rnn_12_while_maximum_iterations#
simple_rnn_12_while_placeholder%
!simple_rnn_12_while_placeholder_1%
!simple_rnn_12_while_placeholder_27
3simple_rnn_12_while_simple_rnn_12_strided_slice_1_0s
osimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0K
Gsimple_rnn_12_while_simple_rnn_cell_12_matmul_readvariableop_resource_0L
Hsimple_rnn_12_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0M
Isimple_rnn_12_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0 
simple_rnn_12_while_identity"
simple_rnn_12_while_identity_1"
simple_rnn_12_while_identity_2"
simple_rnn_12_while_identity_3"
simple_rnn_12_while_identity_45
1simple_rnn_12_while_simple_rnn_12_strided_slice_1q
msimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensorI
Esimple_rnn_12_while_simple_rnn_cell_12_matmul_readvariableop_resourceJ
Fsimple_rnn_12_while_simple_rnn_cell_12_biasadd_readvariableop_resourceK
Gsimple_rnn_12_while_simple_rnn_cell_12_matmul_1_readvariableop_resource¢=simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp¢<simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp¢>simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOpß
Esimple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2G
Esimple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shape§
7simple_rnn_12/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_12_while_placeholderNsimple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype029
7simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem
<simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_12_while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype02>
<simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp¡
-simple_rnn_12/while/simple_rnn_cell_12/MatMulMatMul>simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-simple_rnn_12/while/simple_rnn_cell_12/MatMul
=simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_12_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02?
=simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp
.simple_rnn_12/while/simple_rnn_cell_12/BiasAddBiasAdd7simple_rnn_12/while/simple_rnn_cell_12/MatMul:product:0Esimple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.simple_rnn_12/while/simple_rnn_cell_12/BiasAdd
>simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_12_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02@
>simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp
/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1MatMul!simple_rnn_12_while_placeholder_2Fsimple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1
*simple_rnn_12/while/simple_rnn_cell_12/addAddV27simple_rnn_12/while/simple_rnn_cell_12/BiasAdd:output:09simple_rnn_12/while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*simple_rnn_12/while/simple_rnn_cell_12/addÎ
.simple_rnn_12/while/simple_rnn_cell_12/SigmoidSigmoid.simple_rnn_12/while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.simple_rnn_12/while/simple_rnn_cell_12/Sigmoid®
8simple_rnn_12/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_12_while_placeholder_1simple_rnn_12_while_placeholder2simple_rnn_12/while/simple_rnn_cell_12/Sigmoid:y:0*
_output_shapes
: *
element_dtype02:
8simple_rnn_12/while/TensorArrayV2Write/TensorListSetItemx
simple_rnn_12/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_12/while/add/y¡
simple_rnn_12/while/addAddV2simple_rnn_12_while_placeholder"simple_rnn_12/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_12/while/add|
simple_rnn_12/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_12/while/add_1/y¼
simple_rnn_12/while/add_1AddV24simple_rnn_12_while_simple_rnn_12_while_loop_counter$simple_rnn_12/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_12/while/add_1È
simple_rnn_12/while/IdentityIdentitysimple_rnn_12/while/add_1:z:0>^simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp=^simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp?^simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_12/while/Identityé
simple_rnn_12/while/Identity_1Identity:simple_rnn_12_while_simple_rnn_12_while_maximum_iterations>^simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp=^simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp?^simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_12/while/Identity_1Ê
simple_rnn_12/while/Identity_2Identitysimple_rnn_12/while/add:z:0>^simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp=^simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp?^simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_12/while/Identity_2÷
simple_rnn_12/while/Identity_3IdentityHsimple_rnn_12/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp=^simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp?^simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_12/while/Identity_3ó
simple_rnn_12/while/Identity_4Identity2simple_rnn_12/while/simple_rnn_cell_12/Sigmoid:y:0>^simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp=^simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp?^simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
simple_rnn_12/while/Identity_4"E
simple_rnn_12_while_identity%simple_rnn_12/while/Identity:output:0"I
simple_rnn_12_while_identity_1'simple_rnn_12/while/Identity_1:output:0"I
simple_rnn_12_while_identity_2'simple_rnn_12/while/Identity_2:output:0"I
simple_rnn_12_while_identity_3'simple_rnn_12/while/Identity_3:output:0"I
simple_rnn_12_while_identity_4'simple_rnn_12/while/Identity_4:output:0"h
1simple_rnn_12_while_simple_rnn_12_strided_slice_13simple_rnn_12_while_simple_rnn_12_strided_slice_1_0"
Fsimple_rnn_12_while_simple_rnn_cell_12_biasadd_readvariableop_resourceHsimple_rnn_12_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"
Gsimple_rnn_12_while_simple_rnn_cell_12_matmul_1_readvariableop_resourceIsimple_rnn_12_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"
Esimple_rnn_12_while_simple_rnn_cell_12_matmul_readvariableop_resourceGsimple_rnn_12_while_simple_rnn_cell_12_matmul_readvariableop_resource_0"à
msimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensorosimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2~
=simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp=simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2|
<simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp<simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp2
>simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp>simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
õR
±
*sequential_3_simple_rnn_11_while_body_9014R
Nsequential_3_simple_rnn_11_while_sequential_3_simple_rnn_11_while_loop_counterX
Tsequential_3_simple_rnn_11_while_sequential_3_simple_rnn_11_while_maximum_iterations0
,sequential_3_simple_rnn_11_while_placeholder2
.sequential_3_simple_rnn_11_while_placeholder_12
.sequential_3_simple_rnn_11_while_placeholder_2Q
Msequential_3_simple_rnn_11_while_sequential_3_simple_rnn_11_strided_slice_1_0
sequential_3_simple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0X
Tsequential_3_simple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0Y
Usequential_3_simple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0Z
Vsequential_3_simple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0-
)sequential_3_simple_rnn_11_while_identity/
+sequential_3_simple_rnn_11_while_identity_1/
+sequential_3_simple_rnn_11_while_identity_2/
+sequential_3_simple_rnn_11_while_identity_3/
+sequential_3_simple_rnn_11_while_identity_4O
Ksequential_3_simple_rnn_11_while_sequential_3_simple_rnn_11_strided_slice_1
sequential_3_simple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_11_tensorarrayunstack_tensorlistfromtensorV
Rsequential_3_simple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resourceW
Ssequential_3_simple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resourceX
Tsequential_3_simple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource¢Jsequential_3/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢Isequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp¢Ksequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOpù
Rsequential_3/simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   2T
Rsequential_3/simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeö
Dsequential_3/simple_rnn_11/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_3_simple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0,sequential_3_simple_rnn_11_while_placeholder[sequential_3/simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
element_dtype02F
Dsequential_3/simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem«
Isequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOpTsequential_3_simple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:Z@*
dtype02K
Isequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOpÔ
:sequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMulMatMulKsequential_3/simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem:item:0Qsequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2<
:sequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMulª
Jsequential_3/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOpUsequential_3_simple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02L
Jsequential_3/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpÑ
;sequential_3/simple_rnn_11/while/simple_rnn_cell_11/BiasAddBiasAddDsequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul:product:0Rsequential_3/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2=
;sequential_3/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd±
Ksequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOpVsequential_3_simple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02M
Ksequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp½
<sequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1MatMul.sequential_3_simple_rnn_11_while_placeholder_2Ssequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2>
<sequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1»
7sequential_3/simple_rnn_11/while/simple_rnn_cell_11/addAddV2Dsequential_3/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd:output:0Fsequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@29
7sequential_3/simple_rnn_11/while/simple_rnn_cell_11/addë
8sequential_3/simple_rnn_11/while/simple_rnn_cell_11/TanhTanh;sequential_3/simple_rnn_11/while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2:
8sequential_3/simple_rnn_11/while/simple_rnn_cell_11/Tanhì
Esequential_3/simple_rnn_11/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.sequential_3_simple_rnn_11_while_placeholder_1,sequential_3_simple_rnn_11_while_placeholder<sequential_3/simple_rnn_11/while/simple_rnn_cell_11/Tanh:y:0*
_output_shapes
: *
element_dtype02G
Esequential_3/simple_rnn_11/while/TensorArrayV2Write/TensorListSetItem
&sequential_3/simple_rnn_11/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_3/simple_rnn_11/while/add/yÕ
$sequential_3/simple_rnn_11/while/addAddV2,sequential_3_simple_rnn_11_while_placeholder/sequential_3/simple_rnn_11/while/add/y:output:0*
T0*
_output_shapes
: 2&
$sequential_3/simple_rnn_11/while/add
(sequential_3/simple_rnn_11/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_3/simple_rnn_11/while/add_1/yý
&sequential_3/simple_rnn_11/while/add_1AddV2Nsequential_3_simple_rnn_11_while_sequential_3_simple_rnn_11_while_loop_counter1sequential_3/simple_rnn_11/while/add_1/y:output:0*
T0*
_output_shapes
: 2(
&sequential_3/simple_rnn_11/while/add_1
)sequential_3/simple_rnn_11/while/IdentityIdentity*sequential_3/simple_rnn_11/while/add_1:z:0K^sequential_3/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpJ^sequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOpL^sequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2+
)sequential_3/simple_rnn_11/while/IdentityÄ
+sequential_3/simple_rnn_11/while/Identity_1IdentityTsequential_3_simple_rnn_11_while_sequential_3_simple_rnn_11_while_maximum_iterationsK^sequential_3/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpJ^sequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOpL^sequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_3/simple_rnn_11/while/Identity_1
+sequential_3/simple_rnn_11/while/Identity_2Identity(sequential_3/simple_rnn_11/while/add:z:0K^sequential_3/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpJ^sequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOpL^sequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_3/simple_rnn_11/while/Identity_2Å
+sequential_3/simple_rnn_11/while/Identity_3IdentityUsequential_3/simple_rnn_11/while/TensorArrayV2Write/TensorListSetItem:output_handle:0K^sequential_3/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpJ^sequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOpL^sequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_3/simple_rnn_11/while/Identity_3½
+sequential_3/simple_rnn_11/while/Identity_4Identity<sequential_3/simple_rnn_11/while/simple_rnn_cell_11/Tanh:y:0K^sequential_3/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpJ^sequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOpL^sequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+sequential_3/simple_rnn_11/while/Identity_4"_
)sequential_3_simple_rnn_11_while_identity2sequential_3/simple_rnn_11/while/Identity:output:0"c
+sequential_3_simple_rnn_11_while_identity_14sequential_3/simple_rnn_11/while/Identity_1:output:0"c
+sequential_3_simple_rnn_11_while_identity_24sequential_3/simple_rnn_11/while/Identity_2:output:0"c
+sequential_3_simple_rnn_11_while_identity_34sequential_3/simple_rnn_11/while/Identity_3:output:0"c
+sequential_3_simple_rnn_11_while_identity_44sequential_3/simple_rnn_11/while/Identity_4:output:0"
Ksequential_3_simple_rnn_11_while_sequential_3_simple_rnn_11_strided_slice_1Msequential_3_simple_rnn_11_while_sequential_3_simple_rnn_11_strided_slice_1_0"¬
Ssequential_3_simple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resourceUsequential_3_simple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"®
Tsequential_3_simple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resourceVsequential_3_simple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"ª
Rsequential_3_simple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resourceTsequential_3_simple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0"
sequential_3_simple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_11_tensorarrayunstack_tensorlistfromtensorsequential_3_simple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2
Jsequential_3/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpJsequential_3/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2
Isequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOpIsequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp2
Ksequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOpKsequential_3/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
D
¨
simple_rnn_11_while_body_120638
4simple_rnn_11_while_simple_rnn_11_while_loop_counter>
:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations#
simple_rnn_11_while_placeholder%
!simple_rnn_11_while_placeholder_1%
!simple_rnn_11_while_placeholder_27
3simple_rnn_11_while_simple_rnn_11_strided_slice_1_0s
osimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0K
Gsimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0L
Hsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0M
Isimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0 
simple_rnn_11_while_identity"
simple_rnn_11_while_identity_1"
simple_rnn_11_while_identity_2"
simple_rnn_11_while_identity_3"
simple_rnn_11_while_identity_45
1simple_rnn_11_while_simple_rnn_11_strided_slice_1q
msimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensorI
Esimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resourceJ
Fsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resourceK
Gsimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource¢=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp¢>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOpß
Esimple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   2G
Esimple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shape§
7simple_rnn_11/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_11_while_placeholderNsimple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
element_dtype029
7simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem
<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:Z@*
dtype02>
<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp 
-simple_rnn_11/while/simple_rnn_cell_11/MatMulMatMul>simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-simple_rnn_11/while/simple_rnn_cell_11/MatMul
=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02?
=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp
.simple_rnn_11/while/simple_rnn_cell_11/BiasAddBiasAdd7simple_rnn_11/while/simple_rnn_cell_11/MatMul:product:0Esimple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@20
.simple_rnn_11/while/simple_rnn_cell_11/BiasAdd
>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02@
>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp
/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1MatMul!simple_rnn_11_while_placeholder_2Fsimple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@21
/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1
*simple_rnn_11/while/simple_rnn_cell_11/addAddV27simple_rnn_11/while/simple_rnn_cell_11/BiasAdd:output:09simple_rnn_11/while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*simple_rnn_11/while/simple_rnn_cell_11/addÄ
+simple_rnn_11/while/simple_rnn_cell_11/TanhTanh.simple_rnn_11/while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+simple_rnn_11/while/simple_rnn_cell_11/Tanh«
8simple_rnn_11/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_11_while_placeholder_1simple_rnn_11_while_placeholder/simple_rnn_11/while/simple_rnn_cell_11/Tanh:y:0*
_output_shapes
: *
element_dtype02:
8simple_rnn_11/while/TensorArrayV2Write/TensorListSetItemx
simple_rnn_11/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_11/while/add/y¡
simple_rnn_11/while/addAddV2simple_rnn_11_while_placeholder"simple_rnn_11/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_11/while/add|
simple_rnn_11/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_11/while/add_1/y¼
simple_rnn_11/while/add_1AddV24simple_rnn_11_while_simple_rnn_11_while_loop_counter$simple_rnn_11/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_11/while/add_1È
simple_rnn_11/while/IdentityIdentitysimple_rnn_11/while/add_1:z:0>^simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp=^simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp?^simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_11/while/Identityé
simple_rnn_11/while/Identity_1Identity:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations>^simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp=^simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp?^simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_11/while/Identity_1Ê
simple_rnn_11/while/Identity_2Identitysimple_rnn_11/while/add:z:0>^simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp=^simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp?^simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_11/while/Identity_2÷
simple_rnn_11/while/Identity_3IdentityHsimple_rnn_11/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp=^simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp?^simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_11/while/Identity_3ï
simple_rnn_11/while/Identity_4Identity/simple_rnn_11/while/simple_rnn_cell_11/Tanh:y:0>^simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp=^simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp?^simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
simple_rnn_11/while/Identity_4"E
simple_rnn_11_while_identity%simple_rnn_11/while/Identity:output:0"I
simple_rnn_11_while_identity_1'simple_rnn_11/while/Identity_1:output:0"I
simple_rnn_11_while_identity_2'simple_rnn_11/while/Identity_2:output:0"I
simple_rnn_11_while_identity_3'simple_rnn_11/while/Identity_3:output:0"I
simple_rnn_11_while_identity_4'simple_rnn_11/while/Identity_4:output:0"h
1simple_rnn_11_while_simple_rnn_11_strided_slice_13simple_rnn_11_while_simple_rnn_11_strided_slice_1_0"
Fsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resourceHsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"
Gsimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resourceIsimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"
Esimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resourceGsimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0"à
msimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensorosimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2~
=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2|
<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp2
>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
H

H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11216

inputs5
1simple_rnn_cell_11_matmul_readvariableop_resource6
2simple_rnn_cell_11_biasadd_readvariableop_resource7
3simple_rnn_cell_11_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_11/BiasAdd/ReadVariableOp¢(simple_rnn_cell_11/MatMul/ReadVariableOp¢*simple_rnn_cell_11/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿZ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
shrink_axis_mask2
strided_slice_2Æ
(simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:Z@*
dtype02*
(simple_rnn_cell_11/MatMul/ReadVariableOp¾
simple_rnn_cell_11/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/MatMulÅ
)simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_11/BiasAdd/ReadVariableOpÍ
simple_rnn_cell_11/BiasAddBiasAdd#simple_rnn_cell_11/MatMul:product:01simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/BiasAddÌ
*simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_11/MatMul_1/ReadVariableOpº
simple_rnn_cell_11/MatMul_1MatMulzeros:output:02simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/MatMul_1·
simple_rnn_cell_11/addAddV2#simple_rnn_cell_11/BiasAdd:output:0%simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/add
simple_rnn_cell_11/TanhTanhsimple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÅ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_11_matmul_readvariableop_resource2simple_rnn_cell_11_biasadd_readvariableop_resource3simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_11150*
condR
while_cond_11149*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@2
transpose_1ó
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_11/BiasAdd/ReadVariableOp)^simple_rnn_cell_11/MatMul/ReadVariableOp+^simple_rnn_cell_11/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿqZ:::2V
)simple_rnn_cell_11/BiasAdd/ReadVariableOp)simple_rnn_cell_11/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_11/MatMul/ReadVariableOp(simple_rnn_cell_11/MatMul/ReadVariableOp2X
*simple_rnn_cell_11/MatMul_1/ReadVariableOp*simple_rnn_cell_11/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ
 
_user_specified_nameinputs
H

H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_13250

inputs5
1simple_rnn_cell_11_matmul_readvariableop_resource6
2simple_rnn_cell_11_biasadd_readvariableop_resource7
3simple_rnn_cell_11_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_11/BiasAdd/ReadVariableOp¢(simple_rnn_cell_11/MatMul/ReadVariableOp¢*simple_rnn_cell_11/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿZ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
shrink_axis_mask2
strided_slice_2Æ
(simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:Z@*
dtype02*
(simple_rnn_cell_11/MatMul/ReadVariableOp¾
simple_rnn_cell_11/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/MatMulÅ
)simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_11/BiasAdd/ReadVariableOpÍ
simple_rnn_cell_11/BiasAddBiasAdd#simple_rnn_cell_11/MatMul:product:01simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/BiasAddÌ
*simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_11/MatMul_1/ReadVariableOpº
simple_rnn_cell_11/MatMul_1MatMulzeros:output:02simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/MatMul_1·
simple_rnn_cell_11/addAddV2#simple_rnn_cell_11/BiasAdd:output:0%simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/add
simple_rnn_cell_11/TanhTanhsimple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÅ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_11_matmul_readvariableop_resource2simple_rnn_cell_11_biasadd_readvariableop_resource3simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_13184*
condR
while_cond_13183*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@2
transpose_1ó
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_11/BiasAdd/ReadVariableOp)^simple_rnn_cell_11/MatMul/ReadVariableOp+^simple_rnn_cell_11/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿqZ:::2V
)simple_rnn_cell_11/BiasAdd/ReadVariableOp)simple_rnn_cell_11/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_11/MatMul/ReadVariableOp(simple_rnn_cell_11/MatMul/ReadVariableOp2X
*simple_rnn_cell_11/MatMul_1/ReadVariableOp*simple_rnn_cell_11/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ
 
_user_specified_nameinputs
»4

while_body_13922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_13_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_13_matmul_readvariableop_resource<
8while_simple_rnn_cell_13_biasadd_readvariableop_resource=
9while_simple_rnn_cell_13_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_13/MatMul/ReadVariableOp¢0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÜ
.while/simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_13_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype020
.while/simple_rnn_cell_13/MatMul/ReadVariableOpé
while/simple_rnn_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_13/MatMulÚ
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpæ
 while/simple_rnn_cell_13/BiasAddBiasAdd)while/simple_rnn_cell_13/MatMul:product:07while/simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_13/BiasAddâ
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype022
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpÒ
!while/simple_rnn_cell_13/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/simple_rnn_cell_13/MatMul_1Ð
while/simple_rnn_cell_13/addAddV2)while/simple_rnn_cell_13/BiasAdd:output:0+while/simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_13/add
while/simple_rnn_cell_13/ReluRelu while/simple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_13/Reluï
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder+while/simple_rnn_cell_13/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3¦
while/Identity_4Identity+while/simple_rnn_cell_13/Relu:activations:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_13_biasadd_readvariableop_resource:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_13_matmul_1_readvariableop_resource;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_13_matmul_readvariableop_resource9while_simple_rnn_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2b
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_13/MatMul/ReadVariableOp.while/simple_rnn_cell_13/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOp0while/simple_rnn_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
å

¯
simple_rnn_12_while_cond_125178
4simple_rnn_12_while_simple_rnn_12_while_loop_counter>
:simple_rnn_12_while_simple_rnn_12_while_maximum_iterations#
simple_rnn_12_while_placeholder%
!simple_rnn_12_while_placeholder_1%
!simple_rnn_12_while_placeholder_2:
6simple_rnn_12_while_less_simple_rnn_12_strided_slice_1O
Ksimple_rnn_12_while_simple_rnn_12_while_cond_12517___redundant_placeholder0O
Ksimple_rnn_12_while_simple_rnn_12_while_cond_12517___redundant_placeholder1O
Ksimple_rnn_12_while_simple_rnn_12_while_cond_12517___redundant_placeholder2O
Ksimple_rnn_12_while_simple_rnn_12_while_cond_12517___redundant_placeholder3 
simple_rnn_12_while_identity
¶
simple_rnn_12/while/LessLesssimple_rnn_12_while_placeholder6simple_rnn_12_while_less_simple_rnn_12_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_12/while/Less
simple_rnn_12/while/IdentityIdentitysimple_rnn_12/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_12/while/Identity"E
simple_rnn_12_while_identity%simple_rnn_12/while/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Í
¥
while_cond_13921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_13921___redundant_placeholder03
/while_while_cond_13921___redundant_placeholder13
/while_while_cond_13921___redundant_placeholder23
/while_while_cond_13921___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
­
Õ
G__inference_sequential_3_layer_call_and_return_conditional_losses_12705

inputs&
"embedding_3_embedding_lookup_12362C
?simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resourceD
@simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resourceE
Asimple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resourceC
?simple_rnn_12_simple_rnn_cell_12_matmul_readvariableop_resourceD
@simple_rnn_12_simple_rnn_cell_12_biasadd_readvariableop_resourceE
Asimple_rnn_12_simple_rnn_cell_12_matmul_1_readvariableop_resourceC
?simple_rnn_13_simple_rnn_cell_13_matmul_readvariableop_resourceD
@simple_rnn_13_simple_rnn_cell_13_biasadd_readvariableop_resourceE
Asimple_rnn_13_simple_rnn_cell_13_matmul_1_readvariableop_resource=
9time_distributed_3_dense_3_matmul_readvariableop_resource>
:time_distributed_3_dense_3_biasadd_readvariableop_resource
identity¢embedding_3/embedding_lookup¢7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp¢8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp¢simple_rnn_11/while¢7simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOp¢6simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOp¢8simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOp¢simple_rnn_12/while¢7simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOp¢6simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOp¢8simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOp¢simple_rnn_13/while¢1time_distributed_3/dense_3/BiasAdd/ReadVariableOp¢0time_distributed_3/dense_3/MatMul/ReadVariableOpu
embedding_3/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
embedding_3/Cast·
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_12362embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/12362*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ*
dtype02
embedding_3/embedding_lookup
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/12362*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ2'
%embedding_3/embedding_lookup/IdentityÄ
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ2)
'embedding_3/embedding_lookup/Identity_1
simple_rnn_11/ShapeShape0embedding_3/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
simple_rnn_11/Shape
!simple_rnn_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!simple_rnn_11/strided_slice/stack
#simple_rnn_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_11/strided_slice/stack_1
#simple_rnn_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_11/strided_slice/stack_2¶
simple_rnn_11/strided_sliceStridedSlicesimple_rnn_11/Shape:output:0*simple_rnn_11/strided_slice/stack:output:0,simple_rnn_11/strided_slice/stack_1:output:0,simple_rnn_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_11/strided_slicex
simple_rnn_11/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_11/zeros/mul/y¤
simple_rnn_11/zeros/mulMul$simple_rnn_11/strided_slice:output:0"simple_rnn_11/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_11/zeros/mul{
simple_rnn_11/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
simple_rnn_11/zeros/Less/y
simple_rnn_11/zeros/LessLesssimple_rnn_11/zeros/mul:z:0#simple_rnn_11/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_11/zeros/Less~
simple_rnn_11/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_11/zeros/packed/1»
simple_rnn_11/zeros/packedPack$simple_rnn_11/strided_slice:output:0%simple_rnn_11/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_11/zeros/packed{
simple_rnn_11/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_11/zeros/Const­
simple_rnn_11/zerosFill#simple_rnn_11/zeros/packed:output:0"simple_rnn_11/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_11/zeros
simple_rnn_11/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_11/transpose/permÎ
simple_rnn_11/transpose	Transpose0embedding_3/embedding_lookup/Identity_1:output:0%simple_rnn_11/transpose/perm:output:0*
T0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿZ2
simple_rnn_11/transposey
simple_rnn_11/Shape_1Shapesimple_rnn_11/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_11/Shape_1
#simple_rnn_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_11/strided_slice_1/stack
%simple_rnn_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_11/strided_slice_1/stack_1
%simple_rnn_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_11/strided_slice_1/stack_2Â
simple_rnn_11/strided_slice_1StridedSlicesimple_rnn_11/Shape_1:output:0,simple_rnn_11/strided_slice_1/stack:output:0.simple_rnn_11/strided_slice_1/stack_1:output:0.simple_rnn_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_11/strided_slice_1¡
)simple_rnn_11/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2+
)simple_rnn_11/TensorArrayV2/element_shapeê
simple_rnn_11/TensorArrayV2TensorListReserve2simple_rnn_11/TensorArrayV2/element_shape:output:0&simple_rnn_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_11/TensorArrayV2Û
Csimple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   2E
Csimple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shape°
5simple_rnn_11/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_11/transpose:y:0Lsimple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5simple_rnn_11/TensorArrayUnstack/TensorListFromTensor
#simple_rnn_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_11/strided_slice_2/stack
%simple_rnn_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_11/strided_slice_2/stack_1
%simple_rnn_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_11/strided_slice_2/stack_2Ð
simple_rnn_11/strided_slice_2StridedSlicesimple_rnn_11/transpose:y:0,simple_rnn_11/strided_slice_2/stack:output:0.simple_rnn_11/strided_slice_2/stack_1:output:0.simple_rnn_11/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
shrink_axis_mask2
simple_rnn_11/strided_slice_2ð
6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp?simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:Z@*
dtype028
6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOpö
'simple_rnn_11/simple_rnn_cell_11/MatMulMatMul&simple_rnn_11/strided_slice_2:output:0>simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'simple_rnn_11/simple_rnn_cell_11/MatMulï
7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype029
7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp
(simple_rnn_11/simple_rnn_cell_11/BiasAddBiasAdd1simple_rnn_11/simple_rnn_cell_11/MatMul:product:0?simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(simple_rnn_11/simple_rnn_cell_11/BiasAddö
8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02:
8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOpò
)simple_rnn_11/simple_rnn_cell_11/MatMul_1MatMulsimple_rnn_11/zeros:output:0@simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)simple_rnn_11/simple_rnn_cell_11/MatMul_1ï
$simple_rnn_11/simple_rnn_cell_11/addAddV21simple_rnn_11/simple_rnn_cell_11/BiasAdd:output:03simple_rnn_11/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$simple_rnn_11/simple_rnn_cell_11/add²
%simple_rnn_11/simple_rnn_cell_11/TanhTanh(simple_rnn_11/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%simple_rnn_11/simple_rnn_cell_11/Tanh«
+simple_rnn_11/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2-
+simple_rnn_11/TensorArrayV2_1/element_shapeð
simple_rnn_11/TensorArrayV2_1TensorListReserve4simple_rnn_11/TensorArrayV2_1/element_shape:output:0&simple_rnn_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_11/TensorArrayV2_1j
simple_rnn_11/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_11/time
&simple_rnn_11/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&simple_rnn_11/while/maximum_iterations
 simple_rnn_11/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 simple_rnn_11/while/loop_counter
simple_rnn_11/whileWhile)simple_rnn_11/while/loop_counter:output:0/simple_rnn_11/while/maximum_iterations:output:0simple_rnn_11/time:output:0&simple_rnn_11/TensorArrayV2_1:handle:0simple_rnn_11/zeros:output:0&simple_rnn_11/strided_slice_1:output:0Esimple_rnn_11/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resource@simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resourceAsimple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_11_while_body_12410**
cond"R 
simple_rnn_11_while_cond_12409*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
simple_rnn_11/whileÑ
>simple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2@
>simple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shape 
0simple_rnn_11/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_11/while:output:3Gsimple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿ@*
element_dtype022
0simple_rnn_11/TensorArrayV2Stack/TensorListStack
#simple_rnn_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2%
#simple_rnn_11/strided_slice_3/stack
%simple_rnn_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%simple_rnn_11/strided_slice_3/stack_1
%simple_rnn_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_11/strided_slice_3/stack_2î
simple_rnn_11/strided_slice_3StridedSlice9simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_11/strided_slice_3/stack:output:0.simple_rnn_11/strided_slice_3/stack_1:output:0.simple_rnn_11/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn_11/strided_slice_3
simple_rnn_11/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
simple_rnn_11/transpose_1/permÝ
simple_rnn_11/transpose_1	Transpose9simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_11/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@2
simple_rnn_11/transpose_1w
simple_rnn_12/ShapeShapesimple_rnn_11/transpose_1:y:0*
T0*
_output_shapes
:2
simple_rnn_12/Shape
!simple_rnn_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!simple_rnn_12/strided_slice/stack
#simple_rnn_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_12/strided_slice/stack_1
#simple_rnn_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_12/strided_slice/stack_2¶
simple_rnn_12/strided_sliceStridedSlicesimple_rnn_12/Shape:output:0*simple_rnn_12/strided_slice/stack:output:0,simple_rnn_12/strided_slice/stack_1:output:0,simple_rnn_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_12/strided_slicey
simple_rnn_12/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
simple_rnn_12/zeros/mul/y¤
simple_rnn_12/zeros/mulMul$simple_rnn_12/strided_slice:output:0"simple_rnn_12/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_12/zeros/mul{
simple_rnn_12/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
simple_rnn_12/zeros/Less/y
simple_rnn_12/zeros/LessLesssimple_rnn_12/zeros/mul:z:0#simple_rnn_12/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_12/zeros/Less
simple_rnn_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
simple_rnn_12/zeros/packed/1»
simple_rnn_12/zeros/packedPack$simple_rnn_12/strided_slice:output:0%simple_rnn_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_12/zeros/packed{
simple_rnn_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_12/zeros/Const®
simple_rnn_12/zerosFill#simple_rnn_12/zeros/packed:output:0"simple_rnn_12/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_12/zeros
simple_rnn_12/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_12/transpose/perm»
simple_rnn_12/transpose	Transposesimple_rnn_11/transpose_1:y:0%simple_rnn_12/transpose/perm:output:0*
T0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿ@2
simple_rnn_12/transposey
simple_rnn_12/Shape_1Shapesimple_rnn_12/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_12/Shape_1
#simple_rnn_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_12/strided_slice_1/stack
%simple_rnn_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_12/strided_slice_1/stack_1
%simple_rnn_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_12/strided_slice_1/stack_2Â
simple_rnn_12/strided_slice_1StridedSlicesimple_rnn_12/Shape_1:output:0,simple_rnn_12/strided_slice_1/stack:output:0.simple_rnn_12/strided_slice_1/stack_1:output:0.simple_rnn_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_12/strided_slice_1¡
)simple_rnn_12/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2+
)simple_rnn_12/TensorArrayV2/element_shapeê
simple_rnn_12/TensorArrayV2TensorListReserve2simple_rnn_12/TensorArrayV2/element_shape:output:0&simple_rnn_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_12/TensorArrayV2Û
Csimple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2E
Csimple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shape°
5simple_rnn_12/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_12/transpose:y:0Lsimple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5simple_rnn_12/TensorArrayUnstack/TensorListFromTensor
#simple_rnn_12/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_12/strided_slice_2/stack
%simple_rnn_12/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_12/strided_slice_2/stack_1
%simple_rnn_12/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_12/strided_slice_2/stack_2Ð
simple_rnn_12/strided_slice_2StridedSlicesimple_rnn_12/transpose:y:0,simple_rnn_12/strided_slice_2/stack:output:0.simple_rnn_12/strided_slice_2/stack_1:output:0.simple_rnn_12/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn_12/strided_slice_2ñ
6simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp?simple_rnn_12_simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype028
6simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOp÷
'simple_rnn_12/simple_rnn_cell_12/MatMulMatMul&simple_rnn_12/strided_slice_2:output:0>simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'simple_rnn_12/simple_rnn_cell_12/MatMulð
7simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_12_simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype029
7simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOp
(simple_rnn_12/simple_rnn_cell_12/BiasAddBiasAdd1simple_rnn_12/simple_rnn_cell_12/MatMul:product:0?simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(simple_rnn_12/simple_rnn_cell_12/BiasAddø
8simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_12_simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02:
8simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOpó
)simple_rnn_12/simple_rnn_cell_12/MatMul_1MatMulsimple_rnn_12/zeros:output:0@simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)simple_rnn_12/simple_rnn_cell_12/MatMul_1ð
$simple_rnn_12/simple_rnn_cell_12/addAddV21simple_rnn_12/simple_rnn_cell_12/BiasAdd:output:03simple_rnn_12/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$simple_rnn_12/simple_rnn_cell_12/add¼
(simple_rnn_12/simple_rnn_cell_12/SigmoidSigmoid(simple_rnn_12/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(simple_rnn_12/simple_rnn_cell_12/Sigmoid«
+simple_rnn_12/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2-
+simple_rnn_12/TensorArrayV2_1/element_shapeð
simple_rnn_12/TensorArrayV2_1TensorListReserve4simple_rnn_12/TensorArrayV2_1/element_shape:output:0&simple_rnn_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_12/TensorArrayV2_1j
simple_rnn_12/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_12/time
&simple_rnn_12/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&simple_rnn_12/while/maximum_iterations
 simple_rnn_12/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 simple_rnn_12/while/loop_counter
simple_rnn_12/whileWhile)simple_rnn_12/while/loop_counter:output:0/simple_rnn_12/while/maximum_iterations:output:0simple_rnn_12/time:output:0&simple_rnn_12/TensorArrayV2_1:handle:0simple_rnn_12/zeros:output:0&simple_rnn_12/strided_slice_1:output:0Esimple_rnn_12/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_12_simple_rnn_cell_12_matmul_readvariableop_resource@simple_rnn_12_simple_rnn_cell_12_biasadd_readvariableop_resourceAsimple_rnn_12_simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_12_while_body_12518**
cond"R 
simple_rnn_12_while_cond_12517*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
simple_rnn_12/whileÑ
>simple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>simple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shape¡
0simple_rnn_12/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_12/while:output:3Gsimple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ*
element_dtype022
0simple_rnn_12/TensorArrayV2Stack/TensorListStack
#simple_rnn_12/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2%
#simple_rnn_12/strided_slice_3/stack
%simple_rnn_12/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%simple_rnn_12/strided_slice_3/stack_1
%simple_rnn_12/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_12/strided_slice_3/stack_2ï
simple_rnn_12/strided_slice_3StridedSlice9simple_rnn_12/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_12/strided_slice_3/stack:output:0.simple_rnn_12/strided_slice_3/stack_1:output:0.simple_rnn_12/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
simple_rnn_12/strided_slice_3
simple_rnn_12/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
simple_rnn_12/transpose_1/permÞ
simple_rnn_12/transpose_1	Transpose9simple_rnn_12/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_12/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
simple_rnn_12/transpose_1w
simple_rnn_13/ShapeShapesimple_rnn_12/transpose_1:y:0*
T0*
_output_shapes
:2
simple_rnn_13/Shape
!simple_rnn_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!simple_rnn_13/strided_slice/stack
#simple_rnn_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_13/strided_slice/stack_1
#simple_rnn_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_13/strided_slice/stack_2¶
simple_rnn_13/strided_sliceStridedSlicesimple_rnn_13/Shape:output:0*simple_rnn_13/strided_slice/stack:output:0,simple_rnn_13/strided_slice/stack_1:output:0,simple_rnn_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_13/strided_slicey
simple_rnn_13/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
simple_rnn_13/zeros/mul/y¤
simple_rnn_13/zeros/mulMul$simple_rnn_13/strided_slice:output:0"simple_rnn_13/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_13/zeros/mul{
simple_rnn_13/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
simple_rnn_13/zeros/Less/y
simple_rnn_13/zeros/LessLesssimple_rnn_13/zeros/mul:z:0#simple_rnn_13/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_13/zeros/Less
simple_rnn_13/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
simple_rnn_13/zeros/packed/1»
simple_rnn_13/zeros/packedPack$simple_rnn_13/strided_slice:output:0%simple_rnn_13/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_13/zeros/packed{
simple_rnn_13/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_13/zeros/Const®
simple_rnn_13/zerosFill#simple_rnn_13/zeros/packed:output:0"simple_rnn_13/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_13/zeros
simple_rnn_13/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_13/transpose/perm¼
simple_rnn_13/transpose	Transposesimple_rnn_12/transpose_1:y:0%simple_rnn_13/transpose/perm:output:0*
T0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ2
simple_rnn_13/transposey
simple_rnn_13/Shape_1Shapesimple_rnn_13/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_13/Shape_1
#simple_rnn_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_13/strided_slice_1/stack
%simple_rnn_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_13/strided_slice_1/stack_1
%simple_rnn_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_13/strided_slice_1/stack_2Â
simple_rnn_13/strided_slice_1StridedSlicesimple_rnn_13/Shape_1:output:0,simple_rnn_13/strided_slice_1/stack:output:0.simple_rnn_13/strided_slice_1/stack_1:output:0.simple_rnn_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_13/strided_slice_1¡
)simple_rnn_13/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2+
)simple_rnn_13/TensorArrayV2/element_shapeê
simple_rnn_13/TensorArrayV2TensorListReserve2simple_rnn_13/TensorArrayV2/element_shape:output:0&simple_rnn_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_13/TensorArrayV2Û
Csimple_rnn_13/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2E
Csimple_rnn_13/TensorArrayUnstack/TensorListFromTensor/element_shape°
5simple_rnn_13/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_13/transpose:y:0Lsimple_rnn_13/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5simple_rnn_13/TensorArrayUnstack/TensorListFromTensor
#simple_rnn_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_13/strided_slice_2/stack
%simple_rnn_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_13/strided_slice_2/stack_1
%simple_rnn_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_13/strided_slice_2/stack_2Ñ
simple_rnn_13/strided_slice_2StridedSlicesimple_rnn_13/transpose:y:0,simple_rnn_13/strided_slice_2/stack:output:0.simple_rnn_13/strided_slice_2/stack_1:output:0.simple_rnn_13/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
simple_rnn_13/strided_slice_2ò
6simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOp?simple_rnn_13_simple_rnn_cell_13_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype028
6simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOp÷
'simple_rnn_13/simple_rnn_cell_13/MatMulMatMul&simple_rnn_13/strided_slice_2:output:0>simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'simple_rnn_13/simple_rnn_cell_13/MatMulð
7simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_13_simple_rnn_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype029
7simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOp
(simple_rnn_13/simple_rnn_cell_13/BiasAddBiasAdd1simple_rnn_13/simple_rnn_cell_13/MatMul:product:0?simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(simple_rnn_13/simple_rnn_cell_13/BiasAddø
8simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_13_simple_rnn_cell_13_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02:
8simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOpó
)simple_rnn_13/simple_rnn_cell_13/MatMul_1MatMulsimple_rnn_13/zeros:output:0@simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)simple_rnn_13/simple_rnn_cell_13/MatMul_1ð
$simple_rnn_13/simple_rnn_cell_13/addAddV21simple_rnn_13/simple_rnn_cell_13/BiasAdd:output:03simple_rnn_13/simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$simple_rnn_13/simple_rnn_cell_13/add³
%simple_rnn_13/simple_rnn_cell_13/ReluRelu(simple_rnn_13/simple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%simple_rnn_13/simple_rnn_cell_13/Relu«
+simple_rnn_13/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2-
+simple_rnn_13/TensorArrayV2_1/element_shapeð
simple_rnn_13/TensorArrayV2_1TensorListReserve4simple_rnn_13/TensorArrayV2_1/element_shape:output:0&simple_rnn_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_13/TensorArrayV2_1j
simple_rnn_13/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_13/time
&simple_rnn_13/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&simple_rnn_13/while/maximum_iterations
 simple_rnn_13/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 simple_rnn_13/while/loop_counter
simple_rnn_13/whileWhile)simple_rnn_13/while/loop_counter:output:0/simple_rnn_13/while/maximum_iterations:output:0simple_rnn_13/time:output:0&simple_rnn_13/TensorArrayV2_1:handle:0simple_rnn_13/zeros:output:0&simple_rnn_13/strided_slice_1:output:0Esimple_rnn_13/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_13_simple_rnn_cell_13_matmul_readvariableop_resource@simple_rnn_13_simple_rnn_cell_13_biasadd_readvariableop_resourceAsimple_rnn_13_simple_rnn_cell_13_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_13_while_body_12626**
cond"R 
simple_rnn_13_while_cond_12625*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
simple_rnn_13/whileÑ
>simple_rnn_13/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>simple_rnn_13/TensorArrayV2Stack/TensorListStack/element_shape¡
0simple_rnn_13/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_13/while:output:3Gsimple_rnn_13/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ*
element_dtype022
0simple_rnn_13/TensorArrayV2Stack/TensorListStack
#simple_rnn_13/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2%
#simple_rnn_13/strided_slice_3/stack
%simple_rnn_13/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%simple_rnn_13/strided_slice_3/stack_1
%simple_rnn_13/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_13/strided_slice_3/stack_2ï
simple_rnn_13/strided_slice_3StridedSlice9simple_rnn_13/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_13/strided_slice_3/stack:output:0.simple_rnn_13/strided_slice_3/stack_1:output:0.simple_rnn_13/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
simple_rnn_13/strided_slice_3
simple_rnn_13/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
simple_rnn_13/transpose_1/permÞ
simple_rnn_13/transpose_1	Transpose9simple_rnn_13/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_13/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
simple_rnn_13/transpose_1
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2"
 time_distributed_3/Reshape/shapeÀ
time_distributed_3/ReshapeReshapesimple_rnn_13/transpose_1:y:0)time_distributed_3/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
time_distributed_3/Reshapeß
0time_distributed_3/dense_3/MatMul/ReadVariableOpReadVariableOp9time_distributed_3_dense_3_matmul_readvariableop_resource*
_output_shapes
:		*
dtype022
0time_distributed_3/dense_3/MatMul/ReadVariableOpá
!time_distributed_3/dense_3/MatMulMatMul#time_distributed_3/Reshape:output:08time_distributed_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2#
!time_distributed_3/dense_3/MatMulÝ
1time_distributed_3/dense_3/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype023
1time_distributed_3/dense_3/BiasAdd/ReadVariableOpí
"time_distributed_3/dense_3/BiasAddBiasAdd+time_distributed_3/dense_3/MatMul:product:09time_distributed_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2$
"time_distributed_3/dense_3/BiasAdd²
"time_distributed_3/dense_3/SoftmaxSoftmax+time_distributed_3/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2$
"time_distributed_3/dense_3/Softmax
"time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿq   	   2$
"time_distributed_3/Reshape_1/shapeØ
time_distributed_3/Reshape_1Reshape,time_distributed_3/dense_3/Softmax:softmax:0+time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2
time_distributed_3/Reshape_1
"time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2$
"time_distributed_3/Reshape_2/shapeÆ
time_distributed_3/Reshape_2Reshapesimple_rnn_13/transpose_1:y:0+time_distributed_3/Reshape_2/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
time_distributed_3/Reshape_2Ï
IdentityIdentity%time_distributed_3/Reshape_1:output:0^embedding_3/embedding_lookup8^simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp7^simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp9^simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp^simple_rnn_11/while8^simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOp7^simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOp9^simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOp^simple_rnn_12/while8^simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOp7^simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOp9^simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOp^simple_rnn_13/while2^time_distributed_3/dense_3/BiasAdd/ReadVariableOp1^time_distributed_3/dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿq::::::::::::2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2r
7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp2p
6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp2t
8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp2*
simple_rnn_11/whilesimple_rnn_11/while2r
7simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOp7simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOp2p
6simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOp6simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOp2t
8simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOp8simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOp2*
simple_rnn_12/whilesimple_rnn_12/while2r
7simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOp7simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOp2p
6simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOp6simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOp2t
8simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOp8simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOp2*
simple_rnn_13/whilesimple_rnn_13/while2f
1time_distributed_3/dense_3/BiasAdd/ReadVariableOp1time_distributed_3/dense_3/BiasAdd/ReadVariableOp2d
0time_distributed_3/dense_3/MatMul/ReadVariableOp0time_distributed_3/dense_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
4

while_body_13184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_11_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_11_matmul_readvariableop_resource<
8while_simple_rnn_cell_11_biasadd_readvariableop_resource=
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_11/MatMul/ReadVariableOp¢0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÚ
.while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:Z@*
dtype020
.while/simple_rnn_cell_11/MatMul/ReadVariableOpè
while/simple_rnn_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_11/MatMulÙ
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpå
 while/simple_rnn_cell_11/BiasAddBiasAdd)while/simple_rnn_cell_11/MatMul:product:07while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_11/BiasAddà
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpÑ
!while/simple_rnn_cell_11/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/simple_rnn_cell_11/MatMul_1Ï
while/simple_rnn_cell_11/addAddV2)while/simple_rnn_cell_11/BiasAdd:output:0+while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_11/add
while/simple_rnn_cell_11/TanhTanh while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_11/Tanhå
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_11/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity!while/simple_rnn_cell_11/Tanh:y:00^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_11_matmul_readvariableop_resource9while_simple_rnn_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2b
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_11/MatMul/ReadVariableOp.while/simple_rnn_cell_11/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Ë
¥
while_cond_13071
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_13071___redundant_placeholder03
/while_while_cond_13071___redundant_placeholder13
/while_while_cond_13071___redundant_placeholder23
/while_while_cond_13071___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:


-__inference_simple_rnn_12_layer_call_fn_13764

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_114692
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿq@:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@
 
_user_specified_nameinputs
ÝH

H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_14122
inputs_05
1simple_rnn_cell_13_matmul_readvariableop_resource6
2simple_rnn_cell_13_biasadd_readvariableop_resource7
3simple_rnn_cell_13_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_13/BiasAdd/ReadVariableOp¢(simple_rnn_cell_13/MatMul/ReadVariableOp¢*simple_rnn_cell_13/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2È
(simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_13_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(simple_rnn_cell_13/MatMul/ReadVariableOp¿
simple_rnn_cell_13/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/MatMulÆ
)simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)simple_rnn_cell_13/BiasAdd/ReadVariableOpÎ
simple_rnn_cell_13/BiasAddBiasAdd#simple_rnn_cell_13/MatMul:product:01simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/BiasAddÎ
*simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_13_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*simple_rnn_cell_13/MatMul_1/ReadVariableOp»
simple_rnn_cell_13/MatMul_1MatMulzeros:output:02simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/MatMul_1¸
simple_rnn_cell_13/addAddV2#simple_rnn_cell_13/BiasAdd:output:0%simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/add
simple_rnn_cell_13/ReluRelusimple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/Relu
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÇ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_13_matmul_readvariableop_resource2simple_rnn_cell_13_biasadd_readvariableop_resource3simple_rnn_cell_13_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_14056*
condR
while_cond_14055*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1ý
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_13/BiasAdd/ReadVariableOp)^simple_rnn_cell_13/MatMul/ReadVariableOp+^simple_rnn_cell_13/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2V
)simple_rnn_cell_13/BiasAdd/ReadVariableOp)simple_rnn_cell_13/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_13/MatMul/ReadVariableOp(simple_rnn_cell_13/MatMul/ReadVariableOp2X
*simple_rnn_cell_13/MatMul_1/ReadVariableOp*simple_rnn_cell_13/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ï
Ä
M__inference_simple_rnn_cell_13_layer_call_and_return_conditional_losses_14507

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addP
ReluReluadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu²
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¶

Identity_1IdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
Ù
¡
*sequential_3_simple_rnn_13_while_cond_9229R
Nsequential_3_simple_rnn_13_while_sequential_3_simple_rnn_13_while_loop_counterX
Tsequential_3_simple_rnn_13_while_sequential_3_simple_rnn_13_while_maximum_iterations0
,sequential_3_simple_rnn_13_while_placeholder2
.sequential_3_simple_rnn_13_while_placeholder_12
.sequential_3_simple_rnn_13_while_placeholder_2T
Psequential_3_simple_rnn_13_while_less_sequential_3_simple_rnn_13_strided_slice_1h
dsequential_3_simple_rnn_13_while_sequential_3_simple_rnn_13_while_cond_9229___redundant_placeholder0h
dsequential_3_simple_rnn_13_while_sequential_3_simple_rnn_13_while_cond_9229___redundant_placeholder1h
dsequential_3_simple_rnn_13_while_sequential_3_simple_rnn_13_while_cond_9229___redundant_placeholder2h
dsequential_3_simple_rnn_13_while_sequential_3_simple_rnn_13_while_cond_9229___redundant_placeholder3-
)sequential_3_simple_rnn_13_while_identity
÷
%sequential_3/simple_rnn_13/while/LessLess,sequential_3_simple_rnn_13_while_placeholderPsequential_3_simple_rnn_13_while_less_sequential_3_simple_rnn_13_strided_slice_1*
T0*
_output_shapes
: 2'
%sequential_3/simple_rnn_13/while/Less®
)sequential_3/simple_rnn_13/while/IdentityIdentity)sequential_3/simple_rnn_13/while/Less:z:0*
T0
*
_output_shapes
: 2+
)sequential_3/simple_rnn_13/while/Identity"_
)sequential_3_simple_rnn_13_while_identity2sequential_3/simple_rnn_13/while/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
	

#__inference_signature_wrapper_12011
embedding_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_93092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿq::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
+
_user_specified_nameembedding_3_input
»4

while_body_11656
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_13_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_13_matmul_readvariableop_resource<
8while_simple_rnn_cell_13_biasadd_readvariableop_resource=
9while_simple_rnn_cell_13_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_13/MatMul/ReadVariableOp¢0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÜ
.while/simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_13_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype020
.while/simple_rnn_cell_13/MatMul/ReadVariableOpé
while/simple_rnn_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_13/MatMulÚ
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpæ
 while/simple_rnn_cell_13/BiasAddBiasAdd)while/simple_rnn_cell_13/MatMul:product:07while/simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_13/BiasAddâ
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype022
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpÒ
!while/simple_rnn_cell_13/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/simple_rnn_cell_13/MatMul_1Ð
while/simple_rnn_cell_13/addAddV2)while/simple_rnn_cell_13/BiasAdd:output:0+while/simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_13/add
while/simple_rnn_cell_13/ReluRelu while/simple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_13/Reluï
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder+while/simple_rnn_cell_13/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3¦
while/Identity_4Identity+while/simple_rnn_cell_13/Relu:activations:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_13_biasadd_readvariableop_resource:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_13_matmul_1_readvariableop_resource;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_13_matmul_readvariableop_resource9while_simple_rnn_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2b
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_13/MatMul/ReadVariableOp.while/simple_rnn_cell_13/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOp0while/simple_rnn_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÆH

H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_12892
inputs_05
1simple_rnn_cell_11_matmul_readvariableop_resource6
2simple_rnn_cell_11_biasadd_readvariableop_resource7
3simple_rnn_cell_11_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_11/BiasAdd/ReadVariableOp¢(simple_rnn_cell_11/MatMul/ReadVariableOp¢*simple_rnn_cell_11/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
shrink_axis_mask2
strided_slice_2Æ
(simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:Z@*
dtype02*
(simple_rnn_cell_11/MatMul/ReadVariableOp¾
simple_rnn_cell_11/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/MatMulÅ
)simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_11/BiasAdd/ReadVariableOpÍ
simple_rnn_cell_11/BiasAddBiasAdd#simple_rnn_cell_11/MatMul:product:01simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/BiasAddÌ
*simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_11/MatMul_1/ReadVariableOpº
simple_rnn_cell_11/MatMul_1MatMulzeros:output:02simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/MatMul_1·
simple_rnn_cell_11/addAddV2#simple_rnn_cell_11/BiasAdd:output:0%simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/add
simple_rnn_cell_11/TanhTanhsimple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÅ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_11_matmul_readvariableop_resource2simple_rnn_cell_11_biasadd_readvariableop_resource3simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_12826*
condR
while_cond_12825*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1ü
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_11/BiasAdd/ReadVariableOp)^simple_rnn_cell_11/MatMul/ReadVariableOp+^simple_rnn_cell_11/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ:::2V
)simple_rnn_cell_11/BiasAdd/ReadVariableOp)simple_rnn_cell_11/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_11/MatMul/ReadVariableOp(simple_rnn_cell_11/MatMul/ReadVariableOp2X
*simple_rnn_cell_11/MatMul_1/ReadVariableOp*simple_rnn_cell_11/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ
"
_user_specified_name
inputs/0
ß!
å
G__inference_sequential_3_layer_call_and_return_conditional_losses_11881

inputs
embedding_3_11849
simple_rnn_11_11852
simple_rnn_11_11854
simple_rnn_11_11856
simple_rnn_12_11859
simple_rnn_12_11861
simple_rnn_12_11863
simple_rnn_13_11866
simple_rnn_13_11868
simple_rnn_13_11870
time_distributed_3_11873
time_distributed_3_11875
identity¢#embedding_3/StatefulPartitionedCall¢%simple_rnn_11/StatefulPartitionedCall¢%simple_rnn_12/StatefulPartitionedCall¢%simple_rnn_13/StatefulPartitionedCall¢*time_distributed_3/StatefulPartitionedCall
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_3_11849*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_109812%
#embedding_3/StatefulPartitionedCallë
%simple_rnn_11/StatefulPartitionedCallStatefulPartitionedCall,embedding_3/StatefulPartitionedCall:output:0simple_rnn_11_11852simple_rnn_11_11854simple_rnn_11_11856*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_111042'
%simple_rnn_11/StatefulPartitionedCallî
%simple_rnn_12/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_11/StatefulPartitionedCall:output:0simple_rnn_12_11859simple_rnn_12_11861simple_rnn_12_11863*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_113572'
%simple_rnn_12/StatefulPartitionedCallî
%simple_rnn_13/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_12/StatefulPartitionedCall:output:0simple_rnn_13_11866simple_rnn_13_11868simple_rnn_13_11870*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_116102'
%simple_rnn_13/StatefulPartitionedCallï
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_13/StatefulPartitionedCall:output:0time_distributed_3_11873time_distributed_3_11875*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_117662,
*time_distributed_3/StatefulPartitionedCall
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2"
 time_distributed_3/Reshape/shapeÑ
time_distributed_3/ReshapeReshape.simple_rnn_13/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
time_distributed_3/ReshapeÖ
IdentityIdentity3time_distributed_3/StatefulPartitionedCall:output:0$^embedding_3/StatefulPartitionedCall&^simple_rnn_11/StatefulPartitionedCall&^simple_rnn_12/StatefulPartitionedCall&^simple_rnn_13/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿq::::::::::::2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2N
%simple_rnn_11/StatefulPartitionedCall%simple_rnn_11/StatefulPartitionedCall2N
%simple_rnn_12/StatefulPartitionedCall%simple_rnn_12/StatefulPartitionedCall2N
%simple_rnn_13/StatefulPartitionedCall%simple_rnn_13/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
Ã

-__inference_simple_rnn_13_layer_call_fn_14256
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_108362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Í
¥
while_cond_13809
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_13809___redundant_placeholder03
/while_while_cond_13809___redundant_placeholder13
/while_while_cond_13809___redundant_placeholder23
/while_while_cond_13809___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ä
Á
L__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_9375

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:Z@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tanh§
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity«

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿZ:ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
ß!
å
G__inference_sequential_3_layer_call_and_return_conditional_losses_11945

inputs
embedding_3_11913
simple_rnn_11_11916
simple_rnn_11_11918
simple_rnn_11_11920
simple_rnn_12_11923
simple_rnn_12_11925
simple_rnn_12_11927
simple_rnn_13_11930
simple_rnn_13_11932
simple_rnn_13_11934
time_distributed_3_11937
time_distributed_3_11939
identity¢#embedding_3/StatefulPartitionedCall¢%simple_rnn_11/StatefulPartitionedCall¢%simple_rnn_12/StatefulPartitionedCall¢%simple_rnn_13/StatefulPartitionedCall¢*time_distributed_3/StatefulPartitionedCall
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_3_11913*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_109812%
#embedding_3/StatefulPartitionedCallë
%simple_rnn_11/StatefulPartitionedCallStatefulPartitionedCall,embedding_3/StatefulPartitionedCall:output:0simple_rnn_11_11916simple_rnn_11_11918simple_rnn_11_11920*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_112162'
%simple_rnn_11/StatefulPartitionedCallî
%simple_rnn_12/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_11/StatefulPartitionedCall:output:0simple_rnn_12_11923simple_rnn_12_11925simple_rnn_12_11927*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_114692'
%simple_rnn_12/StatefulPartitionedCallî
%simple_rnn_13/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_12/StatefulPartitionedCall:output:0simple_rnn_13_11930simple_rnn_13_11932simple_rnn_13_11934*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_117222'
%simple_rnn_13/StatefulPartitionedCallï
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_13/StatefulPartitionedCall:output:0time_distributed_3_11937time_distributed_3_11939*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_117812,
*time_distributed_3/StatefulPartitionedCall
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2"
 time_distributed_3/Reshape/shapeÑ
time_distributed_3/ReshapeReshape.simple_rnn_13/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
time_distributed_3/ReshapeÖ
IdentityIdentity3time_distributed_3/StatefulPartitionedCall:output:0$^embedding_3/StatefulPartitionedCall&^simple_rnn_11/StatefulPartitionedCall&^simple_rnn_12/StatefulPartitionedCall&^simple_rnn_13/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿq::::::::::::2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2N
%simple_rnn_11/StatefulPartitionedCall%simple_rnn_11/StatefulPartitionedCall2N
%simple_rnn_12/StatefulPartitionedCall%simple_rnn_12/StatefulPartitionedCall2N
%simple_rnn_13/StatefulPartitionedCall%simple_rnn_13/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
Á

-__inference_simple_rnn_12_layer_call_fn_13518
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_103242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
Í
¥
while_cond_14167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_14167___redundant_placeholder03
/while_while_cond_14167___redundant_placeholder13
/while_while_cond_14167___redundant_placeholder23
/while_while_cond_14167___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Á

-__inference_simple_rnn_12_layer_call_fn_13507
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_102072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
÷	
Û
B__inference_dense_3_layer_call_and_return_conditional_losses_14563

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í
¥
while_cond_10772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_10772___redundant_placeholder03
/while_while_cond_10772___redundant_placeholder13
/while_while_cond_10772___redundant_placeholder23
/while_while_cond_10772___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¯D
¨
simple_rnn_13_while_body_126268
4simple_rnn_13_while_simple_rnn_13_while_loop_counter>
:simple_rnn_13_while_simple_rnn_13_while_maximum_iterations#
simple_rnn_13_while_placeholder%
!simple_rnn_13_while_placeholder_1%
!simple_rnn_13_while_placeholder_27
3simple_rnn_13_while_simple_rnn_13_strided_slice_1_0s
osimple_rnn_13_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_13_tensorarrayunstack_tensorlistfromtensor_0K
Gsimple_rnn_13_while_simple_rnn_cell_13_matmul_readvariableop_resource_0L
Hsimple_rnn_13_while_simple_rnn_cell_13_biasadd_readvariableop_resource_0M
Isimple_rnn_13_while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0 
simple_rnn_13_while_identity"
simple_rnn_13_while_identity_1"
simple_rnn_13_while_identity_2"
simple_rnn_13_while_identity_3"
simple_rnn_13_while_identity_45
1simple_rnn_13_while_simple_rnn_13_strided_slice_1q
msimple_rnn_13_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_13_tensorarrayunstack_tensorlistfromtensorI
Esimple_rnn_13_while_simple_rnn_cell_13_matmul_readvariableop_resourceJ
Fsimple_rnn_13_while_simple_rnn_cell_13_biasadd_readvariableop_resourceK
Gsimple_rnn_13_while_simple_rnn_cell_13_matmul_1_readvariableop_resource¢=simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp¢<simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp¢>simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOpß
Esimple_rnn_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2G
Esimple_rnn_13/while/TensorArrayV2Read/TensorListGetItem/element_shape¨
7simple_rnn_13/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_13_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_13_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_13_while_placeholderNsimple_rnn_13/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype029
7simple_rnn_13/while/TensorArrayV2Read/TensorListGetItem
<simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_13_while_simple_rnn_cell_13_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02>
<simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp¡
-simple_rnn_13/while/simple_rnn_cell_13/MatMulMatMul>simple_rnn_13/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-simple_rnn_13/while/simple_rnn_cell_13/MatMul
=simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_13_while_simple_rnn_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02?
=simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp
.simple_rnn_13/while/simple_rnn_cell_13/BiasAddBiasAdd7simple_rnn_13/while/simple_rnn_cell_13/MatMul:product:0Esimple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.simple_rnn_13/while/simple_rnn_cell_13/BiasAdd
>simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_13_while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02@
>simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp
/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1MatMul!simple_rnn_13_while_placeholder_2Fsimple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1
*simple_rnn_13/while/simple_rnn_cell_13/addAddV27simple_rnn_13/while/simple_rnn_cell_13/BiasAdd:output:09simple_rnn_13/while/simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*simple_rnn_13/while/simple_rnn_cell_13/addÅ
+simple_rnn_13/while/simple_rnn_cell_13/ReluRelu.simple_rnn_13/while/simple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+simple_rnn_13/while/simple_rnn_cell_13/Reluµ
8simple_rnn_13/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_13_while_placeholder_1simple_rnn_13_while_placeholder9simple_rnn_13/while/simple_rnn_cell_13/Relu:activations:0*
_output_shapes
: *
element_dtype02:
8simple_rnn_13/while/TensorArrayV2Write/TensorListSetItemx
simple_rnn_13/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_13/while/add/y¡
simple_rnn_13/while/addAddV2simple_rnn_13_while_placeholder"simple_rnn_13/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_13/while/add|
simple_rnn_13/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_13/while/add_1/y¼
simple_rnn_13/while/add_1AddV24simple_rnn_13_while_simple_rnn_13_while_loop_counter$simple_rnn_13/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_13/while/add_1È
simple_rnn_13/while/IdentityIdentitysimple_rnn_13/while/add_1:z:0>^simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp=^simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp?^simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_13/while/Identityé
simple_rnn_13/while/Identity_1Identity:simple_rnn_13_while_simple_rnn_13_while_maximum_iterations>^simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp=^simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp?^simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_13/while/Identity_1Ê
simple_rnn_13/while/Identity_2Identitysimple_rnn_13/while/add:z:0>^simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp=^simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp?^simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_13/while/Identity_2÷
simple_rnn_13/while/Identity_3IdentityHsimple_rnn_13/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp=^simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp?^simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_13/while/Identity_3ú
simple_rnn_13/while/Identity_4Identity9simple_rnn_13/while/simple_rnn_cell_13/Relu:activations:0>^simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp=^simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp?^simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
simple_rnn_13/while/Identity_4"E
simple_rnn_13_while_identity%simple_rnn_13/while/Identity:output:0"I
simple_rnn_13_while_identity_1'simple_rnn_13/while/Identity_1:output:0"I
simple_rnn_13_while_identity_2'simple_rnn_13/while/Identity_2:output:0"I
simple_rnn_13_while_identity_3'simple_rnn_13/while/Identity_3:output:0"I
simple_rnn_13_while_identity_4'simple_rnn_13/while/Identity_4:output:0"h
1simple_rnn_13_while_simple_rnn_13_strided_slice_13simple_rnn_13_while_simple_rnn_13_strided_slice_1_0"
Fsimple_rnn_13_while_simple_rnn_cell_13_biasadd_readvariableop_resourceHsimple_rnn_13_while_simple_rnn_cell_13_biasadd_readvariableop_resource_0"
Gsimple_rnn_13_while_simple_rnn_cell_13_matmul_1_readvariableop_resourceIsimple_rnn_13_while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0"
Esimple_rnn_13_while_simple_rnn_cell_13_matmul_readvariableop_resourceGsimple_rnn_13_while_simple_rnn_cell_13_matmul_readvariableop_resource_0"à
msimple_rnn_13_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_13_tensorarrayunstack_tensorlistfromtensorosimple_rnn_13_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_13_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2~
=simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp=simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp2|
<simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp<simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp2
>simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp>simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Í
¥
while_cond_13675
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_13675___redundant_placeholder03
/while_while_cond_13675___redundant_placeholder13
/while_while_cond_13675___redundant_placeholder23
/while_while_cond_13675___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
é
Â
M__inference_simple_rnn_cell_13_layer_call_and_return_conditional_losses_10382

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addP
ReluReluadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu²
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¶

Identity_1IdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
ï
Ä
M__inference_simple_rnn_cell_13_layer_call_and_return_conditional_losses_14524

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addP
ReluReluadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu²
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¶

Identity_1IdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
´4

while_body_13564
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_12_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_12_matmul_readvariableop_resource<
8while_simple_rnn_cell_12_biasadd_readvariableop_resource=
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_12/MatMul/ReadVariableOp¢0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÛ
.while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype020
.while/simple_rnn_cell_12/MatMul/ReadVariableOpé
while/simple_rnn_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_12/MatMulÚ
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpæ
 while/simple_rnn_cell_12/BiasAddBiasAdd)while/simple_rnn_cell_12/MatMul:product:07while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_12/BiasAddâ
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype022
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpÒ
!while/simple_rnn_cell_12/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/simple_rnn_cell_12/MatMul_1Ð
while/simple_rnn_cell_12/addAddV2)while/simple_rnn_cell_12/BiasAdd:output:0+while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_12/add¤
 while/simple_rnn_cell_12/SigmoidSigmoid while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_12/Sigmoidè
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_12/Sigmoid:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity$while/simple_rnn_cell_12/Sigmoid:y:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_12_matmul_readvariableop_resource9while_simple_rnn_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2b
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_12/MatMul/ReadVariableOp.while/simple_rnn_cell_12/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ë
¥
while_cond_11149
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_11149___redundant_placeholder03
/while_while_cond_11149___redundant_placeholder13
/while_while_cond_11149___redundant_placeholder23
/while_while_cond_11149___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ò	
´
2__inference_simple_rnn_cell_13_layer_call_fn_14538

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_13_layer_call_and_return_conditional_losses_103822
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
ß<
ò
G__inference_simple_rnn_11_layer_call_and_return_conditional_losses_9812

inputs
simple_rnn_cell_11_9737
simple_rnn_cell_11_9739
simple_rnn_cell_11_9741
identity¢*simple_rnn_cell_11/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
shrink_axis_mask2
strided_slice_2
*simple_rnn_cell_11/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_11_9737simple_rnn_cell_11_9739simple_rnn_cell_11_9741*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_93752,
*simple_rnn_cell_11/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterò
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_11_9737simple_rnn_cell_11_9739simple_rnn_cell_11_9741*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_9749*
condR
while_cond_9748*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1¥
IdentityIdentitytranspose_1:y:0+^simple_rnn_cell_11/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ:::2X
*simple_rnn_cell_11/StatefulPartitionedCall*simple_rnn_cell_11/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ
 
_user_specified_nameinputs
´4

while_body_13318
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_12_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_12_matmul_readvariableop_resource<
8while_simple_rnn_cell_12_biasadd_readvariableop_resource=
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_12/MatMul/ReadVariableOp¢0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÛ
.while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype020
.while/simple_rnn_cell_12/MatMul/ReadVariableOpé
while/simple_rnn_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_12/MatMulÚ
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpæ
 while/simple_rnn_cell_12/BiasAddBiasAdd)while/simple_rnn_cell_12/MatMul:product:07while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_12/BiasAddâ
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype022
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpÒ
!while/simple_rnn_cell_12/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/simple_rnn_cell_12/MatMul_1Ð
while/simple_rnn_cell_12/addAddV2)while/simple_rnn_cell_12/BiasAdd:output:0+while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_12/add¤
 while/simple_rnn_cell_12/SigmoidSigmoid while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_12/Sigmoidè
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_12/Sigmoid:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity$while/simple_rnn_cell_12/Sigmoid:y:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_12_matmul_readvariableop_resource9while_simple_rnn_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2b
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_12/MatMul/ReadVariableOp.while/simple_rnn_cell_12/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Í
¥
while_cond_11290
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_11290___redundant_placeholder03
/while_while_cond_11290___redundant_placeholder13
/while_while_cond_11290___redundant_placeholder23
/while_while_cond_11290___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
­
Õ
G__inference_sequential_3_layer_call_and_return_conditional_losses_12358

inputs&
"embedding_3_embedding_lookup_12015C
?simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resourceD
@simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resourceE
Asimple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resourceC
?simple_rnn_12_simple_rnn_cell_12_matmul_readvariableop_resourceD
@simple_rnn_12_simple_rnn_cell_12_biasadd_readvariableop_resourceE
Asimple_rnn_12_simple_rnn_cell_12_matmul_1_readvariableop_resourceC
?simple_rnn_13_simple_rnn_cell_13_matmul_readvariableop_resourceD
@simple_rnn_13_simple_rnn_cell_13_biasadd_readvariableop_resourceE
Asimple_rnn_13_simple_rnn_cell_13_matmul_1_readvariableop_resource=
9time_distributed_3_dense_3_matmul_readvariableop_resource>
:time_distributed_3_dense_3_biasadd_readvariableop_resource
identity¢embedding_3/embedding_lookup¢7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp¢8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp¢simple_rnn_11/while¢7simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOp¢6simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOp¢8simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOp¢simple_rnn_12/while¢7simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOp¢6simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOp¢8simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOp¢simple_rnn_13/while¢1time_distributed_3/dense_3/BiasAdd/ReadVariableOp¢0time_distributed_3/dense_3/MatMul/ReadVariableOpu
embedding_3/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
embedding_3/Cast·
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_12015embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/12015*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ*
dtype02
embedding_3/embedding_lookup
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/12015*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ2'
%embedding_3/embedding_lookup/IdentityÄ
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ2)
'embedding_3/embedding_lookup/Identity_1
simple_rnn_11/ShapeShape0embedding_3/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
simple_rnn_11/Shape
!simple_rnn_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!simple_rnn_11/strided_slice/stack
#simple_rnn_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_11/strided_slice/stack_1
#simple_rnn_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_11/strided_slice/stack_2¶
simple_rnn_11/strided_sliceStridedSlicesimple_rnn_11/Shape:output:0*simple_rnn_11/strided_slice/stack:output:0,simple_rnn_11/strided_slice/stack_1:output:0,simple_rnn_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_11/strided_slicex
simple_rnn_11/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_11/zeros/mul/y¤
simple_rnn_11/zeros/mulMul$simple_rnn_11/strided_slice:output:0"simple_rnn_11/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_11/zeros/mul{
simple_rnn_11/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
simple_rnn_11/zeros/Less/y
simple_rnn_11/zeros/LessLesssimple_rnn_11/zeros/mul:z:0#simple_rnn_11/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_11/zeros/Less~
simple_rnn_11/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_11/zeros/packed/1»
simple_rnn_11/zeros/packedPack$simple_rnn_11/strided_slice:output:0%simple_rnn_11/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_11/zeros/packed{
simple_rnn_11/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_11/zeros/Const­
simple_rnn_11/zerosFill#simple_rnn_11/zeros/packed:output:0"simple_rnn_11/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_11/zeros
simple_rnn_11/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_11/transpose/permÎ
simple_rnn_11/transpose	Transpose0embedding_3/embedding_lookup/Identity_1:output:0%simple_rnn_11/transpose/perm:output:0*
T0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿZ2
simple_rnn_11/transposey
simple_rnn_11/Shape_1Shapesimple_rnn_11/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_11/Shape_1
#simple_rnn_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_11/strided_slice_1/stack
%simple_rnn_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_11/strided_slice_1/stack_1
%simple_rnn_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_11/strided_slice_1/stack_2Â
simple_rnn_11/strided_slice_1StridedSlicesimple_rnn_11/Shape_1:output:0,simple_rnn_11/strided_slice_1/stack:output:0.simple_rnn_11/strided_slice_1/stack_1:output:0.simple_rnn_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_11/strided_slice_1¡
)simple_rnn_11/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2+
)simple_rnn_11/TensorArrayV2/element_shapeê
simple_rnn_11/TensorArrayV2TensorListReserve2simple_rnn_11/TensorArrayV2/element_shape:output:0&simple_rnn_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_11/TensorArrayV2Û
Csimple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   2E
Csimple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shape°
5simple_rnn_11/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_11/transpose:y:0Lsimple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5simple_rnn_11/TensorArrayUnstack/TensorListFromTensor
#simple_rnn_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_11/strided_slice_2/stack
%simple_rnn_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_11/strided_slice_2/stack_1
%simple_rnn_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_11/strided_slice_2/stack_2Ð
simple_rnn_11/strided_slice_2StridedSlicesimple_rnn_11/transpose:y:0,simple_rnn_11/strided_slice_2/stack:output:0.simple_rnn_11/strided_slice_2/stack_1:output:0.simple_rnn_11/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
shrink_axis_mask2
simple_rnn_11/strided_slice_2ð
6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp?simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:Z@*
dtype028
6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOpö
'simple_rnn_11/simple_rnn_cell_11/MatMulMatMul&simple_rnn_11/strided_slice_2:output:0>simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'simple_rnn_11/simple_rnn_cell_11/MatMulï
7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype029
7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp
(simple_rnn_11/simple_rnn_cell_11/BiasAddBiasAdd1simple_rnn_11/simple_rnn_cell_11/MatMul:product:0?simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(simple_rnn_11/simple_rnn_cell_11/BiasAddö
8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02:
8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOpò
)simple_rnn_11/simple_rnn_cell_11/MatMul_1MatMulsimple_rnn_11/zeros:output:0@simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)simple_rnn_11/simple_rnn_cell_11/MatMul_1ï
$simple_rnn_11/simple_rnn_cell_11/addAddV21simple_rnn_11/simple_rnn_cell_11/BiasAdd:output:03simple_rnn_11/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$simple_rnn_11/simple_rnn_cell_11/add²
%simple_rnn_11/simple_rnn_cell_11/TanhTanh(simple_rnn_11/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%simple_rnn_11/simple_rnn_cell_11/Tanh«
+simple_rnn_11/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2-
+simple_rnn_11/TensorArrayV2_1/element_shapeð
simple_rnn_11/TensorArrayV2_1TensorListReserve4simple_rnn_11/TensorArrayV2_1/element_shape:output:0&simple_rnn_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_11/TensorArrayV2_1j
simple_rnn_11/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_11/time
&simple_rnn_11/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&simple_rnn_11/while/maximum_iterations
 simple_rnn_11/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 simple_rnn_11/while/loop_counter
simple_rnn_11/whileWhile)simple_rnn_11/while/loop_counter:output:0/simple_rnn_11/while/maximum_iterations:output:0simple_rnn_11/time:output:0&simple_rnn_11/TensorArrayV2_1:handle:0simple_rnn_11/zeros:output:0&simple_rnn_11/strided_slice_1:output:0Esimple_rnn_11/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resource@simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resourceAsimple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_11_while_body_12063**
cond"R 
simple_rnn_11_while_cond_12062*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
simple_rnn_11/whileÑ
>simple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2@
>simple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shape 
0simple_rnn_11/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_11/while:output:3Gsimple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿ@*
element_dtype022
0simple_rnn_11/TensorArrayV2Stack/TensorListStack
#simple_rnn_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2%
#simple_rnn_11/strided_slice_3/stack
%simple_rnn_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%simple_rnn_11/strided_slice_3/stack_1
%simple_rnn_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_11/strided_slice_3/stack_2î
simple_rnn_11/strided_slice_3StridedSlice9simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_11/strided_slice_3/stack:output:0.simple_rnn_11/strided_slice_3/stack_1:output:0.simple_rnn_11/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn_11/strided_slice_3
simple_rnn_11/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
simple_rnn_11/transpose_1/permÝ
simple_rnn_11/transpose_1	Transpose9simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_11/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@2
simple_rnn_11/transpose_1w
simple_rnn_12/ShapeShapesimple_rnn_11/transpose_1:y:0*
T0*
_output_shapes
:2
simple_rnn_12/Shape
!simple_rnn_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!simple_rnn_12/strided_slice/stack
#simple_rnn_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_12/strided_slice/stack_1
#simple_rnn_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_12/strided_slice/stack_2¶
simple_rnn_12/strided_sliceStridedSlicesimple_rnn_12/Shape:output:0*simple_rnn_12/strided_slice/stack:output:0,simple_rnn_12/strided_slice/stack_1:output:0,simple_rnn_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_12/strided_slicey
simple_rnn_12/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
simple_rnn_12/zeros/mul/y¤
simple_rnn_12/zeros/mulMul$simple_rnn_12/strided_slice:output:0"simple_rnn_12/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_12/zeros/mul{
simple_rnn_12/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
simple_rnn_12/zeros/Less/y
simple_rnn_12/zeros/LessLesssimple_rnn_12/zeros/mul:z:0#simple_rnn_12/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_12/zeros/Less
simple_rnn_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
simple_rnn_12/zeros/packed/1»
simple_rnn_12/zeros/packedPack$simple_rnn_12/strided_slice:output:0%simple_rnn_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_12/zeros/packed{
simple_rnn_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_12/zeros/Const®
simple_rnn_12/zerosFill#simple_rnn_12/zeros/packed:output:0"simple_rnn_12/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_12/zeros
simple_rnn_12/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_12/transpose/perm»
simple_rnn_12/transpose	Transposesimple_rnn_11/transpose_1:y:0%simple_rnn_12/transpose/perm:output:0*
T0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿ@2
simple_rnn_12/transposey
simple_rnn_12/Shape_1Shapesimple_rnn_12/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_12/Shape_1
#simple_rnn_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_12/strided_slice_1/stack
%simple_rnn_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_12/strided_slice_1/stack_1
%simple_rnn_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_12/strided_slice_1/stack_2Â
simple_rnn_12/strided_slice_1StridedSlicesimple_rnn_12/Shape_1:output:0,simple_rnn_12/strided_slice_1/stack:output:0.simple_rnn_12/strided_slice_1/stack_1:output:0.simple_rnn_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_12/strided_slice_1¡
)simple_rnn_12/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2+
)simple_rnn_12/TensorArrayV2/element_shapeê
simple_rnn_12/TensorArrayV2TensorListReserve2simple_rnn_12/TensorArrayV2/element_shape:output:0&simple_rnn_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_12/TensorArrayV2Û
Csimple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2E
Csimple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shape°
5simple_rnn_12/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_12/transpose:y:0Lsimple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5simple_rnn_12/TensorArrayUnstack/TensorListFromTensor
#simple_rnn_12/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_12/strided_slice_2/stack
%simple_rnn_12/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_12/strided_slice_2/stack_1
%simple_rnn_12/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_12/strided_slice_2/stack_2Ð
simple_rnn_12/strided_slice_2StridedSlicesimple_rnn_12/transpose:y:0,simple_rnn_12/strided_slice_2/stack:output:0.simple_rnn_12/strided_slice_2/stack_1:output:0.simple_rnn_12/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn_12/strided_slice_2ñ
6simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp?simple_rnn_12_simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype028
6simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOp÷
'simple_rnn_12/simple_rnn_cell_12/MatMulMatMul&simple_rnn_12/strided_slice_2:output:0>simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'simple_rnn_12/simple_rnn_cell_12/MatMulð
7simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_12_simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype029
7simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOp
(simple_rnn_12/simple_rnn_cell_12/BiasAddBiasAdd1simple_rnn_12/simple_rnn_cell_12/MatMul:product:0?simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(simple_rnn_12/simple_rnn_cell_12/BiasAddø
8simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_12_simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02:
8simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOpó
)simple_rnn_12/simple_rnn_cell_12/MatMul_1MatMulsimple_rnn_12/zeros:output:0@simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)simple_rnn_12/simple_rnn_cell_12/MatMul_1ð
$simple_rnn_12/simple_rnn_cell_12/addAddV21simple_rnn_12/simple_rnn_cell_12/BiasAdd:output:03simple_rnn_12/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$simple_rnn_12/simple_rnn_cell_12/add¼
(simple_rnn_12/simple_rnn_cell_12/SigmoidSigmoid(simple_rnn_12/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(simple_rnn_12/simple_rnn_cell_12/Sigmoid«
+simple_rnn_12/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2-
+simple_rnn_12/TensorArrayV2_1/element_shapeð
simple_rnn_12/TensorArrayV2_1TensorListReserve4simple_rnn_12/TensorArrayV2_1/element_shape:output:0&simple_rnn_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_12/TensorArrayV2_1j
simple_rnn_12/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_12/time
&simple_rnn_12/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&simple_rnn_12/while/maximum_iterations
 simple_rnn_12/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 simple_rnn_12/while/loop_counter
simple_rnn_12/whileWhile)simple_rnn_12/while/loop_counter:output:0/simple_rnn_12/while/maximum_iterations:output:0simple_rnn_12/time:output:0&simple_rnn_12/TensorArrayV2_1:handle:0simple_rnn_12/zeros:output:0&simple_rnn_12/strided_slice_1:output:0Esimple_rnn_12/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_12_simple_rnn_cell_12_matmul_readvariableop_resource@simple_rnn_12_simple_rnn_cell_12_biasadd_readvariableop_resourceAsimple_rnn_12_simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_12_while_body_12171**
cond"R 
simple_rnn_12_while_cond_12170*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
simple_rnn_12/whileÑ
>simple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>simple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shape¡
0simple_rnn_12/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_12/while:output:3Gsimple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ*
element_dtype022
0simple_rnn_12/TensorArrayV2Stack/TensorListStack
#simple_rnn_12/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2%
#simple_rnn_12/strided_slice_3/stack
%simple_rnn_12/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%simple_rnn_12/strided_slice_3/stack_1
%simple_rnn_12/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_12/strided_slice_3/stack_2ï
simple_rnn_12/strided_slice_3StridedSlice9simple_rnn_12/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_12/strided_slice_3/stack:output:0.simple_rnn_12/strided_slice_3/stack_1:output:0.simple_rnn_12/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
simple_rnn_12/strided_slice_3
simple_rnn_12/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
simple_rnn_12/transpose_1/permÞ
simple_rnn_12/transpose_1	Transpose9simple_rnn_12/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_12/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
simple_rnn_12/transpose_1w
simple_rnn_13/ShapeShapesimple_rnn_12/transpose_1:y:0*
T0*
_output_shapes
:2
simple_rnn_13/Shape
!simple_rnn_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!simple_rnn_13/strided_slice/stack
#simple_rnn_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_13/strided_slice/stack_1
#simple_rnn_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_13/strided_slice/stack_2¶
simple_rnn_13/strided_sliceStridedSlicesimple_rnn_13/Shape:output:0*simple_rnn_13/strided_slice/stack:output:0,simple_rnn_13/strided_slice/stack_1:output:0,simple_rnn_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_13/strided_slicey
simple_rnn_13/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
simple_rnn_13/zeros/mul/y¤
simple_rnn_13/zeros/mulMul$simple_rnn_13/strided_slice:output:0"simple_rnn_13/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_13/zeros/mul{
simple_rnn_13/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
simple_rnn_13/zeros/Less/y
simple_rnn_13/zeros/LessLesssimple_rnn_13/zeros/mul:z:0#simple_rnn_13/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_13/zeros/Less
simple_rnn_13/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
simple_rnn_13/zeros/packed/1»
simple_rnn_13/zeros/packedPack$simple_rnn_13/strided_slice:output:0%simple_rnn_13/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_13/zeros/packed{
simple_rnn_13/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_13/zeros/Const®
simple_rnn_13/zerosFill#simple_rnn_13/zeros/packed:output:0"simple_rnn_13/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_13/zeros
simple_rnn_13/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_13/transpose/perm¼
simple_rnn_13/transpose	Transposesimple_rnn_12/transpose_1:y:0%simple_rnn_13/transpose/perm:output:0*
T0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ2
simple_rnn_13/transposey
simple_rnn_13/Shape_1Shapesimple_rnn_13/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_13/Shape_1
#simple_rnn_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_13/strided_slice_1/stack
%simple_rnn_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_13/strided_slice_1/stack_1
%simple_rnn_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_13/strided_slice_1/stack_2Â
simple_rnn_13/strided_slice_1StridedSlicesimple_rnn_13/Shape_1:output:0,simple_rnn_13/strided_slice_1/stack:output:0.simple_rnn_13/strided_slice_1/stack_1:output:0.simple_rnn_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_13/strided_slice_1¡
)simple_rnn_13/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2+
)simple_rnn_13/TensorArrayV2/element_shapeê
simple_rnn_13/TensorArrayV2TensorListReserve2simple_rnn_13/TensorArrayV2/element_shape:output:0&simple_rnn_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_13/TensorArrayV2Û
Csimple_rnn_13/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2E
Csimple_rnn_13/TensorArrayUnstack/TensorListFromTensor/element_shape°
5simple_rnn_13/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_13/transpose:y:0Lsimple_rnn_13/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5simple_rnn_13/TensorArrayUnstack/TensorListFromTensor
#simple_rnn_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_13/strided_slice_2/stack
%simple_rnn_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_13/strided_slice_2/stack_1
%simple_rnn_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_13/strided_slice_2/stack_2Ñ
simple_rnn_13/strided_slice_2StridedSlicesimple_rnn_13/transpose:y:0,simple_rnn_13/strided_slice_2/stack:output:0.simple_rnn_13/strided_slice_2/stack_1:output:0.simple_rnn_13/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
simple_rnn_13/strided_slice_2ò
6simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOp?simple_rnn_13_simple_rnn_cell_13_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype028
6simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOp÷
'simple_rnn_13/simple_rnn_cell_13/MatMulMatMul&simple_rnn_13/strided_slice_2:output:0>simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'simple_rnn_13/simple_rnn_cell_13/MatMulð
7simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_13_simple_rnn_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype029
7simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOp
(simple_rnn_13/simple_rnn_cell_13/BiasAddBiasAdd1simple_rnn_13/simple_rnn_cell_13/MatMul:product:0?simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(simple_rnn_13/simple_rnn_cell_13/BiasAddø
8simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_13_simple_rnn_cell_13_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02:
8simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOpó
)simple_rnn_13/simple_rnn_cell_13/MatMul_1MatMulsimple_rnn_13/zeros:output:0@simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)simple_rnn_13/simple_rnn_cell_13/MatMul_1ð
$simple_rnn_13/simple_rnn_cell_13/addAddV21simple_rnn_13/simple_rnn_cell_13/BiasAdd:output:03simple_rnn_13/simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$simple_rnn_13/simple_rnn_cell_13/add³
%simple_rnn_13/simple_rnn_cell_13/ReluRelu(simple_rnn_13/simple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%simple_rnn_13/simple_rnn_cell_13/Relu«
+simple_rnn_13/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2-
+simple_rnn_13/TensorArrayV2_1/element_shapeð
simple_rnn_13/TensorArrayV2_1TensorListReserve4simple_rnn_13/TensorArrayV2_1/element_shape:output:0&simple_rnn_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_13/TensorArrayV2_1j
simple_rnn_13/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_13/time
&simple_rnn_13/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&simple_rnn_13/while/maximum_iterations
 simple_rnn_13/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 simple_rnn_13/while/loop_counter
simple_rnn_13/whileWhile)simple_rnn_13/while/loop_counter:output:0/simple_rnn_13/while/maximum_iterations:output:0simple_rnn_13/time:output:0&simple_rnn_13/TensorArrayV2_1:handle:0simple_rnn_13/zeros:output:0&simple_rnn_13/strided_slice_1:output:0Esimple_rnn_13/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_13_simple_rnn_cell_13_matmul_readvariableop_resource@simple_rnn_13_simple_rnn_cell_13_biasadd_readvariableop_resourceAsimple_rnn_13_simple_rnn_cell_13_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_13_while_body_12279**
cond"R 
simple_rnn_13_while_cond_12278*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
simple_rnn_13/whileÑ
>simple_rnn_13/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>simple_rnn_13/TensorArrayV2Stack/TensorListStack/element_shape¡
0simple_rnn_13/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_13/while:output:3Gsimple_rnn_13/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ*
element_dtype022
0simple_rnn_13/TensorArrayV2Stack/TensorListStack
#simple_rnn_13/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2%
#simple_rnn_13/strided_slice_3/stack
%simple_rnn_13/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%simple_rnn_13/strided_slice_3/stack_1
%simple_rnn_13/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_13/strided_slice_3/stack_2ï
simple_rnn_13/strided_slice_3StridedSlice9simple_rnn_13/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_13/strided_slice_3/stack:output:0.simple_rnn_13/strided_slice_3/stack_1:output:0.simple_rnn_13/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
simple_rnn_13/strided_slice_3
simple_rnn_13/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
simple_rnn_13/transpose_1/permÞ
simple_rnn_13/transpose_1	Transpose9simple_rnn_13/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_13/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
simple_rnn_13/transpose_1
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2"
 time_distributed_3/Reshape/shapeÀ
time_distributed_3/ReshapeReshapesimple_rnn_13/transpose_1:y:0)time_distributed_3/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
time_distributed_3/Reshapeß
0time_distributed_3/dense_3/MatMul/ReadVariableOpReadVariableOp9time_distributed_3_dense_3_matmul_readvariableop_resource*
_output_shapes
:		*
dtype022
0time_distributed_3/dense_3/MatMul/ReadVariableOpá
!time_distributed_3/dense_3/MatMulMatMul#time_distributed_3/Reshape:output:08time_distributed_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2#
!time_distributed_3/dense_3/MatMulÝ
1time_distributed_3/dense_3/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype023
1time_distributed_3/dense_3/BiasAdd/ReadVariableOpí
"time_distributed_3/dense_3/BiasAddBiasAdd+time_distributed_3/dense_3/MatMul:product:09time_distributed_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2$
"time_distributed_3/dense_3/BiasAdd²
"time_distributed_3/dense_3/SoftmaxSoftmax+time_distributed_3/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2$
"time_distributed_3/dense_3/Softmax
"time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿq   	   2$
"time_distributed_3/Reshape_1/shapeØ
time_distributed_3/Reshape_1Reshape,time_distributed_3/dense_3/Softmax:softmax:0+time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2
time_distributed_3/Reshape_1
"time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2$
"time_distributed_3/Reshape_2/shapeÆ
time_distributed_3/Reshape_2Reshapesimple_rnn_13/transpose_1:y:0+time_distributed_3/Reshape_2/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
time_distributed_3/Reshape_2Ï
IdentityIdentity%time_distributed_3/Reshape_1:output:0^embedding_3/embedding_lookup8^simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp7^simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp9^simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp^simple_rnn_11/while8^simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOp7^simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOp9^simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOp^simple_rnn_12/while8^simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOp7^simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOp9^simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOp^simple_rnn_13/while2^time_distributed_3/dense_3/BiasAdd/ReadVariableOp1^time_distributed_3/dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿq::::::::::::2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2r
7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp2p
6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp2t
8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp2*
simple_rnn_11/whilesimple_rnn_11/while2r
7simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOp7simple_rnn_12/simple_rnn_cell_12/BiasAdd/ReadVariableOp2p
6simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOp6simple_rnn_12/simple_rnn_cell_12/MatMul/ReadVariableOp2t
8simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOp8simple_rnn_12/simple_rnn_cell_12/MatMul_1/ReadVariableOp2*
simple_rnn_12/whilesimple_rnn_12/while2r
7simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOp7simple_rnn_13/simple_rnn_cell_13/BiasAdd/ReadVariableOp2p
6simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOp6simple_rnn_13/simple_rnn_cell_13/MatMul/ReadVariableOp2t
8simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOp8simple_rnn_13/simple_rnn_cell_13/MatMul_1/ReadVariableOp2*
simple_rnn_13/whilesimple_rnn_13/while2f
1time_distributed_3/dense_3/BiasAdd/ReadVariableOp1time_distributed_3/dense_3/BiasAdd/ReadVariableOp2d
0time_distributed_3/dense_3/MatMul/ReadVariableOp0time_distributed_3/dense_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
áH

H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_13496
inputs_05
1simple_rnn_cell_12_matmul_readvariableop_resource6
2simple_rnn_cell_12_biasadd_readvariableop_resource7
3simple_rnn_cell_12_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_12/BiasAdd/ReadVariableOp¢(simple_rnn_cell_12/MatMul/ReadVariableOp¢*simple_rnn_cell_12/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2Ç
(simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02*
(simple_rnn_cell_12/MatMul/ReadVariableOp¿
simple_rnn_cell_12/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/MatMulÆ
)simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)simple_rnn_cell_12/BiasAdd/ReadVariableOpÎ
simple_rnn_cell_12/BiasAddBiasAdd#simple_rnn_cell_12/MatMul:product:01simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/BiasAddÎ
*simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*simple_rnn_cell_12/MatMul_1/ReadVariableOp»
simple_rnn_cell_12/MatMul_1MatMulzeros:output:02simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/MatMul_1¸
simple_rnn_cell_12/addAddV2#simple_rnn_cell_12/BiasAdd:output:0%simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/add
simple_rnn_cell_12/SigmoidSigmoidsimple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/Sigmoid
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÇ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_12_matmul_readvariableop_resource2simple_rnn_cell_12_biasadd_readvariableop_resource3simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_13430*
condR
while_cond_13429*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1ý
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_12/BiasAdd/ReadVariableOp)^simple_rnn_cell_12/MatMul/ReadVariableOp+^simple_rnn_cell_12/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::2V
)simple_rnn_cell_12/BiasAdd/ReadVariableOp)simple_rnn_cell_12/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_12/MatMul/ReadVariableOp(simple_rnn_cell_12/MatMul/ReadVariableOp2X
*simple_rnn_cell_12/MatMul_1/ReadVariableOp*simple_rnn_cell_12/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
à
Á
L__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_9870

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid«
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¯

Identity_1IdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
ï	
´
2__inference_simple_rnn_cell_12_layer_call_fn_14476

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_98702
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
ã

¯
simple_rnn_11_while_cond_124098
4simple_rnn_11_while_simple_rnn_11_while_loop_counter>
:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations#
simple_rnn_11_while_placeholder%
!simple_rnn_11_while_placeholder_1%
!simple_rnn_11_while_placeholder_2:
6simple_rnn_11_while_less_simple_rnn_11_strided_slice_1O
Ksimple_rnn_11_while_simple_rnn_11_while_cond_12409___redundant_placeholder0O
Ksimple_rnn_11_while_simple_rnn_11_while_cond_12409___redundant_placeholder1O
Ksimple_rnn_11_while_simple_rnn_11_while_cond_12409___redundant_placeholder2O
Ksimple_rnn_11_while_simple_rnn_11_while_cond_12409___redundant_placeholder3 
simple_rnn_11_while_identity
¶
simple_rnn_11/while/LessLesssimple_rnn_11_while_placeholder6simple_rnn_11_while_less_simple_rnn_11_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_11/while/Less
simple_rnn_11/while/IdentityIdentitysimple_rnn_11/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_11/while/Identity"E
simple_rnn_11_while_identity%simple_rnn_11/while/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
­	

,__inference_sequential_3_layer_call_fn_12734

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_118812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿq::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
#
þ
while_body_9632
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0#
while_simple_rnn_cell_11_9654_0#
while_simple_rnn_cell_11_9656_0#
while_simple_rnn_cell_11_9658_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor!
while_simple_rnn_cell_11_9654!
while_simple_rnn_cell_11_9656!
while_simple_rnn_cell_11_9658¢0while/simple_rnn_cell_11/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÓ
0while/simple_rnn_cell_11/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_11_9654_0while_simple_rnn_cell_11_9656_0while_simple_rnn_cell_11_9658_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_935822
0while/simple_rnn_cell_11/StatefulPartitionedCallý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_11/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:01^while/simple_rnn_cell_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity¤
while/Identity_1Identitywhile_while_maximum_iterations1^while/simple_rnn_cell_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:01^while/simple_rnn_cell_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2À
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:01^while/simple_rnn_cell_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ð
while/Identity_4Identity9while/simple_rnn_cell_11/StatefulPartitionedCall:output:11^while/simple_rnn_cell_11/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_11_9654while_simple_rnn_cell_11_9654_0"@
while_simple_rnn_cell_11_9656while_simple_rnn_cell_11_9656_0"@
while_simple_rnn_cell_11_9658while_simple_rnn_cell_11_9658_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2d
0while/simple_rnn_cell_11/StatefulPartitionedCall0while/simple_rnn_cell_11/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
»4

while_body_14056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_13_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_13_matmul_readvariableop_resource<
8while_simple_rnn_cell_13_biasadd_readvariableop_resource=
9while_simple_rnn_cell_13_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_13/MatMul/ReadVariableOp¢0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÜ
.while/simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_13_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype020
.while/simple_rnn_cell_13/MatMul/ReadVariableOpé
while/simple_rnn_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_13/MatMulÚ
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpæ
 while/simple_rnn_cell_13/BiasAddBiasAdd)while/simple_rnn_cell_13/MatMul:product:07while/simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_13/BiasAddâ
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype022
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOpÒ
!while/simple_rnn_cell_13/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/simple_rnn_cell_13/MatMul_1Ð
while/simple_rnn_cell_13/addAddV2)while/simple_rnn_cell_13/BiasAdd:output:0+while/simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_13/add
while/simple_rnn_cell_13/ReluRelu while/simple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_13/Reluï
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder+while/simple_rnn_cell_13/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3¦
while/Identity_4Identity+while/simple_rnn_cell_13/Relu:activations:00^while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_13/MatMul/ReadVariableOp1^while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_13_biasadd_readvariableop_resource:while_simple_rnn_cell_13_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_13_matmul_1_readvariableop_resource;while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_13_matmul_readvariableop_resource9while_simple_rnn_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2b
/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_13/MatMul/ReadVariableOp.while/simple_rnn_cell_13/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_13/MatMul_1/ReadVariableOp0while/simple_rnn_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¢H

H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_11469

inputs5
1simple_rnn_cell_12_matmul_readvariableop_resource6
2simple_rnn_cell_12_biasadd_readvariableop_resource7
3simple_rnn_cell_12_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_12/BiasAdd/ReadVariableOp¢(simple_rnn_cell_12/MatMul/ReadVariableOp¢*simple_rnn_cell_12/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿ@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2Ç
(simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02*
(simple_rnn_cell_12/MatMul/ReadVariableOp¿
simple_rnn_cell_12/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/MatMulÆ
)simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)simple_rnn_cell_12/BiasAdd/ReadVariableOpÎ
simple_rnn_cell_12/BiasAddBiasAdd#simple_rnn_cell_12/MatMul:product:01simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/BiasAddÎ
*simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*simple_rnn_cell_12/MatMul_1/ReadVariableOp»
simple_rnn_cell_12/MatMul_1MatMulzeros:output:02simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/MatMul_1¸
simple_rnn_cell_12/addAddV2#simple_rnn_cell_12/BiasAdd:output:0%simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/add
simple_rnn_cell_12/SigmoidSigmoidsimple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/Sigmoid
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÇ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_12_matmul_readvariableop_resource2simple_rnn_cell_12_biasadd_readvariableop_resource3simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_11403*
condR
while_cond_11402*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
transpose_1ô
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_12/BiasAdd/ReadVariableOp)^simple_rnn_cell_12/MatMul/ReadVariableOp+^simple_rnn_cell_12/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿq@:::2V
)simple_rnn_cell_12/BiasAdd/ReadVariableOp)simple_rnn_cell_12/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_12/MatMul/ReadVariableOp(simple_rnn_cell_12/MatMul/ReadVariableOp2X
*simple_rnn_cell_12/MatMul_1/ReadVariableOp*simple_rnn_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@
 
_user_specified_nameinputs
H

H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11104

inputs5
1simple_rnn_cell_11_matmul_readvariableop_resource6
2simple_rnn_cell_11_biasadd_readvariableop_resource7
3simple_rnn_cell_11_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_11/BiasAdd/ReadVariableOp¢(simple_rnn_cell_11/MatMul/ReadVariableOp¢*simple_rnn_cell_11/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿZ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*
shrink_axis_mask2
strided_slice_2Æ
(simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:Z@*
dtype02*
(simple_rnn_cell_11/MatMul/ReadVariableOp¾
simple_rnn_cell_11/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/MatMulÅ
)simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_11/BiasAdd/ReadVariableOpÍ
simple_rnn_cell_11/BiasAddBiasAdd#simple_rnn_cell_11/MatMul:product:01simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/BiasAddÌ
*simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_11/MatMul_1/ReadVariableOpº
simple_rnn_cell_11/MatMul_1MatMulzeros:output:02simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/MatMul_1·
simple_rnn_cell_11/addAddV2#simple_rnn_cell_11/BiasAdd:output:0%simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/add
simple_rnn_cell_11/TanhTanhsimple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_11/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÅ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_11_matmul_readvariableop_resource2simple_rnn_cell_11_biasadd_readvariableop_resource3simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_11038*
condR
while_cond_11037*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@2
transpose_1ó
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_11/BiasAdd/ReadVariableOp)^simple_rnn_cell_11/MatMul/ReadVariableOp+^simple_rnn_cell_11/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿqZ:::2V
)simple_rnn_cell_11/BiasAdd/ReadVariableOp)simple_rnn_cell_11/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_11/MatMul/ReadVariableOp(simple_rnn_cell_11/MatMul/ReadVariableOp2X
*simple_rnn_cell_11/MatMul_1/ReadVariableOp*simple_rnn_cell_11/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ
 
_user_specified_nameinputs
ÝH

H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_14234
inputs_05
1simple_rnn_cell_13_matmul_readvariableop_resource6
2simple_rnn_cell_13_biasadd_readvariableop_resource7
3simple_rnn_cell_13_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_13/BiasAdd/ReadVariableOp¢(simple_rnn_cell_13/MatMul/ReadVariableOp¢*simple_rnn_cell_13/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2È
(simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_13_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(simple_rnn_cell_13/MatMul/ReadVariableOp¿
simple_rnn_cell_13/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/MatMulÆ
)simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)simple_rnn_cell_13/BiasAdd/ReadVariableOpÎ
simple_rnn_cell_13/BiasAddBiasAdd#simple_rnn_cell_13/MatMul:product:01simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/BiasAddÎ
*simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_13_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*simple_rnn_cell_13/MatMul_1/ReadVariableOp»
simple_rnn_cell_13/MatMul_1MatMulzeros:output:02simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/MatMul_1¸
simple_rnn_cell_13/addAddV2#simple_rnn_cell_13/BiasAdd:output:0%simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/add
simple_rnn_cell_13/ReluRelusimple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/Relu
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÇ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_13_matmul_readvariableop_resource2simple_rnn_cell_13_biasadd_readvariableop_resource3simple_rnn_cell_13_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_14168*
condR
while_cond_14167*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1ý
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_13/BiasAdd/ReadVariableOp)^simple_rnn_cell_13/MatMul/ReadVariableOp+^simple_rnn_cell_13/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2V
)simple_rnn_cell_13/BiasAdd/ReadVariableOp)simple_rnn_cell_13/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_13/MatMul/ReadVariableOp(simple_rnn_cell_13/MatMul/ReadVariableOp2X
*simple_rnn_cell_13/MatMul_1/ReadVariableOp*simple_rnn_cell_13/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
å

¯
simple_rnn_13_while_cond_122788
4simple_rnn_13_while_simple_rnn_13_while_loop_counter>
:simple_rnn_13_while_simple_rnn_13_while_maximum_iterations#
simple_rnn_13_while_placeholder%
!simple_rnn_13_while_placeholder_1%
!simple_rnn_13_while_placeholder_2:
6simple_rnn_13_while_less_simple_rnn_13_strided_slice_1O
Ksimple_rnn_13_while_simple_rnn_13_while_cond_12278___redundant_placeholder0O
Ksimple_rnn_13_while_simple_rnn_13_while_cond_12278___redundant_placeholder1O
Ksimple_rnn_13_while_simple_rnn_13_while_cond_12278___redundant_placeholder2O
Ksimple_rnn_13_while_simple_rnn_13_while_cond_12278___redundant_placeholder3 
simple_rnn_13_while_identity
¶
simple_rnn_13/while/LessLesssimple_rnn_13_while_placeholder6simple_rnn_13_while_less_simple_rnn_13_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_13/while/Less
simple_rnn_13/while/IdentityIdentitysimple_rnn_13/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_13/while/Identity"E
simple_rnn_13_while_identity%simple_rnn_13/while/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¾

-__inference_simple_rnn_11_layer_call_fn_13015
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_simple_rnn_11_layer_call_and_return_conditional_losses_96952
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ
"
_user_specified_name
inputs/0
H

H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_11722

inputs5
1simple_rnn_cell_13_matmul_readvariableop_resource6
2simple_rnn_cell_13_biasadd_readvariableop_resource7
3simple_rnn_cell_13_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_13/BiasAdd/ReadVariableOp¢(simple_rnn_cell_13/MatMul/ReadVariableOp¢*simple_rnn_cell_13/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2È
(simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_13_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(simple_rnn_cell_13/MatMul/ReadVariableOp¿
simple_rnn_cell_13/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/MatMulÆ
)simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)simple_rnn_cell_13/BiasAdd/ReadVariableOpÎ
simple_rnn_cell_13/BiasAddBiasAdd#simple_rnn_cell_13/MatMul:product:01simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/BiasAddÎ
*simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_13_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*simple_rnn_cell_13/MatMul_1/ReadVariableOp»
simple_rnn_cell_13/MatMul_1MatMulzeros:output:02simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/MatMul_1¸
simple_rnn_cell_13/addAddV2#simple_rnn_cell_13/BiasAdd:output:0%simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/add
simple_rnn_cell_13/ReluRelusimple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/Relu
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÇ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_13_matmul_readvariableop_resource2simple_rnn_cell_13_biasadd_readvariableop_resource3simple_rnn_cell_13_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_11656*
condR
while_cond_11655*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
transpose_1ô
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_13/BiasAdd/ReadVariableOp)^simple_rnn_cell_13/MatMul/ReadVariableOp+^simple_rnn_cell_13/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿq:::2V
)simple_rnn_cell_13/BiasAdd/ReadVariableOp)simple_rnn_cell_13/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_13/MatMul/ReadVariableOp(simple_rnn_cell_13/MatMul/ReadVariableOp2X
*simple_rnn_cell_13/MatMul_1/ReadVariableOp*simple_rnn_cell_13/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
Æ
 
while_cond_9631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_9631___redundant_placeholder02
.while_while_cond_9631___redundant_placeholder12
.while_while_cond_9631___redundant_placeholder22
.while_while_cond_9631___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
¢H

H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_13742

inputs5
1simple_rnn_cell_12_matmul_readvariableop_resource6
2simple_rnn_cell_12_biasadd_readvariableop_resource7
3simple_rnn_cell_12_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_12/BiasAdd/ReadVariableOp¢(simple_rnn_cell_12/MatMul/ReadVariableOp¢*simple_rnn_cell_12/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:qÿÿÿÿÿÿÿÿÿ@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2Ç
(simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02*
(simple_rnn_cell_12/MatMul/ReadVariableOp¿
simple_rnn_cell_12/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/MatMulÆ
)simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)simple_rnn_cell_12/BiasAdd/ReadVariableOpÎ
simple_rnn_cell_12/BiasAddBiasAdd#simple_rnn_cell_12/MatMul:product:01simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/BiasAddÎ
*simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*simple_rnn_cell_12/MatMul_1/ReadVariableOp»
simple_rnn_cell_12/MatMul_1MatMulzeros:output:02simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/MatMul_1¸
simple_rnn_cell_12/addAddV2#simple_rnn_cell_12/BiasAdd:output:0%simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/add
simple_rnn_cell_12/SigmoidSigmoidsimple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_12/Sigmoid
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÇ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_12_matmul_readvariableop_resource2simple_rnn_cell_12_biasadd_readvariableop_resource3simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_13676*
condR
while_cond_13675*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
transpose_1ô
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_12/BiasAdd/ReadVariableOp)^simple_rnn_cell_12/MatMul/ReadVariableOp+^simple_rnn_cell_12/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿq@:::2V
)simple_rnn_cell_12/BiasAdd/ReadVariableOp)simple_rnn_cell_12/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_12/MatMul/ReadVariableOp(simple_rnn_cell_12/MatMul/ReadVariableOp2X
*simple_rnn_cell_12/MatMul_1/ReadVariableOp*simple_rnn_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq@
 
_user_specified_nameinputs
´4

while_body_11291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_12_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_12_matmul_readvariableop_resource<
8while_simple_rnn_cell_12_biasadd_readvariableop_resource=
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_12/MatMul/ReadVariableOp¢0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÛ
.while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype020
.while/simple_rnn_cell_12/MatMul/ReadVariableOpé
while/simple_rnn_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_12/MatMulÚ
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpæ
 while/simple_rnn_cell_12/BiasAddBiasAdd)while/simple_rnn_cell_12/MatMul:product:07while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_12/BiasAddâ
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype022
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpÒ
!while/simple_rnn_cell_12/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/simple_rnn_cell_12/MatMul_1Ð
while/simple_rnn_cell_12/addAddV2)while/simple_rnn_cell_12/BiasAdd:output:0+while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_12/add¤
 while/simple_rnn_cell_12/SigmoidSigmoid while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_12/Sigmoidè
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_12/Sigmoid:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ô
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity$while/simple_rnn_cell_12/Sigmoid:y:00^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_12_matmul_readvariableop_resource9while_simple_rnn_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2b
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_12/MatMul/ReadVariableOp.while/simple_rnn_cell_12/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
H

H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_13876

inputs5
1simple_rnn_cell_13_matmul_readvariableop_resource6
2simple_rnn_cell_13_biasadd_readvariableop_resource7
3simple_rnn_cell_13_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_13/BiasAdd/ReadVariableOp¢(simple_rnn_cell_13/MatMul/ReadVariableOp¢*simple_rnn_cell_13/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2È
(simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_13_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(simple_rnn_cell_13/MatMul/ReadVariableOp¿
simple_rnn_cell_13/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/MatMulÆ
)simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)simple_rnn_cell_13/BiasAdd/ReadVariableOpÎ
simple_rnn_cell_13/BiasAddBiasAdd#simple_rnn_cell_13/MatMul:product:01simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/BiasAddÎ
*simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_13_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*simple_rnn_cell_13/MatMul_1/ReadVariableOp»
simple_rnn_cell_13/MatMul_1MatMulzeros:output:02simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/MatMul_1¸
simple_rnn_cell_13/addAddV2#simple_rnn_cell_13/BiasAdd:output:0%simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/add
simple_rnn_cell_13/ReluRelusimple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_13/Relu
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÇ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_13_matmul_readvariableop_resource2simple_rnn_cell_13_biasadd_readvariableop_resource3simple_rnn_cell_13_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_13810*
condR
while_cond_13809*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:qÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
transpose_1ô
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_13/BiasAdd/ReadVariableOp)^simple_rnn_cell_13/MatMul/ReadVariableOp+^simple_rnn_cell_13/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿq:::2V
)simple_rnn_cell_13/BiasAdd/ReadVariableOp)simple_rnn_cell_13/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_13/MatMul/ReadVariableOp(simple_rnn_cell_13/MatMul/ReadVariableOp2X
*simple_rnn_cell_13/MatMul_1/ReadVariableOp*simple_rnn_cell_13/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
Ã

-__inference_simple_rnn_13_layer_call_fn_14245
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_107192
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¨D
¨
simple_rnn_12_while_body_125188
4simple_rnn_12_while_simple_rnn_12_while_loop_counter>
:simple_rnn_12_while_simple_rnn_12_while_maximum_iterations#
simple_rnn_12_while_placeholder%
!simple_rnn_12_while_placeholder_1%
!simple_rnn_12_while_placeholder_27
3simple_rnn_12_while_simple_rnn_12_strided_slice_1_0s
osimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0K
Gsimple_rnn_12_while_simple_rnn_cell_12_matmul_readvariableop_resource_0L
Hsimple_rnn_12_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0M
Isimple_rnn_12_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0 
simple_rnn_12_while_identity"
simple_rnn_12_while_identity_1"
simple_rnn_12_while_identity_2"
simple_rnn_12_while_identity_3"
simple_rnn_12_while_identity_45
1simple_rnn_12_while_simple_rnn_12_strided_slice_1q
msimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensorI
Esimple_rnn_12_while_simple_rnn_cell_12_matmul_readvariableop_resourceJ
Fsimple_rnn_12_while_simple_rnn_cell_12_biasadd_readvariableop_resourceK
Gsimple_rnn_12_while_simple_rnn_cell_12_matmul_1_readvariableop_resource¢=simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp¢<simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp¢>simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOpß
Esimple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2G
Esimple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shape§
7simple_rnn_12/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_12_while_placeholderNsimple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype029
7simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem
<simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_12_while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype02>
<simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp¡
-simple_rnn_12/while/simple_rnn_cell_12/MatMulMatMul>simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-simple_rnn_12/while/simple_rnn_cell_12/MatMul
=simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_12_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02?
=simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp
.simple_rnn_12/while/simple_rnn_cell_12/BiasAddBiasAdd7simple_rnn_12/while/simple_rnn_cell_12/MatMul:product:0Esimple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.simple_rnn_12/while/simple_rnn_cell_12/BiasAdd
>simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_12_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02@
>simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp
/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1MatMul!simple_rnn_12_while_placeholder_2Fsimple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/simple_rnn_12/while/simple_rnn_cell_12/MatMul_1
*simple_rnn_12/while/simple_rnn_cell_12/addAddV27simple_rnn_12/while/simple_rnn_cell_12/BiasAdd:output:09simple_rnn_12/while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*simple_rnn_12/while/simple_rnn_cell_12/addÎ
.simple_rnn_12/while/simple_rnn_cell_12/SigmoidSigmoid.simple_rnn_12/while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.simple_rnn_12/while/simple_rnn_cell_12/Sigmoid®
8simple_rnn_12/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_12_while_placeholder_1simple_rnn_12_while_placeholder2simple_rnn_12/while/simple_rnn_cell_12/Sigmoid:y:0*
_output_shapes
: *
element_dtype02:
8simple_rnn_12/while/TensorArrayV2Write/TensorListSetItemx
simple_rnn_12/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_12/while/add/y¡
simple_rnn_12/while/addAddV2simple_rnn_12_while_placeholder"simple_rnn_12/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_12/while/add|
simple_rnn_12/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_12/while/add_1/y¼
simple_rnn_12/while/add_1AddV24simple_rnn_12_while_simple_rnn_12_while_loop_counter$simple_rnn_12/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_12/while/add_1È
simple_rnn_12/while/IdentityIdentitysimple_rnn_12/while/add_1:z:0>^simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp=^simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp?^simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_12/while/Identityé
simple_rnn_12/while/Identity_1Identity:simple_rnn_12_while_simple_rnn_12_while_maximum_iterations>^simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp=^simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp?^simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_12/while/Identity_1Ê
simple_rnn_12/while/Identity_2Identitysimple_rnn_12/while/add:z:0>^simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp=^simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp?^simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_12/while/Identity_2÷
simple_rnn_12/while/Identity_3IdentityHsimple_rnn_12/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp=^simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp?^simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_12/while/Identity_3ó
simple_rnn_12/while/Identity_4Identity2simple_rnn_12/while/simple_rnn_cell_12/Sigmoid:y:0>^simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp=^simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp?^simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
simple_rnn_12/while/Identity_4"E
simple_rnn_12_while_identity%simple_rnn_12/while/Identity:output:0"I
simple_rnn_12_while_identity_1'simple_rnn_12/while/Identity_1:output:0"I
simple_rnn_12_while_identity_2'simple_rnn_12/while/Identity_2:output:0"I
simple_rnn_12_while_identity_3'simple_rnn_12/while/Identity_3:output:0"I
simple_rnn_12_while_identity_4'simple_rnn_12/while/Identity_4:output:0"h
1simple_rnn_12_while_simple_rnn_12_strided_slice_13simple_rnn_12_while_simple_rnn_12_strided_slice_1_0"
Fsimple_rnn_12_while_simple_rnn_cell_12_biasadd_readvariableop_resourceHsimple_rnn_12_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"
Gsimple_rnn_12_while_simple_rnn_cell_12_matmul_1_readvariableop_resourceIsimple_rnn_12_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"
Esimple_rnn_12_while_simple_rnn_cell_12_matmul_readvariableop_resourceGsimple_rnn_12_while_simple_rnn_cell_12_matmul_readvariableop_resource_0"à
msimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensorosimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2~
=simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp=simple_rnn_12/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2|
<simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp<simple_rnn_12/while/simple_rnn_cell_12/MatMul/ReadVariableOp2
>simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp>simple_rnn_12/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
å½
¸
!__inference__traced_restore_14863
file_prefix+
'assignvariableop_embedding_3_embeddings 
assignvariableop_1_adam_iter"
assignvariableop_2_adam_beta_1"
assignvariableop_3_adam_beta_2!
assignvariableop_4_adam_decay)
%assignvariableop_5_adam_learning_rate>
:assignvariableop_6_simple_rnn_11_simple_rnn_cell_11_kernelH
Dassignvariableop_7_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel<
8assignvariableop_8_simple_rnn_11_simple_rnn_cell_11_bias>
:assignvariableop_9_simple_rnn_12_simple_rnn_cell_12_kernelI
Eassignvariableop_10_simple_rnn_12_simple_rnn_cell_12_recurrent_kernel=
9assignvariableop_11_simple_rnn_12_simple_rnn_cell_12_bias?
;assignvariableop_12_simple_rnn_13_simple_rnn_cell_13_kernelI
Eassignvariableop_13_simple_rnn_13_simple_rnn_cell_13_recurrent_kernel=
9assignvariableop_14_simple_rnn_13_simple_rnn_cell_13_bias1
-assignvariableop_15_time_distributed_3_kernel/
+assignvariableop_16_time_distributed_3_bias
assignvariableop_17_total
assignvariableop_18_count
assignvariableop_19_total_1
assignvariableop_20_count_1F
Bassignvariableop_21_adam_simple_rnn_11_simple_rnn_cell_11_kernel_mP
Lassignvariableop_22_adam_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_mD
@assignvariableop_23_adam_simple_rnn_11_simple_rnn_cell_11_bias_mF
Bassignvariableop_24_adam_simple_rnn_12_simple_rnn_cell_12_kernel_mP
Lassignvariableop_25_adam_simple_rnn_12_simple_rnn_cell_12_recurrent_kernel_mD
@assignvariableop_26_adam_simple_rnn_12_simple_rnn_cell_12_bias_mF
Bassignvariableop_27_adam_simple_rnn_13_simple_rnn_cell_13_kernel_mP
Lassignvariableop_28_adam_simple_rnn_13_simple_rnn_cell_13_recurrent_kernel_mD
@assignvariableop_29_adam_simple_rnn_13_simple_rnn_cell_13_bias_m8
4assignvariableop_30_adam_time_distributed_3_kernel_m6
2assignvariableop_31_adam_time_distributed_3_bias_mF
Bassignvariableop_32_adam_simple_rnn_11_simple_rnn_cell_11_kernel_vP
Lassignvariableop_33_adam_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_vD
@assignvariableop_34_adam_simple_rnn_11_simple_rnn_cell_11_bias_vF
Bassignvariableop_35_adam_simple_rnn_12_simple_rnn_cell_12_kernel_vP
Lassignvariableop_36_adam_simple_rnn_12_simple_rnn_cell_12_recurrent_kernel_vD
@assignvariableop_37_adam_simple_rnn_12_simple_rnn_cell_12_bias_vF
Bassignvariableop_38_adam_simple_rnn_13_simple_rnn_cell_13_kernel_vP
Lassignvariableop_39_adam_simple_rnn_13_simple_rnn_cell_13_recurrent_kernel_vD
@assignvariableop_40_adam_simple_rnn_13_simple_rnn_cell_13_bias_v8
4assignvariableop_41_adam_time_distributed_3_kernel_v6
2assignvariableop_42_adam_time_distributed_3_bias_v
identity_44¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¶
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*Â
value¸Bµ,B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesæ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Æ
_output_shapes³
°::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¦
AssignVariableOpAssignVariableOp'assignvariableop_embedding_3_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_1¡
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_iterIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2£
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_1Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3£
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_2Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¢
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_decayIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5ª
AssignVariableOp_5AssignVariableOp%assignvariableop_5_adam_learning_rateIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¿
AssignVariableOp_6AssignVariableOp:assignvariableop_6_simple_rnn_11_simple_rnn_cell_11_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7É
AssignVariableOp_7AssignVariableOpDassignvariableop_7_simple_rnn_11_simple_rnn_cell_11_recurrent_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8½
AssignVariableOp_8AssignVariableOp8assignvariableop_8_simple_rnn_11_simple_rnn_cell_11_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¿
AssignVariableOp_9AssignVariableOp:assignvariableop_9_simple_rnn_12_simple_rnn_cell_12_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Í
AssignVariableOp_10AssignVariableOpEassignvariableop_10_simple_rnn_12_simple_rnn_cell_12_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Á
AssignVariableOp_11AssignVariableOp9assignvariableop_11_simple_rnn_12_simple_rnn_cell_12_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ã
AssignVariableOp_12AssignVariableOp;assignvariableop_12_simple_rnn_13_simple_rnn_cell_13_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Í
AssignVariableOp_13AssignVariableOpEassignvariableop_13_simple_rnn_13_simple_rnn_cell_13_recurrent_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Á
AssignVariableOp_14AssignVariableOp9assignvariableop_14_simple_rnn_13_simple_rnn_cell_13_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15µ
AssignVariableOp_15AssignVariableOp-assignvariableop_15_time_distributed_3_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16³
AssignVariableOp_16AssignVariableOp+assignvariableop_16_time_distributed_3_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¡
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¡
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19£
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20£
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ê
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_simple_rnn_11_simple_rnn_cell_11_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ô
AssignVariableOp_22AssignVariableOpLassignvariableop_22_adam_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23È
AssignVariableOp_23AssignVariableOp@assignvariableop_23_adam_simple_rnn_11_simple_rnn_cell_11_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Ê
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_simple_rnn_12_simple_rnn_cell_12_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ô
AssignVariableOp_25AssignVariableOpLassignvariableop_25_adam_simple_rnn_12_simple_rnn_cell_12_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26È
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_simple_rnn_12_simple_rnn_cell_12_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Ê
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_simple_rnn_13_simple_rnn_cell_13_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Ô
AssignVariableOp_28AssignVariableOpLassignvariableop_28_adam_simple_rnn_13_simple_rnn_cell_13_recurrent_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29È
AssignVariableOp_29AssignVariableOp@assignvariableop_29_adam_simple_rnn_13_simple_rnn_cell_13_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30¼
AssignVariableOp_30AssignVariableOp4assignvariableop_30_adam_time_distributed_3_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31º
AssignVariableOp_31AssignVariableOp2assignvariableop_31_adam_time_distributed_3_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Ê
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_simple_rnn_11_simple_rnn_cell_11_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Ô
AssignVariableOp_33AssignVariableOpLassignvariableop_33_adam_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34È
AssignVariableOp_34AssignVariableOp@assignvariableop_34_adam_simple_rnn_11_simple_rnn_cell_11_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Ê
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_simple_rnn_12_simple_rnn_cell_12_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Ô
AssignVariableOp_36AssignVariableOpLassignvariableop_36_adam_simple_rnn_12_simple_rnn_cell_12_recurrent_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37È
AssignVariableOp_37AssignVariableOp@assignvariableop_37_adam_simple_rnn_12_simple_rnn_cell_12_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Ê
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_simple_rnn_13_simple_rnn_cell_13_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39Ô
AssignVariableOp_39AssignVariableOpLassignvariableop_39_adam_simple_rnn_13_simple_rnn_cell_13_recurrent_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40È
AssignVariableOp_40AssignVariableOp@assignvariableop_40_adam_simple_rnn_13_simple_rnn_cell_13_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41¼
AssignVariableOp_41AssignVariableOp4assignvariableop_41_adam_time_distributed_3_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42º
AssignVariableOp_42AssignVariableOp2assignvariableop_42_adam_time_distributed_3_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_429
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_43Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_43
Identity_44IdentityIdentity_43:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_44"#
identity_44Identity_44:output:0*Ã
_input_shapes±
®: :::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
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
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422(
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


M__inference_time_distributed_3_layer_call_and_return_conditional_losses_14278

inputs*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape¦
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:		*
dtype02
dense_3/MatMul/ReadVariableOp
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/MatMul¤
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02 
dense_3/BiasAdd/ReadVariableOp¡
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_3/Softmaxq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense_3/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	2
	Reshape_1´
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î	
£
,__inference_sequential_3_layer_call_fn_11972
embedding_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_119452
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq	2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿq::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
+
_user_specified_nameembedding_3_input
à
Á
L__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_9887

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid«
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¯

Identity_1IdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
å

¯
simple_rnn_12_while_cond_121708
4simple_rnn_12_while_simple_rnn_12_while_loop_counter>
:simple_rnn_12_while_simple_rnn_12_while_maximum_iterations#
simple_rnn_12_while_placeholder%
!simple_rnn_12_while_placeholder_1%
!simple_rnn_12_while_placeholder_2:
6simple_rnn_12_while_less_simple_rnn_12_strided_slice_1O
Ksimple_rnn_12_while_simple_rnn_12_while_cond_12170___redundant_placeholder0O
Ksimple_rnn_12_while_simple_rnn_12_while_cond_12170___redundant_placeholder1O
Ksimple_rnn_12_while_simple_rnn_12_while_cond_12170___redundant_placeholder2O
Ksimple_rnn_12_while_simple_rnn_12_while_cond_12170___redundant_placeholder3 
simple_rnn_12_while_identity
¶
simple_rnn_12/while/LessLesssimple_rnn_12_while_placeholder6simple_rnn_12_while_less_simple_rnn_12_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_12/while/Less
simple_rnn_12/while/IdentityIdentitysimple_rnn_12/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_12/while/Identity"E
simple_rnn_12_while_identity%simple_rnn_12/while/Identity:output:0*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ú	

F__inference_embedding_3_layer_call_and_return_conditional_losses_10981

inputs
embedding_lookup_10975
identity¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq2
Castû
embedding_lookupResourceGatherembedding_lookup_10975Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/10975*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ*
dtype02
embedding_lookupì
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/10975*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ2
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿqZ2

Identity"
identityIdentity:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿq:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 
_user_specified_nameinputs
û<
ö
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_10836

inputs
simple_rnn_cell_13_10761
simple_rnn_cell_13_10763
simple_rnn_cell_13_10765
identity¢*simple_rnn_cell_13/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
*simple_rnn_cell_13/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_13_10761simple_rnn_cell_13_10763simple_rnn_cell_13_10765*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_13_layer_call_and_return_conditional_losses_103992,
*simple_rnn_cell_13/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterù
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_13_10761simple_rnn_cell_13_10763simple_rnn_cell_13_10765*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_10773*
condR
while_cond_10772*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1¦
IdentityIdentitytranspose_1:y:0+^simple_rnn_cell_13/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2X
*simple_rnn_cell_13/StatefulPartitionedCall*simple_rnn_cell_13/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
S
±
*sequential_3_simple_rnn_13_while_body_9230R
Nsequential_3_simple_rnn_13_while_sequential_3_simple_rnn_13_while_loop_counterX
Tsequential_3_simple_rnn_13_while_sequential_3_simple_rnn_13_while_maximum_iterations0
,sequential_3_simple_rnn_13_while_placeholder2
.sequential_3_simple_rnn_13_while_placeholder_12
.sequential_3_simple_rnn_13_while_placeholder_2Q
Msequential_3_simple_rnn_13_while_sequential_3_simple_rnn_13_strided_slice_1_0
sequential_3_simple_rnn_13_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_13_tensorarrayunstack_tensorlistfromtensor_0X
Tsequential_3_simple_rnn_13_while_simple_rnn_cell_13_matmul_readvariableop_resource_0Y
Usequential_3_simple_rnn_13_while_simple_rnn_cell_13_biasadd_readvariableop_resource_0Z
Vsequential_3_simple_rnn_13_while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0-
)sequential_3_simple_rnn_13_while_identity/
+sequential_3_simple_rnn_13_while_identity_1/
+sequential_3_simple_rnn_13_while_identity_2/
+sequential_3_simple_rnn_13_while_identity_3/
+sequential_3_simple_rnn_13_while_identity_4O
Ksequential_3_simple_rnn_13_while_sequential_3_simple_rnn_13_strided_slice_1
sequential_3_simple_rnn_13_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_13_tensorarrayunstack_tensorlistfromtensorV
Rsequential_3_simple_rnn_13_while_simple_rnn_cell_13_matmul_readvariableop_resourceW
Ssequential_3_simple_rnn_13_while_simple_rnn_cell_13_biasadd_readvariableop_resourceX
Tsequential_3_simple_rnn_13_while_simple_rnn_cell_13_matmul_1_readvariableop_resource¢Jsequential_3/simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp¢Isequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp¢Ksequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOpù
Rsequential_3/simple_rnn_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2T
Rsequential_3/simple_rnn_13/while/TensorArrayV2Read/TensorListGetItem/element_shape÷
Dsequential_3/simple_rnn_13/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_3_simple_rnn_13_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_13_tensorarrayunstack_tensorlistfromtensor_0,sequential_3_simple_rnn_13_while_placeholder[sequential_3/simple_rnn_13/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02F
Dsequential_3/simple_rnn_13/while/TensorArrayV2Read/TensorListGetItem­
Isequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOpReadVariableOpTsequential_3_simple_rnn_13_while_simple_rnn_cell_13_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02K
Isequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOpÕ
:sequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMulMatMulKsequential_3/simple_rnn_13/while/TensorArrayV2Read/TensorListGetItem:item:0Qsequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2<
:sequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul«
Jsequential_3/simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpReadVariableOpUsequential_3_simple_rnn_13_while_simple_rnn_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02L
Jsequential_3/simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpÒ
;sequential_3/simple_rnn_13/while/simple_rnn_cell_13/BiasAddBiasAddDsequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul:product:0Rsequential_3/simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2=
;sequential_3/simple_rnn_13/while/simple_rnn_cell_13/BiasAdd³
Ksequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOpReadVariableOpVsequential_3_simple_rnn_13_while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02M
Ksequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp¾
<sequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1MatMul.sequential_3_simple_rnn_13_while_placeholder_2Ssequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2>
<sequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1¼
7sequential_3/simple_rnn_13/while/simple_rnn_cell_13/addAddV2Dsequential_3/simple_rnn_13/while/simple_rnn_cell_13/BiasAdd:output:0Fsequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ29
7sequential_3/simple_rnn_13/while/simple_rnn_cell_13/addì
8sequential_3/simple_rnn_13/while/simple_rnn_cell_13/ReluRelu;sequential_3/simple_rnn_13/while/simple_rnn_cell_13/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8sequential_3/simple_rnn_13/while/simple_rnn_cell_13/Reluö
Esequential_3/simple_rnn_13/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.sequential_3_simple_rnn_13_while_placeholder_1,sequential_3_simple_rnn_13_while_placeholderFsequential_3/simple_rnn_13/while/simple_rnn_cell_13/Relu:activations:0*
_output_shapes
: *
element_dtype02G
Esequential_3/simple_rnn_13/while/TensorArrayV2Write/TensorListSetItem
&sequential_3/simple_rnn_13/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_3/simple_rnn_13/while/add/yÕ
$sequential_3/simple_rnn_13/while/addAddV2,sequential_3_simple_rnn_13_while_placeholder/sequential_3/simple_rnn_13/while/add/y:output:0*
T0*
_output_shapes
: 2&
$sequential_3/simple_rnn_13/while/add
(sequential_3/simple_rnn_13/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_3/simple_rnn_13/while/add_1/yý
&sequential_3/simple_rnn_13/while/add_1AddV2Nsequential_3_simple_rnn_13_while_sequential_3_simple_rnn_13_while_loop_counter1sequential_3/simple_rnn_13/while/add_1/y:output:0*
T0*
_output_shapes
: 2(
&sequential_3/simple_rnn_13/while/add_1
)sequential_3/simple_rnn_13/while/IdentityIdentity*sequential_3/simple_rnn_13/while/add_1:z:0K^sequential_3/simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpJ^sequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOpL^sequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2+
)sequential_3/simple_rnn_13/while/IdentityÄ
+sequential_3/simple_rnn_13/while/Identity_1IdentityTsequential_3_simple_rnn_13_while_sequential_3_simple_rnn_13_while_maximum_iterationsK^sequential_3/simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpJ^sequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOpL^sequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_3/simple_rnn_13/while/Identity_1
+sequential_3/simple_rnn_13/while/Identity_2Identity(sequential_3/simple_rnn_13/while/add:z:0K^sequential_3/simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpJ^sequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOpL^sequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_3/simple_rnn_13/while/Identity_2Å
+sequential_3/simple_rnn_13/while/Identity_3IdentityUsequential_3/simple_rnn_13/while/TensorArrayV2Write/TensorListSetItem:output_handle:0K^sequential_3/simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpJ^sequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOpL^sequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_3/simple_rnn_13/while/Identity_3È
+sequential_3/simple_rnn_13/while/Identity_4IdentityFsequential_3/simple_rnn_13/while/simple_rnn_cell_13/Relu:activations:0K^sequential_3/simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpJ^sequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOpL^sequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_3/simple_rnn_13/while/Identity_4"_
)sequential_3_simple_rnn_13_while_identity2sequential_3/simple_rnn_13/while/Identity:output:0"c
+sequential_3_simple_rnn_13_while_identity_14sequential_3/simple_rnn_13/while/Identity_1:output:0"c
+sequential_3_simple_rnn_13_while_identity_24sequential_3/simple_rnn_13/while/Identity_2:output:0"c
+sequential_3_simple_rnn_13_while_identity_34sequential_3/simple_rnn_13/while/Identity_3:output:0"c
+sequential_3_simple_rnn_13_while_identity_44sequential_3/simple_rnn_13/while/Identity_4:output:0"
Ksequential_3_simple_rnn_13_while_sequential_3_simple_rnn_13_strided_slice_1Msequential_3_simple_rnn_13_while_sequential_3_simple_rnn_13_strided_slice_1_0"¬
Ssequential_3_simple_rnn_13_while_simple_rnn_cell_13_biasadd_readvariableop_resourceUsequential_3_simple_rnn_13_while_simple_rnn_cell_13_biasadd_readvariableop_resource_0"®
Tsequential_3_simple_rnn_13_while_simple_rnn_cell_13_matmul_1_readvariableop_resourceVsequential_3_simple_rnn_13_while_simple_rnn_cell_13_matmul_1_readvariableop_resource_0"ª
Rsequential_3_simple_rnn_13_while_simple_rnn_cell_13_matmul_readvariableop_resourceTsequential_3_simple_rnn_13_while_simple_rnn_cell_13_matmul_readvariableop_resource_0"
sequential_3_simple_rnn_13_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_13_tensorarrayunstack_tensorlistfromtensorsequential_3_simple_rnn_13_while_tensorarrayv2read_tensorlistgetitem_sequential_3_simple_rnn_13_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :ÿÿÿÿÿÿÿÿÿ: : :::2
Jsequential_3/simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOpJsequential_3/simple_rnn_13/while/simple_rnn_cell_13/BiasAdd/ReadVariableOp2
Isequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOpIsequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul/ReadVariableOp2
Ksequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOpKsequential_3/simple_rnn_13/while/simple_rnn_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ò	
´
2__inference_simple_rnn_cell_13_layer_call_fn_14552

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_13_layer_call_and_return_conditional_losses_103992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Í
serving_default¹
O
embedding_3_input:
#serving_default_embedding_3_input:0ÿÿÿÿÿÿÿÿÿqJ
time_distributed_34
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿq	tensorflow/serving/predict:ö
¯A
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
+&call_and_return_all_conditional_losses
__call__
 _default_save_signature">
_tf_keras_sequentialÿ={"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 113]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_3_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_3", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 113]}, "dtype": "float32", "input_dim": 21010, "output_dim": 90, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 113}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_11", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_12", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_13", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 9, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 113]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 113]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_3_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_3", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 113]}, "dtype": "float32", "input_dim": 21010, "output_dim": 90, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 113}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_11", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_12", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_13", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 9, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
±

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
+¡&call_and_return_all_conditional_losses
¢__call__"
_tf_keras_layerö{"class_name": "Embedding", "name": "embedding_3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 113]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_3", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 113]}, "dtype": "float32", "input_dim": 21010, "output_dim": 90, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 113}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 113]}}

cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
+£&call_and_return_all_conditional_losses
¤__call__"Õ	
_tf_keras_rnn_layer·	{"class_name": "SimpleRNN", "name": "simple_rnn_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_11", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 90]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 113, 90]}}

cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
+¥&call_and_return_all_conditional_losses
¦__call__"Ù	
_tf_keras_rnn_layer»	{"class_name": "SimpleRNN", "name": "simple_rnn_12", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_12", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 113, 64]}}

cell

state_spec
	variables
 trainable_variables
!regularization_losses
"	keras_api
+§&call_and_return_all_conditional_losses
¨__call__"Ø	
_tf_keras_rnn_layerº	{"class_name": "SimpleRNN", "name": "simple_rnn_13", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_13", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 128]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 113, 128]}}
¡	
	#layer
$	variables
%trainable_variables
&regularization_losses
'	keras_api
+©&call_and_return_all_conditional_losses
ª__call__"
_tf_keras_layerë{"class_name": "TimeDistributed", "name": "time_distributed_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "time_distributed_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 9, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 256]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 113, 256]}}
¯
(iter

)beta_1

*beta_2
	+decay
,learning_rate-m.m/m0m1m2m3m4m5m6m7m-v.v/v0v1v2v3v4v5v6v7v"
	optimizer
v
0
-1
.2
/3
04
15
26
37
48
59
610
711"
trackable_list_wrapper
n
-0
.1
/2
03
14
25
36
47
58
69
710"
trackable_list_wrapper
 "
trackable_list_wrapper
Î
	variables
trainable_variables
8metrics
9layer_regularization_losses
:layer_metrics
;non_trainable_variables

<layers
	regularization_losses
__call__
 _default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
«serving_default"
signature_map
*:(
¤Z2embedding_3/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
	variables
trainable_variables
=layer_metrics
>layer_regularization_losses
?metrics
@non_trainable_variables

Alayers
regularization_losses
¢__call__
+¡&call_and_return_all_conditional_losses
'¡"call_and_return_conditional_losses"
_generic_user_object
ë

-kernel
.recurrent_kernel
/bias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
+¬&call_and_return_all_conditional_losses
­__call__"®
_tf_keras_layer{"class_name": "SimpleRNNCell", "name": "simple_rnn_cell_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_cell_11", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}
 "
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
¼
	variables
trainable_variables
Flayer_metrics
Glayer_regularization_losses
Hmetrics

Istates
Jnon_trainable_variables

Klayers
regularization_losses
¤__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses"
_generic_user_object
ï

0kernel
1recurrent_kernel
2bias
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
+®&call_and_return_all_conditional_losses
¯__call__"²
_tf_keras_layer{"class_name": "SimpleRNNCell", "name": "simple_rnn_cell_12", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_cell_12", "trainable": true, "dtype": "float32", "units": 128, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}
 "
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
¼
	variables
trainable_variables
Player_metrics
Qlayer_regularization_losses
Rmetrics

Sstates
Tnon_trainable_variables

Ulayers
regularization_losses
¦__call__
+¥&call_and_return_all_conditional_losses
'¥"call_and_return_conditional_losses"
_generic_user_object
ì

3kernel
4recurrent_kernel
5bias
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
+°&call_and_return_all_conditional_losses
±__call__"¯
_tf_keras_layer{"class_name": "SimpleRNNCell", "name": "simple_rnn_cell_13", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_cell_13", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}
 "
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
¼
	variables
 trainable_variables
Zlayer_metrics
[layer_regularization_losses
\metrics

]states
^non_trainable_variables

_layers
!regularization_losses
¨__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
¬

6kernel
7bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
+²&call_and_return_all_conditional_losses
³__call__"
_tf_keras_layerë{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 9, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}}
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
°
$	variables
%trainable_variables
dlayer_metrics
elayer_regularization_losses
fmetrics
gnon_trainable_variables

hlayers
&regularization_losses
ª__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
9:7Z@2'simple_rnn_11/simple_rnn_cell_11/kernel
C:A@@21simple_rnn_11/simple_rnn_cell_11/recurrent_kernel
3:1@2%simple_rnn_11/simple_rnn_cell_11/bias
::8	@2'simple_rnn_12/simple_rnn_cell_12/kernel
E:C
21simple_rnn_12/simple_rnn_cell_12/recurrent_kernel
4:22%simple_rnn_12/simple_rnn_cell_12/bias
;:9
2'simple_rnn_13/simple_rnn_cell_13/kernel
E:C
21simple_rnn_13/simple_rnn_cell_13/recurrent_kernel
4:22%simple_rnn_13/simple_rnn_cell_13/bias
,:*		2time_distributed_3/kernel
%:#	2time_distributed_3/bias
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
°
B	variables
Ctrainable_variables
klayer_metrics
llayer_regularization_losses
mmetrics
nnon_trainable_variables

olayers
Dregularization_losses
­__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
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
'
0"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
°
L	variables
Mtrainable_variables
player_metrics
qlayer_regularization_losses
rmetrics
snon_trainable_variables

tlayers
Nregularization_losses
¯__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
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
'
0"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
°
V	variables
Wtrainable_variables
ulayer_metrics
vlayer_regularization_losses
wmetrics
xnon_trainable_variables

ylayers
Xregularization_losses
±__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
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
'
0"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
°
`	variables
atrainable_variables
zlayer_metrics
{layer_regularization_losses
|metrics
}non_trainable_variables

~layers
bregularization_losses
³__call__
+²&call_and_return_all_conditional_losses
'²"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
#0"
trackable_list_wrapper
¾
	total

count
	variables
	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}


total

count

_fn_kwargs
	variables
	keras_api"¸
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
/
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
>:<Z@2.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/m
H:F@@28Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/m
8:6@2,Adam/simple_rnn_11/simple_rnn_cell_11/bias/m
?:=	@2.Adam/simple_rnn_12/simple_rnn_cell_12/kernel/m
J:H
28Adam/simple_rnn_12/simple_rnn_cell_12/recurrent_kernel/m
9:72,Adam/simple_rnn_12/simple_rnn_cell_12/bias/m
@:>
2.Adam/simple_rnn_13/simple_rnn_cell_13/kernel/m
J:H
28Adam/simple_rnn_13/simple_rnn_cell_13/recurrent_kernel/m
9:72,Adam/simple_rnn_13/simple_rnn_cell_13/bias/m
1:/		2 Adam/time_distributed_3/kernel/m
*:(	2Adam/time_distributed_3/bias/m
>:<Z@2.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/v
H:F@@28Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/v
8:6@2,Adam/simple_rnn_11/simple_rnn_cell_11/bias/v
?:=	@2.Adam/simple_rnn_12/simple_rnn_cell_12/kernel/v
J:H
28Adam/simple_rnn_12/simple_rnn_cell_12/recurrent_kernel/v
9:72,Adam/simple_rnn_12/simple_rnn_cell_12/bias/v
@:>
2.Adam/simple_rnn_13/simple_rnn_cell_13/kernel/v
J:H
28Adam/simple_rnn_13/simple_rnn_cell_13/recurrent_kernel/v
9:72,Adam/simple_rnn_13/simple_rnn_cell_13/bias/v
1:/		2 Adam/time_distributed_3/kernel/v
*:(	2Adam/time_distributed_3/bias/v
ê2ç
G__inference_sequential_3_layer_call_and_return_conditional_losses_12358
G__inference_sequential_3_layer_call_and_return_conditional_losses_12705
G__inference_sequential_3_layer_call_and_return_conditional_losses_11843
G__inference_sequential_3_layer_call_and_return_conditional_losses_11808À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
þ2û
,__inference_sequential_3_layer_call_fn_11972
,__inference_sequential_3_layer_call_fn_12734
,__inference_sequential_3_layer_call_fn_12763
,__inference_sequential_3_layer_call_fn_11908À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ç2ä
__inference__wrapped_model_9309À
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *0¢-
+(
embedding_3_inputÿÿÿÿÿÿÿÿÿq
ð2í
F__inference_embedding_3_layer_call_and_return_conditional_losses_12773¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_embedding_3_layer_call_fn_12780¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_13004
H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_12892
H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_13250
H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_13138Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
-__inference_simple_rnn_11_layer_call_fn_13015
-__inference_simple_rnn_11_layer_call_fn_13261
-__inference_simple_rnn_11_layer_call_fn_13026
-__inference_simple_rnn_11_layer_call_fn_13272Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_13384
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_13630
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_13742
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_13496Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
-__inference_simple_rnn_12_layer_call_fn_13764
-__inference_simple_rnn_12_layer_call_fn_13507
-__inference_simple_rnn_12_layer_call_fn_13518
-__inference_simple_rnn_12_layer_call_fn_13753Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_13988
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_14122
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_14234
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_13876Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
-__inference_simple_rnn_13_layer_call_fn_13999
-__inference_simple_rnn_13_layer_call_fn_14010
-__inference_simple_rnn_13_layer_call_fn_14245
-__inference_simple_rnn_13_layer_call_fn_14256Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2ÿ
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_14300
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_14333
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_14278
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_14348À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
2__inference_time_distributed_3_layer_call_fn_14318
2__inference_time_distributed_3_layer_call_fn_14309
2__inference_time_distributed_3_layer_call_fn_14366
2__inference_time_distributed_3_layer_call_fn_14357À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÔBÑ
#__inference_signature_wrapper_12011embedding_3_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
â2ß
M__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_14400
M__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_14383¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¬2©
2__inference_simple_rnn_cell_11_layer_call_fn_14428
2__inference_simple_rnn_cell_11_layer_call_fn_14414¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
M__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_14445
M__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_14462¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¬2©
2__inference_simple_rnn_cell_12_layer_call_fn_14476
2__inference_simple_rnn_cell_12_layer_call_fn_14490¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
M__inference_simple_rnn_cell_13_layer_call_and_return_conditional_losses_14524
M__inference_simple_rnn_cell_13_layer_call_and_return_conditional_losses_14507¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¬2©
2__inference_simple_rnn_cell_13_layer_call_fn_14538
2__inference_simple_rnn_cell_13_layer_call_fn_14552¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ì2é
B__inference_dense_3_layer_call_and_return_conditional_losses_14563¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ2Î
'__inference_dense_3_layer_call_fn_14572¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 »
__inference__wrapped_model_9309-/.02135467:¢7
0¢-
+(
embedding_3_inputÿÿÿÿÿÿÿÿÿq
ª "KªH
F
time_distributed_30-
time_distributed_3ÿÿÿÿÿÿÿÿÿq	£
B__inference_dense_3_layer_call_and_return_conditional_losses_14563]670¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ	
 {
'__inference_dense_3_layer_call_fn_14572P670¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ	©
F__inference_embedding_3_layer_call_and_return_conditional_losses_12773_/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿq
ª ")¢&

0ÿÿÿÿÿÿÿÿÿqZ
 
+__inference_embedding_3_layer_call_fn_12780R/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿq
ª "ÿÿÿÿÿÿÿÿÿqZÈ
G__inference_sequential_3_layer_call_and_return_conditional_losses_11808}-/.02135467B¢?
8¢5
+(
embedding_3_inputÿÿÿÿÿÿÿÿÿq
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿq	
 È
G__inference_sequential_3_layer_call_and_return_conditional_losses_11843}-/.02135467B¢?
8¢5
+(
embedding_3_inputÿÿÿÿÿÿÿÿÿq
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿq	
 ½
G__inference_sequential_3_layer_call_and_return_conditional_losses_12358r-/.021354677¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿq
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿq	
 ½
G__inference_sequential_3_layer_call_and_return_conditional_losses_12705r-/.021354677¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿq
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿq	
  
,__inference_sequential_3_layer_call_fn_11908p-/.02135467B¢?
8¢5
+(
embedding_3_inputÿÿÿÿÿÿÿÿÿq
p

 
ª "ÿÿÿÿÿÿÿÿÿq	 
,__inference_sequential_3_layer_call_fn_11972p-/.02135467B¢?
8¢5
+(
embedding_3_inputÿÿÿÿÿÿÿÿÿq
p 

 
ª "ÿÿÿÿÿÿÿÿÿq	
,__inference_sequential_3_layer_call_fn_12734e-/.021354677¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿq
p

 
ª "ÿÿÿÿÿÿÿÿÿq	
,__inference_sequential_3_layer_call_fn_12763e-/.021354677¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿq
p 

 
ª "ÿÿÿÿÿÿÿÿÿq	Ô
#__inference_signature_wrapper_12011¬-/.02135467O¢L
¢ 
EªB
@
embedding_3_input+(
embedding_3_inputÿÿÿÿÿÿÿÿÿq"KªH
F
time_distributed_30-
time_distributed_3ÿÿÿÿÿÿÿÿÿq	×
H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_12892-/.O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ×
H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_13004-/.O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ½
H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_13138q-/.?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿqZ

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿq@
 ½
H__inference_simple_rnn_11_layer_call_and_return_conditional_losses_13250q-/.?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿqZ

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿq@
 ®
-__inference_simple_rnn_11_layer_call_fn_13015}-/.O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@®
-__inference_simple_rnn_11_layer_call_fn_13026}-/.O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
-__inference_simple_rnn_11_layer_call_fn_13261d-/.?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿqZ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿq@
-__inference_simple_rnn_11_layer_call_fn_13272d-/.?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿqZ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿq@Ø
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_13384021O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ø
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_13496021O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¾
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_13630r021?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿq@

 
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿq
 ¾
H__inference_simple_rnn_12_layer_call_and_return_conditional_losses_13742r021?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿq@

 
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿq
 ¯
-__inference_simple_rnn_12_layer_call_fn_13507~021O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¯
-__inference_simple_rnn_12_layer_call_fn_13518~021O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
-__inference_simple_rnn_12_layer_call_fn_13753e021?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿq@

 
p

 
ª "ÿÿÿÿÿÿÿÿÿq
-__inference_simple_rnn_12_layer_call_fn_13764e021?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿq@

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿq¿
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_13876s354@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿq

 
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿq
 ¿
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_13988s354@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿq

 
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿq
 Ù
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_14122354P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ù
H__inference_simple_rnn_13_layer_call_and_return_conditional_losses_14234354P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
-__inference_simple_rnn_13_layer_call_fn_13999f354@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿq

 
p

 
ª "ÿÿÿÿÿÿÿÿÿq
-__inference_simple_rnn_13_layer_call_fn_14010f354@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿq

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿq°
-__inference_simple_rnn_13_layer_call_fn_14245354P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°
-__inference_simple_rnn_13_layer_call_fn_14256354P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
M__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_14383·-/.\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿZ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ@
$!

0/1/0ÿÿÿÿÿÿÿÿÿ@
 
M__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_14400·-/.\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿZ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p 
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ@
$!

0/1/0ÿÿÿÿÿÿÿÿÿ@
 à
2__inference_simple_rnn_cell_11_layer_call_fn_14414©-/.\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿZ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ@
"

1/0ÿÿÿÿÿÿÿÿÿ@à
2__inference_simple_rnn_cell_11_layer_call_fn_14428©-/.\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿZ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p 
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ@
"

1/0ÿÿÿÿÿÿÿÿÿ@
M__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_14445º021]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ@
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "T¢Q
J¢G

0/0ÿÿÿÿÿÿÿÿÿ
%"
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
M__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_14462º021]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ@
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "T¢Q
J¢G

0/0ÿÿÿÿÿÿÿÿÿ
%"
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 ã
2__inference_simple_rnn_cell_12_layer_call_fn_14476¬021]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ@
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "F¢C

0ÿÿÿÿÿÿÿÿÿ
# 

1/0ÿÿÿÿÿÿÿÿÿã
2__inference_simple_rnn_cell_12_layer_call_fn_14490¬021]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ@
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "F¢C

0ÿÿÿÿÿÿÿÿÿ
# 

1/0ÿÿÿÿÿÿÿÿÿ
M__inference_simple_rnn_cell_13_layer_call_and_return_conditional_losses_14507»354^¢[
T¢Q
!
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "T¢Q
J¢G

0/0ÿÿÿÿÿÿÿÿÿ
%"
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
M__inference_simple_rnn_cell_13_layer_call_and_return_conditional_losses_14524»354^¢[
T¢Q
!
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "T¢Q
J¢G

0/0ÿÿÿÿÿÿÿÿÿ
%"
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 ä
2__inference_simple_rnn_cell_13_layer_call_fn_14538­354^¢[
T¢Q
!
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "F¢C

0ÿÿÿÿÿÿÿÿÿ
# 

1/0ÿÿÿÿÿÿÿÿÿä
2__inference_simple_rnn_cell_13_layer_call_fn_14552­354^¢[
T¢Q
!
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "F¢C

0ÿÿÿÿÿÿÿÿÿ
# 

1/0ÿÿÿÿÿÿÿÿÿÐ
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_1427867E¢B
;¢8
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
 Ð
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_1430067E¢B
;¢8
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
 ¾
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_14333m67<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿq
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿq	
 ¾
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_14348m67<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿq
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿq	
 ¨
2__inference_time_distributed_3_layer_call_fn_14309r67E¢B
;¢8
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	¨
2__inference_time_distributed_3_layer_call_fn_14318r67E¢B
;¢8
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	
2__inference_time_distributed_3_layer_call_fn_14357`67<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿq
p

 
ª "ÿÿÿÿÿÿÿÿÿq	
2__inference_time_distributed_3_layer_call_fn_14366`67<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿq
p 

 
ª "ÿÿÿÿÿÿÿÿÿq	