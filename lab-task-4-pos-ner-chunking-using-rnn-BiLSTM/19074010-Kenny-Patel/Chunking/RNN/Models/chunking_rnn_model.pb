Нё1
Хл
B
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Њ
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
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
Т
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
Б
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
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
И"serve*2.4.12v2.4.1-0-g85c8b2a817f8м .
К
embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
кЖP*'
shared_nameembedding_2/embeddings
Г
*embedding_2/embeddings/Read/ReadVariableOpReadVariableOpembedding_2/embeddings* 
_output_shapes
:
кЖP*
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
¶
%simple_rnn_6/simple_rnn_cell_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P@*6
shared_name'%simple_rnn_6/simple_rnn_cell_6/kernel
Я
9simple_rnn_6/simple_rnn_cell_6/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_6/simple_rnn_cell_6/kernel*
_output_shapes

:P@*
dtype0
Ї
/simple_rnn_6/simple_rnn_cell_6/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*@
shared_name1/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel
≥
Csimple_rnn_6/simple_rnn_cell_6/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel*
_output_shapes

:@@*
dtype0
Ю
#simple_rnn_6/simple_rnn_cell_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#simple_rnn_6/simple_rnn_cell_6/bias
Ч
7simple_rnn_6/simple_rnn_cell_6/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_6/simple_rnn_cell_6/bias*
_output_shapes
:@*
dtype0
І
%simple_rnn_7/simple_rnn_cell_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*6
shared_name'%simple_rnn_7/simple_rnn_cell_7/kernel
†
9simple_rnn_7/simple_rnn_cell_7/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_7/simple_rnn_cell_7/kernel*
_output_shapes
:	@А*
dtype0
Љ
/simple_rnn_7/simple_rnn_cell_7/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*@
shared_name1/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel
µ
Csimple_rnn_7/simple_rnn_cell_7/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel* 
_output_shapes
:
АА*
dtype0
Я
#simple_rnn_7/simple_rnn_cell_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#simple_rnn_7/simple_rnn_cell_7/bias
Ш
7simple_rnn_7/simple_rnn_cell_7/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_7/simple_rnn_cell_7/bias*
_output_shapes	
:А*
dtype0
®
%simple_rnn_8/simple_rnn_cell_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*6
shared_name'%simple_rnn_8/simple_rnn_cell_8/kernel
°
9simple_rnn_8/simple_rnn_cell_8/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_8/simple_rnn_cell_8/kernel* 
_output_shapes
:
АА*
dtype0
Љ
/simple_rnn_8/simple_rnn_cell_8/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*@
shared_name1/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel
µ
Csimple_rnn_8/simple_rnn_cell_8/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel* 
_output_shapes
:
АА*
dtype0
Я
#simple_rnn_8/simple_rnn_cell_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#simple_rnn_8/simple_rnn_cell_8/bias
Ш
7simple_rnn_8/simple_rnn_cell_8/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_8/simple_rnn_cell_8/bias*
_output_shapes	
:А*
dtype0
П
time_distributed_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А**
shared_nametime_distributed_1/kernel
И
-time_distributed_1/kernel/Read/ReadVariableOpReadVariableOptime_distributed_1/kernel*
_output_shapes
:	А*
dtype0
Ж
time_distributed_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nametime_distributed_1/bias

+time_distributed_1/bias/Read/ReadVariableOpReadVariableOptime_distributed_1/bias*
_output_shapes
:*
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
і
,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P@*=
shared_name.,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/m
≠
@Adam/simple_rnn_6/simple_rnn_cell_6/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/m*
_output_shapes

:P@*
dtype0
»
6Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*G
shared_name86Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/m
Ѕ
JAdam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/m*
_output_shapes

:@@*
dtype0
ђ
*Adam/simple_rnn_6/simple_rnn_cell_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/simple_rnn_6/simple_rnn_cell_6/bias/m
•
>Adam/simple_rnn_6/simple_rnn_cell_6/bias/m/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_6/simple_rnn_cell_6/bias/m*
_output_shapes
:@*
dtype0
µ
,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*=
shared_name.,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m
Ѓ
@Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m*
_output_shapes
:	@А*
dtype0
 
6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*G
shared_name86Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m
√
JAdam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m* 
_output_shapes
:
АА*
dtype0
≠
*Adam/simple_rnn_7/simple_rnn_cell_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*;
shared_name,*Adam/simple_rnn_7/simple_rnn_cell_7/bias/m
¶
>Adam/simple_rnn_7/simple_rnn_cell_7/bias/m/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_7/simple_rnn_cell_7/bias/m*
_output_shapes	
:А*
dtype0
ґ
,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*=
shared_name.,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/m
ѓ
@Adam/simple_rnn_8/simple_rnn_cell_8/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/m* 
_output_shapes
:
АА*
dtype0
 
6Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*G
shared_name86Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/m
√
JAdam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/m* 
_output_shapes
:
АА*
dtype0
≠
*Adam/simple_rnn_8/simple_rnn_cell_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*;
shared_name,*Adam/simple_rnn_8/simple_rnn_cell_8/bias/m
¶
>Adam/simple_rnn_8/simple_rnn_cell_8/bias/m/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_8/simple_rnn_cell_8/bias/m*
_output_shapes	
:А*
dtype0
Э
 Adam/time_distributed_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*1
shared_name" Adam/time_distributed_1/kernel/m
Ц
4Adam/time_distributed_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/time_distributed_1/kernel/m*
_output_shapes
:	А*
dtype0
Ф
Adam/time_distributed_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/time_distributed_1/bias/m
Н
2Adam/time_distributed_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_1/bias/m*
_output_shapes
:*
dtype0
і
,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P@*=
shared_name.,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/v
≠
@Adam/simple_rnn_6/simple_rnn_cell_6/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/v*
_output_shapes

:P@*
dtype0
»
6Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*G
shared_name86Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/v
Ѕ
JAdam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/v*
_output_shapes

:@@*
dtype0
ђ
*Adam/simple_rnn_6/simple_rnn_cell_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/simple_rnn_6/simple_rnn_cell_6/bias/v
•
>Adam/simple_rnn_6/simple_rnn_cell_6/bias/v/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_6/simple_rnn_cell_6/bias/v*
_output_shapes
:@*
dtype0
µ
,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*=
shared_name.,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v
Ѓ
@Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v*
_output_shapes
:	@А*
dtype0
 
6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*G
shared_name86Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v
√
JAdam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v* 
_output_shapes
:
АА*
dtype0
≠
*Adam/simple_rnn_7/simple_rnn_cell_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*;
shared_name,*Adam/simple_rnn_7/simple_rnn_cell_7/bias/v
¶
>Adam/simple_rnn_7/simple_rnn_cell_7/bias/v/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_7/simple_rnn_cell_7/bias/v*
_output_shapes	
:А*
dtype0
ґ
,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*=
shared_name.,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/v
ѓ
@Adam/simple_rnn_8/simple_rnn_cell_8/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/v* 
_output_shapes
:
АА*
dtype0
 
6Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*G
shared_name86Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/v
√
JAdam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/v* 
_output_shapes
:
АА*
dtype0
≠
*Adam/simple_rnn_8/simple_rnn_cell_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*;
shared_name,*Adam/simple_rnn_8/simple_rnn_cell_8/bias/v
¶
>Adam/simple_rnn_8/simple_rnn_cell_8/bias/v/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_8/simple_rnn_cell_8/bias/v*
_output_shapes	
:А*
dtype0
Э
 Adam/time_distributed_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*1
shared_name" Adam/time_distributed_1/kernel/v
Ц
4Adam/time_distributed_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/time_distributed_1/kernel/v*
_output_shapes
:	А*
dtype0
Ф
Adam/time_distributed_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/time_distributed_1/bias/v
Н
2Adam/time_distributed_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
”K
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ОK
valueДKBБK BъJ
і
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
regularization_losses
trainable_variables
		variables

	keras_api

signatures
b

embeddings
regularization_losses
trainable_variables
	variables
	keras_api
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
l
cell

state_spec
regularization_losses
 trainable_variables
!	variables
"	keras_api
]
	#layer
$regularization_losses
%trainable_variables
&	variables
'	keras_api
Ь
(iter

)beta_1

*beta_2
	+decay
,learning_rate-mИ.mЙ/mК0mЛ1mМ2mН3mО4mП5mР6mС7mТ-vУ.vФ/vХ0vЦ1vЧ2vШ3vЩ4vЪ5vЫ6vЬ7vЭ
 
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
≠
regularization_losses
8metrics
9layer_metrics
trainable_variables
:layer_regularization_losses

;layers
<non_trainable_variables
		variables
 
fd
VARIABLE_VALUEembedding_2/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
≠
regularization_losses
=metrics
>layer_metrics
trainable_variables
?layer_regularization_losses

@layers
Anon_trainable_variables
	variables
~

-kernel
.recurrent_kernel
/bias
Bregularization_losses
Ctrainable_variables
D	variables
E	keras_api
 
 

-0
.1
/2

-0
.1
/2
є
regularization_losses
Fmetrics
Glayer_metrics
trainable_variables
Hlayer_regularization_losses

Istates

Jlayers
Knon_trainable_variables
	variables
~

0kernel
1recurrent_kernel
2bias
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
 
 

00
11
22

00
11
22
є
regularization_losses
Pmetrics
Qlayer_metrics
trainable_variables
Rlayer_regularization_losses

Sstates

Tlayers
Unon_trainable_variables
	variables
~

3kernel
4recurrent_kernel
5bias
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
 
 

30
41
52

30
41
52
є
regularization_losses
Zmetrics
[layer_metrics
 trainable_variables
\layer_regularization_losses

]states

^layers
_non_trainable_variables
!	variables
h

6kernel
7bias
`regularization_losses
atrainable_variables
b	variables
c	keras_api
 

60
71

60
71
≠
$regularization_losses
dmetrics
elayer_metrics
%trainable_variables
flayer_regularization_losses

glayers
hnon_trainable_variables
&	variables
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
ki
VARIABLE_VALUE%simple_rnn_6/simple_rnn_cell_6/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#simple_rnn_6/simple_rnn_cell_6/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%simple_rnn_7/simple_rnn_cell_7/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#simple_rnn_7/simple_rnn_cell_7/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%simple_rnn_8/simple_rnn_cell_8/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#simple_rnn_8/simple_rnn_cell_8/bias0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEtime_distributed_1/kernel0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEtime_distributed_1/bias1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE

i0
j1
 
 
#
0
1
2
3
4

0
 
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
≠
Bregularization_losses
kmetrics
llayer_metrics
Ctrainable_variables
mlayer_regularization_losses

nlayers
onon_trainable_variables
D	variables
 
 
 
 

0
 
 

00
11
22

00
11
22
≠
Lregularization_losses
pmetrics
qlayer_metrics
Mtrainable_variables
rlayer_regularization_losses

slayers
tnon_trainable_variables
N	variables
 
 
 
 

0
 
 

30
41
52

30
41
52
≠
Vregularization_losses
umetrics
vlayer_metrics
Wtrainable_variables
wlayer_regularization_losses

xlayers
ynon_trainable_variables
X	variables
 
 
 
 

0
 
 

60
71

60
71
≠
`regularization_losses
zmetrics
{layer_metrics
atrainable_variables
|layer_regularization_losses

}layers
~non_trainable_variables
b	variables
 
 
 

#0
 
7
	total

Аcount
Б	variables
В	keras_api
I

Гtotal

Дcount
Е
_fn_kwargs
Ж	variables
З	keras_api
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
А1

Б	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Г0
Д1

Ж	variables
ПМ
VARIABLE_VALUE,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE6Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE*Adam/simple_rnn_6/simple_rnn_cell_6/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ПМ
VARIABLE_VALUE,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE*Adam/simple_rnn_7/simple_rnn_cell_7/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ПМ
VARIABLE_VALUE,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE6Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE*Adam/simple_rnn_8/simple_rnn_cell_8/bias/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE Adam/time_distributed_1/kernel/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/time_distributed_1/bias/mMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ПМ
VARIABLE_VALUE,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE6Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE*Adam/simple_rnn_6/simple_rnn_cell_6/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ПМ
VARIABLE_VALUE,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE*Adam/simple_rnn_7/simple_rnn_cell_7/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ПМ
VARIABLE_VALUE,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE6Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE*Adam/simple_rnn_8/simple_rnn_cell_8/bias/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE Adam/time_distributed_1/kernel/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/time_distributed_1/bias/vMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Д
!serving_default_embedding_2_inputPlaceholder*'
_output_shapes
:€€€€€€€€€M*
dtype0*
shape:€€€€€€€€€M
Ъ
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_2_inputembedding_2/embeddings%simple_rnn_6/simple_rnn_cell_6/kernel#simple_rnn_6/simple_rnn_cell_6/bias/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel%simple_rnn_7/simple_rnn_cell_7/kernel#simple_rnn_7/simple_rnn_cell_7/bias/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel%simple_rnn_8/simple_rnn_cell_8/kernel#simple_rnn_8/simple_rnn_cell_8/bias/simple_rnn_8/simple_rnn_cell_8/recurrent_kerneltime_distributed_1/kerneltime_distributed_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_13154
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
є
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_2/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp9simple_rnn_6/simple_rnn_cell_6/kernel/Read/ReadVariableOpCsimple_rnn_6/simple_rnn_cell_6/recurrent_kernel/Read/ReadVariableOp7simple_rnn_6/simple_rnn_cell_6/bias/Read/ReadVariableOp9simple_rnn_7/simple_rnn_cell_7/kernel/Read/ReadVariableOpCsimple_rnn_7/simple_rnn_cell_7/recurrent_kernel/Read/ReadVariableOp7simple_rnn_7/simple_rnn_cell_7/bias/Read/ReadVariableOp9simple_rnn_8/simple_rnn_cell_8/kernel/Read/ReadVariableOpCsimple_rnn_8/simple_rnn_cell_8/recurrent_kernel/Read/ReadVariableOp7simple_rnn_8/simple_rnn_cell_8/bias/Read/ReadVariableOp-time_distributed_1/kernel/Read/ReadVariableOp+time_distributed_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp@Adam/simple_rnn_6/simple_rnn_cell_6/kernel/m/Read/ReadVariableOpJAdam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/m/Read/ReadVariableOp>Adam/simple_rnn_6/simple_rnn_cell_6/bias/m/Read/ReadVariableOp@Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m/Read/ReadVariableOpJAdam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m/Read/ReadVariableOp>Adam/simple_rnn_7/simple_rnn_cell_7/bias/m/Read/ReadVariableOp@Adam/simple_rnn_8/simple_rnn_cell_8/kernel/m/Read/ReadVariableOpJAdam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/m/Read/ReadVariableOp>Adam/simple_rnn_8/simple_rnn_cell_8/bias/m/Read/ReadVariableOp4Adam/time_distributed_1/kernel/m/Read/ReadVariableOp2Adam/time_distributed_1/bias/m/Read/ReadVariableOp@Adam/simple_rnn_6/simple_rnn_cell_6/kernel/v/Read/ReadVariableOpJAdam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/v/Read/ReadVariableOp>Adam/simple_rnn_6/simple_rnn_cell_6/bias/v/Read/ReadVariableOp@Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v/Read/ReadVariableOpJAdam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v/Read/ReadVariableOp>Adam/simple_rnn_7/simple_rnn_cell_7/bias/v/Read/ReadVariableOp@Adam/simple_rnn_8/simple_rnn_cell_8/kernel/v/Read/ReadVariableOpJAdam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/v/Read/ReadVariableOp>Adam/simple_rnn_8/simple_rnn_cell_8/bias/v/Read/ReadVariableOp4Adam/time_distributed_1/kernel/v/Read/ReadVariableOp2Adam/time_distributed_1/bias/v/Read/ReadVariableOpConst*8
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
GPU 2J 8В *'
f"R 
__inference__traced_save_15867
Ў
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_2/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate%simple_rnn_6/simple_rnn_cell_6/kernel/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel#simple_rnn_6/simple_rnn_cell_6/bias%simple_rnn_7/simple_rnn_cell_7/kernel/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel#simple_rnn_7/simple_rnn_cell_7/bias%simple_rnn_8/simple_rnn_cell_8/kernel/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel#simple_rnn_8/simple_rnn_cell_8/biastime_distributed_1/kerneltime_distributed_1/biastotalcounttotal_1count_1,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/m6Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/m*Adam/simple_rnn_6/simple_rnn_cell_6/bias/m,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m*Adam/simple_rnn_7/simple_rnn_cell_7/bias/m,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/m6Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/m*Adam/simple_rnn_8/simple_rnn_cell_8/bias/m Adam/time_distributed_1/kernel/mAdam/time_distributed_1/bias/m,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/v6Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/v*Adam/simple_rnn_6/simple_rnn_cell_6/bias/v,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v*Adam/simple_rnn_7/simple_rnn_cell_7/bias/v,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/v6Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/v*Adam/simple_rnn_8/simple_rnn_cell_8/bias/v Adam/time_distributed_1/kernel/vAdam/time_distributed_1/bias/v*7
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_16006пи,
р	
≥
1__inference_simple_rnn_cell_8_layer_call_fn_15695

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1ИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_115422
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

IdentityУ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:€€€€€€€€€А:€€€€€€€€€А:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0
«Q
Л
*sequential_2_simple_rnn_8_while_body_10373P
Lsequential_2_simple_rnn_8_while_sequential_2_simple_rnn_8_while_loop_counterV
Rsequential_2_simple_rnn_8_while_sequential_2_simple_rnn_8_while_maximum_iterations/
+sequential_2_simple_rnn_8_while_placeholder1
-sequential_2_simple_rnn_8_while_placeholder_11
-sequential_2_simple_rnn_8_while_placeholder_2O
Ksequential_2_simple_rnn_8_while_sequential_2_simple_rnn_8_strided_slice_1_0М
Зsequential_2_simple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0V
Rsequential_2_simple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0W
Ssequential_2_simple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0X
Tsequential_2_simple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0,
(sequential_2_simple_rnn_8_while_identity.
*sequential_2_simple_rnn_8_while_identity_1.
*sequential_2_simple_rnn_8_while_identity_2.
*sequential_2_simple_rnn_8_while_identity_3.
*sequential_2_simple_rnn_8_while_identity_4M
Isequential_2_simple_rnn_8_while_sequential_2_simple_rnn_8_strided_slice_1К
Еsequential_2_simple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_8_tensorarrayunstack_tensorlistfromtensorT
Psequential_2_simple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resourceU
Qsequential_2_simple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resourceV
Rsequential_2_simple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐHsequential_2/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐGsequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpҐIsequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpч
Qsequential_2/simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2S
Qsequential_2/simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeс
Csequential_2/simple_rnn_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЗsequential_2_simple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0+sequential_2_simple_rnn_8_while_placeholderZsequential_2/simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02E
Csequential_2/simple_rnn_8/while/TensorArrayV2Read/TensorListGetItemІ
Gsequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOpRsequential_2_simple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02I
Gsequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpќ
8sequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMulMatMulJsequential_2/simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem:item:0Osequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2:
8sequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul•
Hsequential_2/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOpSsequential_2_simple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02J
Hsequential_2/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp 
9sequential_2/simple_rnn_8/while/simple_rnn_cell_8/BiasAddBiasAddBsequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul:product:0Psequential_2/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2;
9sequential_2/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd≠
Isequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOpTsequential_2_simple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02K
Isequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpЈ
:sequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1MatMul-sequential_2_simple_rnn_8_while_placeholder_2Qsequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2<
:sequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1і
5sequential_2/simple_rnn_8/while/simple_rnn_cell_8/addAddV2Bsequential_2/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd:output:0Dsequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А27
5sequential_2/simple_rnn_8/while/simple_rnn_cell_8/addж
6sequential_2/simple_rnn_8/while/simple_rnn_cell_8/ReluRelu9sequential_2/simple_rnn_8/while/simple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А28
6sequential_2/simple_rnn_8/while/simple_rnn_cell_8/Reluр
Dsequential_2/simple_rnn_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_2_simple_rnn_8_while_placeholder_1+sequential_2_simple_rnn_8_while_placeholderDsequential_2/simple_rnn_8/while/simple_rnn_cell_8/Relu:activations:0*
_output_shapes
: *
element_dtype02F
Dsequential_2/simple_rnn_8/while/TensorArrayV2Write/TensorListSetItemР
%sequential_2/simple_rnn_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_2/simple_rnn_8/while/add/y—
#sequential_2/simple_rnn_8/while/addAddV2+sequential_2_simple_rnn_8_while_placeholder.sequential_2/simple_rnn_8/while/add/y:output:0*
T0*
_output_shapes
: 2%
#sequential_2/simple_rnn_8/while/addФ
'sequential_2/simple_rnn_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_2/simple_rnn_8/while/add_1/yш
%sequential_2/simple_rnn_8/while/add_1AddV2Lsequential_2_simple_rnn_8_while_sequential_2_simple_rnn_8_while_loop_counter0sequential_2/simple_rnn_8/while/add_1/y:output:0*
T0*
_output_shapes
: 2'
%sequential_2/simple_rnn_8/while/add_1Н
(sequential_2/simple_rnn_8/while/IdentityIdentity)sequential_2/simple_rnn_8/while/add_1:z:0I^sequential_2/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential_2/simple_rnn_8/while/IdentityЇ
*sequential_2/simple_rnn_8/while/Identity_1IdentityRsequential_2_simple_rnn_8_while_sequential_2_simple_rnn_8_while_maximum_iterationsI^sequential_2/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_2/simple_rnn_8/while/Identity_1П
*sequential_2/simple_rnn_8/while/Identity_2Identity'sequential_2/simple_rnn_8/while/add:z:0I^sequential_2/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_2/simple_rnn_8/while/Identity_2Љ
*sequential_2/simple_rnn_8/while/Identity_3IdentityTsequential_2/simple_rnn_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0I^sequential_2/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_2/simple_rnn_8/while/Identity_3Њ
*sequential_2/simple_rnn_8/while/Identity_4IdentityDsequential_2/simple_rnn_8/while/simple_rnn_cell_8/Relu:activations:0I^sequential_2/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2,
*sequential_2/simple_rnn_8/while/Identity_4"]
(sequential_2_simple_rnn_8_while_identity1sequential_2/simple_rnn_8/while/Identity:output:0"a
*sequential_2_simple_rnn_8_while_identity_13sequential_2/simple_rnn_8/while/Identity_1:output:0"a
*sequential_2_simple_rnn_8_while_identity_23sequential_2/simple_rnn_8/while/Identity_2:output:0"a
*sequential_2_simple_rnn_8_while_identity_33sequential_2/simple_rnn_8/while/Identity_3:output:0"a
*sequential_2_simple_rnn_8_while_identity_43sequential_2/simple_rnn_8/while/Identity_4:output:0"Ш
Isequential_2_simple_rnn_8_while_sequential_2_simple_rnn_8_strided_slice_1Ksequential_2_simple_rnn_8_while_sequential_2_simple_rnn_8_strided_slice_1_0"®
Qsequential_2_simple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resourceSsequential_2_simple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"™
Rsequential_2_simple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resourceTsequential_2_simple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"¶
Psequential_2_simple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resourceRsequential_2_simple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0"Т
Еsequential_2_simple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_8_tensorarrayunstack_tensorlistfromtensorЗsequential_2_simple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2Ф
Hsequential_2/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpHsequential_2/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2Т
Gsequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpGsequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp2Ц
Isequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpIsequential_2/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Ѕ
У
*sequential_2_simple_rnn_8_while_cond_10372P
Lsequential_2_simple_rnn_8_while_sequential_2_simple_rnn_8_while_loop_counterV
Rsequential_2_simple_rnn_8_while_sequential_2_simple_rnn_8_while_maximum_iterations/
+sequential_2_simple_rnn_8_while_placeholder1
-sequential_2_simple_rnn_8_while_placeholder_11
-sequential_2_simple_rnn_8_while_placeholder_2R
Nsequential_2_simple_rnn_8_while_less_sequential_2_simple_rnn_8_strided_slice_1g
csequential_2_simple_rnn_8_while_sequential_2_simple_rnn_8_while_cond_10372___redundant_placeholder0g
csequential_2_simple_rnn_8_while_sequential_2_simple_rnn_8_while_cond_10372___redundant_placeholder1g
csequential_2_simple_rnn_8_while_sequential_2_simple_rnn_8_while_cond_10372___redundant_placeholder2g
csequential_2_simple_rnn_8_while_sequential_2_simple_rnn_8_while_cond_10372___redundant_placeholder3,
(sequential_2_simple_rnn_8_while_identity
т
$sequential_2/simple_rnn_8/while/LessLess+sequential_2_simple_rnn_8_while_placeholderNsequential_2_simple_rnn_8_while_less_sequential_2_simple_rnn_8_strided_slice_1*
T0*
_output_shapes
: 2&
$sequential_2/simple_rnn_8/while/LessЂ
(sequential_2/simple_rnn_8/while/IdentityIdentity(sequential_2/simple_rnn_8/while/Less:z:0*
T0
*
_output_shapes
: 2*
(sequential_2/simple_rnn_8/while/Identity"]
(sequential_2_simple_rnn_8_while_identity1sequential_2/simple_rnn_8/while/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
Е#
ю
while_body_10892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0#
while_simple_rnn_cell_6_10914_0#
while_simple_rnn_cell_6_10916_0#
while_simple_rnn_cell_6_10918_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor!
while_simple_rnn_cell_6_10914!
while_simple_rnn_cell_6_10916!
while_simple_rnn_cell_6_10918ИҐ/while/simple_rnn_cell_6/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€P*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem—
/while/simple_rnn_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_6_10914_0while_simple_rnn_cell_6_10916_0while_simple_rnn_cell_6_10918_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_1051821
/while/simple_rnn_cell_6/StatefulPartitionedCallь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_6/StatefulPartitionedCall:output:0*
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
while/add_1Р
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_6/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity£
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_6/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Т
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_6/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2њ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_6/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ќ
while/Identity_4Identity8while/simple_rnn_cell_6/StatefulPartitionedCall:output:10^while/simple_rnn_cell_6/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_6_10914while_simple_rnn_cell_6_10914_0"@
while_simple_rnn_cell_6_10916while_simple_rnn_cell_6_10916_0"@
while_simple_rnn_cell_6_10918while_simple_rnn_cell_6_10918_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€@: : :::2b
/while/simple_rnn_cell_6/StatefulPartitionedCall/while/simple_rnn_cell_6/StatefulPartitionedCall: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
Ќ
•
while_cond_15310
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_15310___redundant_placeholder03
/while_while_cond_15310___redundant_placeholder13
/while_while_cond_15310___redundant_placeholder23
/while_while_cond_15310___redundant_placeholder3
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
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
÷B
Б
simple_rnn_7_while_body_133146
2simple_rnn_7_while_simple_rnn_7_while_loop_counter<
8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations"
simple_rnn_7_while_placeholder$
 simple_rnn_7_while_placeholder_1$
 simple_rnn_7_while_placeholder_25
1simple_rnn_7_while_simple_rnn_7_strided_slice_1_0q
msimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0I
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0J
Fsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0K
Gsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0
simple_rnn_7_while_identity!
simple_rnn_7_while_identity_1!
simple_rnn_7_while_identity_2!
simple_rnn_7_while_identity_3!
simple_rnn_7_while_identity_43
/simple_rnn_7_while_simple_rnn_7_strided_slice_1o
ksimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensorG
Csimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resourceH
Dsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resourceI
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐ;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpҐ<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpЁ
Dsimple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2F
Dsimple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shape°
6simple_rnn_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_7_while_placeholderMsimple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype028
6simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem€
:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02<
:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpЪ
+simple_rnn_7/while/simple_rnn_cell_7/MatMulMatMul=simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2-
+simple_rnn_7/while/simple_rnn_cell_7/MatMulю
;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02=
;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpЦ
,simple_rnn_7/while/simple_rnn_cell_7/BiasAddBiasAdd5simple_rnn_7/while/simple_rnn_cell_7/MatMul:product:0Csimple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2.
,simple_rnn_7/while/simple_rnn_cell_7/BiasAddЖ
<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02>
<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpГ
-simple_rnn_7/while/simple_rnn_cell_7/MatMul_1MatMul simple_rnn_7_while_placeholder_2Dsimple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2/
-simple_rnn_7/while/simple_rnn_cell_7/MatMul_1А
(simple_rnn_7/while/simple_rnn_cell_7/addAddV25simple_rnn_7/while/simple_rnn_cell_7/BiasAdd:output:07simple_rnn_7/while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2*
(simple_rnn_7/while/simple_rnn_cell_7/add»
,simple_rnn_7/while/simple_rnn_cell_7/SigmoidSigmoid,simple_rnn_7/while/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2.
,simple_rnn_7/while/simple_rnn_cell_7/Sigmoid®
7simple_rnn_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_7_while_placeholder_1simple_rnn_7_while_placeholder0simple_rnn_7/while/simple_rnn_cell_7/Sigmoid:y:0*
_output_shapes
: *
element_dtype029
7simple_rnn_7/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_7/while/add/yЭ
simple_rnn_7/while/addAddV2simple_rnn_7_while_placeholder!simple_rnn_7/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_7/while/addz
simple_rnn_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_7/while/add_1/yЈ
simple_rnn_7/while/add_1AddV22simple_rnn_7_while_simple_rnn_7_while_loop_counter#simple_rnn_7/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_7/while/add_1њ
simple_rnn_7/while/IdentityIdentitysimple_rnn_7/while/add_1:z:0<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_7/while/Identityя
simple_rnn_7/while/Identity_1Identity8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_7/while/Identity_1Ѕ
simple_rnn_7/while/Identity_2Identitysimple_rnn_7/while/add:z:0<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_7/while/Identity_2о
simple_rnn_7/while/Identity_3IdentityGsimple_rnn_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_7/while/Identity_3й
simple_rnn_7/while/Identity_4Identity0simple_rnn_7/while/simple_rnn_cell_7/Sigmoid:y:0<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_7/while/Identity_4"C
simple_rnn_7_while_identity$simple_rnn_7/while/Identity:output:0"G
simple_rnn_7_while_identity_1&simple_rnn_7/while/Identity_1:output:0"G
simple_rnn_7_while_identity_2&simple_rnn_7/while/Identity_2:output:0"G
simple_rnn_7_while_identity_3&simple_rnn_7/while/Identity_3:output:0"G
simple_rnn_7_while_identity_4&simple_rnn_7/while/Identity_4:output:0"d
/simple_rnn_7_while_simple_rnn_7_strided_slice_11simple_rnn_7_while_simple_rnn_7_strided_slice_1_0"О
Dsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resourceFsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"Р
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resourceGsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"М
Csimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resourceEsimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0"№
ksimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensormsimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2z
;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2x
:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp2|
<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
У
Р
,__inference_simple_rnn_6_layer_call_fn_14158

inputs
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_122472
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€M@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€MP:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€MP
 
_user_specified_nameinputs
и
Ѕ
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_11525

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddХ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addP
ReluReluadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
Relu≤
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityґ

Identity_1IdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:€€€€€€€€€А:€€€€€€€€€А:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates
њ
У
*sequential_2_simple_rnn_6_while_cond_10156P
Lsequential_2_simple_rnn_6_while_sequential_2_simple_rnn_6_while_loop_counterV
Rsequential_2_simple_rnn_6_while_sequential_2_simple_rnn_6_while_maximum_iterations/
+sequential_2_simple_rnn_6_while_placeholder1
-sequential_2_simple_rnn_6_while_placeholder_11
-sequential_2_simple_rnn_6_while_placeholder_2R
Nsequential_2_simple_rnn_6_while_less_sequential_2_simple_rnn_6_strided_slice_1g
csequential_2_simple_rnn_6_while_sequential_2_simple_rnn_6_while_cond_10156___redundant_placeholder0g
csequential_2_simple_rnn_6_while_sequential_2_simple_rnn_6_while_cond_10156___redundant_placeholder1g
csequential_2_simple_rnn_6_while_sequential_2_simple_rnn_6_while_cond_10156___redundant_placeholder2g
csequential_2_simple_rnn_6_while_sequential_2_simple_rnn_6_while_cond_10156___redundant_placeholder3,
(sequential_2_simple_rnn_6_while_identity
т
$sequential_2/simple_rnn_6/while/LessLess+sequential_2_simple_rnn_6_while_placeholderNsequential_2_simple_rnn_6_while_less_sequential_2_simple_rnn_6_strided_slice_1*
T0*
_output_shapes
: 2&
$sequential_2/simple_rnn_6/while/LessЂ
(sequential_2/simple_rnn_6/while/IdentityIdentity(sequential_2/simple_rnn_6/while/Less:z:0*
T0
*
_output_shapes
: 2*
(sequential_2/simple_rnn_6/while/Identity"]
(sequential_2_simple_rnn_6_while_identity1sequential_2/simple_rnn_6/while/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€@: ::::: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
ф3
ы
while_body_14819
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_7_matmul_readvariableop_resource;
7while_simple_rnn_cell_7_biasadd_readvariableop_resource<
8while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_7/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЎ
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02/
-while/simple_rnn_cell_7/MatMul/ReadVariableOpж
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_7/MatMul„
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_7/BiasAddя
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_7/MatMul_1ћ
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_7/add°
while/simple_rnn_cell_7/SigmoidSigmoidwhile/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_7/Sigmoidз
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder#while/simple_rnn_cell_7/Sigmoid:y:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ы
while/Identity_4Identity#while/simple_rnn_cell_7/Sigmoid:y:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
хG
Ф
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_14639

inputs4
0simple_rnn_cell_7_matmul_readvariableop_resource5
1simple_rnn_cell_7_biasadd_readvariableop_resource6
2simple_rnn_cell_7_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_7/MatMul/ReadVariableOpҐ)simple_rnn_cell_7/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :А2
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
B :и2
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
B :А2
zeros/packed/1Г
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
:€€€€€€€€€А2
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
:M€€€€€€€€€@2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_2ƒ
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02)
'simple_rnn_cell_7/MatMul/ReadVariableOpЉ
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/MatMul√
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_7/BiasAdd/ReadVariableOp 
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/BiasAddЋ
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_7/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/MatMul_1і
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/addП
simple_rnn_cell_7/SigmoidSigmoidsimple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/SigmoidП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterƒ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_14573*
condR
while_cond_14572*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:M€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€MА2
transpose_1с
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:€€€€€€€€€MА2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€M@:::2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€M@
 
_user_specified_nameinputs
Џ
|
'__inference_dense_1_layer_call_fn_15715

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_120102
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ч	
џ
B__inference_dense_1_layer_call_and_return_conditional_losses_15706

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
»
q
+__inference_embedding_2_layer_call_fn_13923

inputs
unknown
identityИҐStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€MP*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_121242
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€MP2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€M:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€M
 
_user_specified_nameinputs
Ю	
Ъ
#__inference_signature_wrapper_13154
embedding_2_input
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
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallembedding_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_104522
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:€€€€€€€€€M::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:€€€€€€€€€M
+
_user_specified_nameembedding_2_input
’
Ж
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_12924

inputs*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityИҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshape¶
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_1/MatMul/ReadVariableOpХ
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/Softmaxw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€M      2
Reshape_1/shapeМ
	Reshape_1Reshapedense_1/Softmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€M2
	Reshape_1Ђ
IdentityIdentityReshape_1:output:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€MА::2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:€€€€€€€€€MА
 
_user_specified_nameinputs
љ
Т
,__inference_simple_rnn_6_layer_call_fn_14404
inputs_0
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_108382
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€P:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€P
"
_user_specified_name
inputs/0
Ч
Р
,__inference_simple_rnn_8_layer_call_fn_15388

inputs
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€MА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_127532
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:€€€€€€€€€MА2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€MА:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€MА
 
_user_specified_nameinputs
ЁB
Б
simple_rnn_8_while_body_137696
2simple_rnn_8_while_simple_rnn_8_while_loop_counter<
8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations"
simple_rnn_8_while_placeholder$
 simple_rnn_8_while_placeholder_1$
 simple_rnn_8_while_placeholder_25
1simple_rnn_8_while_simple_rnn_8_strided_slice_1_0q
msimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0I
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0J
Fsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0K
Gsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0
simple_rnn_8_while_identity!
simple_rnn_8_while_identity_1!
simple_rnn_8_while_identity_2!
simple_rnn_8_while_identity_3!
simple_rnn_8_while_identity_43
/simple_rnn_8_while_simple_rnn_8_strided_slice_1o
ksimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensorG
Csimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resourceH
Dsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resourceI
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐ;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpҐ<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpЁ
Dsimple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2F
Dsimple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeҐ
6simple_rnn_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_8_while_placeholderMsimple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype028
6simple_rnn_8/while/TensorArrayV2Read/TensorListGetItemА
:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02<
:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpЪ
+simple_rnn_8/while/simple_rnn_cell_8/MatMulMatMul=simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2-
+simple_rnn_8/while/simple_rnn_cell_8/MatMulю
;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02=
;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpЦ
,simple_rnn_8/while/simple_rnn_cell_8/BiasAddBiasAdd5simple_rnn_8/while/simple_rnn_cell_8/MatMul:product:0Csimple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2.
,simple_rnn_8/while/simple_rnn_cell_8/BiasAddЖ
<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02>
<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpГ
-simple_rnn_8/while/simple_rnn_cell_8/MatMul_1MatMul simple_rnn_8_while_placeholder_2Dsimple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2/
-simple_rnn_8/while/simple_rnn_cell_8/MatMul_1А
(simple_rnn_8/while/simple_rnn_cell_8/addAddV25simple_rnn_8/while/simple_rnn_cell_8/BiasAdd:output:07simple_rnn_8/while/simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2*
(simple_rnn_8/while/simple_rnn_cell_8/addњ
)simple_rnn_8/while/simple_rnn_cell_8/ReluRelu,simple_rnn_8/while/simple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2+
)simple_rnn_8/while/simple_rnn_cell_8/Reluѓ
7simple_rnn_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_8_while_placeholder_1simple_rnn_8_while_placeholder7simple_rnn_8/while/simple_rnn_cell_8/Relu:activations:0*
_output_shapes
: *
element_dtype029
7simple_rnn_8/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_8/while/add/yЭ
simple_rnn_8/while/addAddV2simple_rnn_8_while_placeholder!simple_rnn_8/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_8/while/addz
simple_rnn_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_8/while/add_1/yЈ
simple_rnn_8/while/add_1AddV22simple_rnn_8_while_simple_rnn_8_while_loop_counter#simple_rnn_8/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_8/while/add_1њ
simple_rnn_8/while/IdentityIdentitysimple_rnn_8/while/add_1:z:0<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_8/while/Identityя
simple_rnn_8/while/Identity_1Identity8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_8/while/Identity_1Ѕ
simple_rnn_8/while/Identity_2Identitysimple_rnn_8/while/add:z:0<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_8/while/Identity_2о
simple_rnn_8/while/Identity_3IdentityGsimple_rnn_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_8/while/Identity_3р
simple_rnn_8/while/Identity_4Identity7simple_rnn_8/while/simple_rnn_cell_8/Relu:activations:0<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_8/while/Identity_4"C
simple_rnn_8_while_identity$simple_rnn_8/while/Identity:output:0"G
simple_rnn_8_while_identity_1&simple_rnn_8/while/Identity_1:output:0"G
simple_rnn_8_while_identity_2&simple_rnn_8/while/Identity_2:output:0"G
simple_rnn_8_while_identity_3&simple_rnn_8/while/Identity_3:output:0"G
simple_rnn_8_while_identity_4&simple_rnn_8/while/Identity_4:output:0"d
/simple_rnn_8_while_simple_rnn_8_strided_slice_11simple_rnn_8_while_simple_rnn_8_strided_slice_1_0"О
Dsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resourceFsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"Р
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resourceGsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"М
Csimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resourceEsimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0"№
ksimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensormsimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2z
;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2x
:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp2|
<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
ф3
ы
while_body_14461
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_7_matmul_readvariableop_resource;
7while_simple_rnn_cell_7_biasadd_readvariableop_resource<
8while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_7/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЎ
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02/
-while/simple_rnn_cell_7/MatMul/ReadVariableOpж
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_7/MatMul„
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_7/BiasAddя
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_7/MatMul_1ћ
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_7/add°
while/simple_rnn_cell_7/SigmoidSigmoidwhile/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_7/Sigmoidз
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder#while/simple_rnn_cell_7/Sigmoid:y:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ы
while/Identity_4Identity#while/simple_rnn_cell_7/Sigmoid:y:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
јњ
В
!__inference__traced_restore_16006
file_prefix+
'assignvariableop_embedding_2_embeddings 
assignvariableop_1_adam_iter"
assignvariableop_2_adam_beta_1"
assignvariableop_3_adam_beta_2!
assignvariableop_4_adam_decay)
%assignvariableop_5_adam_learning_rate<
8assignvariableop_6_simple_rnn_6_simple_rnn_cell_6_kernelF
Bassignvariableop_7_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel:
6assignvariableop_8_simple_rnn_6_simple_rnn_cell_6_bias<
8assignvariableop_9_simple_rnn_7_simple_rnn_cell_7_kernelG
Cassignvariableop_10_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel;
7assignvariableop_11_simple_rnn_7_simple_rnn_cell_7_bias=
9assignvariableop_12_simple_rnn_8_simple_rnn_cell_8_kernelG
Cassignvariableop_13_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel;
7assignvariableop_14_simple_rnn_8_simple_rnn_cell_8_bias1
-assignvariableop_15_time_distributed_1_kernel/
+assignvariableop_16_time_distributed_1_bias
assignvariableop_17_total
assignvariableop_18_count
assignvariableop_19_total_1
assignvariableop_20_count_1D
@assignvariableop_21_adam_simple_rnn_6_simple_rnn_cell_6_kernel_mN
Jassignvariableop_22_adam_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_mB
>assignvariableop_23_adam_simple_rnn_6_simple_rnn_cell_6_bias_mD
@assignvariableop_24_adam_simple_rnn_7_simple_rnn_cell_7_kernel_mN
Jassignvariableop_25_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_mB
>assignvariableop_26_adam_simple_rnn_7_simple_rnn_cell_7_bias_mD
@assignvariableop_27_adam_simple_rnn_8_simple_rnn_cell_8_kernel_mN
Jassignvariableop_28_adam_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_mB
>assignvariableop_29_adam_simple_rnn_8_simple_rnn_cell_8_bias_m8
4assignvariableop_30_adam_time_distributed_1_kernel_m6
2assignvariableop_31_adam_time_distributed_1_bias_mD
@assignvariableop_32_adam_simple_rnn_6_simple_rnn_cell_6_kernel_vN
Jassignvariableop_33_adam_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_vB
>assignvariableop_34_adam_simple_rnn_6_simple_rnn_cell_6_bias_vD
@assignvariableop_35_adam_simple_rnn_7_simple_rnn_cell_7_kernel_vN
Jassignvariableop_36_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_vB
>assignvariableop_37_adam_simple_rnn_7_simple_rnn_cell_7_bias_vD
@assignvariableop_38_adam_simple_rnn_8_simple_rnn_cell_8_kernel_vN
Jassignvariableop_39_adam_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_vB
>assignvariableop_40_adam_simple_rnn_8_simple_rnn_cell_8_bias_v8
4assignvariableop_41_adam_time_distributed_1_kernel_v6
2assignvariableop_42_adam_time_distributed_1_bias_v
identity_44ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9э
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*Й
value€Bь,B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesж
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesК
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*∆
_output_shapes≥
∞::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¶
AssignVariableOpAssignVariableOp'assignvariableop_embedding_2_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_1°
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

Identity_4Ґ
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_decayIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5™
AssignVariableOp_5AssignVariableOp%assignvariableop_5_adam_learning_rateIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6љ
AssignVariableOp_6AssignVariableOp8assignvariableop_6_simple_rnn_6_simple_rnn_cell_6_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7«
AssignVariableOp_7AssignVariableOpBassignvariableop_7_simple_rnn_6_simple_rnn_cell_6_recurrent_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8ї
AssignVariableOp_8AssignVariableOp6assignvariableop_8_simple_rnn_6_simple_rnn_cell_6_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9љ
AssignVariableOp_9AssignVariableOp8assignvariableop_9_simple_rnn_7_simple_rnn_cell_7_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ћ
AssignVariableOp_10AssignVariableOpCassignvariableop_10_simple_rnn_7_simple_rnn_cell_7_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11њ
AssignVariableOp_11AssignVariableOp7assignvariableop_11_simple_rnn_7_simple_rnn_cell_7_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ѕ
AssignVariableOp_12AssignVariableOp9assignvariableop_12_simple_rnn_8_simple_rnn_cell_8_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ћ
AssignVariableOp_13AssignVariableOpCassignvariableop_13_simple_rnn_8_simple_rnn_cell_8_recurrent_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14њ
AssignVariableOp_14AssignVariableOp7assignvariableop_14_simple_rnn_8_simple_rnn_cell_8_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15µ
AssignVariableOp_15AssignVariableOp-assignvariableop_15_time_distributed_1_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16≥
AssignVariableOp_16AssignVariableOp+assignvariableop_16_time_distributed_1_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17°
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18°
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
Identity_21»
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_simple_rnn_6_simple_rnn_cell_6_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22“
AssignVariableOp_22AssignVariableOpJassignvariableop_22_adam_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23∆
AssignVariableOp_23AssignVariableOp>assignvariableop_23_adam_simple_rnn_6_simple_rnn_cell_6_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24»
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_simple_rnn_7_simple_rnn_cell_7_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25“
AssignVariableOp_25AssignVariableOpJassignvariableop_25_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26∆
AssignVariableOp_26AssignVariableOp>assignvariableop_26_adam_simple_rnn_7_simple_rnn_cell_7_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27»
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_simple_rnn_8_simple_rnn_cell_8_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28“
AssignVariableOp_28AssignVariableOpJassignvariableop_28_adam_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29∆
AssignVariableOp_29AssignVariableOp>assignvariableop_29_adam_simple_rnn_8_simple_rnn_cell_8_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Љ
AssignVariableOp_30AssignVariableOp4assignvariableop_30_adam_time_distributed_1_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Ї
AssignVariableOp_31AssignVariableOp2assignvariableop_31_adam_time_distributed_1_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32»
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_simple_rnn_6_simple_rnn_cell_6_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33“
AssignVariableOp_33AssignVariableOpJassignvariableop_33_adam_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34∆
AssignVariableOp_34AssignVariableOp>assignvariableop_34_adam_simple_rnn_6_simple_rnn_cell_6_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35»
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_simple_rnn_7_simple_rnn_cell_7_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36“
AssignVariableOp_36AssignVariableOpJassignvariableop_36_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37∆
AssignVariableOp_37AssignVariableOp>assignvariableop_37_adam_simple_rnn_7_simple_rnn_cell_7_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38»
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_simple_rnn_8_simple_rnn_cell_8_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39“
AssignVariableOp_39AssignVariableOpJassignvariableop_39_adam_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40∆
AssignVariableOp_40AssignVariableOp>assignvariableop_40_adam_simple_rnn_8_simple_rnn_cell_8_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41Љ
AssignVariableOp_41AssignVariableOp4assignvariableop_41_adam_time_distributed_1_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42Ї
AssignVariableOp_42AssignVariableOp2assignvariableop_42_adam_time_distributed_1_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_429
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpР
Identity_43Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_43Г
Identity_44IdentityIdentity_43:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_44"#
identity_44Identity_44:output:0*√
_input_shapes±
Ѓ: :::::::::::::::::::::::::::::::::::::::::::2$
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
Џ	
Ф
F__inference_embedding_2_layer_call_and_return_conditional_losses_12124

inputs
embedding_lookup_12118
identityИҐembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€M2
Castы
embedding_lookupResourceGatherembedding_lookup_12118Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/12118*+
_output_shapes
:€€€€€€€€€MP*
dtype02
embedding_lookupм
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/12118*+
_output_shapes
:€€€€€€€€€MP2
embedding_lookup/Identity†
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€MP2
embedding_lookup/Identity_1П
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:€€€€€€€€€MP2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€M:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€M
 
_user_specified_nameinputs
Ќ
•
while_cond_14952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_14952___redundant_placeholder03
/while_while_cond_14952___redundant_placeholder13
/while_while_cond_14952___redundant_placeholder23
/while_while_cond_14952___redundant_placeholder3
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
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
о	
≥
1__inference_simple_rnn_cell_7_layer_call_fn_15619

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1ИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_110132
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

IdentityУ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€@:€€€€€€€€€А:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0
џ<
с
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_10955

inputs
simple_rnn_cell_6_10880
simple_rnn_cell_6_10882
simple_rnn_cell_6_10884
identityИҐ)simple_rnn_cell_6/StatefulPartitionedCallҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
zeros/packed/1Г
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
:€€€€€€€€€@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€P2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€P*
shrink_axis_mask2
strided_slice_2Р
)simple_rnn_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_6_10880simple_rnn_cell_6_10882simple_rnn_cell_6_10884*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_105182+
)simple_rnn_cell_6/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_6_10880simple_rnn_cell_6_10882simple_rnn_cell_6_10884*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_10892*
condR
while_cond_10891*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
transpose_1§
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_6/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€P:::2V
)simple_rnn_cell_6/StatefulPartitionedCall)simple_rnn_cell_6/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€P
 
_user_specified_nameinputs
Ќ
•
while_cond_14572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_14572___redundant_placeholder03
/while_while_cond_14572___redundant_placeholder13
/while_while_cond_14572___redundant_placeholder23
/while_while_cond_14572___redundant_placeholder3
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
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
Ћ
•
while_cond_14326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_14326___redundant_placeholder03
/while_while_cond_14326___redundant_placeholder13
/while_while_cond_14326___redundant_placeholder23
/while_while_cond_14326___redundant_placeholder3
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
-: : : : :€€€€€€€€€@: ::::: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
ў3
ы
while_body_12181
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_6_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_6_matmul_readvariableop_resource;
7while_simple_rnn_cell_6_biasadd_readvariableop_resource<
8while_simple_rnn_cell_6_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_6/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€P*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:P@*
dtype02/
-while/simple_rnn_cell_6/MatMul/ReadVariableOpе
while/simple_rnn_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
while/simple_rnn_cell_6/MatMul÷
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_6/BiasAddBiasAdd(while/simple_rnn_cell_6/MatMul:product:06while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
while/simple_rnn_cell_6/BiasAddЁ
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_6/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2"
 while/simple_rnn_cell_6/MatMul_1Ћ
while/simple_rnn_cell_6/addAddV2(while/simple_rnn_cell_6/BiasAdd:output:0*while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/simple_rnn_cell_6/addЧ
while/simple_rnn_cell_6/TanhTanhwhile/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/simple_rnn_cell_6/Tanhд
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_6/Tanh:y:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ч
while/Identity_4Identity while/simple_rnn_cell_6/Tanh:y:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_6_biasadd_readvariableop_resource9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_6_matmul_readvariableop_resource8while_simple_rnn_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€@: : :::2`
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_6/MatMul/ReadVariableOp-while/simple_rnn_cell_6/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
Х
Р
,__inference_simple_rnn_7_layer_call_fn_14661

inputs
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€MА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_126122
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:€€€€€€€€€MА2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€M@:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€M@
 
_user_specified_nameinputs
У
Р
,__inference_simple_rnn_6_layer_call_fn_14169

inputs
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_123592
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€M@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€MP:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€MP
 
_user_specified_nameinputs
∞H
Ц
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_15019
inputs_04
0simple_rnn_cell_8_matmul_readvariableop_resource5
1simple_rnn_cell_8_biasadd_readvariableop_resource6
2simple_rnn_cell_8_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_8/MatMul/ReadVariableOpҐ)simple_rnn_cell_8/MatMul_1/ReadVariableOpҐwhileF
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
strided_slice/stack_2в
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
B :А2
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
B :и2
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
B :А2
zeros/packed/1Г
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
:€€€€€€€€€А2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЖ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2э
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_2≈
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02)
'simple_rnn_cell_8/MatMul/ReadVariableOpЉ
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/MatMul√
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_8/BiasAdd/ReadVariableOp 
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/BiasAddЋ
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_8/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/MatMul_1і
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/addЖ
simple_rnn_cell_8/ReluRelusimple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterƒ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_14953*
condR
while_cond_14952*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1ъ
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:€€€€€€€€€€€€€€€€€€А:::2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0
ж
√
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_15588

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddХ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
SigmoidЂ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityѓ

Identity_1IdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€@:€€€€€€€€€А:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0
ў3
ы
while_body_14215
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_6_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_6_matmul_readvariableop_resource;
7while_simple_rnn_cell_6_biasadd_readvariableop_resource<
8while_simple_rnn_cell_6_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_6/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€P*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:P@*
dtype02/
-while/simple_rnn_cell_6/MatMul/ReadVariableOpе
while/simple_rnn_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
while/simple_rnn_cell_6/MatMul÷
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_6/BiasAddBiasAdd(while/simple_rnn_cell_6/MatMul:product:06while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
while/simple_rnn_cell_6/BiasAddЁ
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_6/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2"
 while/simple_rnn_cell_6/MatMul_1Ћ
while/simple_rnn_cell_6/addAddV2(while/simple_rnn_cell_6/BiasAdd:output:0*while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/simple_rnn_cell_6/addЧ
while/simple_rnn_cell_6/TanhTanhwhile/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/simple_rnn_cell_6/Tanhд
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_6/Tanh:y:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ч
while/Identity_4Identity while/simple_rnn_cell_6/Tanh:y:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_6_biasadd_readvariableop_resource9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_6_matmul_readvariableop_resource8while_simple_rnn_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€@: : :::2`
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_6/MatMul/ReadVariableOp-while/simple_rnn_cell_6/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
»

Ь
simple_rnn_8_while_cond_137686
2simple_rnn_8_while_simple_rnn_8_while_loop_counter<
8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations"
simple_rnn_8_while_placeholder$
 simple_rnn_8_while_placeholder_1$
 simple_rnn_8_while_placeholder_28
4simple_rnn_8_while_less_simple_rnn_8_strided_slice_1M
Isimple_rnn_8_while_simple_rnn_8_while_cond_13768___redundant_placeholder0M
Isimple_rnn_8_while_simple_rnn_8_while_cond_13768___redundant_placeholder1M
Isimple_rnn_8_while_simple_rnn_8_while_cond_13768___redundant_placeholder2M
Isimple_rnn_8_while_simple_rnn_8_while_cond_13768___redundant_placeholder3
simple_rnn_8_while_identity
±
simple_rnn_8/while/LessLesssimple_rnn_8_while_placeholder4simple_rnn_8_while_less_simple_rnn_8_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_8/while/LessД
simple_rnn_8/while/IdentityIdentitysimple_rnn_8/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_8/while/Identity"C
simple_rnn_8_while_identity$simple_rnn_8/while/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
»

Ь
simple_rnn_7_while_cond_133136
2simple_rnn_7_while_simple_rnn_7_while_loop_counter<
8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations"
simple_rnn_7_while_placeholder$
 simple_rnn_7_while_placeholder_1$
 simple_rnn_7_while_placeholder_28
4simple_rnn_7_while_less_simple_rnn_7_strided_slice_1M
Isimple_rnn_7_while_simple_rnn_7_while_cond_13313___redundant_placeholder0M
Isimple_rnn_7_while_simple_rnn_7_while_cond_13313___redundant_placeholder1M
Isimple_rnn_7_while_simple_rnn_7_while_cond_13313___redundant_placeholder2M
Isimple_rnn_7_while_simple_rnn_7_while_cond_13313___redundant_placeholder3
simple_rnn_7_while_identity
±
simple_rnn_7/while/LessLesssimple_rnn_7_while_placeholder4simple_rnn_7_while_less_simple_rnn_7_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_7/while/LessД
simple_rnn_7/while/IdentityIdentitysimple_rnn_7/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_7/while/Identity"C
simple_rnn_7_while_identity$simple_rnn_7/while/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
сG
Ф
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_12753

inputs4
0simple_rnn_cell_8_matmul_readvariableop_resource5
1simple_rnn_cell_8_biasadd_readvariableop_resource6
2simple_rnn_cell_8_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_8/MatMul/ReadVariableOpҐ)simple_rnn_cell_8/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :А2
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
B :и2
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
B :А2
zeros/packed/1Г
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
:€€€€€€€€€А2
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
:M€€€€€€€€€А2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2э
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_2≈
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02)
'simple_rnn_cell_8/MatMul/ReadVariableOpЉ
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/MatMul√
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_8/BiasAdd/ReadVariableOp 
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/BiasAddЋ
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_8/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/MatMul_1і
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/addЖ
simple_rnn_cell_8/ReluRelusimple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterƒ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_12687*
condR
while_cond_12686*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:M€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€MА2
transpose_1с
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:€€€€€€€€€MА2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€MА:::2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€MА
 
_user_specified_nameinputs
ў3
ы
while_body_13969
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_6_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_6_matmul_readvariableop_resource;
7while_simple_rnn_cell_6_biasadd_readvariableop_resource<
8while_simple_rnn_cell_6_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_6/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€P*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:P@*
dtype02/
-while/simple_rnn_cell_6/MatMul/ReadVariableOpе
while/simple_rnn_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
while/simple_rnn_cell_6/MatMul÷
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_6/BiasAddBiasAdd(while/simple_rnn_cell_6/MatMul:product:06while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
while/simple_rnn_cell_6/BiasAddЁ
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_6/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2"
 while/simple_rnn_cell_6/MatMul_1Ћ
while/simple_rnn_cell_6/addAddV2(while/simple_rnn_cell_6/BiasAdd:output:0*while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/simple_rnn_cell_6/addЧ
while/simple_rnn_cell_6/TanhTanhwhile/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/simple_rnn_cell_6/Tanhд
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_6/Tanh:y:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ч
while/Identity_4Identity while/simple_rnn_cell_6/Tanh:y:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_6_biasadd_readvariableop_resource9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_6_matmul_readvariableop_resource8while_simple_rnn_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€@: : :::2`
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_6/MatMul/ReadVariableOp-while/simple_rnn_cell_6/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
ў3
ы
while_body_14327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_6_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_6_matmul_readvariableop_resource;
7while_simple_rnn_cell_6_biasadd_readvariableop_resource<
8while_simple_rnn_cell_6_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_6/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€P*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:P@*
dtype02/
-while/simple_rnn_cell_6/MatMul/ReadVariableOpе
while/simple_rnn_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
while/simple_rnn_cell_6/MatMul÷
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_6/BiasAddBiasAdd(while/simple_rnn_cell_6/MatMul:product:06while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
while/simple_rnn_cell_6/BiasAddЁ
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_6/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2"
 while/simple_rnn_cell_6/MatMul_1Ћ
while/simple_rnn_cell_6/addAddV2(while/simple_rnn_cell_6/BiasAdd:output:0*while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/simple_rnn_cell_6/addЧ
while/simple_rnn_cell_6/TanhTanhwhile/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/simple_rnn_cell_6/Tanhд
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_6/Tanh:y:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ч
while/Identity_4Identity while/simple_rnn_cell_6/Tanh:y:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_6_biasadd_readvariableop_resource9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_6_matmul_readvariableop_resource8while_simple_rnn_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€@: : :::2`
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_6/MatMul/ReadVariableOp-while/simple_rnn_cell_6/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
П
і
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_12103

inputs
dense_1_12093
dense_1_12095
identityИҐdense_1/StatefulPartitionedCallD
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
strided_slice/stack_2в
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
valueB"€€€€   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
ReshapeЦ
dense_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_1_12093dense_1_12095*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_120102!
dense_1/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2®
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape§
	Reshape_1Reshape(dense_1/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	Reshape_1Х
IdentityIdentityReshape_1:output:0 ^dense_1/StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€А::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Ћ
•
while_cond_10891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_10891___redundant_placeholder03
/while_while_cond_10891___redundant_placeholder13
/while_while_cond_10891___redundant_placeholder23
/while_while_cond_10891___redundant_placeholder3
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
-: : : : :€€€€€€€€€@: ::::: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
К#
ю
while_body_11404
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0#
while_simple_rnn_cell_7_11426_0#
while_simple_rnn_cell_7_11428_0#
while_simple_rnn_cell_7_11430_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor!
while_simple_rnn_cell_7_11426!
while_simple_rnn_cell_7_11428!
while_simple_rnn_cell_7_11430ИҐ/while/simple_rnn_cell_7/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem”
/while/simple_rnn_cell_7/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_7_11426_0while_simple_rnn_cell_7_11428_0while_simple_rnn_cell_7_11430_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_1103021
/while/simple_rnn_cell_7/StatefulPartitionedCallь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_7/StatefulPartitionedCall:output:0*
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
while/add_1Р
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity£
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Т
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2њ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ѕ
while/Identity_4Identity8while/simple_rnn_cell_7/StatefulPartitionedCall:output:10^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_7_11426while_simple_rnn_cell_7_11426_0"@
while_simple_rnn_cell_7_11428while_simple_rnn_cell_7_11428_0"@
while_simple_rnn_cell_7_11430while_simple_rnn_cell_7_11430_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2b
/while/simple_rnn_cell_7/StatefulPartitionedCall/while/simple_rnn_cell_7/StatefulPartitionedCall: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
ў3
ы
while_body_14081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_6_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_6_matmul_readvariableop_resource;
7while_simple_rnn_cell_6_biasadd_readvariableop_resource<
8while_simple_rnn_cell_6_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_6/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€P*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:P@*
dtype02/
-while/simple_rnn_cell_6/MatMul/ReadVariableOpе
while/simple_rnn_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
while/simple_rnn_cell_6/MatMul÷
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_6/BiasAddBiasAdd(while/simple_rnn_cell_6/MatMul:product:06while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
while/simple_rnn_cell_6/BiasAddЁ
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_6/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2"
 while/simple_rnn_cell_6/MatMul_1Ћ
while/simple_rnn_cell_6/addAddV2(while/simple_rnn_cell_6/BiasAdd:output:0*while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/simple_rnn_cell_6/addЧ
while/simple_rnn_cell_6/TanhTanhwhile/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/simple_rnn_cell_6/Tanhд
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_6/Tanh:y:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ч
while/Identity_4Identity while/simple_rnn_cell_6/Tanh:y:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_6_biasadd_readvariableop_resource9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_6_matmul_readvariableop_resource8while_simple_rnn_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€@: : :::2`
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_6/MatMul/ReadVariableOp-while/simple_rnn_cell_6/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
Ћ
•
while_cond_14214
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_14214___redundant_placeholder03
/while_while_cond_14214___redundant_placeholder13
/while_while_cond_14214___redundant_placeholder23
/while_while_cond_14214___redundant_placeholder3
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
-: : : : :€€€€€€€€€@: ::::: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
џ<
с
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_10838

inputs
simple_rnn_cell_6_10763
simple_rnn_cell_6_10765
simple_rnn_cell_6_10767
identityИҐ)simple_rnn_cell_6/StatefulPartitionedCallҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
zeros/packed/1Г
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
:€€€€€€€€€@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€P2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€P*
shrink_axis_mask2
strided_slice_2Р
)simple_rnn_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_6_10763simple_rnn_cell_6_10765simple_rnn_cell_6_10767*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_105012+
)simple_rnn_cell_6/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_6_10763simple_rnn_cell_6_10765simple_rnn_cell_6_10767*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_10775*
condR
while_cond_10774*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
transpose_1§
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_6/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€P:::2V
)simple_rnn_cell_6/StatefulPartitionedCall)simple_rnn_cell_6/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€P
 
_user_specified_nameinputs
Э
Ж
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_15491

inputs*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityИҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpD
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
strided_slice/stack_2в
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
valueB"€€€€   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshape¶
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_1/MatMul/ReadVariableOpХ
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/Softmaxq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2®
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeХ
	Reshape_1Reshapedense_1/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	Reshape_1і
IdentityIdentityReshape_1:output:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€А::2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Ћ
•
while_cond_13968
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_13968___redundant_placeholder03
/while_while_cond_13968___redundant_placeholder13
/while_while_cond_13968___redundant_placeholder23
/while_while_cond_13968___redundant_placeholder3
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
-: : : : :€€€€€€€€€@: ::::: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
и
Ѕ
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_11542

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddХ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addP
ReluReluadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
Relu≤
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityґ

Identity_1IdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:€€€€€€€€€А:€€€€€€€€€А:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates
ЩH
Ц
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_14281
inputs_04
0simple_rnn_cell_6_matmul_readvariableop_resource5
1simple_rnn_cell_6_biasadd_readvariableop_resource6
2simple_rnn_cell_6_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_6/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_6/MatMul/ReadVariableOpҐ)simple_rnn_cell_6/MatMul_1/ReadVariableOpҐwhileF
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
strided_slice/stack_2в
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
B :и2
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
zeros/packed/1Г
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
:€€€€€€€€€@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€P2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€P*
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:P@*
dtype02)
'simple_rnn_cell_6/MatMul/ReadVariableOpї
simple_rnn_cell_6/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/MatMul¬
(simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_6/BiasAdd/ReadVariableOp…
simple_rnn_cell_6/BiasAddBiasAdd"simple_rnn_cell_6/MatMul:product:00simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/BiasAdd…
)simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_6/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_6/MatMul_1MatMulzeros:output:01simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/MatMul_1≥
simple_rnn_cell_6/addAddV2"simple_rnn_cell_6/BiasAdd:output:0$simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/addЕ
simple_rnn_cell_6/TanhTanhsimple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/TanhП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_6_matmul_readvariableop_resource1simple_rnn_cell_6_biasadd_readvariableop_resource2simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_14215*
condR
while_cond_14214*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
transpose_1щ
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_6/BiasAdd/ReadVariableOp(^simple_rnn_cell_6/MatMul/ReadVariableOp*^simple_rnn_cell_6/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€P:::2T
(simple_rnn_cell_6/BiasAdd/ReadVariableOp(simple_rnn_cell_6/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_6/MatMul/ReadVariableOp'simple_rnn_cell_6/MatMul/ReadVariableOp2V
)simple_rnn_cell_6/MatMul_1/ReadVariableOp)simple_rnn_cell_6/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€P
"
_user_specified_name
inputs/0
хG
Ф
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_14527

inputs4
0simple_rnn_cell_7_matmul_readvariableop_resource5
1simple_rnn_cell_7_biasadd_readvariableop_resource6
2simple_rnn_cell_7_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_7/MatMul/ReadVariableOpҐ)simple_rnn_cell_7/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :А2
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
B :и2
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
B :А2
zeros/packed/1Г
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
:€€€€€€€€€А2
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
:M€€€€€€€€€@2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_2ƒ
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02)
'simple_rnn_cell_7/MatMul/ReadVariableOpЉ
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/MatMul√
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_7/BiasAdd/ReadVariableOp 
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/BiasAddЋ
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_7/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/MatMul_1і
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/addП
simple_rnn_cell_7/SigmoidSigmoidsimple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/SigmoidП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterƒ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_14461*
condR
while_cond_14460*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:M€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€MА2
transpose_1с
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:€€€€€€€€€MА2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€M@:::2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€M@
 
_user_specified_nameinputs
’
Ж
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_15414

inputs*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityИҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshape¶
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_1/MatMul/ReadVariableOpХ
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/Softmaxw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€M      2
Reshape_1/shapeМ
	Reshape_1Reshapedense_1/Softmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€M2
	Reshape_1Ђ
IdentityIdentityReshape_1:output:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€MА::2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:€€€€€€€€€MА
 
_user_specified_nameinputs
’!
д
G__inference_sequential_2_layer_call_and_return_conditional_losses_12986
embedding_2_input
embedding_2_12954
simple_rnn_6_12957
simple_rnn_6_12959
simple_rnn_6_12961
simple_rnn_7_12964
simple_rnn_7_12966
simple_rnn_7_12968
simple_rnn_8_12971
simple_rnn_8_12973
simple_rnn_8_12975
time_distributed_1_12978
time_distributed_1_12980
identityИҐ#embedding_2/StatefulPartitionedCallҐ$simple_rnn_6/StatefulPartitionedCallҐ$simple_rnn_7/StatefulPartitionedCallҐ$simple_rnn_8/StatefulPartitionedCallҐ*time_distributed_1/StatefulPartitionedCallЪ
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallembedding_2_inputembedding_2_12954*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€MP*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_121242%
#embedding_2/StatefulPartitionedCallе
$simple_rnn_6/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0simple_rnn_6_12957simple_rnn_6_12959simple_rnn_6_12961*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_123592&
$simple_rnn_6/StatefulPartitionedCallз
$simple_rnn_7/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_6/StatefulPartitionedCall:output:0simple_rnn_7_12964simple_rnn_7_12966simple_rnn_7_12968*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€MА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_126122&
$simple_rnn_7/StatefulPartitionedCallз
$simple_rnn_8/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_7/StatefulPartitionedCall:output:0simple_rnn_8_12971simple_rnn_8_12973simple_rnn_8_12975*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€MА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_128652&
$simple_rnn_8/StatefulPartitionedCallо
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_8/StatefulPartitionedCall:output:0time_distributed_1_12978time_distributed_1_12980*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_129242,
*time_distributed_1/StatefulPartitionedCallХ
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2"
 time_distributed_1/Reshape/shape–
time_distributed_1/ReshapeReshape-simple_rnn_8/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
time_distributed_1/Reshape”
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0$^embedding_2/StatefulPartitionedCall%^simple_rnn_6/StatefulPartitionedCall%^simple_rnn_7/StatefulPartitionedCall%^simple_rnn_8/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:€€€€€€€€€M::::::::::::2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2L
$simple_rnn_6/StatefulPartitionedCall$simple_rnn_6/StatefulPartitionedCall2L
$simple_rnn_7/StatefulPartitionedCall$simple_rnn_7/StatefulPartitionedCall2L
$simple_rnn_8/StatefulPartitionedCall$simple_rnn_8/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:Z V
'
_output_shapes
:€€€€€€€€€M
+
_user_specified_nameembedding_2_input
Ѕ
Т
,__inference_simple_rnn_8_layer_call_fn_15153
inputs_0
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_119792
StatefulPartitionedCallЬ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:€€€€€€€€€€€€€€€€€€А:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0
ќ	
£
,__inference_sequential_2_layer_call_fn_13051
embedding_2_input
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
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallembedding_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_130242
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:€€€€€€€€€M::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:€€€€€€€€€M
+
_user_specified_nameembedding_2_input
Ќ
•
while_cond_15064
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_15064___redundant_placeholder03
/while_while_cond_15064___redundant_placeholder13
/while_while_cond_15064___redundant_placeholder23
/while_while_cond_15064___redundant_placeholder3
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
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
Б
З
2__inference_time_distributed_1_layer_call_fn_15447

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_129242
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€MА::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€MА
 
_user_specified_nameinputs
•Q
Л
*sequential_2_simple_rnn_6_while_body_10157P
Lsequential_2_simple_rnn_6_while_sequential_2_simple_rnn_6_while_loop_counterV
Rsequential_2_simple_rnn_6_while_sequential_2_simple_rnn_6_while_maximum_iterations/
+sequential_2_simple_rnn_6_while_placeholder1
-sequential_2_simple_rnn_6_while_placeholder_11
-sequential_2_simple_rnn_6_while_placeholder_2O
Ksequential_2_simple_rnn_6_while_sequential_2_simple_rnn_6_strided_slice_1_0М
Зsequential_2_simple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0V
Rsequential_2_simple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0W
Ssequential_2_simple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0X
Tsequential_2_simple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0,
(sequential_2_simple_rnn_6_while_identity.
*sequential_2_simple_rnn_6_while_identity_1.
*sequential_2_simple_rnn_6_while_identity_2.
*sequential_2_simple_rnn_6_while_identity_3.
*sequential_2_simple_rnn_6_while_identity_4M
Isequential_2_simple_rnn_6_while_sequential_2_simple_rnn_6_strided_slice_1К
Еsequential_2_simple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_6_tensorarrayunstack_tensorlistfromtensorT
Psequential_2_simple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resourceU
Qsequential_2_simple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resourceV
Rsequential_2_simple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resourceИҐHsequential_2/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpҐGsequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpҐIsequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpч
Qsequential_2/simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2S
Qsequential_2/simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeр
Csequential_2/simple_rnn_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЗsequential_2_simple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0+sequential_2_simple_rnn_6_while_placeholderZsequential_2/simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€P*
element_dtype02E
Csequential_2/simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem•
Gsequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOpRsequential_2_simple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:P@*
dtype02I
Gsequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpЌ
8sequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMulMatMulJsequential_2/simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem:item:0Osequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2:
8sequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul§
Hsequential_2/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOpSsequential_2_simple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02J
Hsequential_2/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp…
9sequential_2/simple_rnn_6/while/simple_rnn_cell_6/BiasAddBiasAddBsequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul:product:0Psequential_2/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2;
9sequential_2/simple_rnn_6/while/simple_rnn_cell_6/BiasAddЂ
Isequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOpTsequential_2_simple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02K
Isequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpґ
:sequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1MatMul-sequential_2_simple_rnn_6_while_placeholder_2Qsequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2<
:sequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1≥
5sequential_2/simple_rnn_6/while/simple_rnn_cell_6/addAddV2Bsequential_2/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd:output:0Dsequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@27
5sequential_2/simple_rnn_6/while/simple_rnn_cell_6/addе
6sequential_2/simple_rnn_6/while/simple_rnn_cell_6/TanhTanh9sequential_2/simple_rnn_6/while/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@28
6sequential_2/simple_rnn_6/while/simple_rnn_cell_6/Tanhж
Dsequential_2/simple_rnn_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_2_simple_rnn_6_while_placeholder_1+sequential_2_simple_rnn_6_while_placeholder:sequential_2/simple_rnn_6/while/simple_rnn_cell_6/Tanh:y:0*
_output_shapes
: *
element_dtype02F
Dsequential_2/simple_rnn_6/while/TensorArrayV2Write/TensorListSetItemР
%sequential_2/simple_rnn_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_2/simple_rnn_6/while/add/y—
#sequential_2/simple_rnn_6/while/addAddV2+sequential_2_simple_rnn_6_while_placeholder.sequential_2/simple_rnn_6/while/add/y:output:0*
T0*
_output_shapes
: 2%
#sequential_2/simple_rnn_6/while/addФ
'sequential_2/simple_rnn_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_2/simple_rnn_6/while/add_1/yш
%sequential_2/simple_rnn_6/while/add_1AddV2Lsequential_2_simple_rnn_6_while_sequential_2_simple_rnn_6_while_loop_counter0sequential_2/simple_rnn_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2'
%sequential_2/simple_rnn_6/while/add_1Н
(sequential_2/simple_rnn_6/while/IdentityIdentity)sequential_2/simple_rnn_6/while/add_1:z:0I^sequential_2/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential_2/simple_rnn_6/while/IdentityЇ
*sequential_2/simple_rnn_6/while/Identity_1IdentityRsequential_2_simple_rnn_6_while_sequential_2_simple_rnn_6_while_maximum_iterationsI^sequential_2/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_2/simple_rnn_6/while/Identity_1П
*sequential_2/simple_rnn_6/while/Identity_2Identity'sequential_2/simple_rnn_6/while/add:z:0I^sequential_2/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_2/simple_rnn_6/while/Identity_2Љ
*sequential_2/simple_rnn_6/while/Identity_3IdentityTsequential_2/simple_rnn_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0I^sequential_2/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_2/simple_rnn_6/while/Identity_3≥
*sequential_2/simple_rnn_6/while/Identity_4Identity:sequential_2/simple_rnn_6/while/simple_rnn_cell_6/Tanh:y:0I^sequential_2/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2,
*sequential_2/simple_rnn_6/while/Identity_4"]
(sequential_2_simple_rnn_6_while_identity1sequential_2/simple_rnn_6/while/Identity:output:0"a
*sequential_2_simple_rnn_6_while_identity_13sequential_2/simple_rnn_6/while/Identity_1:output:0"a
*sequential_2_simple_rnn_6_while_identity_23sequential_2/simple_rnn_6/while/Identity_2:output:0"a
*sequential_2_simple_rnn_6_while_identity_33sequential_2/simple_rnn_6/while/Identity_3:output:0"a
*sequential_2_simple_rnn_6_while_identity_43sequential_2/simple_rnn_6/while/Identity_4:output:0"Ш
Isequential_2_simple_rnn_6_while_sequential_2_simple_rnn_6_strided_slice_1Ksequential_2_simple_rnn_6_while_sequential_2_simple_rnn_6_strided_slice_1_0"®
Qsequential_2_simple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resourceSsequential_2_simple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"™
Rsequential_2_simple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resourceTsequential_2_simple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"¶
Psequential_2_simple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resourceRsequential_2_simple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0"Т
Еsequential_2_simple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_6_tensorarrayunstack_tensorlistfromtensorЗsequential_2_simple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€@: : :::2Ф
Hsequential_2/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpHsequential_2/simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2Т
Gsequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpGsequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp2Ц
Isequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpIsequential_2/simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
к<
с
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_11979

inputs
simple_rnn_cell_8_11904
simple_rnn_cell_8_11906
simple_rnn_cell_8_11908
identityИҐ)simple_rnn_cell_8/StatefulPartitionedCallҐwhileD
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
strided_slice/stack_2в
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
B :А2
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
B :и2
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
B :А2
zeros/packed/1Г
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
:€€€€€€€€€А2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2э
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_2Т
)simple_rnn_cell_8/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_8_11904simple_rnn_cell_8_11906simple_rnn_cell_8_11908*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_115422+
)simple_rnn_cell_8/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterц
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_8_11904simple_rnn_cell_8_11906simple_rnn_cell_8_11908*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_11916*
condR
while_cond_11915*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1•
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_8/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:€€€€€€€€€€€€€€€€€€А:::2V
)simple_rnn_cell_8/StatefulPartitionedCall)simple_rnn_cell_8/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
хІ
Ѓ
G__inference_sequential_2_layer_call_and_return_conditional_losses_13848

inputs&
"embedding_2_embedding_lookup_13505A
=simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resourceB
>simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resourceC
?simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resourceA
=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resourceB
>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resourceC
?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resourceA
=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resourceB
>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resourceC
?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource=
9time_distributed_1_dense_1_matmul_readvariableop_resource>
:time_distributed_1_dense_1_biasadd_readvariableop_resource
identityИҐembedding_2/embedding_lookupҐ5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOpҐ4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOpҐ6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOpҐsimple_rnn_6/whileҐ5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpҐ6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpҐsimple_rnn_7/whileҐ5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpҐ6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpҐsimple_rnn_8/whileҐ1time_distributed_1/dense_1/BiasAdd/ReadVariableOpҐ0time_distributed_1/dense_1/MatMul/ReadVariableOpu
embedding_2/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€M2
embedding_2/CastЈ
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_13505embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_2/embedding_lookup/13505*+
_output_shapes
:€€€€€€€€€MP*
dtype02
embedding_2/embedding_lookupЬ
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/13505*+
_output_shapes
:€€€€€€€€€MP2'
%embedding_2/embedding_lookup/Identityƒ
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€MP2)
'embedding_2/embedding_lookup/Identity_1И
simple_rnn_6/ShapeShape0embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
simple_rnn_6/ShapeО
 simple_rnn_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_6/strided_slice/stackТ
"simple_rnn_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_6/strided_slice/stack_1Т
"simple_rnn_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_6/strided_slice/stack_2∞
simple_rnn_6/strided_sliceStridedSlicesimple_rnn_6/Shape:output:0)simple_rnn_6/strided_slice/stack:output:0+simple_rnn_6/strided_slice/stack_1:output:0+simple_rnn_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_6/strided_slicev
simple_rnn_6/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_6/zeros/mul/y†
simple_rnn_6/zeros/mulMul#simple_rnn_6/strided_slice:output:0!simple_rnn_6/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_6/zeros/muly
simple_rnn_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
simple_rnn_6/zeros/Less/yЫ
simple_rnn_6/zeros/LessLesssimple_rnn_6/zeros/mul:z:0"simple_rnn_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_6/zeros/Less|
simple_rnn_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_6/zeros/packed/1Ј
simple_rnn_6/zeros/packedPack#simple_rnn_6/strided_slice:output:0$simple_rnn_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_6/zeros/packedy
simple_rnn_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_6/zeros/Const©
simple_rnn_6/zerosFill"simple_rnn_6/zeros/packed:output:0!simple_rnn_6/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_6/zerosП
simple_rnn_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_6/transpose/permЋ
simple_rnn_6/transpose	Transpose0embedding_2/embedding_lookup/Identity_1:output:0$simple_rnn_6/transpose/perm:output:0*
T0*+
_output_shapes
:M€€€€€€€€€P2
simple_rnn_6/transposev
simple_rnn_6/Shape_1Shapesimple_rnn_6/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_6/Shape_1Т
"simple_rnn_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_6/strided_slice_1/stackЦ
$simple_rnn_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_6/strided_slice_1/stack_1Ц
$simple_rnn_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_6/strided_slice_1/stack_2Љ
simple_rnn_6/strided_slice_1StridedSlicesimple_rnn_6/Shape_1:output:0+simple_rnn_6/strided_slice_1/stack:output:0-simple_rnn_6/strided_slice_1/stack_1:output:0-simple_rnn_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_6/strided_slice_1Я
(simple_rnn_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2*
(simple_rnn_6/TensorArrayV2/element_shapeж
simple_rnn_6/TensorArrayV2TensorListReserve1simple_rnn_6/TensorArrayV2/element_shape:output:0%simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_6/TensorArrayV2ў
Bsimple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2D
Bsimple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeђ
4simple_rnn_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_6/transpose:y:0Ksimple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_6/TensorArrayUnstack/TensorListFromTensorТ
"simple_rnn_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_6/strided_slice_2/stackЦ
$simple_rnn_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_6/strided_slice_2/stack_1Ц
$simple_rnn_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_6/strided_slice_2/stack_2 
simple_rnn_6/strided_slice_2StridedSlicesimple_rnn_6/transpose:y:0+simple_rnn_6/strided_slice_2/stack:output:0-simple_rnn_6/strided_slice_2/stack_1:output:0-simple_rnn_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€P*
shrink_axis_mask2
simple_rnn_6/strided_slice_2к
4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp=simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:P@*
dtype026
4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOpп
%simple_rnn_6/simple_rnn_cell_6/MatMulMatMul%simple_rnn_6/strided_slice_2:output:0<simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2'
%simple_rnn_6/simple_rnn_cell_6/MatMulй
5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype027
5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOpэ
&simple_rnn_6/simple_rnn_cell_6/BiasAddBiasAdd/simple_rnn_6/simple_rnn_cell_6/MatMul:product:0=simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2(
&simple_rnn_6/simple_rnn_cell_6/BiasAddр
6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype028
6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOpл
'simple_rnn_6/simple_rnn_cell_6/MatMul_1MatMulsimple_rnn_6/zeros:output:0>simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2)
'simple_rnn_6/simple_rnn_cell_6/MatMul_1з
"simple_rnn_6/simple_rnn_cell_6/addAddV2/simple_rnn_6/simple_rnn_cell_6/BiasAdd:output:01simple_rnn_6/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2$
"simple_rnn_6/simple_rnn_cell_6/addђ
#simple_rnn_6/simple_rnn_cell_6/TanhTanh&simple_rnn_6/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2%
#simple_rnn_6/simple_rnn_cell_6/Tanh©
*simple_rnn_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2,
*simple_rnn_6/TensorArrayV2_1/element_shapeм
simple_rnn_6/TensorArrayV2_1TensorListReserve3simple_rnn_6/TensorArrayV2_1/element_shape:output:0%simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_6/TensorArrayV2_1h
simple_rnn_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_6/timeЩ
%simple_rnn_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2'
%simple_rnn_6/while/maximum_iterationsД
simple_rnn_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_6/while/loop_counterш
simple_rnn_6/whileWhile(simple_rnn_6/while/loop_counter:output:0.simple_rnn_6/while/maximum_iterations:output:0simple_rnn_6/time:output:0%simple_rnn_6/TensorArrayV2_1:handle:0simple_rnn_6/zeros:output:0%simple_rnn_6/strided_slice_1:output:0Dsimple_rnn_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resource>simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resource?simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*)
body!R
simple_rnn_6_while_body_13553*)
cond!R
simple_rnn_6_while_cond_13552*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations 2
simple_rnn_6/whileѕ
=simple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2?
=simple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeЬ
/simple_rnn_6/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_6/while:output:3Fsimple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:M€€€€€€€€€@*
element_dtype021
/simple_rnn_6/TensorArrayV2Stack/TensorListStackЫ
"simple_rnn_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2$
"simple_rnn_6/strided_slice_3/stackЦ
$simple_rnn_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_6/strided_slice_3/stack_1Ц
$simple_rnn_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_6/strided_slice_3/stack_2и
simple_rnn_6/strided_slice_3StridedSlice8simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_6/strided_slice_3/stack:output:0-simple_rnn_6/strided_slice_3/stack_1:output:0-simple_rnn_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
simple_rnn_6/strided_slice_3У
simple_rnn_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_6/transpose_1/permў
simple_rnn_6/transpose_1	Transpose8simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€M@2
simple_rnn_6/transpose_1t
simple_rnn_7/ShapeShapesimple_rnn_6/transpose_1:y:0*
T0*
_output_shapes
:2
simple_rnn_7/ShapeО
 simple_rnn_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_7/strided_slice/stackТ
"simple_rnn_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_7/strided_slice/stack_1Т
"simple_rnn_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_7/strided_slice/stack_2∞
simple_rnn_7/strided_sliceStridedSlicesimple_rnn_7/Shape:output:0)simple_rnn_7/strided_slice/stack:output:0+simple_rnn_7/strided_slice/stack_1:output:0+simple_rnn_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_7/strided_slicew
simple_rnn_7/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
simple_rnn_7/zeros/mul/y†
simple_rnn_7/zeros/mulMul#simple_rnn_7/strided_slice:output:0!simple_rnn_7/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_7/zeros/muly
simple_rnn_7/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
simple_rnn_7/zeros/Less/yЫ
simple_rnn_7/zeros/LessLesssimple_rnn_7/zeros/mul:z:0"simple_rnn_7/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_7/zeros/Less}
simple_rnn_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
simple_rnn_7/zeros/packed/1Ј
simple_rnn_7/zeros/packedPack#simple_rnn_7/strided_slice:output:0$simple_rnn_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_7/zeros/packedy
simple_rnn_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_7/zeros/Const™
simple_rnn_7/zerosFill"simple_rnn_7/zeros/packed:output:0!simple_rnn_7/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_7/zerosП
simple_rnn_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_7/transpose/permЈ
simple_rnn_7/transpose	Transposesimple_rnn_6/transpose_1:y:0$simple_rnn_7/transpose/perm:output:0*
T0*+
_output_shapes
:M€€€€€€€€€@2
simple_rnn_7/transposev
simple_rnn_7/Shape_1Shapesimple_rnn_7/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_7/Shape_1Т
"simple_rnn_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_7/strided_slice_1/stackЦ
$simple_rnn_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_1/stack_1Ц
$simple_rnn_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_1/stack_2Љ
simple_rnn_7/strided_slice_1StridedSlicesimple_rnn_7/Shape_1:output:0+simple_rnn_7/strided_slice_1/stack:output:0-simple_rnn_7/strided_slice_1/stack_1:output:0-simple_rnn_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_7/strided_slice_1Я
(simple_rnn_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2*
(simple_rnn_7/TensorArrayV2/element_shapeж
simple_rnn_7/TensorArrayV2TensorListReserve1simple_rnn_7/TensorArrayV2/element_shape:output:0%simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_7/TensorArrayV2ў
Bsimple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2D
Bsimple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shapeђ
4simple_rnn_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_7/transpose:y:0Ksimple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_7/TensorArrayUnstack/TensorListFromTensorТ
"simple_rnn_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_7/strided_slice_2/stackЦ
$simple_rnn_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_2/stack_1Ц
$simple_rnn_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_2/stack_2 
simple_rnn_7/strided_slice_2StridedSlicesimple_rnn_7/transpose:y:0+simple_rnn_7/strided_slice_2/stack:output:0-simple_rnn_7/strided_slice_2/stack_1:output:0-simple_rnn_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
simple_rnn_7/strided_slice_2л
4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype026
4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpр
%simple_rnn_7/simple_rnn_cell_7/MatMulMatMul%simple_rnn_7/strided_slice_2:output:0<simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2'
%simple_rnn_7/simple_rnn_cell_7/MatMulк
5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype027
5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpю
&simple_rnn_7/simple_rnn_cell_7/BiasAddBiasAdd/simple_rnn_7/simple_rnn_cell_7/MatMul:product:0=simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2(
&simple_rnn_7/simple_rnn_cell_7/BiasAddт
6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype028
6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpм
'simple_rnn_7/simple_rnn_cell_7/MatMul_1MatMulsimple_rnn_7/zeros:output:0>simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2)
'simple_rnn_7/simple_rnn_cell_7/MatMul_1и
"simple_rnn_7/simple_rnn_cell_7/addAddV2/simple_rnn_7/simple_rnn_cell_7/BiasAdd:output:01simple_rnn_7/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"simple_rnn_7/simple_rnn_cell_7/addґ
&simple_rnn_7/simple_rnn_cell_7/SigmoidSigmoid&simple_rnn_7/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2(
&simple_rnn_7/simple_rnn_cell_7/Sigmoid©
*simple_rnn_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2,
*simple_rnn_7/TensorArrayV2_1/element_shapeм
simple_rnn_7/TensorArrayV2_1TensorListReserve3simple_rnn_7/TensorArrayV2_1/element_shape:output:0%simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_7/TensorArrayV2_1h
simple_rnn_7/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_7/timeЩ
%simple_rnn_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2'
%simple_rnn_7/while/maximum_iterationsД
simple_rnn_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_7/while/loop_counterъ
simple_rnn_7/whileWhile(simple_rnn_7/while/loop_counter:output:0.simple_rnn_7/while/maximum_iterations:output:0simple_rnn_7/time:output:0%simple_rnn_7/TensorArrayV2_1:handle:0simple_rnn_7/zeros:output:0%simple_rnn_7/strided_slice_1:output:0Dsimple_rnn_7/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*)
body!R
simple_rnn_7_while_body_13661*)
cond!R
simple_rnn_7_while_cond_13660*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
simple_rnn_7/whileѕ
=simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2?
=simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shapeЭ
/simple_rnn_7/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_7/while:output:3Fsimple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:M€€€€€€€€€А*
element_dtype021
/simple_rnn_7/TensorArrayV2Stack/TensorListStackЫ
"simple_rnn_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2$
"simple_rnn_7/strided_slice_3/stackЦ
$simple_rnn_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_7/strided_slice_3/stack_1Ц
$simple_rnn_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_3/stack_2й
simple_rnn_7/strided_slice_3StridedSlice8simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_7/strided_slice_3/stack:output:0-simple_rnn_7/strided_slice_3/stack_1:output:0-simple_rnn_7/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
simple_rnn_7/strided_slice_3У
simple_rnn_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_7/transpose_1/permЏ
simple_rnn_7/transpose_1	Transpose8simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_7/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€MА2
simple_rnn_7/transpose_1t
simple_rnn_8/ShapeShapesimple_rnn_7/transpose_1:y:0*
T0*
_output_shapes
:2
simple_rnn_8/ShapeО
 simple_rnn_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_8/strided_slice/stackТ
"simple_rnn_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_8/strided_slice/stack_1Т
"simple_rnn_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_8/strided_slice/stack_2∞
simple_rnn_8/strided_sliceStridedSlicesimple_rnn_8/Shape:output:0)simple_rnn_8/strided_slice/stack:output:0+simple_rnn_8/strided_slice/stack_1:output:0+simple_rnn_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_8/strided_slicew
simple_rnn_8/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
simple_rnn_8/zeros/mul/y†
simple_rnn_8/zeros/mulMul#simple_rnn_8/strided_slice:output:0!simple_rnn_8/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_8/zeros/muly
simple_rnn_8/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
simple_rnn_8/zeros/Less/yЫ
simple_rnn_8/zeros/LessLesssimple_rnn_8/zeros/mul:z:0"simple_rnn_8/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_8/zeros/Less}
simple_rnn_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
simple_rnn_8/zeros/packed/1Ј
simple_rnn_8/zeros/packedPack#simple_rnn_8/strided_slice:output:0$simple_rnn_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_8/zeros/packedy
simple_rnn_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_8/zeros/Const™
simple_rnn_8/zerosFill"simple_rnn_8/zeros/packed:output:0!simple_rnn_8/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_8/zerosП
simple_rnn_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_8/transpose/permЄ
simple_rnn_8/transpose	Transposesimple_rnn_7/transpose_1:y:0$simple_rnn_8/transpose/perm:output:0*
T0*,
_output_shapes
:M€€€€€€€€€А2
simple_rnn_8/transposev
simple_rnn_8/Shape_1Shapesimple_rnn_8/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_8/Shape_1Т
"simple_rnn_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_8/strided_slice_1/stackЦ
$simple_rnn_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_1/stack_1Ц
$simple_rnn_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_1/stack_2Љ
simple_rnn_8/strided_slice_1StridedSlicesimple_rnn_8/Shape_1:output:0+simple_rnn_8/strided_slice_1/stack:output:0-simple_rnn_8/strided_slice_1/stack_1:output:0-simple_rnn_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_8/strided_slice_1Я
(simple_rnn_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2*
(simple_rnn_8/TensorArrayV2/element_shapeж
simple_rnn_8/TensorArrayV2TensorListReserve1simple_rnn_8/TensorArrayV2/element_shape:output:0%simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_8/TensorArrayV2ў
Bsimple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2D
Bsimple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shapeђ
4simple_rnn_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_8/transpose:y:0Ksimple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_8/TensorArrayUnstack/TensorListFromTensorТ
"simple_rnn_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_8/strided_slice_2/stackЦ
$simple_rnn_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_2/stack_1Ц
$simple_rnn_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_2/stack_2Ћ
simple_rnn_8/strided_slice_2StridedSlicesimple_rnn_8/transpose:y:0+simple_rnn_8/strided_slice_2/stack:output:0-simple_rnn_8/strided_slice_2/stack_1:output:0-simple_rnn_8/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
simple_rnn_8/strided_slice_2м
4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype026
4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpр
%simple_rnn_8/simple_rnn_cell_8/MatMulMatMul%simple_rnn_8/strided_slice_2:output:0<simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2'
%simple_rnn_8/simple_rnn_cell_8/MatMulк
5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype027
5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpю
&simple_rnn_8/simple_rnn_cell_8/BiasAddBiasAdd/simple_rnn_8/simple_rnn_cell_8/MatMul:product:0=simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2(
&simple_rnn_8/simple_rnn_cell_8/BiasAddт
6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype028
6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpм
'simple_rnn_8/simple_rnn_cell_8/MatMul_1MatMulsimple_rnn_8/zeros:output:0>simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2)
'simple_rnn_8/simple_rnn_cell_8/MatMul_1и
"simple_rnn_8/simple_rnn_cell_8/addAddV2/simple_rnn_8/simple_rnn_cell_8/BiasAdd:output:01simple_rnn_8/simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"simple_rnn_8/simple_rnn_cell_8/add≠
#simple_rnn_8/simple_rnn_cell_8/ReluRelu&simple_rnn_8/simple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2%
#simple_rnn_8/simple_rnn_cell_8/Relu©
*simple_rnn_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2,
*simple_rnn_8/TensorArrayV2_1/element_shapeм
simple_rnn_8/TensorArrayV2_1TensorListReserve3simple_rnn_8/TensorArrayV2_1/element_shape:output:0%simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_8/TensorArrayV2_1h
simple_rnn_8/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_8/timeЩ
%simple_rnn_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2'
%simple_rnn_8/while/maximum_iterationsД
simple_rnn_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_8/while/loop_counterъ
simple_rnn_8/whileWhile(simple_rnn_8/while/loop_counter:output:0.simple_rnn_8/while/maximum_iterations:output:0simple_rnn_8/time:output:0%simple_rnn_8/TensorArrayV2_1:handle:0simple_rnn_8/zeros:output:0%simple_rnn_8/strided_slice_1:output:0Dsimple_rnn_8/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*)
body!R
simple_rnn_8_while_body_13769*)
cond!R
simple_rnn_8_while_cond_13768*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
simple_rnn_8/whileѕ
=simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2?
=simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shapeЭ
/simple_rnn_8/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_8/while:output:3Fsimple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:M€€€€€€€€€А*
element_dtype021
/simple_rnn_8/TensorArrayV2Stack/TensorListStackЫ
"simple_rnn_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2$
"simple_rnn_8/strided_slice_3/stackЦ
$simple_rnn_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_8/strided_slice_3/stack_1Ц
$simple_rnn_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_3/stack_2й
simple_rnn_8/strided_slice_3StridedSlice8simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_8/strided_slice_3/stack:output:0-simple_rnn_8/strided_slice_3/stack_1:output:0-simple_rnn_8/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
simple_rnn_8/strided_slice_3У
simple_rnn_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_8/transpose_1/permЏ
simple_rnn_8/transpose_1	Transpose8simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_8/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€MА2
simple_rnn_8/transpose_1Х
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2"
 time_distributed_1/Reshape/shapeњ
time_distributed_1/ReshapeReshapesimple_rnn_8/transpose_1:y:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
time_distributed_1/Reshapeя
0time_distributed_1/dense_1/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype022
0time_distributed_1/dense_1/MatMul/ReadVariableOpб
!time_distributed_1/dense_1/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2#
!time_distributed_1/dense_1/MatMulЁ
1time_distributed_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1time_distributed_1/dense_1/BiasAdd/ReadVariableOpн
"time_distributed_1/dense_1/BiasAddBiasAdd+time_distributed_1/dense_1/MatMul:product:09time_distributed_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"time_distributed_1/dense_1/BiasAdd≤
"time_distributed_1/dense_1/SoftmaxSoftmax+time_distributed_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"time_distributed_1/dense_1/SoftmaxЭ
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€M      2$
"time_distributed_1/Reshape_1/shapeЎ
time_distributed_1/Reshape_1Reshape,time_distributed_1/dense_1/Softmax:softmax:0+time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€M2
time_distributed_1/Reshape_1Щ
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2$
"time_distributed_1/Reshape_2/shape≈
time_distributed_1/Reshape_2Reshapesimple_rnn_8/transpose_1:y:0+time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
time_distributed_1/Reshape_2Ї
IdentityIdentity%time_distributed_1/Reshape_1:output:0^embedding_2/embedding_lookup6^simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp5^simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp7^simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp^simple_rnn_6/while6^simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp5^simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp7^simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp^simple_rnn_7/while6^simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp5^simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp7^simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp^simple_rnn_8/while2^time_distributed_1/dense_1/BiasAdd/ReadVariableOp1^time_distributed_1/dense_1/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:€€€€€€€€€M::::::::::::2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2n
5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp2l
4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp2p
6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp2(
simple_rnn_6/whilesimple_rnn_6/while2n
5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp2l
4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp2p
6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp2(
simple_rnn_7/whilesimple_rnn_7/while2n
5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp2l
4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp2p
6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp2(
simple_rnn_8/whilesimple_rnn_8/while2f
1time_distributed_1/dense_1/BiasAdd/ReadVariableOp1time_distributed_1/dense_1/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_1/MatMul/ReadVariableOp0time_distributed_1/dense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€M
 
_user_specified_nameinputs
о	
≥
1__inference_simple_rnn_cell_7_layer_call_fn_15633

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1ИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_110302
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

IdentityУ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€@:€€€€€€€€€А:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0
∆

Ь
simple_rnn_6_while_cond_135526
2simple_rnn_6_while_simple_rnn_6_while_loop_counter<
8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations"
simple_rnn_6_while_placeholder$
 simple_rnn_6_while_placeholder_1$
 simple_rnn_6_while_placeholder_28
4simple_rnn_6_while_less_simple_rnn_6_strided_slice_1M
Isimple_rnn_6_while_simple_rnn_6_while_cond_13552___redundant_placeholder0M
Isimple_rnn_6_while_simple_rnn_6_while_cond_13552___redundant_placeholder1M
Isimple_rnn_6_while_simple_rnn_6_while_cond_13552___redundant_placeholder2M
Isimple_rnn_6_while_simple_rnn_6_while_cond_13552___redundant_placeholder3
simple_rnn_6_while_identity
±
simple_rnn_6/while/LessLesssimple_rnn_6_while_placeholder4simple_rnn_6_while_less_simple_rnn_6_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_6/while/LessД
simple_rnn_6/while/IdentityIdentitysimple_rnn_6/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_6/while/Identity"C
simple_rnn_6_while_identity$simple_rnn_6/while/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€@: ::::: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
хG
Ф
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_12500

inputs4
0simple_rnn_cell_7_matmul_readvariableop_resource5
1simple_rnn_cell_7_biasadd_readvariableop_resource6
2simple_rnn_cell_7_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_7/MatMul/ReadVariableOpҐ)simple_rnn_cell_7/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :А2
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
B :и2
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
B :А2
zeros/packed/1Г
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
:€€€€€€€€€А2
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
:M€€€€€€€€€@2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_2ƒ
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02)
'simple_rnn_cell_7/MatMul/ReadVariableOpЉ
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/MatMul√
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_7/BiasAdd/ReadVariableOp 
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/BiasAddЋ
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_7/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/MatMul_1і
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/addП
simple_rnn_cell_7/SigmoidSigmoidsimple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/SigmoidП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterƒ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_12434*
condR
while_cond_12433*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:M€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€MА2
transpose_1с
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:€€€€€€€€€MА2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€M@:::2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€M@
 
_user_specified_nameinputs
ф3
ы
while_body_12434
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_7_matmul_readvariableop_resource;
7while_simple_rnn_cell_7_biasadd_readvariableop_resource<
8while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_7/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЎ
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02/
-while/simple_rnn_cell_7/MatMul/ReadVariableOpж
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_7/MatMul„
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_7/BiasAddя
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_7/MatMul_1ћ
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_7/add°
while/simple_rnn_cell_7/SigmoidSigmoidwhile/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_7/Sigmoidз
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder#while/simple_rnn_cell_7/Sigmoid:y:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ы
while/Identity_4Identity#while/simple_rnn_cell_7/Sigmoid:y:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Ќ
•
while_cond_14460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_14460___redundant_placeholder03
/while_while_cond_14460___redundant_placeholder13
/while_while_cond_14460___redundant_placeholder23
/while_while_cond_14460___redundant_placeholder3
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
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
Ќ
•
while_cond_12686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_12686___redundant_placeholder03
/while_while_cond_12686___redundant_placeholder13
/while_while_cond_12686___redundant_placeholder23
/while_while_cond_12686___redundant_placeholder3
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
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
ж<
с
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_11350

inputs
simple_rnn_cell_7_11275
simple_rnn_cell_7_11277
simple_rnn_cell_7_11279
identityИҐ)simple_rnn_cell_7/StatefulPartitionedCallҐwhileD
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
strided_slice/stack_2в
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
B :А2
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
B :и2
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
B :А2
zeros/packed/1Г
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
:€€€€€€€€€А2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_2Т
)simple_rnn_cell_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_7_11275simple_rnn_cell_7_11277simple_rnn_cell_7_11279*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_110132+
)simple_rnn_cell_7/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterц
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_7_11275simple_rnn_cell_7_11277simple_rnn_cell_7_11279*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_11287*
condR
while_cond_11286*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1•
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_7/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::2V
)simple_rnn_cell_7/StatefulPartitionedCall)simple_rnn_cell_7/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ы3
ы
while_body_12799
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_8_matmul_readvariableop_resource;
7while_simple_rnn_cell_8_biasadd_readvariableop_resource<
8while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_8/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape‘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemў
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02/
-while/simple_rnn_cell_8/MatMul/ReadVariableOpж
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_8/MatMul„
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_8/BiasAddя
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_8/MatMul_1ћ
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_8/addШ
while/simple_rnn_cell_8/ReluReluwhile/simple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_8/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_8/Relu:activations:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ґ
while/Identity_4Identity*while/simple_rnn_cell_8/Relu:activations:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Ќ
•
while_cond_12798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_12798___redundant_placeholder03
/while_while_cond_12798___redundant_placeholder13
/while_while_cond_12798___redundant_placeholder23
/while_while_cond_12798___redundant_placeholder3
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
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
Ћ
•
while_cond_12180
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_12180___redundant_placeholder03
/while_while_cond_12180___redundant_placeholder13
/while_while_cond_12180___redundant_placeholder23
/while_while_cond_12180___redundant_placeholder3
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
-: : : : :€€€€€€€€€@: ::::: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
Ќ
•
while_cond_11798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_11798___redundant_placeholder03
/while_while_cond_11798___redundant_placeholder13
/while_while_cond_11798___redundant_placeholder23
/while_while_cond_11798___redundant_placeholder3
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
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
њ
Т
,__inference_simple_rnn_7_layer_call_fn_14907
inputs_0
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_114672
StatefulPartitionedCallЬ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
"
_user_specified_name
inputs/0
њ
Т
,__inference_simple_rnn_7_layer_call_fn_14896
inputs_0
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_113502
StatefulPartitionedCallЬ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
"
_user_specified_name
inputs/0
К#
ю
while_body_11287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0#
while_simple_rnn_cell_7_11309_0#
while_simple_rnn_cell_7_11311_0#
while_simple_rnn_cell_7_11313_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor!
while_simple_rnn_cell_7_11309!
while_simple_rnn_cell_7_11311!
while_simple_rnn_cell_7_11313ИҐ/while/simple_rnn_cell_7/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem”
/while/simple_rnn_cell_7/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_7_11309_0while_simple_rnn_cell_7_11311_0while_simple_rnn_cell_7_11313_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_1101321
/while/simple_rnn_cell_7/StatefulPartitionedCallь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_7/StatefulPartitionedCall:output:0*
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
while/add_1Р
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity£
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Т
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2њ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ѕ
while/Identity_4Identity8while/simple_rnn_cell_7/StatefulPartitionedCall:output:10^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_7_11309while_simple_rnn_cell_7_11309_0"@
while_simple_rnn_cell_7_11311while_simple_rnn_cell_7_11311_0"@
while_simple_rnn_cell_7_11313while_simple_rnn_cell_7_11313_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2b
/while/simple_rnn_cell_7/StatefulPartitionedCall/while/simple_rnn_cell_7/StatefulPartitionedCall: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Ќ
•
while_cond_14706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_14706___redundant_placeholder03
/while_while_cond_14706___redundant_placeholder13
/while_while_cond_14706___redundant_placeholder23
/while_while_cond_14706___redundant_placeholder3
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
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
∆

Ь
simple_rnn_6_while_cond_132056
2simple_rnn_6_while_simple_rnn_6_while_loop_counter<
8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations"
simple_rnn_6_while_placeholder$
 simple_rnn_6_while_placeholder_1$
 simple_rnn_6_while_placeholder_28
4simple_rnn_6_while_less_simple_rnn_6_strided_slice_1M
Isimple_rnn_6_while_simple_rnn_6_while_cond_13205___redundant_placeholder0M
Isimple_rnn_6_while_simple_rnn_6_while_cond_13205___redundant_placeholder1M
Isimple_rnn_6_while_simple_rnn_6_while_cond_13205___redundant_placeholder2M
Isimple_rnn_6_while_simple_rnn_6_while_cond_13205___redundant_placeholder3
simple_rnn_6_while_identity
±
simple_rnn_6/while/LessLesssimple_rnn_6_while_placeholder4simple_rnn_6_while_less_simple_rnn_6_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_6/while/LessД
simple_rnn_6/while/IdentityIdentitysimple_rnn_6/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_6/while/Identity"C
simple_rnn_6_while_identity$simple_rnn_6/while/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€@: ::::: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
Ќ
•
while_cond_11915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_11915___redundant_placeholder03
/while_while_cond_11915___redundant_placeholder13
/while_while_cond_11915___redundant_placeholder23
/while_while_cond_11915___redundant_placeholder3
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
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
сG
Ф
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_15377

inputs4
0simple_rnn_cell_8_matmul_readvariableop_resource5
1simple_rnn_cell_8_biasadd_readvariableop_resource6
2simple_rnn_cell_8_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_8/MatMul/ReadVariableOpҐ)simple_rnn_cell_8/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :А2
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
B :и2
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
B :А2
zeros/packed/1Г
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
:€€€€€€€€€А2
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
:M€€€€€€€€€А2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2э
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_2≈
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02)
'simple_rnn_cell_8/MatMul/ReadVariableOpЉ
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/MatMul√
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_8/BiasAdd/ReadVariableOp 
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/BiasAddЋ
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_8/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/MatMul_1і
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/addЖ
simple_rnn_cell_8/ReluRelusimple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterƒ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_15311*
condR
while_cond_15310*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:M€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€MА2
transpose_1с
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:€€€€€€€€€MА2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€MА:::2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€MА
 
_user_specified_nameinputs
ЏG
Ф
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_14035

inputs4
0simple_rnn_cell_6_matmul_readvariableop_resource5
1simple_rnn_cell_6_biasadd_readvariableop_resource6
2simple_rnn_cell_6_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_6/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_6/MatMul/ReadVariableOpҐ)simple_rnn_cell_6/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
zeros/packed/1Г
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
:€€€€€€€€€@2
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
:M€€€€€€€€€P2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€P*
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:P@*
dtype02)
'simple_rnn_cell_6/MatMul/ReadVariableOpї
simple_rnn_cell_6/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/MatMul¬
(simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_6/BiasAdd/ReadVariableOp…
simple_rnn_cell_6/BiasAddBiasAdd"simple_rnn_cell_6/MatMul:product:00simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/BiasAdd…
)simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_6/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_6/MatMul_1MatMulzeros:output:01simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/MatMul_1≥
simple_rnn_cell_6/addAddV2"simple_rnn_cell_6/BiasAdd:output:0$simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/addЕ
simple_rnn_cell_6/TanhTanhsimple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/TanhП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_6_matmul_readvariableop_resource1simple_rnn_cell_6_biasadd_readvariableop_resource2simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_13969*
condR
while_cond_13968*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:M€€€€€€€€€@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€M@2
transpose_1р
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_6/BiasAdd/ReadVariableOp(^simple_rnn_cell_6/MatMul/ReadVariableOp*^simple_rnn_cell_6/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:€€€€€€€€€M@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€MP:::2T
(simple_rnn_cell_6/BiasAdd/ReadVariableOp(simple_rnn_cell_6/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_6/MatMul/ReadVariableOp'simple_rnn_cell_6/MatMul/ReadVariableOp2V
)simple_rnn_cell_6/MatMul_1/ReadVariableOp)simple_rnn_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€MP
 
_user_specified_nameinputs
Ќ
•
while_cond_11403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_11403___redundant_placeholder03
/while_while_cond_11403___redundant_placeholder13
/while_while_cond_11403___redundant_placeholder23
/while_while_cond_11403___redundant_placeholder3
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
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
їB
Б
simple_rnn_6_while_body_132066
2simple_rnn_6_while_simple_rnn_6_while_loop_counter<
8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations"
simple_rnn_6_while_placeholder$
 simple_rnn_6_while_placeholder_1$
 simple_rnn_6_while_placeholder_25
1simple_rnn_6_while_simple_rnn_6_strided_slice_1_0q
msimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0I
Esimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0J
Fsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0K
Gsimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0
simple_rnn_6_while_identity!
simple_rnn_6_while_identity_1!
simple_rnn_6_while_identity_2!
simple_rnn_6_while_identity_3!
simple_rnn_6_while_identity_43
/simple_rnn_6_while_simple_rnn_6_strided_slice_1o
ksimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensorG
Csimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resourceH
Dsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resourceI
Esimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resourceИҐ;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpҐ:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpҐ<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpЁ
Dsimple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2F
Dsimple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape°
6simple_rnn_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_6_while_placeholderMsimple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€P*
element_dtype028
6simple_rnn_6/while/TensorArrayV2Read/TensorListGetItemю
:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:P@*
dtype02<
:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpЩ
+simple_rnn_6/while/simple_rnn_cell_6/MatMulMatMul=simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2-
+simple_rnn_6/while/simple_rnn_cell_6/MatMulэ
;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02=
;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpХ
,simple_rnn_6/while/simple_rnn_cell_6/BiasAddBiasAdd5simple_rnn_6/while/simple_rnn_cell_6/MatMul:product:0Csimple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2.
,simple_rnn_6/while/simple_rnn_cell_6/BiasAddД
<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02>
<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpВ
-simple_rnn_6/while/simple_rnn_cell_6/MatMul_1MatMul simple_rnn_6_while_placeholder_2Dsimple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2/
-simple_rnn_6/while/simple_rnn_cell_6/MatMul_1€
(simple_rnn_6/while/simple_rnn_cell_6/addAddV25simple_rnn_6/while/simple_rnn_cell_6/BiasAdd:output:07simple_rnn_6/while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2*
(simple_rnn_6/while/simple_rnn_cell_6/addЊ
)simple_rnn_6/while/simple_rnn_cell_6/TanhTanh,simple_rnn_6/while/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2+
)simple_rnn_6/while/simple_rnn_cell_6/Tanh•
7simple_rnn_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_6_while_placeholder_1simple_rnn_6_while_placeholder-simple_rnn_6/while/simple_rnn_cell_6/Tanh:y:0*
_output_shapes
: *
element_dtype029
7simple_rnn_6/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_6/while/add/yЭ
simple_rnn_6/while/addAddV2simple_rnn_6_while_placeholder!simple_rnn_6/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_6/while/addz
simple_rnn_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_6/while/add_1/yЈ
simple_rnn_6/while/add_1AddV22simple_rnn_6_while_simple_rnn_6_while_loop_counter#simple_rnn_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_6/while/add_1њ
simple_rnn_6/while/IdentityIdentitysimple_rnn_6/while/add_1:z:0<^simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp;^simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp=^simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_6/while/Identityя
simple_rnn_6/while/Identity_1Identity8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations<^simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp;^simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp=^simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_6/while/Identity_1Ѕ
simple_rnn_6/while/Identity_2Identitysimple_rnn_6/while/add:z:0<^simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp;^simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp=^simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_6/while/Identity_2о
simple_rnn_6/while/Identity_3IdentityGsimple_rnn_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp;^simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp=^simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_6/while/Identity_3е
simple_rnn_6/while/Identity_4Identity-simple_rnn_6/while/simple_rnn_cell_6/Tanh:y:0<^simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp;^simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp=^simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_6/while/Identity_4"C
simple_rnn_6_while_identity$simple_rnn_6/while/Identity:output:0"G
simple_rnn_6_while_identity_1&simple_rnn_6/while/Identity_1:output:0"G
simple_rnn_6_while_identity_2&simple_rnn_6/while/Identity_2:output:0"G
simple_rnn_6_while_identity_3&simple_rnn_6/while/Identity_3:output:0"G
simple_rnn_6_while_identity_4&simple_rnn_6/while/Identity_4:output:0"d
/simple_rnn_6_while_simple_rnn_6_strided_slice_11simple_rnn_6_while_simple_rnn_6_strided_slice_1_0"О
Dsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resourceFsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"Р
Esimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resourceGsimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"М
Csimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resourceEsimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0"№
ksimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensormsimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€@: : :::2z
;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2x
:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp2|
<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
ы3
ы
while_body_15199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_8_matmul_readvariableop_resource;
7while_simple_rnn_cell_8_biasadd_readvariableop_resource<
8while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_8/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape‘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemў
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02/
-while/simple_rnn_cell_8/MatMul/ReadVariableOpж
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_8/MatMul„
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_8/BiasAddя
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_8/MatMul_1ћ
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_8/addШ
while/simple_rnn_cell_8/ReluReluwhile/simple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_8/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_8/Relu:activations:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ґ
while/Identity_4Identity*while/simple_rnn_cell_8/Relu:activations:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
•
З
2__inference_time_distributed_1_layer_call_fn_15509

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_121032
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
хІ
Ѓ
G__inference_sequential_2_layer_call_and_return_conditional_losses_13501

inputs&
"embedding_2_embedding_lookup_13158A
=simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resourceB
>simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resourceC
?simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resourceA
=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resourceB
>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resourceC
?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resourceA
=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resourceB
>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resourceC
?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource=
9time_distributed_1_dense_1_matmul_readvariableop_resource>
:time_distributed_1_dense_1_biasadd_readvariableop_resource
identityИҐembedding_2/embedding_lookupҐ5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOpҐ4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOpҐ6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOpҐsimple_rnn_6/whileҐ5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpҐ6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpҐsimple_rnn_7/whileҐ5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpҐ6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpҐsimple_rnn_8/whileҐ1time_distributed_1/dense_1/BiasAdd/ReadVariableOpҐ0time_distributed_1/dense_1/MatMul/ReadVariableOpu
embedding_2/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€M2
embedding_2/CastЈ
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_13158embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_2/embedding_lookup/13158*+
_output_shapes
:€€€€€€€€€MP*
dtype02
embedding_2/embedding_lookupЬ
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/13158*+
_output_shapes
:€€€€€€€€€MP2'
%embedding_2/embedding_lookup/Identityƒ
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€MP2)
'embedding_2/embedding_lookup/Identity_1И
simple_rnn_6/ShapeShape0embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
simple_rnn_6/ShapeО
 simple_rnn_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_6/strided_slice/stackТ
"simple_rnn_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_6/strided_slice/stack_1Т
"simple_rnn_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_6/strided_slice/stack_2∞
simple_rnn_6/strided_sliceStridedSlicesimple_rnn_6/Shape:output:0)simple_rnn_6/strided_slice/stack:output:0+simple_rnn_6/strided_slice/stack_1:output:0+simple_rnn_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_6/strided_slicev
simple_rnn_6/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_6/zeros/mul/y†
simple_rnn_6/zeros/mulMul#simple_rnn_6/strided_slice:output:0!simple_rnn_6/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_6/zeros/muly
simple_rnn_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
simple_rnn_6/zeros/Less/yЫ
simple_rnn_6/zeros/LessLesssimple_rnn_6/zeros/mul:z:0"simple_rnn_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_6/zeros/Less|
simple_rnn_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_6/zeros/packed/1Ј
simple_rnn_6/zeros/packedPack#simple_rnn_6/strided_slice:output:0$simple_rnn_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_6/zeros/packedy
simple_rnn_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_6/zeros/Const©
simple_rnn_6/zerosFill"simple_rnn_6/zeros/packed:output:0!simple_rnn_6/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_6/zerosП
simple_rnn_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_6/transpose/permЋ
simple_rnn_6/transpose	Transpose0embedding_2/embedding_lookup/Identity_1:output:0$simple_rnn_6/transpose/perm:output:0*
T0*+
_output_shapes
:M€€€€€€€€€P2
simple_rnn_6/transposev
simple_rnn_6/Shape_1Shapesimple_rnn_6/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_6/Shape_1Т
"simple_rnn_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_6/strided_slice_1/stackЦ
$simple_rnn_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_6/strided_slice_1/stack_1Ц
$simple_rnn_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_6/strided_slice_1/stack_2Љ
simple_rnn_6/strided_slice_1StridedSlicesimple_rnn_6/Shape_1:output:0+simple_rnn_6/strided_slice_1/stack:output:0-simple_rnn_6/strided_slice_1/stack_1:output:0-simple_rnn_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_6/strided_slice_1Я
(simple_rnn_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2*
(simple_rnn_6/TensorArrayV2/element_shapeж
simple_rnn_6/TensorArrayV2TensorListReserve1simple_rnn_6/TensorArrayV2/element_shape:output:0%simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_6/TensorArrayV2ў
Bsimple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2D
Bsimple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeђ
4simple_rnn_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_6/transpose:y:0Ksimple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_6/TensorArrayUnstack/TensorListFromTensorТ
"simple_rnn_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_6/strided_slice_2/stackЦ
$simple_rnn_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_6/strided_slice_2/stack_1Ц
$simple_rnn_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_6/strided_slice_2/stack_2 
simple_rnn_6/strided_slice_2StridedSlicesimple_rnn_6/transpose:y:0+simple_rnn_6/strided_slice_2/stack:output:0-simple_rnn_6/strided_slice_2/stack_1:output:0-simple_rnn_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€P*
shrink_axis_mask2
simple_rnn_6/strided_slice_2к
4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp=simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:P@*
dtype026
4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOpп
%simple_rnn_6/simple_rnn_cell_6/MatMulMatMul%simple_rnn_6/strided_slice_2:output:0<simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2'
%simple_rnn_6/simple_rnn_cell_6/MatMulй
5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype027
5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOpэ
&simple_rnn_6/simple_rnn_cell_6/BiasAddBiasAdd/simple_rnn_6/simple_rnn_cell_6/MatMul:product:0=simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2(
&simple_rnn_6/simple_rnn_cell_6/BiasAddр
6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype028
6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOpл
'simple_rnn_6/simple_rnn_cell_6/MatMul_1MatMulsimple_rnn_6/zeros:output:0>simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2)
'simple_rnn_6/simple_rnn_cell_6/MatMul_1з
"simple_rnn_6/simple_rnn_cell_6/addAddV2/simple_rnn_6/simple_rnn_cell_6/BiasAdd:output:01simple_rnn_6/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2$
"simple_rnn_6/simple_rnn_cell_6/addђ
#simple_rnn_6/simple_rnn_cell_6/TanhTanh&simple_rnn_6/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2%
#simple_rnn_6/simple_rnn_cell_6/Tanh©
*simple_rnn_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2,
*simple_rnn_6/TensorArrayV2_1/element_shapeм
simple_rnn_6/TensorArrayV2_1TensorListReserve3simple_rnn_6/TensorArrayV2_1/element_shape:output:0%simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_6/TensorArrayV2_1h
simple_rnn_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_6/timeЩ
%simple_rnn_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2'
%simple_rnn_6/while/maximum_iterationsД
simple_rnn_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_6/while/loop_counterш
simple_rnn_6/whileWhile(simple_rnn_6/while/loop_counter:output:0.simple_rnn_6/while/maximum_iterations:output:0simple_rnn_6/time:output:0%simple_rnn_6/TensorArrayV2_1:handle:0simple_rnn_6/zeros:output:0%simple_rnn_6/strided_slice_1:output:0Dsimple_rnn_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resource>simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resource?simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*)
body!R
simple_rnn_6_while_body_13206*)
cond!R
simple_rnn_6_while_cond_13205*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations 2
simple_rnn_6/whileѕ
=simple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2?
=simple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeЬ
/simple_rnn_6/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_6/while:output:3Fsimple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:M€€€€€€€€€@*
element_dtype021
/simple_rnn_6/TensorArrayV2Stack/TensorListStackЫ
"simple_rnn_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2$
"simple_rnn_6/strided_slice_3/stackЦ
$simple_rnn_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_6/strided_slice_3/stack_1Ц
$simple_rnn_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_6/strided_slice_3/stack_2и
simple_rnn_6/strided_slice_3StridedSlice8simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_6/strided_slice_3/stack:output:0-simple_rnn_6/strided_slice_3/stack_1:output:0-simple_rnn_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
simple_rnn_6/strided_slice_3У
simple_rnn_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_6/transpose_1/permў
simple_rnn_6/transpose_1	Transpose8simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€M@2
simple_rnn_6/transpose_1t
simple_rnn_7/ShapeShapesimple_rnn_6/transpose_1:y:0*
T0*
_output_shapes
:2
simple_rnn_7/ShapeО
 simple_rnn_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_7/strided_slice/stackТ
"simple_rnn_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_7/strided_slice/stack_1Т
"simple_rnn_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_7/strided_slice/stack_2∞
simple_rnn_7/strided_sliceStridedSlicesimple_rnn_7/Shape:output:0)simple_rnn_7/strided_slice/stack:output:0+simple_rnn_7/strided_slice/stack_1:output:0+simple_rnn_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_7/strided_slicew
simple_rnn_7/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
simple_rnn_7/zeros/mul/y†
simple_rnn_7/zeros/mulMul#simple_rnn_7/strided_slice:output:0!simple_rnn_7/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_7/zeros/muly
simple_rnn_7/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
simple_rnn_7/zeros/Less/yЫ
simple_rnn_7/zeros/LessLesssimple_rnn_7/zeros/mul:z:0"simple_rnn_7/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_7/zeros/Less}
simple_rnn_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
simple_rnn_7/zeros/packed/1Ј
simple_rnn_7/zeros/packedPack#simple_rnn_7/strided_slice:output:0$simple_rnn_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_7/zeros/packedy
simple_rnn_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_7/zeros/Const™
simple_rnn_7/zerosFill"simple_rnn_7/zeros/packed:output:0!simple_rnn_7/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_7/zerosП
simple_rnn_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_7/transpose/permЈ
simple_rnn_7/transpose	Transposesimple_rnn_6/transpose_1:y:0$simple_rnn_7/transpose/perm:output:0*
T0*+
_output_shapes
:M€€€€€€€€€@2
simple_rnn_7/transposev
simple_rnn_7/Shape_1Shapesimple_rnn_7/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_7/Shape_1Т
"simple_rnn_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_7/strided_slice_1/stackЦ
$simple_rnn_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_1/stack_1Ц
$simple_rnn_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_1/stack_2Љ
simple_rnn_7/strided_slice_1StridedSlicesimple_rnn_7/Shape_1:output:0+simple_rnn_7/strided_slice_1/stack:output:0-simple_rnn_7/strided_slice_1/stack_1:output:0-simple_rnn_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_7/strided_slice_1Я
(simple_rnn_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2*
(simple_rnn_7/TensorArrayV2/element_shapeж
simple_rnn_7/TensorArrayV2TensorListReserve1simple_rnn_7/TensorArrayV2/element_shape:output:0%simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_7/TensorArrayV2ў
Bsimple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2D
Bsimple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shapeђ
4simple_rnn_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_7/transpose:y:0Ksimple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_7/TensorArrayUnstack/TensorListFromTensorТ
"simple_rnn_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_7/strided_slice_2/stackЦ
$simple_rnn_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_2/stack_1Ц
$simple_rnn_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_2/stack_2 
simple_rnn_7/strided_slice_2StridedSlicesimple_rnn_7/transpose:y:0+simple_rnn_7/strided_slice_2/stack:output:0-simple_rnn_7/strided_slice_2/stack_1:output:0-simple_rnn_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
simple_rnn_7/strided_slice_2л
4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype026
4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpр
%simple_rnn_7/simple_rnn_cell_7/MatMulMatMul%simple_rnn_7/strided_slice_2:output:0<simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2'
%simple_rnn_7/simple_rnn_cell_7/MatMulк
5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype027
5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpю
&simple_rnn_7/simple_rnn_cell_7/BiasAddBiasAdd/simple_rnn_7/simple_rnn_cell_7/MatMul:product:0=simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2(
&simple_rnn_7/simple_rnn_cell_7/BiasAddт
6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype028
6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpм
'simple_rnn_7/simple_rnn_cell_7/MatMul_1MatMulsimple_rnn_7/zeros:output:0>simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2)
'simple_rnn_7/simple_rnn_cell_7/MatMul_1и
"simple_rnn_7/simple_rnn_cell_7/addAddV2/simple_rnn_7/simple_rnn_cell_7/BiasAdd:output:01simple_rnn_7/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"simple_rnn_7/simple_rnn_cell_7/addґ
&simple_rnn_7/simple_rnn_cell_7/SigmoidSigmoid&simple_rnn_7/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2(
&simple_rnn_7/simple_rnn_cell_7/Sigmoid©
*simple_rnn_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2,
*simple_rnn_7/TensorArrayV2_1/element_shapeм
simple_rnn_7/TensorArrayV2_1TensorListReserve3simple_rnn_7/TensorArrayV2_1/element_shape:output:0%simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_7/TensorArrayV2_1h
simple_rnn_7/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_7/timeЩ
%simple_rnn_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2'
%simple_rnn_7/while/maximum_iterationsД
simple_rnn_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_7/while/loop_counterъ
simple_rnn_7/whileWhile(simple_rnn_7/while/loop_counter:output:0.simple_rnn_7/while/maximum_iterations:output:0simple_rnn_7/time:output:0%simple_rnn_7/TensorArrayV2_1:handle:0simple_rnn_7/zeros:output:0%simple_rnn_7/strided_slice_1:output:0Dsimple_rnn_7/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*)
body!R
simple_rnn_7_while_body_13314*)
cond!R
simple_rnn_7_while_cond_13313*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
simple_rnn_7/whileѕ
=simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2?
=simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shapeЭ
/simple_rnn_7/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_7/while:output:3Fsimple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:M€€€€€€€€€А*
element_dtype021
/simple_rnn_7/TensorArrayV2Stack/TensorListStackЫ
"simple_rnn_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2$
"simple_rnn_7/strided_slice_3/stackЦ
$simple_rnn_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_7/strided_slice_3/stack_1Ц
$simple_rnn_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_3/stack_2й
simple_rnn_7/strided_slice_3StridedSlice8simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_7/strided_slice_3/stack:output:0-simple_rnn_7/strided_slice_3/stack_1:output:0-simple_rnn_7/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
simple_rnn_7/strided_slice_3У
simple_rnn_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_7/transpose_1/permЏ
simple_rnn_7/transpose_1	Transpose8simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_7/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€MА2
simple_rnn_7/transpose_1t
simple_rnn_8/ShapeShapesimple_rnn_7/transpose_1:y:0*
T0*
_output_shapes
:2
simple_rnn_8/ShapeО
 simple_rnn_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_8/strided_slice/stackТ
"simple_rnn_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_8/strided_slice/stack_1Т
"simple_rnn_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_8/strided_slice/stack_2∞
simple_rnn_8/strided_sliceStridedSlicesimple_rnn_8/Shape:output:0)simple_rnn_8/strided_slice/stack:output:0+simple_rnn_8/strided_slice/stack_1:output:0+simple_rnn_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_8/strided_slicew
simple_rnn_8/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
simple_rnn_8/zeros/mul/y†
simple_rnn_8/zeros/mulMul#simple_rnn_8/strided_slice:output:0!simple_rnn_8/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_8/zeros/muly
simple_rnn_8/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
simple_rnn_8/zeros/Less/yЫ
simple_rnn_8/zeros/LessLesssimple_rnn_8/zeros/mul:z:0"simple_rnn_8/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_8/zeros/Less}
simple_rnn_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
simple_rnn_8/zeros/packed/1Ј
simple_rnn_8/zeros/packedPack#simple_rnn_8/strided_slice:output:0$simple_rnn_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_8/zeros/packedy
simple_rnn_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_8/zeros/Const™
simple_rnn_8/zerosFill"simple_rnn_8/zeros/packed:output:0!simple_rnn_8/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_8/zerosП
simple_rnn_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_8/transpose/permЄ
simple_rnn_8/transpose	Transposesimple_rnn_7/transpose_1:y:0$simple_rnn_8/transpose/perm:output:0*
T0*,
_output_shapes
:M€€€€€€€€€А2
simple_rnn_8/transposev
simple_rnn_8/Shape_1Shapesimple_rnn_8/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_8/Shape_1Т
"simple_rnn_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_8/strided_slice_1/stackЦ
$simple_rnn_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_1/stack_1Ц
$simple_rnn_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_1/stack_2Љ
simple_rnn_8/strided_slice_1StridedSlicesimple_rnn_8/Shape_1:output:0+simple_rnn_8/strided_slice_1/stack:output:0-simple_rnn_8/strided_slice_1/stack_1:output:0-simple_rnn_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_8/strided_slice_1Я
(simple_rnn_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2*
(simple_rnn_8/TensorArrayV2/element_shapeж
simple_rnn_8/TensorArrayV2TensorListReserve1simple_rnn_8/TensorArrayV2/element_shape:output:0%simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_8/TensorArrayV2ў
Bsimple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2D
Bsimple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shapeђ
4simple_rnn_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_8/transpose:y:0Ksimple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_8/TensorArrayUnstack/TensorListFromTensorТ
"simple_rnn_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_8/strided_slice_2/stackЦ
$simple_rnn_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_2/stack_1Ц
$simple_rnn_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_2/stack_2Ћ
simple_rnn_8/strided_slice_2StridedSlicesimple_rnn_8/transpose:y:0+simple_rnn_8/strided_slice_2/stack:output:0-simple_rnn_8/strided_slice_2/stack_1:output:0-simple_rnn_8/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
simple_rnn_8/strided_slice_2м
4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype026
4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpр
%simple_rnn_8/simple_rnn_cell_8/MatMulMatMul%simple_rnn_8/strided_slice_2:output:0<simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2'
%simple_rnn_8/simple_rnn_cell_8/MatMulк
5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype027
5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpю
&simple_rnn_8/simple_rnn_cell_8/BiasAddBiasAdd/simple_rnn_8/simple_rnn_cell_8/MatMul:product:0=simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2(
&simple_rnn_8/simple_rnn_cell_8/BiasAddт
6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype028
6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpм
'simple_rnn_8/simple_rnn_cell_8/MatMul_1MatMulsimple_rnn_8/zeros:output:0>simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2)
'simple_rnn_8/simple_rnn_cell_8/MatMul_1и
"simple_rnn_8/simple_rnn_cell_8/addAddV2/simple_rnn_8/simple_rnn_cell_8/BiasAdd:output:01simple_rnn_8/simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"simple_rnn_8/simple_rnn_cell_8/add≠
#simple_rnn_8/simple_rnn_cell_8/ReluRelu&simple_rnn_8/simple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2%
#simple_rnn_8/simple_rnn_cell_8/Relu©
*simple_rnn_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2,
*simple_rnn_8/TensorArrayV2_1/element_shapeм
simple_rnn_8/TensorArrayV2_1TensorListReserve3simple_rnn_8/TensorArrayV2_1/element_shape:output:0%simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_8/TensorArrayV2_1h
simple_rnn_8/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_8/timeЩ
%simple_rnn_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2'
%simple_rnn_8/while/maximum_iterationsД
simple_rnn_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_8/while/loop_counterъ
simple_rnn_8/whileWhile(simple_rnn_8/while/loop_counter:output:0.simple_rnn_8/while/maximum_iterations:output:0simple_rnn_8/time:output:0%simple_rnn_8/TensorArrayV2_1:handle:0simple_rnn_8/zeros:output:0%simple_rnn_8/strided_slice_1:output:0Dsimple_rnn_8/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*)
body!R
simple_rnn_8_while_body_13422*)
cond!R
simple_rnn_8_while_cond_13421*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
simple_rnn_8/whileѕ
=simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2?
=simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shapeЭ
/simple_rnn_8/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_8/while:output:3Fsimple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:M€€€€€€€€€А*
element_dtype021
/simple_rnn_8/TensorArrayV2Stack/TensorListStackЫ
"simple_rnn_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2$
"simple_rnn_8/strided_slice_3/stackЦ
$simple_rnn_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_8/strided_slice_3/stack_1Ц
$simple_rnn_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_3/stack_2й
simple_rnn_8/strided_slice_3StridedSlice8simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_8/strided_slice_3/stack:output:0-simple_rnn_8/strided_slice_3/stack_1:output:0-simple_rnn_8/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
simple_rnn_8/strided_slice_3У
simple_rnn_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_8/transpose_1/permЏ
simple_rnn_8/transpose_1	Transpose8simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_8/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€MА2
simple_rnn_8/transpose_1Х
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2"
 time_distributed_1/Reshape/shapeњ
time_distributed_1/ReshapeReshapesimple_rnn_8/transpose_1:y:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
time_distributed_1/Reshapeя
0time_distributed_1/dense_1/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype022
0time_distributed_1/dense_1/MatMul/ReadVariableOpб
!time_distributed_1/dense_1/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2#
!time_distributed_1/dense_1/MatMulЁ
1time_distributed_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1time_distributed_1/dense_1/BiasAdd/ReadVariableOpн
"time_distributed_1/dense_1/BiasAddBiasAdd+time_distributed_1/dense_1/MatMul:product:09time_distributed_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"time_distributed_1/dense_1/BiasAdd≤
"time_distributed_1/dense_1/SoftmaxSoftmax+time_distributed_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"time_distributed_1/dense_1/SoftmaxЭ
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€M      2$
"time_distributed_1/Reshape_1/shapeЎ
time_distributed_1/Reshape_1Reshape,time_distributed_1/dense_1/Softmax:softmax:0+time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€M2
time_distributed_1/Reshape_1Щ
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2$
"time_distributed_1/Reshape_2/shape≈
time_distributed_1/Reshape_2Reshapesimple_rnn_8/transpose_1:y:0+time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
time_distributed_1/Reshape_2Ї
IdentityIdentity%time_distributed_1/Reshape_1:output:0^embedding_2/embedding_lookup6^simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp5^simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp7^simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp^simple_rnn_6/while6^simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp5^simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp7^simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp^simple_rnn_7/while6^simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp5^simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp7^simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp^simple_rnn_8/while2^time_distributed_1/dense_1/BiasAdd/ReadVariableOp1^time_distributed_1/dense_1/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:€€€€€€€€€M::::::::::::2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2n
5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp5simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp2l
4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp4simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp2p
6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp6simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp2(
simple_rnn_6/whilesimple_rnn_6/while2n
5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp2l
4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp2p
6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp2(
simple_rnn_7/whilesimple_rnn_7/while2n
5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp2l
4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp2p
6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp2(
simple_rnn_8/whilesimple_rnn_8/while2f
1time_distributed_1/dense_1/BiasAdd/ReadVariableOp1time_distributed_1/dense_1/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_1/MatMul/ReadVariableOp0time_distributed_1/dense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€M
 
_user_specified_nameinputs
ж<
с
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_11467

inputs
simple_rnn_cell_7_11392
simple_rnn_cell_7_11394
simple_rnn_cell_7_11396
identityИҐ)simple_rnn_cell_7/StatefulPartitionedCallҐwhileD
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
strided_slice/stack_2в
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
B :А2
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
B :и2
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
B :А2
zeros/packed/1Г
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
:€€€€€€€€€А2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_2Т
)simple_rnn_cell_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_7_11392simple_rnn_cell_7_11394simple_rnn_cell_7_11396*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_110302+
)simple_rnn_cell_7/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterц
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_7_11392simple_rnn_cell_7_11394simple_rnn_cell_7_11396*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_11404*
condR
while_cond_11403*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1•
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_7/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::2V
)simple_rnn_cell_7/StatefulPartitionedCall)simple_rnn_cell_7/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
÷B
Б
simple_rnn_7_while_body_136616
2simple_rnn_7_while_simple_rnn_7_while_loop_counter<
8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations"
simple_rnn_7_while_placeholder$
 simple_rnn_7_while_placeholder_1$
 simple_rnn_7_while_placeholder_25
1simple_rnn_7_while_simple_rnn_7_strided_slice_1_0q
msimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0I
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0J
Fsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0K
Gsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0
simple_rnn_7_while_identity!
simple_rnn_7_while_identity_1!
simple_rnn_7_while_identity_2!
simple_rnn_7_while_identity_3!
simple_rnn_7_while_identity_43
/simple_rnn_7_while_simple_rnn_7_strided_slice_1o
ksimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensorG
Csimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resourceH
Dsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resourceI
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐ;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpҐ<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpЁ
Dsimple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2F
Dsimple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shape°
6simple_rnn_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_7_while_placeholderMsimple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype028
6simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem€
:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02<
:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpЪ
+simple_rnn_7/while/simple_rnn_cell_7/MatMulMatMul=simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2-
+simple_rnn_7/while/simple_rnn_cell_7/MatMulю
;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02=
;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpЦ
,simple_rnn_7/while/simple_rnn_cell_7/BiasAddBiasAdd5simple_rnn_7/while/simple_rnn_cell_7/MatMul:product:0Csimple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2.
,simple_rnn_7/while/simple_rnn_cell_7/BiasAddЖ
<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02>
<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpГ
-simple_rnn_7/while/simple_rnn_cell_7/MatMul_1MatMul simple_rnn_7_while_placeholder_2Dsimple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2/
-simple_rnn_7/while/simple_rnn_cell_7/MatMul_1А
(simple_rnn_7/while/simple_rnn_cell_7/addAddV25simple_rnn_7/while/simple_rnn_cell_7/BiasAdd:output:07simple_rnn_7/while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2*
(simple_rnn_7/while/simple_rnn_cell_7/add»
,simple_rnn_7/while/simple_rnn_cell_7/SigmoidSigmoid,simple_rnn_7/while/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2.
,simple_rnn_7/while/simple_rnn_cell_7/Sigmoid®
7simple_rnn_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_7_while_placeholder_1simple_rnn_7_while_placeholder0simple_rnn_7/while/simple_rnn_cell_7/Sigmoid:y:0*
_output_shapes
: *
element_dtype029
7simple_rnn_7/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_7/while/add/yЭ
simple_rnn_7/while/addAddV2simple_rnn_7_while_placeholder!simple_rnn_7/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_7/while/addz
simple_rnn_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_7/while/add_1/yЈ
simple_rnn_7/while/add_1AddV22simple_rnn_7_while_simple_rnn_7_while_loop_counter#simple_rnn_7/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_7/while/add_1њ
simple_rnn_7/while/IdentityIdentitysimple_rnn_7/while/add_1:z:0<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_7/while/Identityя
simple_rnn_7/while/Identity_1Identity8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_7/while/Identity_1Ѕ
simple_rnn_7/while/Identity_2Identitysimple_rnn_7/while/add:z:0<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_7/while/Identity_2о
simple_rnn_7/while/Identity_3IdentityGsimple_rnn_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_7/while/Identity_3й
simple_rnn_7/while/Identity_4Identity0simple_rnn_7/while/simple_rnn_cell_7/Sigmoid:y:0<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_7/while/Identity_4"C
simple_rnn_7_while_identity$simple_rnn_7/while/Identity:output:0"G
simple_rnn_7_while_identity_1&simple_rnn_7/while/Identity_1:output:0"G
simple_rnn_7_while_identity_2&simple_rnn_7/while/Identity_2:output:0"G
simple_rnn_7_while_identity_3&simple_rnn_7/while/Identity_3:output:0"G
simple_rnn_7_while_identity_4&simple_rnn_7/while/Identity_4:output:0"d
/simple_rnn_7_while_simple_rnn_7_strided_slice_11simple_rnn_7_while_simple_rnn_7_strided_slice_1_0"О
Dsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resourceFsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"Р
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resourceGsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"М
Csimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resourceEsimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0"№
ksimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensormsimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2z
;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2x
:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp2|
<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
ф3
ы
while_body_14707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_7_matmul_readvariableop_resource;
7while_simple_rnn_cell_7_biasadd_readvariableop_resource<
8while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_7/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЎ
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02/
-while/simple_rnn_cell_7/MatMul/ReadVariableOpж
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_7/MatMul„
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_7/BiasAddя
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_7/MatMul_1ћ
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_7/add°
while/simple_rnn_cell_7/SigmoidSigmoidwhile/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_7/Sigmoidз
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder#while/simple_rnn_cell_7/Sigmoid:y:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ы
while/Identity_4Identity#while/simple_rnn_cell_7/Sigmoid:y:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
іH
Ц
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_14885
inputs_04
0simple_rnn_cell_7_matmul_readvariableop_resource5
1simple_rnn_cell_7_biasadd_readvariableop_resource6
2simple_rnn_cell_7_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_7/MatMul/ReadVariableOpҐ)simple_rnn_cell_7/MatMul_1/ReadVariableOpҐwhileF
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
strided_slice/stack_2в
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
B :А2
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
B :и2
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
B :А2
zeros/packed/1Г
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
:€€€€€€€€€А2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_2ƒ
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02)
'simple_rnn_cell_7/MatMul/ReadVariableOpЉ
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/MatMul√
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_7/BiasAdd/ReadVariableOp 
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/BiasAddЋ
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_7/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/MatMul_1і
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/addП
simple_rnn_cell_7/SigmoidSigmoidsimple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/SigmoidП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterƒ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_14819*
condR
while_cond_14818*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1ъ
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
"
_user_specified_name
inputs/0
ы3
ы
while_body_14953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_8_matmul_readvariableop_resource;
7while_simple_rnn_cell_8_biasadd_readvariableop_resource<
8while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_8/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape‘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemў
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02/
-while/simple_rnn_cell_8/MatMul/ReadVariableOpж
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_8/MatMul„
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_8/BiasAddя
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_8/MatMul_1ћ
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_8/addШ
while/simple_rnn_cell_8/ReluReluwhile/simple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_8/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_8/Relu:activations:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ґ
while/Identity_4Identity*while/simple_rnn_cell_8/Relu:activations:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Э
Ж
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_15469

inputs*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityИҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpD
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
strided_slice/stack_2в
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
valueB"€€€€   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshape¶
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_1/MatMul/ReadVariableOpХ
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/Softmaxq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2®
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeХ
	Reshape_1Reshapedense_1/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	Reshape_1і
IdentityIdentityReshape_1:output:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€А::2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Ќ
•
while_cond_12433
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_12433___redundant_placeholder03
/while_while_cond_12433___redundant_placeholder13
/while_while_cond_12433___redundant_placeholder23
/while_while_cond_12433___redundant_placeholder3
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
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
ЏG
Ф
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_12247

inputs4
0simple_rnn_cell_6_matmul_readvariableop_resource5
1simple_rnn_cell_6_biasadd_readvariableop_resource6
2simple_rnn_cell_6_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_6/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_6/MatMul/ReadVariableOpҐ)simple_rnn_cell_6/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
zeros/packed/1Г
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
:€€€€€€€€€@2
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
:M€€€€€€€€€P2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€P*
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:P@*
dtype02)
'simple_rnn_cell_6/MatMul/ReadVariableOpї
simple_rnn_cell_6/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/MatMul¬
(simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_6/BiasAdd/ReadVariableOp…
simple_rnn_cell_6/BiasAddBiasAdd"simple_rnn_cell_6/MatMul:product:00simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/BiasAdd…
)simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_6/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_6/MatMul_1MatMulzeros:output:01simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/MatMul_1≥
simple_rnn_cell_6/addAddV2"simple_rnn_cell_6/BiasAdd:output:0$simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/addЕ
simple_rnn_cell_6/TanhTanhsimple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/TanhП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_6_matmul_readvariableop_resource1simple_rnn_cell_6_biasadd_readvariableop_resource2simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_12181*
condR
while_cond_12180*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:M€€€€€€€€€@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€M@2
transpose_1р
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_6/BiasAdd/ReadVariableOp(^simple_rnn_cell_6/MatMul/ReadVariableOp*^simple_rnn_cell_6/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:€€€€€€€€€M@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€MP:::2T
(simple_rnn_cell_6/BiasAdd/ReadVariableOp(simple_rnn_cell_6/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_6/MatMul/ReadVariableOp'simple_rnn_cell_6/MatMul/ReadVariableOp2V
)simple_rnn_cell_6/MatMul_1/ReadVariableOp)simple_rnn_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€MP
 
_user_specified_nameinputs
≠	
Ш
,__inference_sequential_2_layer_call_fn_13877

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
identityИҐStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_130242
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:€€€€€€€€€M::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€M
 
_user_specified_nameinputs
Ѕ
У
*sequential_2_simple_rnn_7_while_cond_10264P
Lsequential_2_simple_rnn_7_while_sequential_2_simple_rnn_7_while_loop_counterV
Rsequential_2_simple_rnn_7_while_sequential_2_simple_rnn_7_while_maximum_iterations/
+sequential_2_simple_rnn_7_while_placeholder1
-sequential_2_simple_rnn_7_while_placeholder_11
-sequential_2_simple_rnn_7_while_placeholder_2R
Nsequential_2_simple_rnn_7_while_less_sequential_2_simple_rnn_7_strided_slice_1g
csequential_2_simple_rnn_7_while_sequential_2_simple_rnn_7_while_cond_10264___redundant_placeholder0g
csequential_2_simple_rnn_7_while_sequential_2_simple_rnn_7_while_cond_10264___redundant_placeholder1g
csequential_2_simple_rnn_7_while_sequential_2_simple_rnn_7_while_cond_10264___redundant_placeholder2g
csequential_2_simple_rnn_7_while_sequential_2_simple_rnn_7_while_cond_10264___redundant_placeholder3,
(sequential_2_simple_rnn_7_while_identity
т
$sequential_2/simple_rnn_7/while/LessLess+sequential_2_simple_rnn_7_while_placeholderNsequential_2_simple_rnn_7_while_less_sequential_2_simple_rnn_7_strided_slice_1*
T0*
_output_shapes
: 2&
$sequential_2/simple_rnn_7/while/LessЂ
(sequential_2/simple_rnn_7/while/IdentityIdentity(sequential_2/simple_rnn_7/while/Less:z:0*
T0
*
_output_shapes
: 2*
(sequential_2/simple_rnn_7/while/Identity"]
(sequential_2_simple_rnn_7_while_identity1sequential_2/simple_rnn_7/while/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
Ќ
•
while_cond_15198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_15198___redundant_placeholder03
/while_while_cond_15198___redundant_placeholder13
/while_while_cond_15198___redundant_placeholder23
/while_while_cond_15198___redundant_placeholder3
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
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
и	
≥
1__inference_simple_rnn_cell_6_layer_call_fn_15571

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_105182
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€P:€€€€€€€€€@:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
states/0
Ќ
•
while_cond_11286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_11286___redundant_placeholder03
/while_while_cond_11286___redundant_placeholder13
/while_while_cond_11286___redundant_placeholder23
/while_while_cond_11286___redundant_placeholder3
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
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
ЏG
Ф
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_12359

inputs4
0simple_rnn_cell_6_matmul_readvariableop_resource5
1simple_rnn_cell_6_biasadd_readvariableop_resource6
2simple_rnn_cell_6_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_6/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_6/MatMul/ReadVariableOpҐ)simple_rnn_cell_6/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
zeros/packed/1Г
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
:€€€€€€€€€@2
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
:M€€€€€€€€€P2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€P*
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:P@*
dtype02)
'simple_rnn_cell_6/MatMul/ReadVariableOpї
simple_rnn_cell_6/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/MatMul¬
(simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_6/BiasAdd/ReadVariableOp…
simple_rnn_cell_6/BiasAddBiasAdd"simple_rnn_cell_6/MatMul:product:00simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/BiasAdd…
)simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_6/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_6/MatMul_1MatMulzeros:output:01simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/MatMul_1≥
simple_rnn_cell_6/addAddV2"simple_rnn_cell_6/BiasAdd:output:0$simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/addЕ
simple_rnn_cell_6/TanhTanhsimple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/TanhП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_6_matmul_readvariableop_resource1simple_rnn_cell_6_biasadd_readvariableop_resource2simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_12293*
condR
while_cond_12292*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:M€€€€€€€€€@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€M@2
transpose_1р
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_6/BiasAdd/ReadVariableOp(^simple_rnn_cell_6/MatMul/ReadVariableOp*^simple_rnn_cell_6/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:€€€€€€€€€M@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€MP:::2T
(simple_rnn_cell_6/BiasAdd/ReadVariableOp(simple_rnn_cell_6/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_6/MatMul/ReadVariableOp'simple_rnn_cell_6/MatMul/ReadVariableOp2V
)simple_rnn_cell_6/MatMul_1/ReadVariableOp)simple_rnn_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€MP
 
_user_specified_nameinputs
Ќ
•
while_cond_12545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_12545___redundant_placeholder03
/while_while_cond_12545___redundant_placeholder13
/while_while_cond_12545___redundant_placeholder23
/while_while_cond_12545___redundant_placeholder3
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
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
їB
Б
simple_rnn_6_while_body_135536
2simple_rnn_6_while_simple_rnn_6_while_loop_counter<
8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations"
simple_rnn_6_while_placeholder$
 simple_rnn_6_while_placeholder_1$
 simple_rnn_6_while_placeholder_25
1simple_rnn_6_while_simple_rnn_6_strided_slice_1_0q
msimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0I
Esimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0J
Fsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0K
Gsimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0
simple_rnn_6_while_identity!
simple_rnn_6_while_identity_1!
simple_rnn_6_while_identity_2!
simple_rnn_6_while_identity_3!
simple_rnn_6_while_identity_43
/simple_rnn_6_while_simple_rnn_6_strided_slice_1o
ksimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensorG
Csimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resourceH
Dsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resourceI
Esimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resourceИҐ;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpҐ:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpҐ<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpЁ
Dsimple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2F
Dsimple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape°
6simple_rnn_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_6_while_placeholderMsimple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€P*
element_dtype028
6simple_rnn_6/while/TensorArrayV2Read/TensorListGetItemю
:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:P@*
dtype02<
:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOpЩ
+simple_rnn_6/while/simple_rnn_cell_6/MatMulMatMul=simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2-
+simple_rnn_6/while/simple_rnn_cell_6/MatMulэ
;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02=
;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOpХ
,simple_rnn_6/while/simple_rnn_cell_6/BiasAddBiasAdd5simple_rnn_6/while/simple_rnn_cell_6/MatMul:product:0Csimple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2.
,simple_rnn_6/while/simple_rnn_cell_6/BiasAddД
<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02>
<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpВ
-simple_rnn_6/while/simple_rnn_cell_6/MatMul_1MatMul simple_rnn_6_while_placeholder_2Dsimple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2/
-simple_rnn_6/while/simple_rnn_cell_6/MatMul_1€
(simple_rnn_6/while/simple_rnn_cell_6/addAddV25simple_rnn_6/while/simple_rnn_cell_6/BiasAdd:output:07simple_rnn_6/while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2*
(simple_rnn_6/while/simple_rnn_cell_6/addЊ
)simple_rnn_6/while/simple_rnn_cell_6/TanhTanh,simple_rnn_6/while/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2+
)simple_rnn_6/while/simple_rnn_cell_6/Tanh•
7simple_rnn_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_6_while_placeholder_1simple_rnn_6_while_placeholder-simple_rnn_6/while/simple_rnn_cell_6/Tanh:y:0*
_output_shapes
: *
element_dtype029
7simple_rnn_6/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_6/while/add/yЭ
simple_rnn_6/while/addAddV2simple_rnn_6_while_placeholder!simple_rnn_6/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_6/while/addz
simple_rnn_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_6/while/add_1/yЈ
simple_rnn_6/while/add_1AddV22simple_rnn_6_while_simple_rnn_6_while_loop_counter#simple_rnn_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_6/while/add_1њ
simple_rnn_6/while/IdentityIdentitysimple_rnn_6/while/add_1:z:0<^simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp;^simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp=^simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_6/while/Identityя
simple_rnn_6/while/Identity_1Identity8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations<^simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp;^simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp=^simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_6/while/Identity_1Ѕ
simple_rnn_6/while/Identity_2Identitysimple_rnn_6/while/add:z:0<^simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp;^simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp=^simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_6/while/Identity_2о
simple_rnn_6/while/Identity_3IdentityGsimple_rnn_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp;^simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp=^simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_6/while/Identity_3е
simple_rnn_6/while/Identity_4Identity-simple_rnn_6/while/simple_rnn_cell_6/Tanh:y:0<^simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp;^simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp=^simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_6/while/Identity_4"C
simple_rnn_6_while_identity$simple_rnn_6/while/Identity:output:0"G
simple_rnn_6_while_identity_1&simple_rnn_6/while/Identity_1:output:0"G
simple_rnn_6_while_identity_2&simple_rnn_6/while/Identity_2:output:0"G
simple_rnn_6_while_identity_3&simple_rnn_6/while/Identity_3:output:0"G
simple_rnn_6_while_identity_4&simple_rnn_6/while/Identity_4:output:0"d
/simple_rnn_6_while_simple_rnn_6_strided_slice_11simple_rnn_6_while_simple_rnn_6_strided_slice_1_0"О
Dsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resourceFsimple_rnn_6_while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"Р
Esimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resourceGsimple_rnn_6_while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"М
Csimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resourceEsimple_rnn_6_while_simple_rnn_cell_6_matmul_readvariableop_resource_0"№
ksimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensormsimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€@: : :::2z
;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp;simple_rnn_6/while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2x
:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp:simple_rnn_6/while/simple_rnn_cell_6/MatMul/ReadVariableOp2|
<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp<simple_rnn_6/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
і!
ў
G__inference_sequential_2_layer_call_and_return_conditional_losses_13088

inputs
embedding_2_13056
simple_rnn_6_13059
simple_rnn_6_13061
simple_rnn_6_13063
simple_rnn_7_13066
simple_rnn_7_13068
simple_rnn_7_13070
simple_rnn_8_13073
simple_rnn_8_13075
simple_rnn_8_13077
time_distributed_1_13080
time_distributed_1_13082
identityИҐ#embedding_2/StatefulPartitionedCallҐ$simple_rnn_6/StatefulPartitionedCallҐ$simple_rnn_7/StatefulPartitionedCallҐ$simple_rnn_8/StatefulPartitionedCallҐ*time_distributed_1/StatefulPartitionedCallП
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_2_13056*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€MP*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_121242%
#embedding_2/StatefulPartitionedCallе
$simple_rnn_6/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0simple_rnn_6_13059simple_rnn_6_13061simple_rnn_6_13063*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_123592&
$simple_rnn_6/StatefulPartitionedCallз
$simple_rnn_7/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_6/StatefulPartitionedCall:output:0simple_rnn_7_13066simple_rnn_7_13068simple_rnn_7_13070*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€MА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_126122&
$simple_rnn_7/StatefulPartitionedCallз
$simple_rnn_8/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_7/StatefulPartitionedCall:output:0simple_rnn_8_13073simple_rnn_8_13075simple_rnn_8_13077*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€MА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_128652&
$simple_rnn_8/StatefulPartitionedCallо
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_8/StatefulPartitionedCall:output:0time_distributed_1_13080time_distributed_1_13082*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_129242,
*time_distributed_1/StatefulPartitionedCallХ
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2"
 time_distributed_1/Reshape/shape–
time_distributed_1/ReshapeReshape-simple_rnn_8/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
time_distributed_1/Reshape”
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0$^embedding_2/StatefulPartitionedCall%^simple_rnn_6/StatefulPartitionedCall%^simple_rnn_7/StatefulPartitionedCall%^simple_rnn_8/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:€€€€€€€€€M::::::::::::2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2L
$simple_rnn_6/StatefulPartitionedCall$simple_rnn_6/StatefulPartitionedCall2L
$simple_rnn_7/StatefulPartitionedCall$simple_rnn_7/StatefulPartitionedCall2L
$simple_rnn_8/StatefulPartitionedCall$simple_rnn_8/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€M
 
_user_specified_nameinputs
Џ	
Ф
F__inference_embedding_2_layer_call_and_return_conditional_losses_13916

inputs
embedding_lookup_13910
identityИҐembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€M2
Castы
embedding_lookupResourceGatherembedding_lookup_13910Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/13910*+
_output_shapes
:€€€€€€€€€MP*
dtype02
embedding_lookupм
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/13910*+
_output_shapes
:€€€€€€€€€MP2
embedding_lookup/Identity†
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€MP2
embedding_lookup/Identity_1П
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:€€€€€€€€€MP2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€M:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€M
 
_user_specified_nameinputs
Л#
ю
while_body_11799
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0#
while_simple_rnn_cell_8_11821_0#
while_simple_rnn_cell_8_11823_0#
while_simple_rnn_cell_8_11825_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor!
while_simple_rnn_cell_8_11821!
while_simple_rnn_cell_8_11823!
while_simple_rnn_cell_8_11825ИҐ/while/simple_rnn_cell_8/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape‘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem”
/while/simple_rnn_cell_8/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_8_11821_0while_simple_rnn_cell_8_11823_0while_simple_rnn_cell_8_11825_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_1152521
/while/simple_rnn_cell_8/StatefulPartitionedCallь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_8/StatefulPartitionedCall:output:0*
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
while/add_1Р
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity£
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Т
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2њ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ѕ
while/Identity_4Identity8while/simple_rnn_cell_8/StatefulPartitionedCall:output:10^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_8_11821while_simple_rnn_cell_8_11821_0"@
while_simple_rnn_cell_8_11823while_simple_rnn_cell_8_11823_0"@
while_simple_rnn_cell_8_11825while_simple_rnn_cell_8_11825_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2b
/while/simple_rnn_cell_8/StatefulPartitionedCall/while/simple_rnn_cell_8/StatefulPartitionedCall: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
а
Ѕ
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_11013

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddХ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
SigmoidЂ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityѓ

Identity_1IdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€@:€€€€€€€€€А:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates
љ
Т
,__inference_simple_rnn_6_layer_call_fn_14415
inputs_0
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_109552
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€P:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€P
"
_user_specified_name
inputs/0
≠	
Ш
,__inference_sequential_2_layer_call_fn_13906

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
identityИҐStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_130882
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:€€€€€€€€€M::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€M
 
_user_specified_nameinputs
ы3
ы
while_body_15065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_8_matmul_readvariableop_resource;
7while_simple_rnn_cell_8_biasadd_readvariableop_resource<
8while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_8/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape‘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemў
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02/
-while/simple_rnn_cell_8/MatMul/ReadVariableOpж
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_8/MatMul„
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_8/BiasAddя
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_8/MatMul_1ћ
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_8/addШ
while/simple_rnn_cell_8/ReluReluwhile/simple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_8/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_8/Relu:activations:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ґ
while/Identity_4Identity*while/simple_rnn_cell_8/Relu:activations:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
’
Ж
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_15429

inputs*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityИҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshape¶
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_1/MatMul/ReadVariableOpХ
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/Softmaxw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€M      2
Reshape_1/shapeМ
	Reshape_1Reshapedense_1/Softmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€M2
	Reshape_1Ђ
IdentityIdentityReshape_1:output:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€MА::2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:€€€€€€€€€MА
 
_user_specified_nameinputs
ў3
ы
while_body_12293
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_6_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_6_matmul_readvariableop_resource;
7while_simple_rnn_cell_6_biasadd_readvariableop_resource<
8while_simple_rnn_cell_6_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_6/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€P*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:P@*
dtype02/
-while/simple_rnn_cell_6/MatMul/ReadVariableOpе
while/simple_rnn_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
while/simple_rnn_cell_6/MatMul÷
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_6/BiasAddBiasAdd(while/simple_rnn_cell_6/MatMul:product:06while/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
while/simple_rnn_cell_6/BiasAddЁ
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_6/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2"
 while/simple_rnn_cell_6/MatMul_1Ћ
while/simple_rnn_cell_6/addAddV2(while/simple_rnn_cell_6/BiasAdd:output:0*while/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/simple_rnn_cell_6/addЧ
while/simple_rnn_cell_6/TanhTanhwhile/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/simple_rnn_cell_6/Tanhд
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_6/Tanh:y:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ч
while/Identity_4Identity while/simple_rnn_cell_6/Tanh:y:0/^while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_6/MatMul/ReadVariableOp0^while/simple_rnn_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_6_biasadd_readvariableop_resource9while_simple_rnn_cell_6_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_6_matmul_1_readvariableop_resource:while_simple_rnn_cell_6_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_6_matmul_readvariableop_resource8while_simple_rnn_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€@: : :::2`
.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp.while/simple_rnn_cell_6/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_6/MatMul/ReadVariableOp-while/simple_rnn_cell_6/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp/while/simple_rnn_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
Ћ
•
while_cond_14080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_14080___redundant_placeholder03
/while_while_cond_14080___redundant_placeholder13
/while_while_cond_14080___redundant_placeholder23
/while_while_cond_14080___redundant_placeholder3
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
-: : : : :€€€€€€€€€@: ::::: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
Л#
ю
while_body_11916
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0#
while_simple_rnn_cell_8_11938_0#
while_simple_rnn_cell_8_11940_0#
while_simple_rnn_cell_8_11942_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor!
while_simple_rnn_cell_8_11938!
while_simple_rnn_cell_8_11940!
while_simple_rnn_cell_8_11942ИҐ/while/simple_rnn_cell_8/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape‘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem”
/while/simple_rnn_cell_8/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_8_11938_0while_simple_rnn_cell_8_11940_0while_simple_rnn_cell_8_11942_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_1154221
/while/simple_rnn_cell_8/StatefulPartitionedCallь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_8/StatefulPartitionedCall:output:0*
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
while/add_1Р
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity£
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Т
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2њ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ѕ
while/Identity_4Identity8while/simple_rnn_cell_8/StatefulPartitionedCall:output:10^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_8_11938while_simple_rnn_cell_8_11938_0"@
while_simple_rnn_cell_8_11940while_simple_rnn_cell_8_11940_0"@
while_simple_rnn_cell_8_11942while_simple_rnn_cell_8_11942_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2b
/while/simple_rnn_cell_8/StatefulPartitionedCall/while/simple_rnn_cell_8/StatefulPartitionedCall: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Х
Р
,__inference_simple_rnn_7_layer_call_fn_14650

inputs
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€MА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_125002
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:€€€€€€€€€MА2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€M@:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€M@
 
_user_specified_nameinputs
∞H
Ц
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_15131
inputs_04
0simple_rnn_cell_8_matmul_readvariableop_resource5
1simple_rnn_cell_8_biasadd_readvariableop_resource6
2simple_rnn_cell_8_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_8/MatMul/ReadVariableOpҐ)simple_rnn_cell_8/MatMul_1/ReadVariableOpҐwhileF
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
strided_slice/stack_2в
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
B :А2
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
B :и2
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
B :А2
zeros/packed/1Г
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
:€€€€€€€€€А2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЖ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2э
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_2≈
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02)
'simple_rnn_cell_8/MatMul/ReadVariableOpЉ
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/MatMul√
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_8/BiasAdd/ReadVariableOp 
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/BiasAddЋ
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_8/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/MatMul_1і
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/addЖ
simple_rnn_cell_8/ReluRelusimple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterƒ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_15065*
condR
while_cond_15064*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1ъ
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:€€€€€€€€€€€€€€€€€€А:::2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0
ЁB
Б
simple_rnn_8_while_body_134226
2simple_rnn_8_while_simple_rnn_8_while_loop_counter<
8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations"
simple_rnn_8_while_placeholder$
 simple_rnn_8_while_placeholder_1$
 simple_rnn_8_while_placeholder_25
1simple_rnn_8_while_simple_rnn_8_strided_slice_1_0q
msimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0I
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0J
Fsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0K
Gsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0
simple_rnn_8_while_identity!
simple_rnn_8_while_identity_1!
simple_rnn_8_while_identity_2!
simple_rnn_8_while_identity_3!
simple_rnn_8_while_identity_43
/simple_rnn_8_while_simple_rnn_8_strided_slice_1o
ksimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensorG
Csimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resourceH
Dsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resourceI
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐ;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpҐ<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpЁ
Dsimple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2F
Dsimple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeҐ
6simple_rnn_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_8_while_placeholderMsimple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype028
6simple_rnn_8/while/TensorArrayV2Read/TensorListGetItemА
:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02<
:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpЪ
+simple_rnn_8/while/simple_rnn_cell_8/MatMulMatMul=simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2-
+simple_rnn_8/while/simple_rnn_cell_8/MatMulю
;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02=
;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpЦ
,simple_rnn_8/while/simple_rnn_cell_8/BiasAddBiasAdd5simple_rnn_8/while/simple_rnn_cell_8/MatMul:product:0Csimple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2.
,simple_rnn_8/while/simple_rnn_cell_8/BiasAddЖ
<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02>
<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpГ
-simple_rnn_8/while/simple_rnn_cell_8/MatMul_1MatMul simple_rnn_8_while_placeholder_2Dsimple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2/
-simple_rnn_8/while/simple_rnn_cell_8/MatMul_1А
(simple_rnn_8/while/simple_rnn_cell_8/addAddV25simple_rnn_8/while/simple_rnn_cell_8/BiasAdd:output:07simple_rnn_8/while/simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2*
(simple_rnn_8/while/simple_rnn_cell_8/addњ
)simple_rnn_8/while/simple_rnn_cell_8/ReluRelu,simple_rnn_8/while/simple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2+
)simple_rnn_8/while/simple_rnn_cell_8/Reluѓ
7simple_rnn_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_8_while_placeholder_1simple_rnn_8_while_placeholder7simple_rnn_8/while/simple_rnn_cell_8/Relu:activations:0*
_output_shapes
: *
element_dtype029
7simple_rnn_8/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_8/while/add/yЭ
simple_rnn_8/while/addAddV2simple_rnn_8_while_placeholder!simple_rnn_8/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_8/while/addz
simple_rnn_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_8/while/add_1/yЈ
simple_rnn_8/while/add_1AddV22simple_rnn_8_while_simple_rnn_8_while_loop_counter#simple_rnn_8/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_8/while/add_1њ
simple_rnn_8/while/IdentityIdentitysimple_rnn_8/while/add_1:z:0<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_8/while/Identityя
simple_rnn_8/while/Identity_1Identity8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_8/while/Identity_1Ѕ
simple_rnn_8/while/Identity_2Identitysimple_rnn_8/while/add:z:0<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_8/while/Identity_2о
simple_rnn_8/while/Identity_3IdentityGsimple_rnn_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_8/while/Identity_3р
simple_rnn_8/while/Identity_4Identity7simple_rnn_8/while/simple_rnn_cell_8/Relu:activations:0<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_8/while/Identity_4"C
simple_rnn_8_while_identity$simple_rnn_8/while/Identity:output:0"G
simple_rnn_8_while_identity_1&simple_rnn_8/while/Identity_1:output:0"G
simple_rnn_8_while_identity_2&simple_rnn_8/while/Identity_2:output:0"G
simple_rnn_8_while_identity_3&simple_rnn_8/while/Identity_3:output:0"G
simple_rnn_8_while_identity_4&simple_rnn_8/while/Identity_4:output:0"d
/simple_rnn_8_while_simple_rnn_8_strided_slice_11simple_rnn_8_while_simple_rnn_8_strided_slice_1_0"О
Dsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resourceFsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"Р
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resourceGsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"М
Csimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resourceEsimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0"№
ksimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensormsimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2z
;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2x
:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp2|
<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Е#
ю
while_body_10775
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0#
while_simple_rnn_cell_6_10797_0#
while_simple_rnn_cell_6_10799_0#
while_simple_rnn_cell_6_10801_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor!
while_simple_rnn_cell_6_10797!
while_simple_rnn_cell_6_10799!
while_simple_rnn_cell_6_10801ИҐ/while/simple_rnn_cell_6/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€P*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem—
/while/simple_rnn_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_6_10797_0while_simple_rnn_cell_6_10799_0while_simple_rnn_cell_6_10801_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_1050121
/while/simple_rnn_cell_6/StatefulPartitionedCallь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_6/StatefulPartitionedCall:output:0*
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
while/add_1Р
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_6/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity£
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_6/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Т
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_6/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2њ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_6/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ќ
while/Identity_4Identity8while/simple_rnn_cell_6/StatefulPartitionedCall:output:10^while/simple_rnn_cell_6/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_6_10797while_simple_rnn_cell_6_10797_0"@
while_simple_rnn_cell_6_10799while_simple_rnn_cell_6_10799_0"@
while_simple_rnn_cell_6_10801while_simple_rnn_cell_6_10801_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€@: : :::2b
/while/simple_rnn_cell_6/StatefulPartitionedCall/while/simple_rnn_cell_6/StatefulPartitionedCall: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
ч	
џ
B__inference_dense_1_layer_call_and_return_conditional_losses_12010

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ч
Р
,__inference_simple_rnn_8_layer_call_fn_15399

inputs
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€MА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_128652
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:€€€€€€€€€MА2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€MА:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€MА
 
_user_specified_nameinputs
Б
З
2__inference_time_distributed_1_layer_call_fn_15438

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_129092
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€MА::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€MА
 
_user_specified_nameinputs
а
Ѕ
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_11030

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddХ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
SigmoidЂ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityѓ

Identity_1IdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€@:€€€€€€€€€А:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates
о
√
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_15650

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddХ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addP
ReluReluadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
Relu≤
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityґ

Identity_1IdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:€€€€€€€€€А:€€€€€€€€€А:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0
и	
≥
1__inference_simple_rnn_cell_6_layer_call_fn_15557

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_105012
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€P:€€€€€€€€€@:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
states/0
ф3
ы
while_body_12546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_7_matmul_readvariableop_resource;
7while_simple_rnn_cell_7_biasadd_readvariableop_resource<
8while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_7/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЎ
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02/
-while/simple_rnn_cell_7/MatMul/ReadVariableOpж
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_7/MatMul„
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_7/BiasAddя
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_7/MatMul_1ћ
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_7/add°
while/simple_rnn_cell_7/SigmoidSigmoidwhile/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_7/Sigmoidз
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder#while/simple_rnn_cell_7/Sigmoid:y:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ы
while/Identity_4Identity#while/simple_rnn_cell_7/Sigmoid:y:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
ƒ
Ѕ
L__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_10518

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
TanhІ
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

IdentityЂ

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€P:€€€€€€€€€@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_namestates
П
і
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_12074

inputs
dense_1_12064
dense_1_12066
identityИҐdense_1/StatefulPartitionedCallD
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
strided_slice/stack_2в
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
valueB"€€€€   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
ReshapeЦ
dense_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_1_12064dense_1_12066*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_120102!
dense_1/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2®
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape§
	Reshape_1Reshape(dense_1/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	Reshape_1Х
IdentityIdentityReshape_1:output:0 ^dense_1/StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€А::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Ѕ
Т
,__inference_simple_rnn_8_layer_call_fn_15142
inputs_0
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_118622
StatefulPartitionedCallЬ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:€€€€€€€€€€€€€€€€€€А:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0
сG
Ф
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_15265

inputs4
0simple_rnn_cell_8_matmul_readvariableop_resource5
1simple_rnn_cell_8_biasadd_readvariableop_resource6
2simple_rnn_cell_8_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_8/MatMul/ReadVariableOpҐ)simple_rnn_cell_8/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :А2
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
B :и2
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
B :А2
zeros/packed/1Г
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
:€€€€€€€€€А2
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
:M€€€€€€€€€А2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2э
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_2≈
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02)
'simple_rnn_cell_8/MatMul/ReadVariableOpЉ
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/MatMul√
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_8/BiasAdd/ReadVariableOp 
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/BiasAddЋ
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_8/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/MatMul_1і
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/addЖ
simple_rnn_cell_8/ReluRelusimple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterƒ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_15199*
condR
while_cond_15198*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:M€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€MА2
transpose_1с
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:€€€€€€€€€MА2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€MА:::2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€MА
 
_user_specified_nameinputs
р	
≥
1__inference_simple_rnn_cell_8_layer_call_fn_15681

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1ИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_115252
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

IdentityУ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:€€€€€€€€€А:€€€€€€€€€А:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0
ж
√
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_15605

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddХ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
SigmoidЂ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityѓ

Identity_1IdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€@:€€€€€€€€€А:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0
ƒ
Ѕ
L__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_10501

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
TanhІ
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

IdentityЂ

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€P:€€€€€€€€€@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_namestates
сG
Ф
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_12865

inputs4
0simple_rnn_cell_8_matmul_readvariableop_resource5
1simple_rnn_cell_8_biasadd_readvariableop_resource6
2simple_rnn_cell_8_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_8/MatMul/ReadVariableOpҐ)simple_rnn_cell_8/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :А2
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
B :и2
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
B :А2
zeros/packed/1Г
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
:€€€€€€€€€А2
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
:M€€€€€€€€€А2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2э
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_2≈
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02)
'simple_rnn_cell_8/MatMul/ReadVariableOpЉ
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/MatMul√
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_8/BiasAdd/ReadVariableOp 
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/BiasAddЋ
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_8/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/MatMul_1і
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/addЖ
simple_rnn_cell_8/ReluRelusimple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_8/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterƒ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_12799*
condR
while_cond_12798*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:M€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€MА2
transpose_1с
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:€€€€€€€€€MА2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€MА:::2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€MА
 
_user_specified_nameinputs
ое
с
 __inference__wrapped_model_10452
embedding_2_input3
/sequential_2_embedding_2_embedding_lookup_10109N
Jsequential_2_simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resourceO
Ksequential_2_simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resourceP
Lsequential_2_simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resourceN
Jsequential_2_simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resourceO
Ksequential_2_simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resourceP
Lsequential_2_simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resourceN
Jsequential_2_simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resourceO
Ksequential_2_simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resourceP
Lsequential_2_simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resourceJ
Fsequential_2_time_distributed_1_dense_1_matmul_readvariableop_resourceK
Gsequential_2_time_distributed_1_dense_1_biasadd_readvariableop_resource
identityИҐ)sequential_2/embedding_2/embedding_lookupҐBsequential_2/simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOpҐAsequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOpҐCsequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOpҐsequential_2/simple_rnn_6/whileҐBsequential_2/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐAsequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpҐCsequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpҐsequential_2/simple_rnn_7/whileҐBsequential_2/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐAsequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpҐCsequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpҐsequential_2/simple_rnn_8/whileҐ>sequential_2/time_distributed_1/dense_1/BiasAdd/ReadVariableOpҐ=sequential_2/time_distributed_1/dense_1/MatMul/ReadVariableOpЪ
sequential_2/embedding_2/CastCastembedding_2_input*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€M2
sequential_2/embedding_2/Castш
)sequential_2/embedding_2/embedding_lookupResourceGather/sequential_2_embedding_2_embedding_lookup_10109!sequential_2/embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*B
_class8
64loc:@sequential_2/embedding_2/embedding_lookup/10109*+
_output_shapes
:€€€€€€€€€MP*
dtype02+
)sequential_2/embedding_2/embedding_lookup–
2sequential_2/embedding_2/embedding_lookup/IdentityIdentity2sequential_2/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*B
_class8
64loc:@sequential_2/embedding_2/embedding_lookup/10109*+
_output_shapes
:€€€€€€€€€MP24
2sequential_2/embedding_2/embedding_lookup/Identityл
4sequential_2/embedding_2/embedding_lookup/Identity_1Identity;sequential_2/embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€MP26
4sequential_2/embedding_2/embedding_lookup/Identity_1ѓ
sequential_2/simple_rnn_6/ShapeShape=sequential_2/embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2!
sequential_2/simple_rnn_6/Shape®
-sequential_2/simple_rnn_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_2/simple_rnn_6/strided_slice/stackђ
/sequential_2/simple_rnn_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_2/simple_rnn_6/strided_slice/stack_1ђ
/sequential_2/simple_rnn_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_2/simple_rnn_6/strided_slice/stack_2ю
'sequential_2/simple_rnn_6/strided_sliceStridedSlice(sequential_2/simple_rnn_6/Shape:output:06sequential_2/simple_rnn_6/strided_slice/stack:output:08sequential_2/simple_rnn_6/strided_slice/stack_1:output:08sequential_2/simple_rnn_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'sequential_2/simple_rnn_6/strided_sliceР
%sequential_2/simple_rnn_6/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2'
%sequential_2/simple_rnn_6/zeros/mul/y‘
#sequential_2/simple_rnn_6/zeros/mulMul0sequential_2/simple_rnn_6/strided_slice:output:0.sequential_2/simple_rnn_6/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#sequential_2/simple_rnn_6/zeros/mulУ
&sequential_2/simple_rnn_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2(
&sequential_2/simple_rnn_6/zeros/Less/yѕ
$sequential_2/simple_rnn_6/zeros/LessLess'sequential_2/simple_rnn_6/zeros/mul:z:0/sequential_2/simple_rnn_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$sequential_2/simple_rnn_6/zeros/LessЦ
(sequential_2/simple_rnn_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_2/simple_rnn_6/zeros/packed/1л
&sequential_2/simple_rnn_6/zeros/packedPack0sequential_2/simple_rnn_6/strided_slice:output:01sequential_2/simple_rnn_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_2/simple_rnn_6/zeros/packedУ
%sequential_2/simple_rnn_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%sequential_2/simple_rnn_6/zeros/ConstЁ
sequential_2/simple_rnn_6/zerosFill/sequential_2/simple_rnn_6/zeros/packed:output:0.sequential_2/simple_rnn_6/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
sequential_2/simple_rnn_6/zeros©
(sequential_2/simple_rnn_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(sequential_2/simple_rnn_6/transpose/perm€
#sequential_2/simple_rnn_6/transpose	Transpose=sequential_2/embedding_2/embedding_lookup/Identity_1:output:01sequential_2/simple_rnn_6/transpose/perm:output:0*
T0*+
_output_shapes
:M€€€€€€€€€P2%
#sequential_2/simple_rnn_6/transposeЭ
!sequential_2/simple_rnn_6/Shape_1Shape'sequential_2/simple_rnn_6/transpose:y:0*
T0*
_output_shapes
:2#
!sequential_2/simple_rnn_6/Shape_1ђ
/sequential_2/simple_rnn_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_2/simple_rnn_6/strided_slice_1/stack∞
1sequential_2/simple_rnn_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_2/simple_rnn_6/strided_slice_1/stack_1∞
1sequential_2/simple_rnn_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_2/simple_rnn_6/strided_slice_1/stack_2К
)sequential_2/simple_rnn_6/strided_slice_1StridedSlice*sequential_2/simple_rnn_6/Shape_1:output:08sequential_2/simple_rnn_6/strided_slice_1/stack:output:0:sequential_2/simple_rnn_6/strided_slice_1/stack_1:output:0:sequential_2/simple_rnn_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)sequential_2/simple_rnn_6/strided_slice_1є
5sequential_2/simple_rnn_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€27
5sequential_2/simple_rnn_6/TensorArrayV2/element_shapeЪ
'sequential_2/simple_rnn_6/TensorArrayV2TensorListReserve>sequential_2/simple_rnn_6/TensorArrayV2/element_shape:output:02sequential_2/simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'sequential_2/simple_rnn_6/TensorArrayV2у
Osequential_2/simple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2Q
Osequential_2/simple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeа
Asequential_2/simple_rnn_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_2/simple_rnn_6/transpose:y:0Xsequential_2/simple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02C
Asequential_2/simple_rnn_6/TensorArrayUnstack/TensorListFromTensorђ
/sequential_2/simple_rnn_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_2/simple_rnn_6/strided_slice_2/stack∞
1sequential_2/simple_rnn_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_2/simple_rnn_6/strided_slice_2/stack_1∞
1sequential_2/simple_rnn_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_2/simple_rnn_6/strided_slice_2/stack_2Ш
)sequential_2/simple_rnn_6/strided_slice_2StridedSlice'sequential_2/simple_rnn_6/transpose:y:08sequential_2/simple_rnn_6/strided_slice_2/stack:output:0:sequential_2/simple_rnn_6/strided_slice_2/stack_1:output:0:sequential_2/simple_rnn_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€P*
shrink_axis_mask2+
)sequential_2/simple_rnn_6/strided_slice_2С
Asequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOpJsequential_2_simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:P@*
dtype02C
Asequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp£
2sequential_2/simple_rnn_6/simple_rnn_cell_6/MatMulMatMul2sequential_2/simple_rnn_6/strided_slice_2:output:0Isequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@24
2sequential_2/simple_rnn_6/simple_rnn_cell_6/MatMulР
Bsequential_2/simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOpKsequential_2_simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02D
Bsequential_2/simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp±
3sequential_2/simple_rnn_6/simple_rnn_cell_6/BiasAddBiasAdd<sequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul:product:0Jsequential_2/simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@25
3sequential_2/simple_rnn_6/simple_rnn_cell_6/BiasAddЧ
Csequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOpLsequential_2_simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02E
Csequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOpЯ
4sequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul_1MatMul(sequential_2/simple_rnn_6/zeros:output:0Ksequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@26
4sequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul_1Ы
/sequential_2/simple_rnn_6/simple_rnn_cell_6/addAddV2<sequential_2/simple_rnn_6/simple_rnn_cell_6/BiasAdd:output:0>sequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@21
/sequential_2/simple_rnn_6/simple_rnn_cell_6/add”
0sequential_2/simple_rnn_6/simple_rnn_cell_6/TanhTanh3sequential_2/simple_rnn_6/simple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@22
0sequential_2/simple_rnn_6/simple_rnn_cell_6/Tanh√
7sequential_2/simple_rnn_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7sequential_2/simple_rnn_6/TensorArrayV2_1/element_shape†
)sequential_2/simple_rnn_6/TensorArrayV2_1TensorListReserve@sequential_2/simple_rnn_6/TensorArrayV2_1/element_shape:output:02sequential_2/simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02+
)sequential_2/simple_rnn_6/TensorArrayV2_1В
sequential_2/simple_rnn_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2 
sequential_2/simple_rnn_6/time≥
2sequential_2/simple_rnn_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€24
2sequential_2/simple_rnn_6/while/maximum_iterationsЮ
,sequential_2/simple_rnn_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/simple_rnn_6/while/loop_counterЃ
sequential_2/simple_rnn_6/whileWhile5sequential_2/simple_rnn_6/while/loop_counter:output:0;sequential_2/simple_rnn_6/while/maximum_iterations:output:0'sequential_2/simple_rnn_6/time:output:02sequential_2/simple_rnn_6/TensorArrayV2_1:handle:0(sequential_2/simple_rnn_6/zeros:output:02sequential_2/simple_rnn_6/strided_slice_1:output:0Qsequential_2/simple_rnn_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jsequential_2_simple_rnn_6_simple_rnn_cell_6_matmul_readvariableop_resourceKsequential_2_simple_rnn_6_simple_rnn_cell_6_biasadd_readvariableop_resourceLsequential_2_simple_rnn_6_simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*6
body.R,
*sequential_2_simple_rnn_6_while_body_10157*6
cond.R,
*sequential_2_simple_rnn_6_while_cond_10156*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations 2!
sequential_2/simple_rnn_6/whileй
Jsequential_2/simple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2L
Jsequential_2/simple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shape–
<sequential_2/simple_rnn_6/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_2/simple_rnn_6/while:output:3Ssequential_2/simple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:M€€€€€€€€€@*
element_dtype02>
<sequential_2/simple_rnn_6/TensorArrayV2Stack/TensorListStackµ
/sequential_2/simple_rnn_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€21
/sequential_2/simple_rnn_6/strided_slice_3/stack∞
1sequential_2/simple_rnn_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_2/simple_rnn_6/strided_slice_3/stack_1∞
1sequential_2/simple_rnn_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_2/simple_rnn_6/strided_slice_3/stack_2ґ
)sequential_2/simple_rnn_6/strided_slice_3StridedSliceEsequential_2/simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:08sequential_2/simple_rnn_6/strided_slice_3/stack:output:0:sequential_2/simple_rnn_6/strided_slice_3/stack_1:output:0:sequential_2/simple_rnn_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2+
)sequential_2/simple_rnn_6/strided_slice_3≠
*sequential_2/simple_rnn_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2,
*sequential_2/simple_rnn_6/transpose_1/permН
%sequential_2/simple_rnn_6/transpose_1	TransposeEsequential_2/simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:03sequential_2/simple_rnn_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€M@2'
%sequential_2/simple_rnn_6/transpose_1Ы
sequential_2/simple_rnn_7/ShapeShape)sequential_2/simple_rnn_6/transpose_1:y:0*
T0*
_output_shapes
:2!
sequential_2/simple_rnn_7/Shape®
-sequential_2/simple_rnn_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_2/simple_rnn_7/strided_slice/stackђ
/sequential_2/simple_rnn_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_2/simple_rnn_7/strided_slice/stack_1ђ
/sequential_2/simple_rnn_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_2/simple_rnn_7/strided_slice/stack_2ю
'sequential_2/simple_rnn_7/strided_sliceStridedSlice(sequential_2/simple_rnn_7/Shape:output:06sequential_2/simple_rnn_7/strided_slice/stack:output:08sequential_2/simple_rnn_7/strided_slice/stack_1:output:08sequential_2/simple_rnn_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'sequential_2/simple_rnn_7/strided_sliceС
%sequential_2/simple_rnn_7/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2'
%sequential_2/simple_rnn_7/zeros/mul/y‘
#sequential_2/simple_rnn_7/zeros/mulMul0sequential_2/simple_rnn_7/strided_slice:output:0.sequential_2/simple_rnn_7/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#sequential_2/simple_rnn_7/zeros/mulУ
&sequential_2/simple_rnn_7/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2(
&sequential_2/simple_rnn_7/zeros/Less/yѕ
$sequential_2/simple_rnn_7/zeros/LessLess'sequential_2/simple_rnn_7/zeros/mul:z:0/sequential_2/simple_rnn_7/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$sequential_2/simple_rnn_7/zeros/LessЧ
(sequential_2/simple_rnn_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2*
(sequential_2/simple_rnn_7/zeros/packed/1л
&sequential_2/simple_rnn_7/zeros/packedPack0sequential_2/simple_rnn_7/strided_slice:output:01sequential_2/simple_rnn_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_2/simple_rnn_7/zeros/packedУ
%sequential_2/simple_rnn_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%sequential_2/simple_rnn_7/zeros/Constё
sequential_2/simple_rnn_7/zerosFill/sequential_2/simple_rnn_7/zeros/packed:output:0.sequential_2/simple_rnn_7/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
sequential_2/simple_rnn_7/zeros©
(sequential_2/simple_rnn_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(sequential_2/simple_rnn_7/transpose/permл
#sequential_2/simple_rnn_7/transpose	Transpose)sequential_2/simple_rnn_6/transpose_1:y:01sequential_2/simple_rnn_7/transpose/perm:output:0*
T0*+
_output_shapes
:M€€€€€€€€€@2%
#sequential_2/simple_rnn_7/transposeЭ
!sequential_2/simple_rnn_7/Shape_1Shape'sequential_2/simple_rnn_7/transpose:y:0*
T0*
_output_shapes
:2#
!sequential_2/simple_rnn_7/Shape_1ђ
/sequential_2/simple_rnn_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_2/simple_rnn_7/strided_slice_1/stack∞
1sequential_2/simple_rnn_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_2/simple_rnn_7/strided_slice_1/stack_1∞
1sequential_2/simple_rnn_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_2/simple_rnn_7/strided_slice_1/stack_2К
)sequential_2/simple_rnn_7/strided_slice_1StridedSlice*sequential_2/simple_rnn_7/Shape_1:output:08sequential_2/simple_rnn_7/strided_slice_1/stack:output:0:sequential_2/simple_rnn_7/strided_slice_1/stack_1:output:0:sequential_2/simple_rnn_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)sequential_2/simple_rnn_7/strided_slice_1є
5sequential_2/simple_rnn_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€27
5sequential_2/simple_rnn_7/TensorArrayV2/element_shapeЪ
'sequential_2/simple_rnn_7/TensorArrayV2TensorListReserve>sequential_2/simple_rnn_7/TensorArrayV2/element_shape:output:02sequential_2/simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'sequential_2/simple_rnn_7/TensorArrayV2у
Osequential_2/simple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2Q
Osequential_2/simple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shapeа
Asequential_2/simple_rnn_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_2/simple_rnn_7/transpose:y:0Xsequential_2/simple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02C
Asequential_2/simple_rnn_7/TensorArrayUnstack/TensorListFromTensorђ
/sequential_2/simple_rnn_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_2/simple_rnn_7/strided_slice_2/stack∞
1sequential_2/simple_rnn_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_2/simple_rnn_7/strided_slice_2/stack_1∞
1sequential_2/simple_rnn_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_2/simple_rnn_7/strided_slice_2/stack_2Ш
)sequential_2/simple_rnn_7/strided_slice_2StridedSlice'sequential_2/simple_rnn_7/transpose:y:08sequential_2/simple_rnn_7/strided_slice_2/stack:output:0:sequential_2/simple_rnn_7/strided_slice_2/stack_1:output:0:sequential_2/simple_rnn_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2+
)sequential_2/simple_rnn_7/strided_slice_2Т
Asequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOpJsequential_2_simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02C
Asequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp§
2sequential_2/simple_rnn_7/simple_rnn_cell_7/MatMulMatMul2sequential_2/simple_rnn_7/strided_slice_2:output:0Isequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А24
2sequential_2/simple_rnn_7/simple_rnn_cell_7/MatMulС
Bsequential_2/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOpKsequential_2_simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02D
Bsequential_2/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp≤
3sequential_2/simple_rnn_7/simple_rnn_cell_7/BiasAddBiasAdd<sequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul:product:0Jsequential_2/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А25
3sequential_2/simple_rnn_7/simple_rnn_cell_7/BiasAddЩ
Csequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOpLsequential_2_simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02E
Csequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp†
4sequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul_1MatMul(sequential_2/simple_rnn_7/zeros:output:0Ksequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А26
4sequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul_1Ь
/sequential_2/simple_rnn_7/simple_rnn_cell_7/addAddV2<sequential_2/simple_rnn_7/simple_rnn_cell_7/BiasAdd:output:0>sequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А21
/sequential_2/simple_rnn_7/simple_rnn_cell_7/addЁ
3sequential_2/simple_rnn_7/simple_rnn_cell_7/SigmoidSigmoid3sequential_2/simple_rnn_7/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А25
3sequential_2/simple_rnn_7/simple_rnn_cell_7/Sigmoid√
7sequential_2/simple_rnn_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7sequential_2/simple_rnn_7/TensorArrayV2_1/element_shape†
)sequential_2/simple_rnn_7/TensorArrayV2_1TensorListReserve@sequential_2/simple_rnn_7/TensorArrayV2_1/element_shape:output:02sequential_2/simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02+
)sequential_2/simple_rnn_7/TensorArrayV2_1В
sequential_2/simple_rnn_7/timeConst*
_output_shapes
: *
dtype0*
value	B : 2 
sequential_2/simple_rnn_7/time≥
2sequential_2/simple_rnn_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€24
2sequential_2/simple_rnn_7/while/maximum_iterationsЮ
,sequential_2/simple_rnn_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/simple_rnn_7/while/loop_counter∞
sequential_2/simple_rnn_7/whileWhile5sequential_2/simple_rnn_7/while/loop_counter:output:0;sequential_2/simple_rnn_7/while/maximum_iterations:output:0'sequential_2/simple_rnn_7/time:output:02sequential_2/simple_rnn_7/TensorArrayV2_1:handle:0(sequential_2/simple_rnn_7/zeros:output:02sequential_2/simple_rnn_7/strided_slice_1:output:0Qsequential_2/simple_rnn_7/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jsequential_2_simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resourceKsequential_2_simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resourceLsequential_2_simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*6
body.R,
*sequential_2_simple_rnn_7_while_body_10265*6
cond.R,
*sequential_2_simple_rnn_7_while_cond_10264*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2!
sequential_2/simple_rnn_7/whileй
Jsequential_2/simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2L
Jsequential_2/simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shape—
<sequential_2/simple_rnn_7/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_2/simple_rnn_7/while:output:3Ssequential_2/simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:M€€€€€€€€€А*
element_dtype02>
<sequential_2/simple_rnn_7/TensorArrayV2Stack/TensorListStackµ
/sequential_2/simple_rnn_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€21
/sequential_2/simple_rnn_7/strided_slice_3/stack∞
1sequential_2/simple_rnn_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_2/simple_rnn_7/strided_slice_3/stack_1∞
1sequential_2/simple_rnn_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_2/simple_rnn_7/strided_slice_3/stack_2Ј
)sequential_2/simple_rnn_7/strided_slice_3StridedSliceEsequential_2/simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:08sequential_2/simple_rnn_7/strided_slice_3/stack:output:0:sequential_2/simple_rnn_7/strided_slice_3/stack_1:output:0:sequential_2/simple_rnn_7/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2+
)sequential_2/simple_rnn_7/strided_slice_3≠
*sequential_2/simple_rnn_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2,
*sequential_2/simple_rnn_7/transpose_1/permО
%sequential_2/simple_rnn_7/transpose_1	TransposeEsequential_2/simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:03sequential_2/simple_rnn_7/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€MА2'
%sequential_2/simple_rnn_7/transpose_1Ы
sequential_2/simple_rnn_8/ShapeShape)sequential_2/simple_rnn_7/transpose_1:y:0*
T0*
_output_shapes
:2!
sequential_2/simple_rnn_8/Shape®
-sequential_2/simple_rnn_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_2/simple_rnn_8/strided_slice/stackђ
/sequential_2/simple_rnn_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_2/simple_rnn_8/strided_slice/stack_1ђ
/sequential_2/simple_rnn_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_2/simple_rnn_8/strided_slice/stack_2ю
'sequential_2/simple_rnn_8/strided_sliceStridedSlice(sequential_2/simple_rnn_8/Shape:output:06sequential_2/simple_rnn_8/strided_slice/stack:output:08sequential_2/simple_rnn_8/strided_slice/stack_1:output:08sequential_2/simple_rnn_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'sequential_2/simple_rnn_8/strided_sliceС
%sequential_2/simple_rnn_8/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2'
%sequential_2/simple_rnn_8/zeros/mul/y‘
#sequential_2/simple_rnn_8/zeros/mulMul0sequential_2/simple_rnn_8/strided_slice:output:0.sequential_2/simple_rnn_8/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#sequential_2/simple_rnn_8/zeros/mulУ
&sequential_2/simple_rnn_8/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2(
&sequential_2/simple_rnn_8/zeros/Less/yѕ
$sequential_2/simple_rnn_8/zeros/LessLess'sequential_2/simple_rnn_8/zeros/mul:z:0/sequential_2/simple_rnn_8/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$sequential_2/simple_rnn_8/zeros/LessЧ
(sequential_2/simple_rnn_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2*
(sequential_2/simple_rnn_8/zeros/packed/1л
&sequential_2/simple_rnn_8/zeros/packedPack0sequential_2/simple_rnn_8/strided_slice:output:01sequential_2/simple_rnn_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_2/simple_rnn_8/zeros/packedУ
%sequential_2/simple_rnn_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%sequential_2/simple_rnn_8/zeros/Constё
sequential_2/simple_rnn_8/zerosFill/sequential_2/simple_rnn_8/zeros/packed:output:0.sequential_2/simple_rnn_8/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
sequential_2/simple_rnn_8/zeros©
(sequential_2/simple_rnn_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(sequential_2/simple_rnn_8/transpose/permм
#sequential_2/simple_rnn_8/transpose	Transpose)sequential_2/simple_rnn_7/transpose_1:y:01sequential_2/simple_rnn_8/transpose/perm:output:0*
T0*,
_output_shapes
:M€€€€€€€€€А2%
#sequential_2/simple_rnn_8/transposeЭ
!sequential_2/simple_rnn_8/Shape_1Shape'sequential_2/simple_rnn_8/transpose:y:0*
T0*
_output_shapes
:2#
!sequential_2/simple_rnn_8/Shape_1ђ
/sequential_2/simple_rnn_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_2/simple_rnn_8/strided_slice_1/stack∞
1sequential_2/simple_rnn_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_2/simple_rnn_8/strided_slice_1/stack_1∞
1sequential_2/simple_rnn_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_2/simple_rnn_8/strided_slice_1/stack_2К
)sequential_2/simple_rnn_8/strided_slice_1StridedSlice*sequential_2/simple_rnn_8/Shape_1:output:08sequential_2/simple_rnn_8/strided_slice_1/stack:output:0:sequential_2/simple_rnn_8/strided_slice_1/stack_1:output:0:sequential_2/simple_rnn_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)sequential_2/simple_rnn_8/strided_slice_1є
5sequential_2/simple_rnn_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€27
5sequential_2/simple_rnn_8/TensorArrayV2/element_shapeЪ
'sequential_2/simple_rnn_8/TensorArrayV2TensorListReserve>sequential_2/simple_rnn_8/TensorArrayV2/element_shape:output:02sequential_2/simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'sequential_2/simple_rnn_8/TensorArrayV2у
Osequential_2/simple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2Q
Osequential_2/simple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shapeа
Asequential_2/simple_rnn_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_2/simple_rnn_8/transpose:y:0Xsequential_2/simple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02C
Asequential_2/simple_rnn_8/TensorArrayUnstack/TensorListFromTensorђ
/sequential_2/simple_rnn_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_2/simple_rnn_8/strided_slice_2/stack∞
1sequential_2/simple_rnn_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_2/simple_rnn_8/strided_slice_2/stack_1∞
1sequential_2/simple_rnn_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_2/simple_rnn_8/strided_slice_2/stack_2Щ
)sequential_2/simple_rnn_8/strided_slice_2StridedSlice'sequential_2/simple_rnn_8/transpose:y:08sequential_2/simple_rnn_8/strided_slice_2/stack:output:0:sequential_2/simple_rnn_8/strided_slice_2/stack_1:output:0:sequential_2/simple_rnn_8/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2+
)sequential_2/simple_rnn_8/strided_slice_2У
Asequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOpJsequential_2_simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02C
Asequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp§
2sequential_2/simple_rnn_8/simple_rnn_cell_8/MatMulMatMul2sequential_2/simple_rnn_8/strided_slice_2:output:0Isequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А24
2sequential_2/simple_rnn_8/simple_rnn_cell_8/MatMulС
Bsequential_2/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOpKsequential_2_simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02D
Bsequential_2/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp≤
3sequential_2/simple_rnn_8/simple_rnn_cell_8/BiasAddBiasAdd<sequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul:product:0Jsequential_2/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А25
3sequential_2/simple_rnn_8/simple_rnn_cell_8/BiasAddЩ
Csequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOpLsequential_2_simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02E
Csequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp†
4sequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul_1MatMul(sequential_2/simple_rnn_8/zeros:output:0Ksequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А26
4sequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul_1Ь
/sequential_2/simple_rnn_8/simple_rnn_cell_8/addAddV2<sequential_2/simple_rnn_8/simple_rnn_cell_8/BiasAdd:output:0>sequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А21
/sequential_2/simple_rnn_8/simple_rnn_cell_8/add‘
0sequential_2/simple_rnn_8/simple_rnn_cell_8/ReluRelu3sequential_2/simple_rnn_8/simple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А22
0sequential_2/simple_rnn_8/simple_rnn_cell_8/Relu√
7sequential_2/simple_rnn_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7sequential_2/simple_rnn_8/TensorArrayV2_1/element_shape†
)sequential_2/simple_rnn_8/TensorArrayV2_1TensorListReserve@sequential_2/simple_rnn_8/TensorArrayV2_1/element_shape:output:02sequential_2/simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02+
)sequential_2/simple_rnn_8/TensorArrayV2_1В
sequential_2/simple_rnn_8/timeConst*
_output_shapes
: *
dtype0*
value	B : 2 
sequential_2/simple_rnn_8/time≥
2sequential_2/simple_rnn_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€24
2sequential_2/simple_rnn_8/while/maximum_iterationsЮ
,sequential_2/simple_rnn_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_2/simple_rnn_8/while/loop_counter∞
sequential_2/simple_rnn_8/whileWhile5sequential_2/simple_rnn_8/while/loop_counter:output:0;sequential_2/simple_rnn_8/while/maximum_iterations:output:0'sequential_2/simple_rnn_8/time:output:02sequential_2/simple_rnn_8/TensorArrayV2_1:handle:0(sequential_2/simple_rnn_8/zeros:output:02sequential_2/simple_rnn_8/strided_slice_1:output:0Qsequential_2/simple_rnn_8/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jsequential_2_simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resourceKsequential_2_simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resourceLsequential_2_simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*6
body.R,
*sequential_2_simple_rnn_8_while_body_10373*6
cond.R,
*sequential_2_simple_rnn_8_while_cond_10372*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2!
sequential_2/simple_rnn_8/whileй
Jsequential_2/simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2L
Jsequential_2/simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shape—
<sequential_2/simple_rnn_8/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_2/simple_rnn_8/while:output:3Ssequential_2/simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:M€€€€€€€€€А*
element_dtype02>
<sequential_2/simple_rnn_8/TensorArrayV2Stack/TensorListStackµ
/sequential_2/simple_rnn_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€21
/sequential_2/simple_rnn_8/strided_slice_3/stack∞
1sequential_2/simple_rnn_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_2/simple_rnn_8/strided_slice_3/stack_1∞
1sequential_2/simple_rnn_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_2/simple_rnn_8/strided_slice_3/stack_2Ј
)sequential_2/simple_rnn_8/strided_slice_3StridedSliceEsequential_2/simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:08sequential_2/simple_rnn_8/strided_slice_3/stack:output:0:sequential_2/simple_rnn_8/strided_slice_3/stack_1:output:0:sequential_2/simple_rnn_8/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2+
)sequential_2/simple_rnn_8/strided_slice_3≠
*sequential_2/simple_rnn_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2,
*sequential_2/simple_rnn_8/transpose_1/permО
%sequential_2/simple_rnn_8/transpose_1	TransposeEsequential_2/simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:03sequential_2/simple_rnn_8/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€MА2'
%sequential_2/simple_rnn_8/transpose_1ѓ
-sequential_2/time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2/
-sequential_2/time_distributed_1/Reshape/shapeу
'sequential_2/time_distributed_1/ReshapeReshape)sequential_2/simple_rnn_8/transpose_1:y:06sequential_2/time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2)
'sequential_2/time_distributed_1/ReshapeЖ
=sequential_2/time_distributed_1/dense_1/MatMul/ReadVariableOpReadVariableOpFsequential_2_time_distributed_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02?
=sequential_2/time_distributed_1/dense_1/MatMul/ReadVariableOpХ
.sequential_2/time_distributed_1/dense_1/MatMulMatMul0sequential_2/time_distributed_1/Reshape:output:0Esequential_2/time_distributed_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€20
.sequential_2/time_distributed_1/dense_1/MatMulД
>sequential_2/time_distributed_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpGsequential_2_time_distributed_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02@
>sequential_2/time_distributed_1/dense_1/BiasAdd/ReadVariableOp°
/sequential_2/time_distributed_1/dense_1/BiasAddBiasAdd8sequential_2/time_distributed_1/dense_1/MatMul:product:0Fsequential_2/time_distributed_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€21
/sequential_2/time_distributed_1/dense_1/BiasAddў
/sequential_2/time_distributed_1/dense_1/SoftmaxSoftmax8sequential_2/time_distributed_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€21
/sequential_2/time_distributed_1/dense_1/SoftmaxЈ
/sequential_2/time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€M      21
/sequential_2/time_distributed_1/Reshape_1/shapeМ
)sequential_2/time_distributed_1/Reshape_1Reshape9sequential_2/time_distributed_1/dense_1/Softmax:softmax:08sequential_2/time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€M2+
)sequential_2/time_distributed_1/Reshape_1≥
/sequential_2/time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   21
/sequential_2/time_distributed_1/Reshape_2/shapeщ
)sequential_2/time_distributed_1/Reshape_2Reshape)sequential_2/simple_rnn_8/transpose_1:y:08sequential_2/time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2+
)sequential_2/time_distributed_1/Reshape_2К
IdentityIdentity2sequential_2/time_distributed_1/Reshape_1:output:0*^sequential_2/embedding_2/embedding_lookupC^sequential_2/simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOpB^sequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOpD^sequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp ^sequential_2/simple_rnn_6/whileC^sequential_2/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpB^sequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpD^sequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp ^sequential_2/simple_rnn_7/whileC^sequential_2/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpB^sequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpD^sequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp ^sequential_2/simple_rnn_8/while?^sequential_2/time_distributed_1/dense_1/BiasAdd/ReadVariableOp>^sequential_2/time_distributed_1/dense_1/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:€€€€€€€€€M::::::::::::2V
)sequential_2/embedding_2/embedding_lookup)sequential_2/embedding_2/embedding_lookup2И
Bsequential_2/simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOpBsequential_2/simple_rnn_6/simple_rnn_cell_6/BiasAdd/ReadVariableOp2Ж
Asequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOpAsequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul/ReadVariableOp2К
Csequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOpCsequential_2/simple_rnn_6/simple_rnn_cell_6/MatMul_1/ReadVariableOp2B
sequential_2/simple_rnn_6/whilesequential_2/simple_rnn_6/while2И
Bsequential_2/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpBsequential_2/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp2Ж
Asequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpAsequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp2К
Csequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpCsequential_2/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp2B
sequential_2/simple_rnn_7/whilesequential_2/simple_rnn_7/while2И
Bsequential_2/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpBsequential_2/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp2Ж
Asequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpAsequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp2К
Csequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpCsequential_2/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp2B
sequential_2/simple_rnn_8/whilesequential_2/simple_rnn_8/while2А
>sequential_2/time_distributed_1/dense_1/BiasAdd/ReadVariableOp>sequential_2/time_distributed_1/dense_1/BiasAdd/ReadVariableOp2~
=sequential_2/time_distributed_1/dense_1/MatMul/ReadVariableOp=sequential_2/time_distributed_1/dense_1/MatMul/ReadVariableOp:Z V
'
_output_shapes
:€€€€€€€€€M
+
_user_specified_nameembedding_2_input
к<
с
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_11862

inputs
simple_rnn_cell_8_11787
simple_rnn_cell_8_11789
simple_rnn_cell_8_11791
identityИҐ)simple_rnn_cell_8/StatefulPartitionedCallҐwhileD
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
strided_slice/stack_2в
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
B :А2
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
B :и2
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
B :А2
zeros/packed/1Г
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
:€€€€€€€€€А2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2э
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_2Т
)simple_rnn_cell_8/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_8_11787simple_rnn_cell_8_11789simple_rnn_cell_8_11791*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_115252+
)simple_rnn_cell_8/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterц
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_8_11787simple_rnn_cell_8_11789simple_rnn_cell_8_11791*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_11799*
condR
while_cond_11798*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1•
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_8/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:€€€€€€€€€€€€€€€€€€А:::2V
)simple_rnn_cell_8/StatefulPartitionedCall)simple_rnn_cell_8/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
 
√
L__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_15543

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
TanhІ
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

IdentityЂ

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€P:€€€€€€€€€@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
states/0
ы3
ы
while_body_12687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_8_matmul_readvariableop_resource;
7while_simple_rnn_cell_8_biasadd_readvariableop_resource<
8while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_8/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape‘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemў
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02/
-while/simple_rnn_cell_8/MatMul/ReadVariableOpж
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_8/MatMul„
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_8/BiasAddя
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_8/MatMul_1ћ
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_8/addШ
while/simple_rnn_cell_8/ReluReluwhile/simple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_8/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_8/Relu:activations:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ґ
while/Identity_4Identity*while/simple_rnn_cell_8/Relu:activations:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
»

Ь
simple_rnn_8_while_cond_134216
2simple_rnn_8_while_simple_rnn_8_while_loop_counter<
8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations"
simple_rnn_8_while_placeholder$
 simple_rnn_8_while_placeholder_1$
 simple_rnn_8_while_placeholder_28
4simple_rnn_8_while_less_simple_rnn_8_strided_slice_1M
Isimple_rnn_8_while_simple_rnn_8_while_cond_13421___redundant_placeholder0M
Isimple_rnn_8_while_simple_rnn_8_while_cond_13421___redundant_placeholder1M
Isimple_rnn_8_while_simple_rnn_8_while_cond_13421___redundant_placeholder2M
Isimple_rnn_8_while_simple_rnn_8_while_cond_13421___redundant_placeholder3
simple_rnn_8_while_identity
±
simple_rnn_8/while/LessLesssimple_rnn_8_while_placeholder4simple_rnn_8_while_less_simple_rnn_8_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_8/while/LessД
simple_rnn_8/while/IdentityIdentitysimple_rnn_8/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_8/while/Identity"C
simple_rnn_8_while_identity$simple_rnn_8/while/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
 
√
L__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_15526

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
TanhІ
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

IdentityЂ

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€P:€€€€€€€€€@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
states/0
хG
Ф
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_12612

inputs4
0simple_rnn_cell_7_matmul_readvariableop_resource5
1simple_rnn_cell_7_biasadd_readvariableop_resource6
2simple_rnn_cell_7_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_7/MatMul/ReadVariableOpҐ)simple_rnn_cell_7/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :А2
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
B :и2
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
B :А2
zeros/packed/1Г
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
:€€€€€€€€€А2
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
:M€€€€€€€€€@2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_2ƒ
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02)
'simple_rnn_cell_7/MatMul/ReadVariableOpЉ
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/MatMul√
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_7/BiasAdd/ReadVariableOp 
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/BiasAddЋ
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_7/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/MatMul_1і
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/addП
simple_rnn_cell_7/SigmoidSigmoidsimple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/SigmoidП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterƒ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_12546*
condR
while_cond_12545*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:M€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€MА2
transpose_1с
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:€€€€€€€€€MА2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€M@:::2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€M@
 
_user_specified_nameinputs
Аd
Є
__inference__traced_save_15867
file_prefix5
1savev2_embedding_2_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopD
@savev2_simple_rnn_6_simple_rnn_cell_6_kernel_read_readvariableopN
Jsavev2_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_6_simple_rnn_cell_6_bias_read_readvariableopD
@savev2_simple_rnn_7_simple_rnn_cell_7_kernel_read_readvariableopN
Jsavev2_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_7_simple_rnn_cell_7_bias_read_readvariableopD
@savev2_simple_rnn_8_simple_rnn_cell_8_kernel_read_readvariableopN
Jsavev2_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_8_simple_rnn_cell_8_bias_read_readvariableop8
4savev2_time_distributed_1_kernel_read_readvariableop6
2savev2_time_distributed_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopK
Gsavev2_adam_simple_rnn_6_simple_rnn_cell_6_kernel_m_read_readvariableopU
Qsavev2_adam_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_m_read_readvariableopI
Esavev2_adam_simple_rnn_6_simple_rnn_cell_6_bias_m_read_readvariableopK
Gsavev2_adam_simple_rnn_7_simple_rnn_cell_7_kernel_m_read_readvariableopU
Qsavev2_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_m_read_readvariableopI
Esavev2_adam_simple_rnn_7_simple_rnn_cell_7_bias_m_read_readvariableopK
Gsavev2_adam_simple_rnn_8_simple_rnn_cell_8_kernel_m_read_readvariableopU
Qsavev2_adam_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_m_read_readvariableopI
Esavev2_adam_simple_rnn_8_simple_rnn_cell_8_bias_m_read_readvariableop?
;savev2_adam_time_distributed_1_kernel_m_read_readvariableop=
9savev2_adam_time_distributed_1_bias_m_read_readvariableopK
Gsavev2_adam_simple_rnn_6_simple_rnn_cell_6_kernel_v_read_readvariableopU
Qsavev2_adam_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_v_read_readvariableopI
Esavev2_adam_simple_rnn_6_simple_rnn_cell_6_bias_v_read_readvariableopK
Gsavev2_adam_simple_rnn_7_simple_rnn_cell_7_kernel_v_read_readvariableopU
Qsavev2_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_v_read_readvariableopI
Esavev2_adam_simple_rnn_7_simple_rnn_cell_7_bias_v_read_readvariableopK
Gsavev2_adam_simple_rnn_8_simple_rnn_cell_8_kernel_v_read_readvariableopU
Qsavev2_adam_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_v_read_readvariableopI
Esavev2_adam_simple_rnn_8_simple_rnn_cell_8_bias_v_read_readvariableop?
;savev2_adam_time_distributed_1_kernel_v_read_readvariableop=
9savev2_adam_time_distributed_1_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameч
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*Й
value€Bь,B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesа
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЖ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_2_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop@savev2_simple_rnn_6_simple_rnn_cell_6_kernel_read_readvariableopJsavev2_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_read_readvariableop>savev2_simple_rnn_6_simple_rnn_cell_6_bias_read_readvariableop@savev2_simple_rnn_7_simple_rnn_cell_7_kernel_read_readvariableopJsavev2_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_read_readvariableop>savev2_simple_rnn_7_simple_rnn_cell_7_bias_read_readvariableop@savev2_simple_rnn_8_simple_rnn_cell_8_kernel_read_readvariableopJsavev2_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_read_readvariableop>savev2_simple_rnn_8_simple_rnn_cell_8_bias_read_readvariableop4savev2_time_distributed_1_kernel_read_readvariableop2savev2_time_distributed_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopGsavev2_adam_simple_rnn_6_simple_rnn_cell_6_kernel_m_read_readvariableopQsavev2_adam_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_m_read_readvariableopEsavev2_adam_simple_rnn_6_simple_rnn_cell_6_bias_m_read_readvariableopGsavev2_adam_simple_rnn_7_simple_rnn_cell_7_kernel_m_read_readvariableopQsavev2_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_m_read_readvariableopEsavev2_adam_simple_rnn_7_simple_rnn_cell_7_bias_m_read_readvariableopGsavev2_adam_simple_rnn_8_simple_rnn_cell_8_kernel_m_read_readvariableopQsavev2_adam_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_m_read_readvariableopEsavev2_adam_simple_rnn_8_simple_rnn_cell_8_bias_m_read_readvariableop;savev2_adam_time_distributed_1_kernel_m_read_readvariableop9savev2_adam_time_distributed_1_bias_m_read_readvariableopGsavev2_adam_simple_rnn_6_simple_rnn_cell_6_kernel_v_read_readvariableopQsavev2_adam_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_v_read_readvariableopEsavev2_adam_simple_rnn_6_simple_rnn_cell_6_bias_v_read_readvariableopGsavev2_adam_simple_rnn_7_simple_rnn_cell_7_kernel_v_read_readvariableopQsavev2_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_v_read_readvariableopEsavev2_adam_simple_rnn_7_simple_rnn_cell_7_bias_v_read_readvariableopGsavev2_adam_simple_rnn_8_simple_rnn_cell_8_kernel_v_read_readvariableopQsavev2_adam_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_v_read_readvariableopEsavev2_adam_simple_rnn_8_simple_rnn_cell_8_bias_v_read_readvariableop;savev2_adam_time_distributed_1_kernel_v_read_readvariableop9savev2_adam_time_distributed_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *:
dtypes0
.2,	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
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

identity_1Identity_1:output:0*п
_input_shapesЁ
Џ: :
кЖP: : : : : :P@:@@:@:	@А:
АА:А:
АА:
АА:А:	А:: : : : :P@:@@:@:	@А:
АА:А:
АА:
АА:А:	А::P@:@@:@:	@А:
АА:А:
АА:
АА:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
кЖP:
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

:P@:$ 

_output_shapes

:@@: 	

_output_shapes
:@:%
!

_output_shapes
:	@А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::
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

:P@:$ 

_output_shapes

:@@: 

_output_shapes
:@:%!

_output_shapes
:	@А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А:  

_output_shapes
::$! 

_output_shapes

:P@:$" 

_output_shapes

:@@: #

_output_shapes
:@:%$!

_output_shapes
:	@А:&%"
 
_output_shapes
:
АА:!&

_output_shapes	
:А:&'"
 
_output_shapes
:
АА:&("
 
_output_shapes
:
АА:!)

_output_shapes	
:А:%*!

_output_shapes
:	А: +

_output_shapes
::,

_output_shapes
: 
іH
Ц
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_14773
inputs_04
0simple_rnn_cell_7_matmul_readvariableop_resource5
1simple_rnn_cell_7_biasadd_readvariableop_resource6
2simple_rnn_cell_7_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_7/MatMul/ReadVariableOpҐ)simple_rnn_cell_7/MatMul_1/ReadVariableOpҐwhileF
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
strided_slice/stack_2в
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
B :А2
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
B :и2
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
B :А2
zeros/packed/1Г
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
:€€€€€€€€€А2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_2ƒ
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02)
'simple_rnn_cell_7/MatMul/ReadVariableOpЉ
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/MatMul√
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_7/BiasAdd/ReadVariableOp 
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/BiasAddЋ
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_7/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/MatMul_1і
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/addП
simple_rnn_cell_7/SigmoidSigmoidsimple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_7/SigmoidП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterƒ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_14707*
condR
while_cond_14706*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1ъ
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
"
_user_specified_name
inputs/0
Ћ
•
while_cond_10774
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_10774___redundant_placeholder03
/while_while_cond_10774___redundant_placeholder13
/while_while_cond_10774___redundant_placeholder23
/while_while_cond_10774___redundant_placeholder3
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
-: : : : :€€€€€€€€€@: ::::: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
ф3
ы
while_body_14573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_7_matmul_readvariableop_resource;
7while_simple_rnn_cell_7_biasadd_readvariableop_resource<
8while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_7/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЎ
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02/
-while/simple_rnn_cell_7/MatMul/ReadVariableOpж
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_7/MatMul„
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_7/BiasAddя
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_7/MatMul_1ћ
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_7/add°
while/simple_rnn_cell_7/SigmoidSigmoidwhile/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_7/Sigmoidз
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder#while/simple_rnn_cell_7/Sigmoid:y:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ы
while/Identity_4Identity#while/simple_rnn_cell_7/Sigmoid:y:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
ы3
ы
while_body_15311
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_8_matmul_readvariableop_resource;
7while_simple_rnn_cell_8_biasadd_readvariableop_resource<
8while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_8/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape‘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemў
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02/
-while/simple_rnn_cell_8/MatMul/ReadVariableOpж
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_8/MatMul„
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_8/BiasAddя
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_8/MatMul_1ћ
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_8/addШ
while/simple_rnn_cell_8/ReluReluwhile/simple_rnn_cell_8/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_8/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_8/Relu:activations:0*
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
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ґ
while/Identity_4Identity*while/simple_rnn_cell_8/Relu:activations:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Ћ
•
while_cond_12292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_12292___redundant_placeholder03
/while_while_cond_12292___redundant_placeholder13
/while_while_cond_12292___redundant_placeholder23
/while_while_cond_12292___redundant_placeholder3
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
-: : : : :€€€€€€€€€@: ::::: 
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
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
ќ	
£
,__inference_sequential_2_layer_call_fn_13115
embedding_2_input
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
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallembedding_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_130882
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:€€€€€€€€€M::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:€€€€€€€€€M
+
_user_specified_nameembedding_2_input
ЏG
Ф
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_14147

inputs4
0simple_rnn_cell_6_matmul_readvariableop_resource5
1simple_rnn_cell_6_biasadd_readvariableop_resource6
2simple_rnn_cell_6_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_6/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_6/MatMul/ReadVariableOpҐ)simple_rnn_cell_6/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
zeros/packed/1Г
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
:€€€€€€€€€@2
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
:M€€€€€€€€€P2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€P*
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:P@*
dtype02)
'simple_rnn_cell_6/MatMul/ReadVariableOpї
simple_rnn_cell_6/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/MatMul¬
(simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_6/BiasAdd/ReadVariableOp…
simple_rnn_cell_6/BiasAddBiasAdd"simple_rnn_cell_6/MatMul:product:00simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/BiasAdd…
)simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_6/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_6/MatMul_1MatMulzeros:output:01simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/MatMul_1≥
simple_rnn_cell_6/addAddV2"simple_rnn_cell_6/BiasAdd:output:0$simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/addЕ
simple_rnn_cell_6/TanhTanhsimple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/TanhП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_6_matmul_readvariableop_resource1simple_rnn_cell_6_biasadd_readvariableop_resource2simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_14081*
condR
while_cond_14080*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:M€€€€€€€€€@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€M@2
transpose_1р
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_6/BiasAdd/ReadVariableOp(^simple_rnn_cell_6/MatMul/ReadVariableOp*^simple_rnn_cell_6/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:€€€€€€€€€M@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€MP:::2T
(simple_rnn_cell_6/BiasAdd/ReadVariableOp(simple_rnn_cell_6/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_6/MatMul/ReadVariableOp'simple_rnn_cell_6/MatMul/ReadVariableOp2V
)simple_rnn_cell_6/MatMul_1/ReadVariableOp)simple_rnn_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€MP
 
_user_specified_nameinputs
’
Ж
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_12909

inputs*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityИҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshape¶
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_1/MatMul/ReadVariableOpХ
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/Softmaxw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€M      2
Reshape_1/shapeМ
	Reshape_1Reshapedense_1/Softmax:softmax:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€M2
	Reshape_1Ђ
IdentityIdentityReshape_1:output:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€MА::2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:€€€€€€€€€MА
 
_user_specified_nameinputs
јQ
Л
*sequential_2_simple_rnn_7_while_body_10265P
Lsequential_2_simple_rnn_7_while_sequential_2_simple_rnn_7_while_loop_counterV
Rsequential_2_simple_rnn_7_while_sequential_2_simple_rnn_7_while_maximum_iterations/
+sequential_2_simple_rnn_7_while_placeholder1
-sequential_2_simple_rnn_7_while_placeholder_11
-sequential_2_simple_rnn_7_while_placeholder_2O
Ksequential_2_simple_rnn_7_while_sequential_2_simple_rnn_7_strided_slice_1_0М
Зsequential_2_simple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0V
Rsequential_2_simple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0W
Ssequential_2_simple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0X
Tsequential_2_simple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0,
(sequential_2_simple_rnn_7_while_identity.
*sequential_2_simple_rnn_7_while_identity_1.
*sequential_2_simple_rnn_7_while_identity_2.
*sequential_2_simple_rnn_7_while_identity_3.
*sequential_2_simple_rnn_7_while_identity_4M
Isequential_2_simple_rnn_7_while_sequential_2_simple_rnn_7_strided_slice_1К
Еsequential_2_simple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_7_tensorarrayunstack_tensorlistfromtensorT
Psequential_2_simple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resourceU
Qsequential_2_simple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resourceV
Rsequential_2_simple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐHsequential_2/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐGsequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpҐIsequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpч
Qsequential_2/simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2S
Qsequential_2/simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeр
Csequential_2/simple_rnn_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЗsequential_2_simple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0+sequential_2_simple_rnn_7_while_placeholderZsequential_2/simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02E
Csequential_2/simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem¶
Gsequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOpRsequential_2_simple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02I
Gsequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpќ
8sequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMulMatMulJsequential_2/simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem:item:0Osequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2:
8sequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul•
Hsequential_2/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOpSsequential_2_simple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02J
Hsequential_2/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp 
9sequential_2/simple_rnn_7/while/simple_rnn_cell_7/BiasAddBiasAddBsequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul:product:0Psequential_2/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2;
9sequential_2/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd≠
Isequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOpTsequential_2_simple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02K
Isequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpЈ
:sequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1MatMul-sequential_2_simple_rnn_7_while_placeholder_2Qsequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2<
:sequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1і
5sequential_2/simple_rnn_7/while/simple_rnn_cell_7/addAddV2Bsequential_2/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd:output:0Dsequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А27
5sequential_2/simple_rnn_7/while/simple_rnn_cell_7/addп
9sequential_2/simple_rnn_7/while/simple_rnn_cell_7/SigmoidSigmoid9sequential_2/simple_rnn_7/while/simple_rnn_cell_7/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2;
9sequential_2/simple_rnn_7/while/simple_rnn_cell_7/Sigmoidй
Dsequential_2/simple_rnn_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_2_simple_rnn_7_while_placeholder_1+sequential_2_simple_rnn_7_while_placeholder=sequential_2/simple_rnn_7/while/simple_rnn_cell_7/Sigmoid:y:0*
_output_shapes
: *
element_dtype02F
Dsequential_2/simple_rnn_7/while/TensorArrayV2Write/TensorListSetItemР
%sequential_2/simple_rnn_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_2/simple_rnn_7/while/add/y—
#sequential_2/simple_rnn_7/while/addAddV2+sequential_2_simple_rnn_7_while_placeholder.sequential_2/simple_rnn_7/while/add/y:output:0*
T0*
_output_shapes
: 2%
#sequential_2/simple_rnn_7/while/addФ
'sequential_2/simple_rnn_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_2/simple_rnn_7/while/add_1/yш
%sequential_2/simple_rnn_7/while/add_1AddV2Lsequential_2_simple_rnn_7_while_sequential_2_simple_rnn_7_while_loop_counter0sequential_2/simple_rnn_7/while/add_1/y:output:0*
T0*
_output_shapes
: 2'
%sequential_2/simple_rnn_7/while/add_1Н
(sequential_2/simple_rnn_7/while/IdentityIdentity)sequential_2/simple_rnn_7/while/add_1:z:0I^sequential_2/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential_2/simple_rnn_7/while/IdentityЇ
*sequential_2/simple_rnn_7/while/Identity_1IdentityRsequential_2_simple_rnn_7_while_sequential_2_simple_rnn_7_while_maximum_iterationsI^sequential_2/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_2/simple_rnn_7/while/Identity_1П
*sequential_2/simple_rnn_7/while/Identity_2Identity'sequential_2/simple_rnn_7/while/add:z:0I^sequential_2/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_2/simple_rnn_7/while/Identity_2Љ
*sequential_2/simple_rnn_7/while/Identity_3IdentityTsequential_2/simple_rnn_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0I^sequential_2/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_2/simple_rnn_7/while/Identity_3Ј
*sequential_2/simple_rnn_7/while/Identity_4Identity=sequential_2/simple_rnn_7/while/simple_rnn_cell_7/Sigmoid:y:0I^sequential_2/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpH^sequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpJ^sequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2,
*sequential_2/simple_rnn_7/while/Identity_4"]
(sequential_2_simple_rnn_7_while_identity1sequential_2/simple_rnn_7/while/Identity:output:0"a
*sequential_2_simple_rnn_7_while_identity_13sequential_2/simple_rnn_7/while/Identity_1:output:0"a
*sequential_2_simple_rnn_7_while_identity_23sequential_2/simple_rnn_7/while/Identity_2:output:0"a
*sequential_2_simple_rnn_7_while_identity_33sequential_2/simple_rnn_7/while/Identity_3:output:0"a
*sequential_2_simple_rnn_7_while_identity_43sequential_2/simple_rnn_7/while/Identity_4:output:0"Ш
Isequential_2_simple_rnn_7_while_sequential_2_simple_rnn_7_strided_slice_1Ksequential_2_simple_rnn_7_while_sequential_2_simple_rnn_7_strided_slice_1_0"®
Qsequential_2_simple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resourceSsequential_2_simple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"™
Rsequential_2_simple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resourceTsequential_2_simple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"¶
Psequential_2_simple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resourceRsequential_2_simple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0"Т
Еsequential_2_simple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_7_tensorarrayunstack_tensorlistfromtensorЗsequential_2_simple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2Ф
Hsequential_2/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpHsequential_2/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2Т
Gsequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpGsequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp2Ц
Isequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpIsequential_2/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Ќ
•
while_cond_14818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_14818___redundant_placeholder03
/while_while_cond_14818___redundant_placeholder13
/while_while_cond_14818___redundant_placeholder23
/while_while_cond_14818___redundant_placeholder3
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
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
і!
ў
G__inference_sequential_2_layer_call_and_return_conditional_losses_13024

inputs
embedding_2_12992
simple_rnn_6_12995
simple_rnn_6_12997
simple_rnn_6_12999
simple_rnn_7_13002
simple_rnn_7_13004
simple_rnn_7_13006
simple_rnn_8_13009
simple_rnn_8_13011
simple_rnn_8_13013
time_distributed_1_13016
time_distributed_1_13018
identityИҐ#embedding_2/StatefulPartitionedCallҐ$simple_rnn_6/StatefulPartitionedCallҐ$simple_rnn_7/StatefulPartitionedCallҐ$simple_rnn_8/StatefulPartitionedCallҐ*time_distributed_1/StatefulPartitionedCallП
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_2_12992*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€MP*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_121242%
#embedding_2/StatefulPartitionedCallе
$simple_rnn_6/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0simple_rnn_6_12995simple_rnn_6_12997simple_rnn_6_12999*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_122472&
$simple_rnn_6/StatefulPartitionedCallз
$simple_rnn_7/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_6/StatefulPartitionedCall:output:0simple_rnn_7_13002simple_rnn_7_13004simple_rnn_7_13006*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€MА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_125002&
$simple_rnn_7/StatefulPartitionedCallз
$simple_rnn_8/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_7/StatefulPartitionedCall:output:0simple_rnn_8_13009simple_rnn_8_13011simple_rnn_8_13013*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€MА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_127532&
$simple_rnn_8/StatefulPartitionedCallо
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_8/StatefulPartitionedCall:output:0time_distributed_1_13016time_distributed_1_13018*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_129092,
*time_distributed_1/StatefulPartitionedCallХ
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2"
 time_distributed_1/Reshape/shape–
time_distributed_1/ReshapeReshape-simple_rnn_8/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
time_distributed_1/Reshape”
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0$^embedding_2/StatefulPartitionedCall%^simple_rnn_6/StatefulPartitionedCall%^simple_rnn_7/StatefulPartitionedCall%^simple_rnn_8/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:€€€€€€€€€M::::::::::::2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2L
$simple_rnn_6/StatefulPartitionedCall$simple_rnn_6/StatefulPartitionedCall2L
$simple_rnn_7/StatefulPartitionedCall$simple_rnn_7/StatefulPartitionedCall2L
$simple_rnn_8/StatefulPartitionedCall$simple_rnn_8/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€M
 
_user_specified_nameinputs
•
З
2__inference_time_distributed_1_layer_call_fn_15500

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_120742
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
о
√
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_15667

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddХ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addP
ReluReluadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
Relu≤
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityґ

Identity_1IdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:€€€€€€€€€А:€€€€€€€€€А:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0
ЩH
Ц
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_14393
inputs_04
0simple_rnn_cell_6_matmul_readvariableop_resource5
1simple_rnn_cell_6_biasadd_readvariableop_resource6
2simple_rnn_cell_6_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_6/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_6/MatMul/ReadVariableOpҐ)simple_rnn_cell_6/MatMul_1/ReadVariableOpҐwhileF
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
strided_slice/stack_2в
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
B :и2
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
zeros/packed/1Г
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
:€€€€€€€€€@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€P2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€P*
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_6/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_6_matmul_readvariableop_resource*
_output_shapes

:P@*
dtype02)
'simple_rnn_cell_6/MatMul/ReadVariableOpї
simple_rnn_cell_6/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/MatMul¬
(simple_rnn_cell_6/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_6/BiasAdd/ReadVariableOp…
simple_rnn_cell_6/BiasAddBiasAdd"simple_rnn_cell_6/MatMul:product:00simple_rnn_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/BiasAdd…
)simple_rnn_cell_6/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_6/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_6/MatMul_1MatMulzeros:output:01simple_rnn_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/MatMul_1≥
simple_rnn_cell_6/addAddV2"simple_rnn_cell_6/BiasAdd:output:0$simple_rnn_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/addЕ
simple_rnn_cell_6/TanhTanhsimple_rnn_cell_6/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
simple_rnn_cell_6/TanhП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_6_matmul_readvariableop_resource1simple_rnn_cell_6_biasadd_readvariableop_resource2simple_rnn_cell_6_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_14327*
condR
while_cond_14326*8
output_shapes'
%: : : : :€€€€€€€€€@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
transpose_1щ
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_6/BiasAdd/ReadVariableOp(^simple_rnn_cell_6/MatMul/ReadVariableOp*^simple_rnn_cell_6/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€P:::2T
(simple_rnn_cell_6/BiasAdd/ReadVariableOp(simple_rnn_cell_6/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_6/MatMul/ReadVariableOp'simple_rnn_cell_6/MatMul/ReadVariableOp2V
)simple_rnn_cell_6/MatMul_1/ReadVariableOp)simple_rnn_cell_6/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€P
"
_user_specified_name
inputs/0
»

Ь
simple_rnn_7_while_cond_136606
2simple_rnn_7_while_simple_rnn_7_while_loop_counter<
8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations"
simple_rnn_7_while_placeholder$
 simple_rnn_7_while_placeholder_1$
 simple_rnn_7_while_placeholder_28
4simple_rnn_7_while_less_simple_rnn_7_strided_slice_1M
Isimple_rnn_7_while_simple_rnn_7_while_cond_13660___redundant_placeholder0M
Isimple_rnn_7_while_simple_rnn_7_while_cond_13660___redundant_placeholder1M
Isimple_rnn_7_while_simple_rnn_7_while_cond_13660___redundant_placeholder2M
Isimple_rnn_7_while_simple_rnn_7_while_cond_13660___redundant_placeholder3
simple_rnn_7_while_identity
±
simple_rnn_7/while/LessLesssimple_rnn_7_while_placeholder4simple_rnn_7_while_less_simple_rnn_7_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_7/while/LessД
simple_rnn_7/while/IdentityIdentitysimple_rnn_7/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_7/while/Identity"C
simple_rnn_7_while_identity$simple_rnn_7/while/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 
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
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
’!
д
G__inference_sequential_2_layer_call_and_return_conditional_losses_12951
embedding_2_input
embedding_2_12133
simple_rnn_6_12382
simple_rnn_6_12384
simple_rnn_6_12386
simple_rnn_7_12635
simple_rnn_7_12637
simple_rnn_7_12639
simple_rnn_8_12888
simple_rnn_8_12890
simple_rnn_8_12892
time_distributed_1_12943
time_distributed_1_12945
identityИҐ#embedding_2/StatefulPartitionedCallҐ$simple_rnn_6/StatefulPartitionedCallҐ$simple_rnn_7/StatefulPartitionedCallҐ$simple_rnn_8/StatefulPartitionedCallҐ*time_distributed_1/StatefulPartitionedCallЪ
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallembedding_2_inputembedding_2_12133*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€MP*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_121242%
#embedding_2/StatefulPartitionedCallе
$simple_rnn_6/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0simple_rnn_6_12382simple_rnn_6_12384simple_rnn_6_12386*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_122472&
$simple_rnn_6/StatefulPartitionedCallз
$simple_rnn_7/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_6/StatefulPartitionedCall:output:0simple_rnn_7_12635simple_rnn_7_12637simple_rnn_7_12639*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€MА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_125002&
$simple_rnn_7/StatefulPartitionedCallз
$simple_rnn_8/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_7/StatefulPartitionedCall:output:0simple_rnn_8_12888simple_rnn_8_12890simple_rnn_8_12892*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€MА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_127532&
$simple_rnn_8/StatefulPartitionedCallо
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_8/StatefulPartitionedCall:output:0time_distributed_1_12943time_distributed_1_12945*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€M*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_129092,
*time_distributed_1/StatefulPartitionedCallХ
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2"
 time_distributed_1/Reshape/shape–
time_distributed_1/ReshapeReshape-simple_rnn_8/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
time_distributed_1/Reshape”
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0$^embedding_2/StatefulPartitionedCall%^simple_rnn_6/StatefulPartitionedCall%^simple_rnn_7/StatefulPartitionedCall%^simple_rnn_8/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€M2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:€€€€€€€€€M::::::::::::2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2L
$simple_rnn_6/StatefulPartitionedCall$simple_rnn_6/StatefulPartitionedCall2L
$simple_rnn_7/StatefulPartitionedCall$simple_rnn_7/StatefulPartitionedCall2L
$simple_rnn_8/StatefulPartitionedCall$simple_rnn_8/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:Z V
'
_output_shapes
:€€€€€€€€€M
+
_user_specified_nameembedding_2_input"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ќ
serving_defaultє
O
embedding_2_input:
#serving_default_embedding_2_input:0€€€€€€€€€MJ
time_distributed_14
StatefulPartitionedCall:0€€€€€€€€€Mtensorflow/serving/predict:Вх
§A
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
regularization_losses
trainable_variables
		variables

	keras_api

signatures
Ю__call__
+Я&call_and_return_all_conditional_losses
†_default_save_signature"У>
_tf_keras_sequentialф={"class_name": "Sequential", "name": "sequential_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 77]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_2_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_2", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 77]}, "dtype": "float32", "input_dim": 17258, "output_dim": 80, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 77}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_6", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_7", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_8", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 23, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 77]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_2_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_2", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 77]}, "dtype": "float32", "input_dim": 17258, "output_dim": 80, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 77}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_6", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_7", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_8", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 23, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
≠

embeddings
regularization_losses
trainable_variables
	variables
	keras_api
°__call__
+Ґ&call_and_return_all_conditional_losses"М
_tf_keras_layerт{"class_name": "Embedding", "name": "embedding_2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 77]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_2", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 77]}, "dtype": "float32", "input_dim": 17258, "output_dim": 80, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 77}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77]}}
э

cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
£__call__
+§&call_and_return_all_conditional_losses"“	
_tf_keras_rnn_layerі	{"class_name": "SimpleRNN", "name": "simple_rnn_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_6", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 80]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 77, 80]}}
Б
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
•__call__
+¶&call_and_return_all_conditional_losses"÷	
_tf_keras_rnn_layerЄ	{"class_name": "SimpleRNN", "name": "simple_rnn_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_7", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 77, 64]}}
А
cell

state_spec
regularization_losses
 trainable_variables
!	variables
"	keras_api
І__call__
+®&call_and_return_all_conditional_losses"’	
_tf_keras_rnn_layerЈ	{"class_name": "SimpleRNN", "name": "simple_rnn_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_8", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 128]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 77, 128]}}
°	
	#layer
$regularization_losses
%trainable_variables
&	variables
'	keras_api
©__call__
+™&call_and_return_all_conditional_losses"Е
_tf_keras_layerл{"class_name": "TimeDistributed", "name": "time_distributed_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "time_distributed_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 23, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 256]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77, 256]}}
ѓ
(iter

)beta_1

*beta_2
	+decay
,learning_rate-mИ.mЙ/mК0mЛ1mМ2mН3mО4mП5mР6mС7mТ-vУ.vФ/vХ0vЦ1vЧ2vШ3vЩ4vЪ5vЫ6vЬ7vЭ"
	optimizer
 "
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
ќ
regularization_losses
8metrics
9layer_metrics
trainable_variables
:layer_regularization_losses

;layers
<non_trainable_variables
		variables
Ю__call__
†_default_save_signature
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
-
Ђserving_default"
signature_map
*:(
кЖP2embedding_2/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
∞
regularization_losses
=metrics
>layer_metrics
trainable_variables
?layer_regularization_losses

@layers
Anon_trainable_variables
	variables
°__call__
+Ґ&call_and_return_all_conditional_losses
'Ґ"call_and_return_conditional_losses"
_generic_user_object
й

-kernel
.recurrent_kernel
/bias
Bregularization_losses
Ctrainable_variables
D	variables
E	keras_api
ђ__call__
+≠&call_and_return_all_conditional_losses"ђ
_tf_keras_layerТ{"class_name": "SimpleRNNCell", "name": "simple_rnn_cell_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_cell_6", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}
 "
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
Љ
regularization_losses
Fmetrics
Glayer_metrics
trainable_variables
Hlayer_regularization_losses

Istates

Jlayers
Knon_trainable_variables
	variables
£__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
н

0kernel
1recurrent_kernel
2bias
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
Ѓ__call__
+ѓ&call_and_return_all_conditional_losses"∞
_tf_keras_layerЦ{"class_name": "SimpleRNNCell", "name": "simple_rnn_cell_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_cell_7", "trainable": true, "dtype": "float32", "units": 128, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}
 "
trackable_list_wrapper
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
Љ
regularization_losses
Pmetrics
Qlayer_metrics
trainable_variables
Rlayer_regularization_losses

Sstates

Tlayers
Unon_trainable_variables
	variables
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
к

3kernel
4recurrent_kernel
5bias
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
∞__call__
+±&call_and_return_all_conditional_losses"≠
_tf_keras_layerУ{"class_name": "SimpleRNNCell", "name": "simple_rnn_cell_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_cell_8", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}
 "
trackable_list_wrapper
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
Љ
regularization_losses
Zmetrics
[layer_metrics
 trainable_variables
\layer_regularization_losses

]states

^layers
_non_trainable_variables
!	variables
І__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
≠

6kernel
7bias
`regularization_losses
atrainable_variables
b	variables
c	keras_api
≤__call__
+≥&call_and_return_all_conditional_losses"Ж
_tf_keras_layerм{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 23, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}}
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
∞
$regularization_losses
dmetrics
elayer_metrics
%trainable_variables
flayer_regularization_losses

glayers
hnon_trainable_variables
&	variables
©__call__
+™&call_and_return_all_conditional_losses
'™"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
7:5P@2%simple_rnn_6/simple_rnn_cell_6/kernel
A:?@@2/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel
1:/@2#simple_rnn_6/simple_rnn_cell_6/bias
8:6	@А2%simple_rnn_7/simple_rnn_cell_7/kernel
C:A
АА2/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel
2:0А2#simple_rnn_7/simple_rnn_cell_7/bias
9:7
АА2%simple_rnn_8/simple_rnn_cell_8/kernel
C:A
АА2/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel
2:0А2#simple_rnn_8/simple_rnn_cell_8/bias
,:*	А2time_distributed_1/kernel
%:#2time_distributed_1/bias
.
i0
j1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
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
∞
Bregularization_losses
kmetrics
llayer_metrics
Ctrainable_variables
mlayer_regularization_losses

nlayers
onon_trainable_variables
D	variables
ђ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
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
∞
Lregularization_losses
pmetrics
qlayer_metrics
Mtrainable_variables
rlayer_regularization_losses

slayers
tnon_trainable_variables
N	variables
Ѓ__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
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
∞
Vregularization_losses
umetrics
vlayer_metrics
Wtrainable_variables
wlayer_regularization_losses

xlayers
ynon_trainable_variables
X	variables
∞__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
∞
`regularization_losses
zmetrics
{layer_metrics
atrainable_variables
|layer_regularization_losses

}layers
~non_trainable_variables
b	variables
≤__call__
+≥&call_and_return_all_conditional_losses
'≥"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
#0"
trackable_list_wrapper
 "
trackable_list_wrapper
Њ
	total

Аcount
Б	variables
В	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
Д

Гtotal

Дcount
Е
_fn_kwargs
Ж	variables
З	keras_api"Є
_tf_keras_metricЭ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
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
 "
trackable_dict_wrapper
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
А1"
trackable_list_wrapper
.
Б	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Г0
Д1"
trackable_list_wrapper
.
Ж	variables"
_generic_user_object
<::P@2,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/m
F:D@@26Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/m
6:4@2*Adam/simple_rnn_6/simple_rnn_cell_6/bias/m
=:;	@А2,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m
H:F
АА26Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m
7:5А2*Adam/simple_rnn_7/simple_rnn_cell_7/bias/m
>:<
АА2,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/m
H:F
АА26Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/m
7:5А2*Adam/simple_rnn_8/simple_rnn_cell_8/bias/m
1:/	А2 Adam/time_distributed_1/kernel/m
*:(2Adam/time_distributed_1/bias/m
<::P@2,Adam/simple_rnn_6/simple_rnn_cell_6/kernel/v
F:D@@26Adam/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel/v
6:4@2*Adam/simple_rnn_6/simple_rnn_cell_6/bias/v
=:;	@А2,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v
H:F
АА26Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v
7:5А2*Adam/simple_rnn_7/simple_rnn_cell_7/bias/v
>:<
АА2,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/v
H:F
АА26Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/v
7:5А2*Adam/simple_rnn_8/simple_rnn_cell_8/bias/v
1:/	А2 Adam/time_distributed_1/kernel/v
*:(2Adam/time_distributed_1/bias/v
ю2ы
,__inference_sequential_2_layer_call_fn_13877
,__inference_sequential_2_layer_call_fn_13115
,__inference_sequential_2_layer_call_fn_13906
,__inference_sequential_2_layer_call_fn_13051ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
к2з
G__inference_sequential_2_layer_call_and_return_conditional_losses_12986
G__inference_sequential_2_layer_call_and_return_conditional_losses_13501
G__inference_sequential_2_layer_call_and_return_conditional_losses_13848
G__inference_sequential_2_layer_call_and_return_conditional_losses_12951ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
и2е
 __inference__wrapped_model_10452ј
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *0Ґ-
+К(
embedding_2_input€€€€€€€€€M
’2“
+__inference_embedding_2_layer_call_fn_13923Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
р2н
F__inference_embedding_2_layer_call_and_return_conditional_losses_13916Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
У2Р
,__inference_simple_rnn_6_layer_call_fn_14404
,__inference_simple_rnn_6_layer_call_fn_14158
,__inference_simple_rnn_6_layer_call_fn_14415
,__inference_simple_rnn_6_layer_call_fn_14169’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
€2ь
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_14393
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_14147
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_14281
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_14035’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
У2Р
,__inference_simple_rnn_7_layer_call_fn_14907
,__inference_simple_rnn_7_layer_call_fn_14661
,__inference_simple_rnn_7_layer_call_fn_14896
,__inference_simple_rnn_7_layer_call_fn_14650’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
€2ь
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_14773
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_14885
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_14639
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_14527’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
У2Р
,__inference_simple_rnn_8_layer_call_fn_15153
,__inference_simple_rnn_8_layer_call_fn_15399
,__inference_simple_rnn_8_layer_call_fn_15388
,__inference_simple_rnn_8_layer_call_fn_15142’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
€2ь
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_15265
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_15131
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_15019
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_15377’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ц2У
2__inference_time_distributed_1_layer_call_fn_15438
2__inference_time_distributed_1_layer_call_fn_15447
2__inference_time_distributed_1_layer_call_fn_15509
2__inference_time_distributed_1_layer_call_fn_15500ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
В2€
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_15469
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_15491
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_15414
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_15429ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
‘B—
#__inference_signature_wrapper_13154embedding_2_input"Ф
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
™2І
1__inference_simple_rnn_cell_6_layer_call_fn_15557
1__inference_simple_rnn_cell_6_layer_call_fn_15571Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
а2Ё
L__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_15543
L__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_15526Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
™2І
1__inference_simple_rnn_cell_7_layer_call_fn_15633
1__inference_simple_rnn_cell_7_layer_call_fn_15619Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
а2Ё
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_15605
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_15588Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
™2І
1__inference_simple_rnn_cell_8_layer_call_fn_15681
1__inference_simple_rnn_cell_8_layer_call_fn_15695Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
а2Ё
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_15650
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_15667Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
—2ќ
'__inference_dense_1_layer_call_fn_15715Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
м2й
B__inference_dense_1_layer_call_and_return_conditional_losses_15706Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 Љ
 __inference__wrapped_model_10452Ч-/.02135467:Ґ7
0Ґ-
+К(
embedding_2_input€€€€€€€€€M
™ "K™H
F
time_distributed_10К-
time_distributed_1€€€€€€€€€M£
B__inference_dense_1_layer_call_and_return_conditional_losses_15706]670Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ {
'__inference_dense_1_layer_call_fn_15715P670Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€©
F__inference_embedding_2_layer_call_and_return_conditional_losses_13916_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€M
™ ")Ґ&
К
0€€€€€€€€€MP
Ъ Б
+__inference_embedding_2_layer_call_fn_13923R/Ґ,
%Ґ"
 К
inputs€€€€€€€€€M
™ "К€€€€€€€€€MP»
G__inference_sequential_2_layer_call_and_return_conditional_losses_12951}-/.02135467BҐ?
8Ґ5
+К(
embedding_2_input€€€€€€€€€M
p

 
™ ")Ґ&
К
0€€€€€€€€€M
Ъ »
G__inference_sequential_2_layer_call_and_return_conditional_losses_12986}-/.02135467BҐ?
8Ґ5
+К(
embedding_2_input€€€€€€€€€M
p 

 
™ ")Ґ&
К
0€€€€€€€€€M
Ъ љ
G__inference_sequential_2_layer_call_and_return_conditional_losses_13501r-/.021354677Ґ4
-Ґ*
 К
inputs€€€€€€€€€M
p

 
™ ")Ґ&
К
0€€€€€€€€€M
Ъ љ
G__inference_sequential_2_layer_call_and_return_conditional_losses_13848r-/.021354677Ґ4
-Ґ*
 К
inputs€€€€€€€€€M
p 

 
™ ")Ґ&
К
0€€€€€€€€€M
Ъ †
,__inference_sequential_2_layer_call_fn_13051p-/.02135467BҐ?
8Ґ5
+К(
embedding_2_input€€€€€€€€€M
p

 
™ "К€€€€€€€€€M†
,__inference_sequential_2_layer_call_fn_13115p-/.02135467BҐ?
8Ґ5
+К(
embedding_2_input€€€€€€€€€M
p 

 
™ "К€€€€€€€€€MХ
,__inference_sequential_2_layer_call_fn_13877e-/.021354677Ґ4
-Ґ*
 К
inputs€€€€€€€€€M
p

 
™ "К€€€€€€€€€MХ
,__inference_sequential_2_layer_call_fn_13906e-/.021354677Ґ4
-Ґ*
 К
inputs€€€€€€€€€M
p 

 
™ "К€€€€€€€€€M‘
#__inference_signature_wrapper_13154ђ-/.02135467OҐL
Ґ 
E™B
@
embedding_2_input+К(
embedding_2_input€€€€€€€€€M"K™H
F
time_distributed_10К-
time_distributed_1€€€€€€€€€MЉ
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_14035q-/.?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€MP

 
p

 
™ ")Ґ&
К
0€€€€€€€€€M@
Ъ Љ
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_14147q-/.?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€MP

 
p 

 
™ ")Ґ&
К
0€€€€€€€€€M@
Ъ ÷
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_14281К-/.OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€P

 
p

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€@
Ъ ÷
G__inference_simple_rnn_6_layer_call_and_return_conditional_losses_14393К-/.OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€P

 
p 

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€@
Ъ Ф
,__inference_simple_rnn_6_layer_call_fn_14158d-/.?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€MP

 
p

 
™ "К€€€€€€€€€M@Ф
,__inference_simple_rnn_6_layer_call_fn_14169d-/.?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€MP

 
p 

 
™ "К€€€€€€€€€M@≠
,__inference_simple_rnn_6_layer_call_fn_14404}-/.OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€P

 
p

 
™ "%К"€€€€€€€€€€€€€€€€€€@≠
,__inference_simple_rnn_6_layer_call_fn_14415}-/.OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€P

 
p 

 
™ "%К"€€€€€€€€€€€€€€€€€€@љ
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_14527r021?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€M@

 
p

 
™ "*Ґ'
 К
0€€€€€€€€€MА
Ъ љ
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_14639r021?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€M@

 
p 

 
™ "*Ґ'
 К
0€€€€€€€€€MА
Ъ „
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_14773Л021OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€@

 
p

 
™ "3Ґ0
)К&
0€€€€€€€€€€€€€€€€€€А
Ъ „
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_14885Л021OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€@

 
p 

 
™ "3Ґ0
)К&
0€€€€€€€€€€€€€€€€€€А
Ъ Х
,__inference_simple_rnn_7_layer_call_fn_14650e021?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€M@

 
p

 
™ "К€€€€€€€€€MАХ
,__inference_simple_rnn_7_layer_call_fn_14661e021?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€M@

 
p 

 
™ "К€€€€€€€€€MАЃ
,__inference_simple_rnn_7_layer_call_fn_14896~021OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€@

 
p

 
™ "&К#€€€€€€€€€€€€€€€€€€АЃ
,__inference_simple_rnn_7_layer_call_fn_14907~021OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€@

 
p 

 
™ "&К#€€€€€€€€€€€€€€€€€€АЎ
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_15019М354PҐM
FҐC
5Ъ2
0К-
inputs/0€€€€€€€€€€€€€€€€€€А

 
p

 
™ "3Ґ0
)К&
0€€€€€€€€€€€€€€€€€€А
Ъ Ў
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_15131М354PҐM
FҐC
5Ъ2
0К-
inputs/0€€€€€€€€€€€€€€€€€€А

 
p 

 
™ "3Ґ0
)К&
0€€€€€€€€€€€€€€€€€€А
Ъ Њ
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_15265s354@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€MА

 
p

 
™ "*Ґ'
 К
0€€€€€€€€€MА
Ъ Њ
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_15377s354@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€MА

 
p 

 
™ "*Ґ'
 К
0€€€€€€€€€MА
Ъ ѓ
,__inference_simple_rnn_8_layer_call_fn_15142354PҐM
FҐC
5Ъ2
0К-
inputs/0€€€€€€€€€€€€€€€€€€А

 
p

 
™ "&К#€€€€€€€€€€€€€€€€€€Аѓ
,__inference_simple_rnn_8_layer_call_fn_15153354PҐM
FҐC
5Ъ2
0К-
inputs/0€€€€€€€€€€€€€€€€€€А

 
p 

 
™ "&К#€€€€€€€€€€€€€€€€€€АЦ
,__inference_simple_rnn_8_layer_call_fn_15388f354@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€MА

 
p

 
™ "К€€€€€€€€€MАЦ
,__inference_simple_rnn_8_layer_call_fn_15399f354@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€MА

 
p 

 
™ "К€€€€€€€€€MАИ
L__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_15526Ј-/.\ҐY
RҐO
 К
inputs€€€€€€€€€P
'Ґ$
"К
states/0€€€€€€€€€@
p
™ "RҐO
HҐE
К
0/0€€€€€€€€€@
$Ъ!
К
0/1/0€€€€€€€€€@
Ъ И
L__inference_simple_rnn_cell_6_layer_call_and_return_conditional_losses_15543Ј-/.\ҐY
RҐO
 К
inputs€€€€€€€€€P
'Ґ$
"К
states/0€€€€€€€€€@
p 
™ "RҐO
HҐE
К
0/0€€€€€€€€€@
$Ъ!
К
0/1/0€€€€€€€€€@
Ъ я
1__inference_simple_rnn_cell_6_layer_call_fn_15557©-/.\ҐY
RҐO
 К
inputs€€€€€€€€€P
'Ґ$
"К
states/0€€€€€€€€€@
p
™ "DҐA
К
0€€€€€€€€€@
"Ъ
К
1/0€€€€€€€€€@я
1__inference_simple_rnn_cell_6_layer_call_fn_15571©-/.\ҐY
RҐO
 К
inputs€€€€€€€€€P
'Ґ$
"К
states/0€€€€€€€€€@
p 
™ "DҐA
К
0€€€€€€€€€@
"Ъ
К
1/0€€€€€€€€€@Л
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_15588Ї021]ҐZ
SҐP
 К
inputs€€€€€€€€€@
(Ґ%
#К 
states/0€€€€€€€€€А
p
™ "TҐQ
JҐG
К
0/0€€€€€€€€€А
%Ъ"
 К
0/1/0€€€€€€€€€А
Ъ Л
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_15605Ї021]ҐZ
SҐP
 К
inputs€€€€€€€€€@
(Ґ%
#К 
states/0€€€€€€€€€А
p 
™ "TҐQ
JҐG
К
0/0€€€€€€€€€А
%Ъ"
 К
0/1/0€€€€€€€€€А
Ъ в
1__inference_simple_rnn_cell_7_layer_call_fn_15619ђ021]ҐZ
SҐP
 К
inputs€€€€€€€€€@
(Ґ%
#К 
states/0€€€€€€€€€А
p
™ "FҐC
К
0€€€€€€€€€А
#Ъ 
К
1/0€€€€€€€€€Ав
1__inference_simple_rnn_cell_7_layer_call_fn_15633ђ021]ҐZ
SҐP
 К
inputs€€€€€€€€€@
(Ґ%
#К 
states/0€€€€€€€€€А
p 
™ "FҐC
К
0€€€€€€€€€А
#Ъ 
К
1/0€€€€€€€€€АМ
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_15650ї354^Ґ[
TҐQ
!К
inputs€€€€€€€€€А
(Ґ%
#К 
states/0€€€€€€€€€А
p
™ "TҐQ
JҐG
К
0/0€€€€€€€€€А
%Ъ"
 К
0/1/0€€€€€€€€€А
Ъ М
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_15667ї354^Ґ[
TҐQ
!К
inputs€€€€€€€€€А
(Ґ%
#К 
states/0€€€€€€€€€А
p 
™ "TҐQ
JҐG
К
0/0€€€€€€€€€А
%Ъ"
 К
0/1/0€€€€€€€€€А
Ъ г
1__inference_simple_rnn_cell_8_layer_call_fn_15681≠354^Ґ[
TҐQ
!К
inputs€€€€€€€€€А
(Ґ%
#К 
states/0€€€€€€€€€А
p
™ "FҐC
К
0€€€€€€€€€А
#Ъ 
К
1/0€€€€€€€€€Аг
1__inference_simple_rnn_cell_8_layer_call_fn_15695≠354^Ґ[
TҐQ
!К
inputs€€€€€€€€€А
(Ґ%
#К 
states/0€€€€€€€€€А
p 
™ "FҐC
К
0€€€€€€€€€А
#Ъ 
К
1/0€€€€€€€€€АЊ
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_15414m67<Ґ9
2Ґ/
%К"
inputs€€€€€€€€€MА
p

 
™ ")Ґ&
К
0€€€€€€€€€M
Ъ Њ
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_15429m67<Ґ9
2Ґ/
%К"
inputs€€€€€€€€€MА
p 

 
™ ")Ґ&
К
0€€€€€€€€€M
Ъ –
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_1546967EҐB
;Ґ8
.К+
inputs€€€€€€€€€€€€€€€€€€А
p

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€
Ъ –
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_1549167EҐB
;Ґ8
.К+
inputs€€€€€€€€€€€€€€€€€€А
p 

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€
Ъ Ц
2__inference_time_distributed_1_layer_call_fn_15438`67<Ґ9
2Ґ/
%К"
inputs€€€€€€€€€MА
p

 
™ "К€€€€€€€€€MЦ
2__inference_time_distributed_1_layer_call_fn_15447`67<Ґ9
2Ґ/
%К"
inputs€€€€€€€€€MА
p 

 
™ "К€€€€€€€€€M®
2__inference_time_distributed_1_layer_call_fn_15500r67EҐB
;Ґ8
.К+
inputs€€€€€€€€€€€€€€€€€€А
p

 
™ "%К"€€€€€€€€€€€€€€€€€€®
2__inference_time_distributed_1_layer_call_fn_15509r67EҐB
;Ґ8
.К+
inputs€€€€€€€€€€€€€€€€€€А
p 

 
™ "%К"€€€€€€€€€€€€€€€€€€