å
ò
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
"serve*2.4.12v2.4.1-0-g85c8b2a817f8ð

embedding_10/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ëd*(
shared_nameembedding_10/embeddings

+embedding_10/embeddings/Read/ReadVariableOpReadVariableOpembedding_10/embeddings* 
_output_shapes
:
ëd*
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
'simple_rnn_10/simple_rnn_cell_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d@*8
shared_name)'simple_rnn_10/simple_rnn_cell_10/kernel
£
;simple_rnn_10/simple_rnn_cell_10/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_10/simple_rnn_cell_10/kernel*
_output_shapes

:d@*
dtype0
¾
1simple_rnn_10/simple_rnn_cell_10/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*B
shared_name31simple_rnn_10/simple_rnn_cell_10/recurrent_kernel
·
Esimple_rnn_10/simple_rnn_cell_10/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_10/simple_rnn_cell_10/recurrent_kernel*
_output_shapes

:@@*
dtype0
¢
%simple_rnn_10/simple_rnn_cell_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%simple_rnn_10/simple_rnn_cell_10/bias

9simple_rnn_10/simple_rnn_cell_10/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_10/simple_rnn_cell_10/bias*
_output_shapes
:@*
dtype0

time_distributed_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@.**
shared_nametime_distributed_6/kernel

-time_distributed_6/kernel/Read/ReadVariableOpReadVariableOptime_distributed_6/kernel*
_output_shapes

:@.*
dtype0

time_distributed_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*(
shared_nametime_distributed_6/bias

+time_distributed_6/bias/Read/ReadVariableOpReadVariableOptime_distributed_6/bias*
_output_shapes
:.*
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
.Adam/simple_rnn_10/simple_rnn_cell_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d@*?
shared_name0.Adam/simple_rnn_10/simple_rnn_cell_10/kernel/m
±
BAdam/simple_rnn_10/simple_rnn_cell_10/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_10/simple_rnn_cell_10/kernel/m*
_output_shapes

:d@*
dtype0
Ì
8Adam/simple_rnn_10/simple_rnn_cell_10/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*I
shared_name:8Adam/simple_rnn_10/simple_rnn_cell_10/recurrent_kernel/m
Å
LAdam/simple_rnn_10/simple_rnn_cell_10/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_10/simple_rnn_cell_10/recurrent_kernel/m*
_output_shapes

:@@*
dtype0
°
,Adam/simple_rnn_10/simple_rnn_cell_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,Adam/simple_rnn_10/simple_rnn_cell_10/bias/m
©
@Adam/simple_rnn_10/simple_rnn_cell_10/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_10/simple_rnn_cell_10/bias/m*
_output_shapes
:@*
dtype0

 Adam/time_distributed_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@.*1
shared_name" Adam/time_distributed_6/kernel/m

4Adam/time_distributed_6/kernel/m/Read/ReadVariableOpReadVariableOp Adam/time_distributed_6/kernel/m*
_output_shapes

:@.*
dtype0

Adam/time_distributed_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*/
shared_name Adam/time_distributed_6/bias/m

2Adam/time_distributed_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_6/bias/m*
_output_shapes
:.*
dtype0
¸
.Adam/simple_rnn_10/simple_rnn_cell_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d@*?
shared_name0.Adam/simple_rnn_10/simple_rnn_cell_10/kernel/v
±
BAdam/simple_rnn_10/simple_rnn_cell_10/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_10/simple_rnn_cell_10/kernel/v*
_output_shapes

:d@*
dtype0
Ì
8Adam/simple_rnn_10/simple_rnn_cell_10/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*I
shared_name:8Adam/simple_rnn_10/simple_rnn_cell_10/recurrent_kernel/v
Å
LAdam/simple_rnn_10/simple_rnn_cell_10/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_10/simple_rnn_cell_10/recurrent_kernel/v*
_output_shapes

:@@*
dtype0
°
,Adam/simple_rnn_10/simple_rnn_cell_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,Adam/simple_rnn_10/simple_rnn_cell_10/bias/v
©
@Adam/simple_rnn_10/simple_rnn_cell_10/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_10/simple_rnn_cell_10/bias/v*
_output_shapes
:@*
dtype0

 Adam/time_distributed_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@.*1
shared_name" Adam/time_distributed_6/kernel/v

4Adam/time_distributed_6/kernel/v/Read/ReadVariableOpReadVariableOp Adam/time_distributed_6/kernel/v*
_output_shapes

:@.*
dtype0

Adam/time_distributed_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*/
shared_name Adam/time_distributed_6/bias/v

2Adam/time_distributed_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_6/bias/v*
_output_shapes
:.*
dtype0

NoOpNoOp
½)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ø(
valueî(Bë( Bä(
æ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
b


embeddings
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
]
	layer
	variables
trainable_variables
regularization_losses
	keras_api

iter

beta_1

beta_2
	decay
learning_ratemV mW!mX"mY#mZv[ v\!v]"v^#v_
*

0
1
 2
!3
"4
#5
#
0
 1
!2
"3
#4
 
­
	variables
$metrics
%layer_regularization_losses
trainable_variables
&non_trainable_variables
regularization_losses
'layer_metrics

(layers
 
ge
VARIABLE_VALUEembedding_10/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE


0
 
 
­
	variables
)metrics
*layer_regularization_losses
trainable_variables
+non_trainable_variables
regularization_losses
,layer_metrics

-layers
~

kernel
 recurrent_kernel
!bias
.	variables
/trainable_variables
0regularization_losses
1	keras_api
 

0
 1
!2

0
 1
!2
 
¹
	variables
2metrics
3layer_regularization_losses
trainable_variables
4non_trainable_variables

5states
regularization_losses
6layer_metrics

7layers
h

"kernel
#bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api

"0
#1

"0
#1
 
­
	variables
<metrics
=layer_regularization_losses
trainable_variables
>non_trainable_variables
regularization_losses
?layer_metrics

@layers
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
VARIABLE_VALUE'simple_rnn_10/simple_rnn_cell_10/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1simple_rnn_10/simple_rnn_cell_10/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%simple_rnn_10/simple_rnn_cell_10/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEtime_distributed_6/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEtime_distributed_6/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE

A0
B1
 


0
 

0
1
2
 
 


0
 
 

0
 1
!2

0
 1
!2
 
­
.	variables
Cmetrics
Dlayer_regularization_losses
/trainable_variables
Enon_trainable_variables
0regularization_losses
Flayer_metrics

Glayers
 
 
 
 
 

0

"0
#1

"0
#1
 
­
8	variables
Hmetrics
Ilayer_regularization_losses
9trainable_variables
Jnon_trainable_variables
:regularization_losses
Klayer_metrics

Llayers
 
 
 
 

0
4
	Mtotal
	Ncount
O	variables
P	keras_api
D
	Qtotal
	Rcount
S
_fn_kwargs
T	variables
U	keras_api
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

M0
N1

O	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Q0
R1

T	variables

VARIABLE_VALUE.Adam/simple_rnn_10/simple_rnn_cell_10/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE8Adam/simple_rnn_10/simple_rnn_cell_10/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/simple_rnn_10/simple_rnn_cell_10/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/time_distributed_6/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/time_distributed_6/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/simple_rnn_10/simple_rnn_cell_10/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE8Adam/simple_rnn_10/simple_rnn_cell_10/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/simple_rnn_10/simple_rnn_cell_10/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/time_distributed_6/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/time_distributed_6/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

"serving_default_embedding_10_inputPlaceholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCall"serving_default_embedding_10_inputembedding_10/embeddings'simple_rnn_10/simple_rnn_cell_10/kernel%simple_rnn_10/simple_rnn_cell_10/bias1simple_rnn_10/simple_rnn_cell_10/recurrent_kerneltime_distributed_6/kerneltime_distributed_6/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_13864
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+embedding_10/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp;simple_rnn_10/simple_rnn_cell_10/kernel/Read/ReadVariableOpEsimple_rnn_10/simple_rnn_cell_10/recurrent_kernel/Read/ReadVariableOp9simple_rnn_10/simple_rnn_cell_10/bias/Read/ReadVariableOp-time_distributed_6/kernel/Read/ReadVariableOp+time_distributed_6/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpBAdam/simple_rnn_10/simple_rnn_cell_10/kernel/m/Read/ReadVariableOpLAdam/simple_rnn_10/simple_rnn_cell_10/recurrent_kernel/m/Read/ReadVariableOp@Adam/simple_rnn_10/simple_rnn_cell_10/bias/m/Read/ReadVariableOp4Adam/time_distributed_6/kernel/m/Read/ReadVariableOp2Adam/time_distributed_6/bias/m/Read/ReadVariableOpBAdam/simple_rnn_10/simple_rnn_cell_10/kernel/v/Read/ReadVariableOpLAdam/simple_rnn_10/simple_rnn_cell_10/recurrent_kernel/v/Read/ReadVariableOp@Adam/simple_rnn_10/simple_rnn_cell_10/bias/v/Read/ReadVariableOp4Adam/time_distributed_6/kernel/v/Read/ReadVariableOp2Adam/time_distributed_6/bias/v/Read/ReadVariableOpConst*&
Tin
2	*
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
__inference__traced_save_14959

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_10/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate'simple_rnn_10/simple_rnn_cell_10/kernel1simple_rnn_10/simple_rnn_cell_10/recurrent_kernel%simple_rnn_10/simple_rnn_cell_10/biastime_distributed_6/kerneltime_distributed_6/biastotalcounttotal_1count_1.Adam/simple_rnn_10/simple_rnn_cell_10/kernel/m8Adam/simple_rnn_10/simple_rnn_cell_10/recurrent_kernel/m,Adam/simple_rnn_10/simple_rnn_cell_10/bias/m Adam/time_distributed_6/kernel/mAdam/time_distributed_6/bias/m.Adam/simple_rnn_10/simple_rnn_cell_10/kernel/v8Adam/simple_rnn_10/simple_rnn_cell_10/recurrent_kernel/v,Adam/simple_rnn_10/simple_rnn_cell_10/bias/v Adam/time_distributed_6/kernel/vAdam/time_distributed_6/bias/v*%
Tin
2*
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
!__inference__traced_restore_15044ô
Ë
¥
while_cond_14468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_14468___redundant_placeholder03
/while_while_cond_14468___redundant_placeholder13
/while_while_cond_14468___redundant_placeholder23
/while_while_cond_14468___redundant_placeholder3
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
ô	
Û
B__inference_dense_6_layer_call_and_return_conditional_losses_14852

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@.*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:.*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ë
¥
while_cond_13092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_13092___redundant_placeholder03
/while_while_cond_13092___redundant_placeholder13
/while_while_cond_13092___redundant_placeholder23
/while_while_cond_13092___redundant_placeholder3
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
Ë
Ä
M__inference_simple_rnn_cell_10_layer_call_and_return_conditional_losses_14813

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d@*
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
2:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0


M__inference_time_distributed_6_layer_call_and_return_conditional_losses_14761

inputs*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource
identity¢dense_6/BiasAdd/ReadVariableOp¢dense_6/MatMul/ReadVariableOpD
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
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¥
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:@.*
dtype02
dense_6/MatMul/ReadVariableOp
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/MatMul¤
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype02 
dense_6/BiasAdd/ReadVariableOp¡
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/BiasAddy
dense_6/SoftmaxSoftmaxdense_6/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/Softmaxq
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
value	B :.2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense_6/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ.2
	Reshape_1´
IdentityIdentityReshape_1:output:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


G__inference_sequential_7_layer_call_and_return_conditional_losses_13822

inputs
embedding_10_13804
simple_rnn_10_13807
simple_rnn_10_13809
simple_rnn_10_13811
time_distributed_6_13814
time_distributed_6_13816
identity¢$embedding_10/StatefulPartitionedCall¢%simple_rnn_10/StatefulPartitionedCall¢*time_distributed_6/StatefulPartitionedCall
$embedding_10/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_10_13804*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_10_layer_call_and_return_conditional_losses_134182&
$embedding_10/StatefulPartitionedCallí
%simple_rnn_10/StatefulPartitionedCallStatefulPartitionedCall-embedding_10/StatefulPartitionedCall:output:0simple_rnn_10_13807simple_rnn_10_13809simple_rnn_10_13811*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_136532'
%simple_rnn_10/StatefulPartitionedCallð
*time_distributed_6/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_10/StatefulPartitionedCall:output:0time_distributed_6_13814time_distributed_6_13816*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_137122,
*time_distributed_6/StatefulPartitionedCall
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2"
 time_distributed_6/Reshape/shapeÐ
time_distributed_6/ReshapeReshape.simple_rnn_10/StatefulPartitionedCall:output:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_6/Reshape
IdentityIdentity3time_distributed_6/StatefulPartitionedCall:output:0%^embedding_10/StatefulPartitionedCall&^simple_rnn_10/StatefulPartitionedCall+^time_distributed_6/StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::::2L
$embedding_10/StatefulPartitionedCall$embedding_10/StatefulPartitionedCall2N
%simple_rnn_10/StatefulPartitionedCall%simple_rnn_10/StatefulPartitionedCall2X
*time_distributed_6/StatefulPartitionedCall*time_distributed_6/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê	
´
2__inference_simple_rnn_cell_10_layer_call_fn_14841

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1¢StatefulPartitionedCall©
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
GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_10_layer_call_and_return_conditional_losses_128362
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
2:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ@:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
Ë
¥
while_cond_13209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_13209___redundant_placeholder03
/while_while_cond_13209___redundant_placeholder13
/while_while_cond_13209___redundant_placeholder23
/while_while_cond_13209___redundant_placeholder3
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
¡#

while_body_13210
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0$
 while_simple_rnn_cell_10_13232_0$
 while_simple_rnn_cell_10_13234_0$
 while_simple_rnn_cell_10_13236_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor"
while_simple_rnn_cell_10_13232"
while_simple_rnn_cell_10_13234"
while_simple_rnn_cell_10_13236¢0while/simple_rnn_cell_10/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
0while/simple_rnn_cell_10/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_10_13232_0 while_simple_rnn_cell_10_13234_0 while_simple_rnn_cell_10_13236_0*
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
GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_10_layer_call_and_return_conditional_losses_1283622
0while/simple_rnn_cell_10/StatefulPartitionedCallý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_10/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:01^while/simple_rnn_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity¤
while/Identity_1Identitywhile_while_maximum_iterations1^while/simple_rnn_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:01^while/simple_rnn_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2À
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:01^while/simple_rnn_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ð
while/Identity_4Identity9while/simple_rnn_cell_10/StatefulPartitionedCall:output:11^while/simple_rnn_cell_10/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_10_13232 while_simple_rnn_cell_10_13232_0"B
while_simple_rnn_cell_10_13234 while_simple_rnn_cell_10_13234_0"B
while_simple_rnn_cell_10_13236 while_simple_rnn_cell_10_13236_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2d
0while/simple_rnn_cell_10/StatefulPartitionedCall0while/simple_rnn_cell_10/StatefulPartitionedCall: 
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
Â

G__inference_sequential_7_layer_call_and_return_conditional_losses_13739
embedding_10_input
embedding_10_13427
simple_rnn_10_13676
simple_rnn_10_13678
simple_rnn_10_13680
time_distributed_6_13731
time_distributed_6_13733
identity¢$embedding_10/StatefulPartitionedCall¢%simple_rnn_10/StatefulPartitionedCall¢*time_distributed_6/StatefulPartitionedCall 
$embedding_10/StatefulPartitionedCallStatefulPartitionedCallembedding_10_inputembedding_10_13427*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_10_layer_call_and_return_conditional_losses_134182&
$embedding_10/StatefulPartitionedCallí
%simple_rnn_10/StatefulPartitionedCallStatefulPartitionedCall-embedding_10/StatefulPartitionedCall:output:0simple_rnn_10_13676simple_rnn_10_13678simple_rnn_10_13680*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_135412'
%simple_rnn_10/StatefulPartitionedCallð
*time_distributed_6/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_10/StatefulPartitionedCall:output:0time_distributed_6_13731time_distributed_6_13733*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_136972,
*time_distributed_6/StatefulPartitionedCall
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2"
 time_distributed_6/Reshape/shapeÐ
time_distributed_6/ReshapeReshape.simple_rnn_10/StatefulPartitionedCall:output:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_6/Reshape
IdentityIdentity3time_distributed_6/StatefulPartitionedCall:output:0%^embedding_10/StatefulPartitionedCall&^simple_rnn_10/StatefulPartitionedCall+^time_distributed_6/StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::::2L
$embedding_10/StatefulPartitionedCall$embedding_10/StatefulPartitionedCall2N
%simple_rnn_10/StatefulPartitionedCall%simple_rnn_10/StatefulPartitionedCall2X
*time_distributed_6/StatefulPartitionedCall*time_distributed_6/StatefulPartitionedCall:\ X
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameembedding_10_input

´
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_13368

inputs
dense_6_13358
dense_6_13360
identity¢dense_6/StatefulPartitionedCallD
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
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape
dense_6/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_6_13358dense_6_13360*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_133042!
dense_6/StatefulPartitionedCallq
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
value	B :.2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape¤
	Reshape_1Reshape(dense_6/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ.2
	Reshape_1
IdentityIdentityReshape_1:output:0 ^dense_6/StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
H

H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_13541

inputs5
1simple_rnn_cell_10_matmul_readvariableop_resource6
2simple_rnn_cell_10_biasadd_readvariableop_resource7
3simple_rnn_cell_10_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_10/BiasAdd/ReadVariableOp¢(simple_rnn_cell_10/MatMul/ReadVariableOp¢*simple_rnn_cell_10/MatMul_1/ReadVariableOp¢whileD
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
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
valueB"ÿÿÿÿd   27
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_2Æ
(simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_10_matmul_readvariableop_resource*
_output_shapes

:d@*
dtype02*
(simple_rnn_cell_10/MatMul/ReadVariableOp¾
simple_rnn_cell_10/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/MatMulÅ
)simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_10/BiasAdd/ReadVariableOpÍ
simple_rnn_cell_10/BiasAddBiasAdd#simple_rnn_cell_10/MatMul:product:01simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/BiasAddÌ
*simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_10/MatMul_1/ReadVariableOpº
simple_rnn_cell_10/MatMul_1MatMulzeros:output:02simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/MatMul_1·
simple_rnn_cell_10/addAddV2#simple_rnn_cell_10/BiasAdd:output:0%simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/add
simple_rnn_cell_10/TanhTanhsimple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/Tanh
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_10_matmul_readvariableop_resource2simple_rnn_cell_10_biasadd_readvariableop_resource3simple_rnn_cell_10_matmul_1_readvariableop_resource*
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
while_body_13475*
condR
while_cond_13474*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
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
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
transpose_1ô
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_10/BiasAdd/ReadVariableOp)^simple_rnn_cell_10/MatMul/ReadVariableOp+^simple_rnn_cell_10/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿd:::2V
)simple_rnn_cell_10/BiasAdd/ReadVariableOp)simple_rnn_cell_10/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_10/MatMul/ReadVariableOp(simple_rnn_cell_10/MatMul/ReadVariableOp2X
*simple_rnn_cell_10/MatMul_1/ReadVariableOp*simple_rnn_cell_10/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
D
¨
simple_rnn_10_while_body_139168
4simple_rnn_10_while_simple_rnn_10_while_loop_counter>
:simple_rnn_10_while_simple_rnn_10_while_maximum_iterations#
simple_rnn_10_while_placeholder%
!simple_rnn_10_while_placeholder_1%
!simple_rnn_10_while_placeholder_27
3simple_rnn_10_while_simple_rnn_10_strided_slice_1_0s
osimple_rnn_10_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_10_tensorarrayunstack_tensorlistfromtensor_0K
Gsimple_rnn_10_while_simple_rnn_cell_10_matmul_readvariableop_resource_0L
Hsimple_rnn_10_while_simple_rnn_cell_10_biasadd_readvariableop_resource_0M
Isimple_rnn_10_while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0 
simple_rnn_10_while_identity"
simple_rnn_10_while_identity_1"
simple_rnn_10_while_identity_2"
simple_rnn_10_while_identity_3"
simple_rnn_10_while_identity_45
1simple_rnn_10_while_simple_rnn_10_strided_slice_1q
msimple_rnn_10_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_10_tensorarrayunstack_tensorlistfromtensorI
Esimple_rnn_10_while_simple_rnn_cell_10_matmul_readvariableop_resourceJ
Fsimple_rnn_10_while_simple_rnn_cell_10_biasadd_readvariableop_resourceK
Gsimple_rnn_10_while_simple_rnn_cell_10_matmul_1_readvariableop_resource¢=simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp¢<simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp¢>simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOpß
Esimple_rnn_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2G
Esimple_rnn_10/while/TensorArrayV2Read/TensorListGetItem/element_shape§
7simple_rnn_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_10_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_10_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_10_while_placeholderNsimple_rnn_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype029
7simple_rnn_10/while/TensorArrayV2Read/TensorListGetItem
<simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_10_while_simple_rnn_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:d@*
dtype02>
<simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp 
-simple_rnn_10/while/simple_rnn_cell_10/MatMulMatMul>simple_rnn_10/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-simple_rnn_10/while/simple_rnn_cell_10/MatMul
=simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_10_while_simple_rnn_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02?
=simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp
.simple_rnn_10/while/simple_rnn_cell_10/BiasAddBiasAdd7simple_rnn_10/while/simple_rnn_cell_10/MatMul:product:0Esimple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@20
.simple_rnn_10/while/simple_rnn_cell_10/BiasAdd
>simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_10_while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02@
>simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp
/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1MatMul!simple_rnn_10_while_placeholder_2Fsimple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@21
/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1
*simple_rnn_10/while/simple_rnn_cell_10/addAddV27simple_rnn_10/while/simple_rnn_cell_10/BiasAdd:output:09simple_rnn_10/while/simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*simple_rnn_10/while/simple_rnn_cell_10/addÄ
+simple_rnn_10/while/simple_rnn_cell_10/TanhTanh.simple_rnn_10/while/simple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+simple_rnn_10/while/simple_rnn_cell_10/Tanh«
8simple_rnn_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_10_while_placeholder_1simple_rnn_10_while_placeholder/simple_rnn_10/while/simple_rnn_cell_10/Tanh:y:0*
_output_shapes
: *
element_dtype02:
8simple_rnn_10/while/TensorArrayV2Write/TensorListSetItemx
simple_rnn_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_10/while/add/y¡
simple_rnn_10/while/addAddV2simple_rnn_10_while_placeholder"simple_rnn_10/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_10/while/add|
simple_rnn_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_10/while/add_1/y¼
simple_rnn_10/while/add_1AddV24simple_rnn_10_while_simple_rnn_10_while_loop_counter$simple_rnn_10/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_10/while/add_1È
simple_rnn_10/while/IdentityIdentitysimple_rnn_10/while/add_1:z:0>^simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp=^simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp?^simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_10/while/Identityé
simple_rnn_10/while/Identity_1Identity:simple_rnn_10_while_simple_rnn_10_while_maximum_iterations>^simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp=^simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp?^simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_10/while/Identity_1Ê
simple_rnn_10/while/Identity_2Identitysimple_rnn_10/while/add:z:0>^simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp=^simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp?^simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_10/while/Identity_2÷
simple_rnn_10/while/Identity_3IdentityHsimple_rnn_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp=^simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp?^simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_10/while/Identity_3ï
simple_rnn_10/while/Identity_4Identity/simple_rnn_10/while/simple_rnn_cell_10/Tanh:y:0>^simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp=^simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp?^simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
simple_rnn_10/while/Identity_4"E
simple_rnn_10_while_identity%simple_rnn_10/while/Identity:output:0"I
simple_rnn_10_while_identity_1'simple_rnn_10/while/Identity_1:output:0"I
simple_rnn_10_while_identity_2'simple_rnn_10/while/Identity_2:output:0"I
simple_rnn_10_while_identity_3'simple_rnn_10/while/Identity_3:output:0"I
simple_rnn_10_while_identity_4'simple_rnn_10/while/Identity_4:output:0"h
1simple_rnn_10_while_simple_rnn_10_strided_slice_13simple_rnn_10_while_simple_rnn_10_strided_slice_1_0"
Fsimple_rnn_10_while_simple_rnn_cell_10_biasadd_readvariableop_resourceHsimple_rnn_10_while_simple_rnn_cell_10_biasadd_readvariableop_resource_0"
Gsimple_rnn_10_while_simple_rnn_cell_10_matmul_1_readvariableop_resourceIsimple_rnn_10_while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0"
Esimple_rnn_10_while_simple_rnn_cell_10_matmul_readvariableop_resourceGsimple_rnn_10_while_simple_rnn_cell_10_matmul_readvariableop_resource_0"à
msimple_rnn_10_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_10_tensorarrayunstack_tensorlistfromtensorosimple_rnn_10_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_10_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2~
=simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp=simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp2|
<simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp<simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp2
>simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp>simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp: 
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


2__inference_time_distributed_6_layer_call_fn_14708

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_136972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


G__inference_sequential_7_layer_call_and_return_conditional_losses_13784

inputs
embedding_10_13766
simple_rnn_10_13769
simple_rnn_10_13771
simple_rnn_10_13773
time_distributed_6_13776
time_distributed_6_13778
identity¢$embedding_10/StatefulPartitionedCall¢%simple_rnn_10/StatefulPartitionedCall¢*time_distributed_6/StatefulPartitionedCall
$embedding_10/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_10_13766*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_10_layer_call_and_return_conditional_losses_134182&
$embedding_10/StatefulPartitionedCallí
%simple_rnn_10/StatefulPartitionedCallStatefulPartitionedCall-embedding_10/StatefulPartitionedCall:output:0simple_rnn_10_13769simple_rnn_10_13771simple_rnn_10_13773*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_135412'
%simple_rnn_10/StatefulPartitionedCallð
*time_distributed_6/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_10/StatefulPartitionedCall:output:0time_distributed_6_13776time_distributed_6_13778*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_136972,
*time_distributed_6/StatefulPartitionedCall
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2"
 time_distributed_6/Reshape/shapeÐ
time_distributed_6/ReshapeReshape.simple_rnn_10/StatefulPartitionedCall:output:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_6/Reshape
IdentityIdentity3time_distributed_6/StatefulPartitionedCall:output:0%^embedding_10/StatefulPartitionedCall&^simple_rnn_10/StatefulPartitionedCall+^time_distributed_6/StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::::2L
$embedding_10/StatefulPartitionedCall$embedding_10/StatefulPartitionedCall2N
%simple_rnn_10/StatefulPartitionedCall%simple_rnn_10/StatefulPartitionedCall2X
*time_distributed_6/StatefulPartitionedCall*time_distributed_6/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì<
ö
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_13273

inputs
simple_rnn_cell_10_13198
simple_rnn_cell_10_13200
simple_rnn_cell_10_13202
identity¢*simple_rnn_cell_10/StatefulPartitionedCall¢whileD
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
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
valueB"ÿÿÿÿd   27
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_2
*simple_rnn_cell_10/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_10_13198simple_rnn_cell_10_13200simple_rnn_cell_10_13202*
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
GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_10_layer_call_and_return_conditional_losses_128362,
*simple_rnn_cell_10/StatefulPartitionedCall
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
while/loop_counter÷
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_10_13198simple_rnn_cell_10_13200simple_rnn_cell_10_13202*
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
while_body_13210*
condR
while_cond_13209*8
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
IdentityIdentitytranspose_1:y:0+^simple_rnn_cell_10/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:::2X
*simple_rnn_cell_10/StatefulPartitionedCall*simple_rnn_cell_10/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

´
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_13397

inputs
dense_6_13387
dense_6_13389
identity¢dense_6/StatefulPartitionedCallD
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
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape
dense_6/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_6_13387dense_6_13389*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_133042!
dense_6/StatefulPartitionedCallq
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
value	B :.2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape¤
	Reshape_1Reshape(dense_6/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ.2
	Reshape_1
IdentityIdentityReshape_1:output:0 ^dense_6/StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ÆH

H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_14401
inputs_05
1simple_rnn_cell_10_matmul_readvariableop_resource6
2simple_rnn_cell_10_biasadd_readvariableop_resource7
3simple_rnn_cell_10_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_10/BiasAdd/ReadVariableOp¢(simple_rnn_cell_10/MatMul/ReadVariableOp¢*simple_rnn_cell_10/MatMul_1/ReadVariableOp¢whileF
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
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
valueB"ÿÿÿÿd   27
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_2Æ
(simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_10_matmul_readvariableop_resource*
_output_shapes

:d@*
dtype02*
(simple_rnn_cell_10/MatMul/ReadVariableOp¾
simple_rnn_cell_10/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/MatMulÅ
)simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_10/BiasAdd/ReadVariableOpÍ
simple_rnn_cell_10/BiasAddBiasAdd#simple_rnn_cell_10/MatMul:product:01simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/BiasAddÌ
*simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_10/MatMul_1/ReadVariableOpº
simple_rnn_cell_10/MatMul_1MatMulzeros:output:02simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/MatMul_1·
simple_rnn_cell_10/addAddV2#simple_rnn_cell_10/BiasAdd:output:0%simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/add
simple_rnn_cell_10/TanhTanhsimple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/Tanh
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_10_matmul_readvariableop_resource2simple_rnn_cell_10_biasadd_readvariableop_resource3simple_rnn_cell_10_matmul_1_readvariableop_resource*
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
while_body_14335*
condR
while_cond_14334*8
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
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_10/BiasAdd/ReadVariableOp)^simple_rnn_cell_10/MatMul/ReadVariableOp+^simple_rnn_cell_10/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:::2V
)simple_rnn_cell_10/BiasAdd/ReadVariableOp)simple_rnn_cell_10/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_10/MatMul/ReadVariableOp(simple_rnn_cell_10/MatMul/ReadVariableOp2X
*simple_rnn_cell_10/MatMul_1/ReadVariableOp*simple_rnn_cell_10/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
ã
À
#__inference_signature_wrapper_13864
embedding_10_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_127702
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameembedding_10_input
Î
r
,__inference_embedding_10_layer_call_fn_14177

inputs
unknown
identity¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_10_layer_call_and_return_conditional_losses_134182
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


2__inference_time_distributed_6_layer_call_fn_14717

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_137122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
4

while_body_14223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_10_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_10_matmul_readvariableop_resource<
8while_simple_rnn_cell_10_biasadd_readvariableop_resource=
9while_simple_rnn_cell_10_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_10/MatMul/ReadVariableOp¢0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÚ
.while/simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:d@*
dtype020
.while/simple_rnn_cell_10/MatMul/ReadVariableOpè
while/simple_rnn_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_10/MatMulÙ
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpå
 while/simple_rnn_cell_10/BiasAddBiasAdd)while/simple_rnn_cell_10/MatMul:product:07while/simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_10/BiasAddà
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpÑ
!while/simple_rnn_cell_10/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/simple_rnn_cell_10/MatMul_1Ï
while/simple_rnn_cell_10/addAddV2)while/simple_rnn_cell_10/BiasAdd:output:0+while/simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_10/add
while/simple_rnn_cell_10/TanhTanh while/simple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_10/Tanhå
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_10/Tanh:y:0*
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
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity!while/simple_rnn_cell_10/Tanh:y:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_10_biasadd_readvariableop_resource:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_10_matmul_1_readvariableop_resource;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_10_matmul_readvariableop_resource9while_simple_rnn_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2b
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_10/MatMul/ReadVariableOp.while/simple_rnn_cell_10/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOp0while/simple_rnn_cell_10/MatMul_1/ReadVariableOp: 
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
Â

G__inference_sequential_7_layer_call_and_return_conditional_losses_13760
embedding_10_input
embedding_10_13742
simple_rnn_10_13745
simple_rnn_10_13747
simple_rnn_10_13749
time_distributed_6_13752
time_distributed_6_13754
identity¢$embedding_10/StatefulPartitionedCall¢%simple_rnn_10/StatefulPartitionedCall¢*time_distributed_6/StatefulPartitionedCall 
$embedding_10/StatefulPartitionedCallStatefulPartitionedCallembedding_10_inputembedding_10_13742*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_10_layer_call_and_return_conditional_losses_134182&
$embedding_10/StatefulPartitionedCallí
%simple_rnn_10/StatefulPartitionedCallStatefulPartitionedCall-embedding_10/StatefulPartitionedCall:output:0simple_rnn_10_13745simple_rnn_10_13747simple_rnn_10_13749*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_136532'
%simple_rnn_10/StatefulPartitionedCallð
*time_distributed_6/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_10/StatefulPartitionedCall:output:0time_distributed_6_13752time_distributed_6_13754*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_137122,
*time_distributed_6/StatefulPartitionedCall
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2"
 time_distributed_6/Reshape/shapeÐ
time_distributed_6/ReshapeReshape.simple_rnn_10/StatefulPartitionedCall:output:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_6/Reshape
IdentityIdentity3time_distributed_6/StatefulPartitionedCall:output:0%^embedding_10/StatefulPartitionedCall&^simple_rnn_10/StatefulPartitionedCall+^time_distributed_6/StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::::2L
$embedding_10/StatefulPartitionedCall$embedding_10/StatefulPartitionedCall2N
%simple_rnn_10/StatefulPartitionedCall%simple_rnn_10/StatefulPartitionedCall2X
*time_distributed_6/StatefulPartitionedCall*time_distributed_6/StatefulPartitionedCall:\ X
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameembedding_10_input
â	

G__inference_embedding_10_layer_call_and_return_conditional_losses_14170

inputs
embedding_lookup_14164
identity¢embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Castü
embedding_lookupResourceGatherembedding_lookup_14164Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/14164*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype02
embedding_lookupí
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/14164*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
embedding_lookup/Identity¡
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
4

while_body_14469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_10_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_10_matmul_readvariableop_resource<
8while_simple_rnn_cell_10_biasadd_readvariableop_resource=
9while_simple_rnn_cell_10_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_10/MatMul/ReadVariableOp¢0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÚ
.while/simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:d@*
dtype020
.while/simple_rnn_cell_10/MatMul/ReadVariableOpè
while/simple_rnn_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_10/MatMulÙ
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpå
 while/simple_rnn_cell_10/BiasAddBiasAdd)while/simple_rnn_cell_10/MatMul:product:07while/simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_10/BiasAddà
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpÑ
!while/simple_rnn_cell_10/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/simple_rnn_cell_10/MatMul_1Ï
while/simple_rnn_cell_10/addAddV2)while/simple_rnn_cell_10/BiasAdd:output:0+while/simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_10/add
while/simple_rnn_cell_10/TanhTanh while/simple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_10/Tanhå
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_10/Tanh:y:0*
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
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity!while/simple_rnn_cell_10/Tanh:y:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_10_biasadd_readvariableop_resource:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_10_matmul_1_readvariableop_resource;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_10_matmul_readvariableop_resource9while_simple_rnn_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2b
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_10/MatMul/ReadVariableOp.while/simple_rnn_cell_10/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOp0while/simple_rnn_cell_10/MatMul_1/ReadVariableOp: 
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
Å
Â
M__inference_simple_rnn_cell_10_layer_call_and_return_conditional_losses_12836

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d@*
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
2:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
Ë
¥
while_cond_14334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_14334___redundant_placeholder03
/while_while_cond_14334___redundant_placeholder13
/while_while_cond_14334___redundant_placeholder23
/while_while_cond_14334___redundant_placeholder3
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
Ü
¦
+sequential_7_simple_rnn_10_while_cond_12690R
Nsequential_7_simple_rnn_10_while_sequential_7_simple_rnn_10_while_loop_counterX
Tsequential_7_simple_rnn_10_while_sequential_7_simple_rnn_10_while_maximum_iterations0
,sequential_7_simple_rnn_10_while_placeholder2
.sequential_7_simple_rnn_10_while_placeholder_12
.sequential_7_simple_rnn_10_while_placeholder_2T
Psequential_7_simple_rnn_10_while_less_sequential_7_simple_rnn_10_strided_slice_1i
esequential_7_simple_rnn_10_while_sequential_7_simple_rnn_10_while_cond_12690___redundant_placeholder0i
esequential_7_simple_rnn_10_while_sequential_7_simple_rnn_10_while_cond_12690___redundant_placeholder1i
esequential_7_simple_rnn_10_while_sequential_7_simple_rnn_10_while_cond_12690___redundant_placeholder2i
esequential_7_simple_rnn_10_while_sequential_7_simple_rnn_10_while_cond_12690___redundant_placeholder3-
)sequential_7_simple_rnn_10_while_identity
÷
%sequential_7/simple_rnn_10/while/LessLess,sequential_7_simple_rnn_10_while_placeholderPsequential_7_simple_rnn_10_while_less_sequential_7_simple_rnn_10_strided_slice_1*
T0*
_output_shapes
: 2'
%sequential_7/simple_rnn_10/while/Less®
)sequential_7/simple_rnn_10/while/IdentityIdentity)sequential_7/simple_rnn_10/while/Less:z:0*
T0
*
_output_shapes
: 2+
)sequential_7/simple_rnn_10/while/Identity"_
)sequential_7_simple_rnn_10_while_identity2sequential_7/simple_rnn_10/while/Identity:output:0*@
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


M__inference_time_distributed_6_layer_call_and_return_conditional_losses_14739

inputs*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource
identity¢dense_6/BiasAdd/ReadVariableOp¢dense_6/MatMul/ReadVariableOpD
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
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¥
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:@.*
dtype02
dense_6/MatMul/ReadVariableOp
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/MatMul¤
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype02 
dense_6/BiasAdd/ReadVariableOp¡
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/BiasAddy
dense_6/SoftmaxSoftmaxdense_6/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/Softmaxq
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
value	B :.2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense_6/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ.2
	Reshape_1´
IdentityIdentityReshape_1:output:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
H

H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_14535

inputs5
1simple_rnn_cell_10_matmul_readvariableop_resource6
2simple_rnn_cell_10_biasadd_readvariableop_resource7
3simple_rnn_cell_10_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_10/BiasAdd/ReadVariableOp¢(simple_rnn_cell_10/MatMul/ReadVariableOp¢*simple_rnn_cell_10/MatMul_1/ReadVariableOp¢whileD
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
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
valueB"ÿÿÿÿd   27
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_2Æ
(simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_10_matmul_readvariableop_resource*
_output_shapes

:d@*
dtype02*
(simple_rnn_cell_10/MatMul/ReadVariableOp¾
simple_rnn_cell_10/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/MatMulÅ
)simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_10/BiasAdd/ReadVariableOpÍ
simple_rnn_cell_10/BiasAddBiasAdd#simple_rnn_cell_10/MatMul:product:01simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/BiasAddÌ
*simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_10/MatMul_1/ReadVariableOpº
simple_rnn_cell_10/MatMul_1MatMulzeros:output:02simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/MatMul_1·
simple_rnn_cell_10/addAddV2#simple_rnn_cell_10/BiasAdd:output:0%simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/add
simple_rnn_cell_10/TanhTanhsimple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/Tanh
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_10_matmul_readvariableop_resource2simple_rnn_cell_10_biasadd_readvariableop_resource3simple_rnn_cell_10_matmul_1_readvariableop_resource*
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
while_body_14469*
condR
while_cond_14468*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
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
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
transpose_1ô
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_10/BiasAdd/ReadVariableOp)^simple_rnn_cell_10/MatMul/ReadVariableOp+^simple_rnn_cell_10/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿd:::2V
)simple_rnn_cell_10/BiasAdd/ReadVariableOp)simple_rnn_cell_10/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_10/MatMul/ReadVariableOp(simple_rnn_cell_10/MatMul/ReadVariableOp2X
*simple_rnn_cell_10/MatMul_1/ReadVariableOp*simple_rnn_cell_10/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
öR
²
+sequential_7_simple_rnn_10_while_body_12691R
Nsequential_7_simple_rnn_10_while_sequential_7_simple_rnn_10_while_loop_counterX
Tsequential_7_simple_rnn_10_while_sequential_7_simple_rnn_10_while_maximum_iterations0
,sequential_7_simple_rnn_10_while_placeholder2
.sequential_7_simple_rnn_10_while_placeholder_12
.sequential_7_simple_rnn_10_while_placeholder_2Q
Msequential_7_simple_rnn_10_while_sequential_7_simple_rnn_10_strided_slice_1_0
sequential_7_simple_rnn_10_while_tensorarrayv2read_tensorlistgetitem_sequential_7_simple_rnn_10_tensorarrayunstack_tensorlistfromtensor_0X
Tsequential_7_simple_rnn_10_while_simple_rnn_cell_10_matmul_readvariableop_resource_0Y
Usequential_7_simple_rnn_10_while_simple_rnn_cell_10_biasadd_readvariableop_resource_0Z
Vsequential_7_simple_rnn_10_while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0-
)sequential_7_simple_rnn_10_while_identity/
+sequential_7_simple_rnn_10_while_identity_1/
+sequential_7_simple_rnn_10_while_identity_2/
+sequential_7_simple_rnn_10_while_identity_3/
+sequential_7_simple_rnn_10_while_identity_4O
Ksequential_7_simple_rnn_10_while_sequential_7_simple_rnn_10_strided_slice_1
sequential_7_simple_rnn_10_while_tensorarrayv2read_tensorlistgetitem_sequential_7_simple_rnn_10_tensorarrayunstack_tensorlistfromtensorV
Rsequential_7_simple_rnn_10_while_simple_rnn_cell_10_matmul_readvariableop_resourceW
Ssequential_7_simple_rnn_10_while_simple_rnn_cell_10_biasadd_readvariableop_resourceX
Tsequential_7_simple_rnn_10_while_simple_rnn_cell_10_matmul_1_readvariableop_resource¢Jsequential_7/simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp¢Isequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp¢Ksequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOpù
Rsequential_7/simple_rnn_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2T
Rsequential_7/simple_rnn_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeö
Dsequential_7/simple_rnn_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_7_simple_rnn_10_while_tensorarrayv2read_tensorlistgetitem_sequential_7_simple_rnn_10_tensorarrayunstack_tensorlistfromtensor_0,sequential_7_simple_rnn_10_while_placeholder[sequential_7/simple_rnn_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02F
Dsequential_7/simple_rnn_10/while/TensorArrayV2Read/TensorListGetItem«
Isequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOpTsequential_7_simple_rnn_10_while_simple_rnn_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:d@*
dtype02K
Isequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOpÔ
:sequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMulMatMulKsequential_7/simple_rnn_10/while/TensorArrayV2Read/TensorListGetItem:item:0Qsequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2<
:sequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMulª
Jsequential_7/simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOpUsequential_7_simple_rnn_10_while_simple_rnn_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02L
Jsequential_7/simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpÑ
;sequential_7/simple_rnn_10/while/simple_rnn_cell_10/BiasAddBiasAddDsequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul:product:0Rsequential_7/simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2=
;sequential_7/simple_rnn_10/while/simple_rnn_cell_10/BiasAdd±
Ksequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOpVsequential_7_simple_rnn_10_while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02M
Ksequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp½
<sequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1MatMul.sequential_7_simple_rnn_10_while_placeholder_2Ssequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2>
<sequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1»
7sequential_7/simple_rnn_10/while/simple_rnn_cell_10/addAddV2Dsequential_7/simple_rnn_10/while/simple_rnn_cell_10/BiasAdd:output:0Fsequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@29
7sequential_7/simple_rnn_10/while/simple_rnn_cell_10/addë
8sequential_7/simple_rnn_10/while/simple_rnn_cell_10/TanhTanh;sequential_7/simple_rnn_10/while/simple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2:
8sequential_7/simple_rnn_10/while/simple_rnn_cell_10/Tanhì
Esequential_7/simple_rnn_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.sequential_7_simple_rnn_10_while_placeholder_1,sequential_7_simple_rnn_10_while_placeholder<sequential_7/simple_rnn_10/while/simple_rnn_cell_10/Tanh:y:0*
_output_shapes
: *
element_dtype02G
Esequential_7/simple_rnn_10/while/TensorArrayV2Write/TensorListSetItem
&sequential_7/simple_rnn_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_7/simple_rnn_10/while/add/yÕ
$sequential_7/simple_rnn_10/while/addAddV2,sequential_7_simple_rnn_10_while_placeholder/sequential_7/simple_rnn_10/while/add/y:output:0*
T0*
_output_shapes
: 2&
$sequential_7/simple_rnn_10/while/add
(sequential_7/simple_rnn_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_7/simple_rnn_10/while/add_1/yý
&sequential_7/simple_rnn_10/while/add_1AddV2Nsequential_7_simple_rnn_10_while_sequential_7_simple_rnn_10_while_loop_counter1sequential_7/simple_rnn_10/while/add_1/y:output:0*
T0*
_output_shapes
: 2(
&sequential_7/simple_rnn_10/while/add_1
)sequential_7/simple_rnn_10/while/IdentityIdentity*sequential_7/simple_rnn_10/while/add_1:z:0K^sequential_7/simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpJ^sequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOpL^sequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2+
)sequential_7/simple_rnn_10/while/IdentityÄ
+sequential_7/simple_rnn_10/while/Identity_1IdentityTsequential_7_simple_rnn_10_while_sequential_7_simple_rnn_10_while_maximum_iterationsK^sequential_7/simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpJ^sequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOpL^sequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_7/simple_rnn_10/while/Identity_1
+sequential_7/simple_rnn_10/while/Identity_2Identity(sequential_7/simple_rnn_10/while/add:z:0K^sequential_7/simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpJ^sequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOpL^sequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_7/simple_rnn_10/while/Identity_2Å
+sequential_7/simple_rnn_10/while/Identity_3IdentityUsequential_7/simple_rnn_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:0K^sequential_7/simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpJ^sequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOpL^sequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_7/simple_rnn_10/while/Identity_3½
+sequential_7/simple_rnn_10/while/Identity_4Identity<sequential_7/simple_rnn_10/while/simple_rnn_cell_10/Tanh:y:0K^sequential_7/simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpJ^sequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOpL^sequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+sequential_7/simple_rnn_10/while/Identity_4"_
)sequential_7_simple_rnn_10_while_identity2sequential_7/simple_rnn_10/while/Identity:output:0"c
+sequential_7_simple_rnn_10_while_identity_14sequential_7/simple_rnn_10/while/Identity_1:output:0"c
+sequential_7_simple_rnn_10_while_identity_24sequential_7/simple_rnn_10/while/Identity_2:output:0"c
+sequential_7_simple_rnn_10_while_identity_34sequential_7/simple_rnn_10/while/Identity_3:output:0"c
+sequential_7_simple_rnn_10_while_identity_44sequential_7/simple_rnn_10/while/Identity_4:output:0"
Ksequential_7_simple_rnn_10_while_sequential_7_simple_rnn_10_strided_slice_1Msequential_7_simple_rnn_10_while_sequential_7_simple_rnn_10_strided_slice_1_0"¬
Ssequential_7_simple_rnn_10_while_simple_rnn_cell_10_biasadd_readvariableop_resourceUsequential_7_simple_rnn_10_while_simple_rnn_cell_10_biasadd_readvariableop_resource_0"®
Tsequential_7_simple_rnn_10_while_simple_rnn_cell_10_matmul_1_readvariableop_resourceVsequential_7_simple_rnn_10_while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0"ª
Rsequential_7_simple_rnn_10_while_simple_rnn_cell_10_matmul_readvariableop_resourceTsequential_7_simple_rnn_10_while_simple_rnn_cell_10_matmul_readvariableop_resource_0"
sequential_7_simple_rnn_10_while_tensorarrayv2read_tensorlistgetitem_sequential_7_simple_rnn_10_tensorarrayunstack_tensorlistfromtensorsequential_7_simple_rnn_10_while_tensorarrayv2read_tensorlistgetitem_sequential_7_simple_rnn_10_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2
Jsequential_7/simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpJsequential_7/simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp2
Isequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOpIsequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp2
Ksequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOpKsequential_7/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp: 
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
£

2__inference_time_distributed_6_layer_call_fn_14779

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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_133972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


-__inference_simple_rnn_10_layer_call_fn_14658

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
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_135412
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿd:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
4

while_body_14581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_10_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_10_matmul_readvariableop_resource<
8while_simple_rnn_cell_10_biasadd_readvariableop_resource=
9while_simple_rnn_cell_10_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_10/MatMul/ReadVariableOp¢0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÚ
.while/simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:d@*
dtype020
.while/simple_rnn_cell_10/MatMul/ReadVariableOpè
while/simple_rnn_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_10/MatMulÙ
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpå
 while/simple_rnn_cell_10/BiasAddBiasAdd)while/simple_rnn_cell_10/MatMul:product:07while/simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_10/BiasAddà
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpÑ
!while/simple_rnn_cell_10/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/simple_rnn_cell_10/MatMul_1Ï
while/simple_rnn_cell_10/addAddV2)while/simple_rnn_cell_10/BiasAdd:output:0+while/simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_10/add
while/simple_rnn_cell_10/TanhTanh while/simple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_10/Tanhå
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_10/Tanh:y:0*
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
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity!while/simple_rnn_cell_10/Tanh:y:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_10_biasadd_readvariableop_resource:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_10_matmul_1_readvariableop_resource;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_10_matmul_readvariableop_resource9while_simple_rnn_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2b
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_10/MatMul/ReadVariableOp.while/simple_rnn_cell_10/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOp0while/simple_rnn_cell_10/MatMul_1/ReadVariableOp: 
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

É
,__inference_sequential_7_layer_call_fn_13837
embedding_10_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall¼
StatefulPartitionedCallStatefulPartitionedCallembedding_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_138222
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameembedding_10_input

É
,__inference_sequential_7_layer_call_fn_13799
embedding_10_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall¼
StatefulPartitionedCallStatefulPartitionedCallembedding_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_137842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameembedding_10_input
ê	
´
2__inference_simple_rnn_cell_10_layer_call_fn_14827

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1¢StatefulPartitionedCall©
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
GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_10_layer_call_and_return_conditional_losses_128192
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
2:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ@:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
Ëz
«
G__inference_sequential_7_layer_call_and_return_conditional_losses_13995

inputs'
#embedding_10_embedding_lookup_13868C
?simple_rnn_10_simple_rnn_cell_10_matmul_readvariableop_resourceD
@simple_rnn_10_simple_rnn_cell_10_biasadd_readvariableop_resourceE
Asimple_rnn_10_simple_rnn_cell_10_matmul_1_readvariableop_resource=
9time_distributed_6_dense_6_matmul_readvariableop_resource>
:time_distributed_6_dense_6_biasadd_readvariableop_resource
identity¢embedding_10/embedding_lookup¢7simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOp¢6simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOp¢8simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOp¢simple_rnn_10/while¢1time_distributed_6/dense_6/BiasAdd/ReadVariableOp¢0time_distributed_6/dense_6/MatMul/ReadVariableOpx
embedding_10/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_10/Cast½
embedding_10/embedding_lookupResourceGather#embedding_10_embedding_lookup_13868embedding_10/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_10/embedding_lookup/13868*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype02
embedding_10/embedding_lookup¡
&embedding_10/embedding_lookup/IdentityIdentity&embedding_10/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_10/embedding_lookup/13868*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&embedding_10/embedding_lookup/IdentityÈ
(embedding_10/embedding_lookup/Identity_1Identity/embedding_10/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(embedding_10/embedding_lookup/Identity_1
simple_rnn_10/ShapeShape1embedding_10/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
simple_rnn_10/Shape
!simple_rnn_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!simple_rnn_10/strided_slice/stack
#simple_rnn_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_10/strided_slice/stack_1
#simple_rnn_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_10/strided_slice/stack_2¶
simple_rnn_10/strided_sliceStridedSlicesimple_rnn_10/Shape:output:0*simple_rnn_10/strided_slice/stack:output:0,simple_rnn_10/strided_slice/stack_1:output:0,simple_rnn_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_10/strided_slicex
simple_rnn_10/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_10/zeros/mul/y¤
simple_rnn_10/zeros/mulMul$simple_rnn_10/strided_slice:output:0"simple_rnn_10/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_10/zeros/mul{
simple_rnn_10/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
simple_rnn_10/zeros/Less/y
simple_rnn_10/zeros/LessLesssimple_rnn_10/zeros/mul:z:0#simple_rnn_10/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_10/zeros/Less~
simple_rnn_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_10/zeros/packed/1»
simple_rnn_10/zeros/packedPack$simple_rnn_10/strided_slice:output:0%simple_rnn_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_10/zeros/packed{
simple_rnn_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_10/zeros/Const­
simple_rnn_10/zerosFill#simple_rnn_10/zeros/packed:output:0"simple_rnn_10/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_10/zeros
simple_rnn_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_10/transpose/permÐ
simple_rnn_10/transpose	Transpose1embedding_10/embedding_lookup/Identity_1:output:0%simple_rnn_10/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
simple_rnn_10/transposey
simple_rnn_10/Shape_1Shapesimple_rnn_10/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_10/Shape_1
#simple_rnn_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_10/strided_slice_1/stack
%simple_rnn_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_10/strided_slice_1/stack_1
%simple_rnn_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_10/strided_slice_1/stack_2Â
simple_rnn_10/strided_slice_1StridedSlicesimple_rnn_10/Shape_1:output:0,simple_rnn_10/strided_slice_1/stack:output:0.simple_rnn_10/strided_slice_1/stack_1:output:0.simple_rnn_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_10/strided_slice_1¡
)simple_rnn_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2+
)simple_rnn_10/TensorArrayV2/element_shapeê
simple_rnn_10/TensorArrayV2TensorListReserve2simple_rnn_10/TensorArrayV2/element_shape:output:0&simple_rnn_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_10/TensorArrayV2Û
Csimple_rnn_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2E
Csimple_rnn_10/TensorArrayUnstack/TensorListFromTensor/element_shape°
5simple_rnn_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_10/transpose:y:0Lsimple_rnn_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5simple_rnn_10/TensorArrayUnstack/TensorListFromTensor
#simple_rnn_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_10/strided_slice_2/stack
%simple_rnn_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_10/strided_slice_2/stack_1
%simple_rnn_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_10/strided_slice_2/stack_2Ð
simple_rnn_10/strided_slice_2StridedSlicesimple_rnn_10/transpose:y:0,simple_rnn_10/strided_slice_2/stack:output:0.simple_rnn_10/strided_slice_2/stack_1:output:0.simple_rnn_10/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
simple_rnn_10/strided_slice_2ð
6simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOp?simple_rnn_10_simple_rnn_cell_10_matmul_readvariableop_resource*
_output_shapes

:d@*
dtype028
6simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOpö
'simple_rnn_10/simple_rnn_cell_10/MatMulMatMul&simple_rnn_10/strided_slice_2:output:0>simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'simple_rnn_10/simple_rnn_cell_10/MatMulï
7simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_10_simple_rnn_cell_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype029
7simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOp
(simple_rnn_10/simple_rnn_cell_10/BiasAddBiasAdd1simple_rnn_10/simple_rnn_cell_10/MatMul:product:0?simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(simple_rnn_10/simple_rnn_cell_10/BiasAddö
8simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_10_simple_rnn_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02:
8simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOpò
)simple_rnn_10/simple_rnn_cell_10/MatMul_1MatMulsimple_rnn_10/zeros:output:0@simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)simple_rnn_10/simple_rnn_cell_10/MatMul_1ï
$simple_rnn_10/simple_rnn_cell_10/addAddV21simple_rnn_10/simple_rnn_cell_10/BiasAdd:output:03simple_rnn_10/simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$simple_rnn_10/simple_rnn_cell_10/add²
%simple_rnn_10/simple_rnn_cell_10/TanhTanh(simple_rnn_10/simple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%simple_rnn_10/simple_rnn_cell_10/Tanh«
+simple_rnn_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2-
+simple_rnn_10/TensorArrayV2_1/element_shapeð
simple_rnn_10/TensorArrayV2_1TensorListReserve4simple_rnn_10/TensorArrayV2_1/element_shape:output:0&simple_rnn_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_10/TensorArrayV2_1j
simple_rnn_10/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_10/time
&simple_rnn_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&simple_rnn_10/while/maximum_iterations
 simple_rnn_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 simple_rnn_10/while/loop_counter
simple_rnn_10/whileWhile)simple_rnn_10/while/loop_counter:output:0/simple_rnn_10/while/maximum_iterations:output:0simple_rnn_10/time:output:0&simple_rnn_10/TensorArrayV2_1:handle:0simple_rnn_10/zeros:output:0&simple_rnn_10/strided_slice_1:output:0Esimple_rnn_10/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_10_simple_rnn_cell_10_matmul_readvariableop_resource@simple_rnn_10_simple_rnn_cell_10_biasadd_readvariableop_resourceAsimple_rnn_10_simple_rnn_cell_10_matmul_1_readvariableop_resource*
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
simple_rnn_10_while_body_13916**
cond"R 
simple_rnn_10_while_cond_13915*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
simple_rnn_10/whileÑ
>simple_rnn_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2@
>simple_rnn_10/TensorArrayV2Stack/TensorListStack/element_shape¡
0simple_rnn_10/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_10/while:output:3Gsimple_rnn_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype022
0simple_rnn_10/TensorArrayV2Stack/TensorListStack
#simple_rnn_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2%
#simple_rnn_10/strided_slice_3/stack
%simple_rnn_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%simple_rnn_10/strided_slice_3/stack_1
%simple_rnn_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_10/strided_slice_3/stack_2î
simple_rnn_10/strided_slice_3StridedSlice9simple_rnn_10/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_10/strided_slice_3/stack:output:0.simple_rnn_10/strided_slice_3/stack_1:output:0.simple_rnn_10/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn_10/strided_slice_3
simple_rnn_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
simple_rnn_10/transpose_1/permÞ
simple_rnn_10/transpose_1	Transpose9simple_rnn_10/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_10/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_10/transpose_1
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2"
 time_distributed_6/Reshape/shape¿
time_distributed_6/ReshapeReshapesimple_rnn_10/transpose_1:y:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_6/ReshapeÞ
0time_distributed_6/dense_6/MatMul/ReadVariableOpReadVariableOp9time_distributed_6_dense_6_matmul_readvariableop_resource*
_output_shapes

:@.*
dtype022
0time_distributed_6/dense_6/MatMul/ReadVariableOpá
!time_distributed_6/dense_6/MatMulMatMul#time_distributed_6/Reshape:output:08time_distributed_6/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2#
!time_distributed_6/dense_6/MatMulÝ
1time_distributed_6/dense_6/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_6_dense_6_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype023
1time_distributed_6/dense_6/BiasAdd/ReadVariableOpí
"time_distributed_6/dense_6/BiasAddBiasAdd+time_distributed_6/dense_6/MatMul:product:09time_distributed_6/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2$
"time_distributed_6/dense_6/BiasAdd²
"time_distributed_6/dense_6/SoftmaxSoftmax+time_distributed_6/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2$
"time_distributed_6/dense_6/Softmax
"time_distributed_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   .   2$
"time_distributed_6/Reshape_1/shapeÙ
time_distributed_6/Reshape_1Reshape,time_distributed_6/dense_6/Softmax:softmax:0+time_distributed_6/Reshape_1/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
time_distributed_6/Reshape_1
"time_distributed_6/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2$
"time_distributed_6/Reshape_2/shapeÅ
time_distributed_6/Reshape_2Reshapesimple_rnn_10/transpose_1:y:0+time_distributed_6/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_6/Reshape_2É
IdentityIdentity%time_distributed_6/Reshape_1:output:0^embedding_10/embedding_lookup8^simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOp7^simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOp9^simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOp^simple_rnn_10/while2^time_distributed_6/dense_6/BiasAdd/ReadVariableOp1^time_distributed_6/dense_6/MatMul/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::::2>
embedding_10/embedding_lookupembedding_10/embedding_lookup2r
7simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOp7simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOp2p
6simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOp6simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOp2t
8simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOp8simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOp2*
simple_rnn_10/whilesimple_rnn_10/while2f
1time_distributed_6/dense_6/BiasAdd/ReadVariableOp1time_distributed_6/dense_6/BiasAdd/ReadVariableOp2d
0time_distributed_6/dense_6/MatMul/ReadVariableOp0time_distributed_6/dense_6/MatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


-__inference_simple_rnn_10_layer_call_fn_14669

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
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_136532
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿd:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ø
|
'__inference_dense_6_layer_call_fn_14861

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
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_133042
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ã

¯
simple_rnn_10_while_cond_139158
4simple_rnn_10_while_simple_rnn_10_while_loop_counter>
:simple_rnn_10_while_simple_rnn_10_while_maximum_iterations#
simple_rnn_10_while_placeholder%
!simple_rnn_10_while_placeholder_1%
!simple_rnn_10_while_placeholder_2:
6simple_rnn_10_while_less_simple_rnn_10_strided_slice_1O
Ksimple_rnn_10_while_simple_rnn_10_while_cond_13915___redundant_placeholder0O
Ksimple_rnn_10_while_simple_rnn_10_while_cond_13915___redundant_placeholder1O
Ksimple_rnn_10_while_simple_rnn_10_while_cond_13915___redundant_placeholder2O
Ksimple_rnn_10_while_simple_rnn_10_while_cond_13915___redundant_placeholder3 
simple_rnn_10_while_identity
¶
simple_rnn_10/while/LessLesssimple_rnn_10_while_placeholder6simple_rnn_10_while_less_simple_rnn_10_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_10/while/Less
simple_rnn_10/while/IdentityIdentitysimple_rnn_10/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_10/while/Identity"E
simple_rnn_10_while_identity%simple_rnn_10/while/Identity:output:0*@
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
â	

G__inference_embedding_10_layer_call_and_return_conditional_losses_13418

inputs
embedding_lookup_13412
identity¢embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Castü
embedding_lookupResourceGatherembedding_lookup_13412Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/13412*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype02
embedding_lookupí
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/13412*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
embedding_lookup/Identity¡
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿

-__inference_simple_rnn_10_layer_call_fn_14412
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
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
GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_131562
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
Ë
Ä
M__inference_simple_rnn_cell_10_layer_call_and_return_conditional_losses_14796

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d@*
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
2:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
£

2__inference_time_distributed_6_layer_call_fn_14770

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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_133682
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ñ
¹
 __inference__wrapped_model_12770
embedding_10_input4
0sequential_7_embedding_10_embedding_lookup_12643P
Lsequential_7_simple_rnn_10_simple_rnn_cell_10_matmul_readvariableop_resourceQ
Msequential_7_simple_rnn_10_simple_rnn_cell_10_biasadd_readvariableop_resourceR
Nsequential_7_simple_rnn_10_simple_rnn_cell_10_matmul_1_readvariableop_resourceJ
Fsequential_7_time_distributed_6_dense_6_matmul_readvariableop_resourceK
Gsequential_7_time_distributed_6_dense_6_biasadd_readvariableop_resource
identity¢*sequential_7/embedding_10/embedding_lookup¢Dsequential_7/simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOp¢Csequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOp¢Esequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOp¢ sequential_7/simple_rnn_10/while¢>sequential_7/time_distributed_6/dense_6/BiasAdd/ReadVariableOp¢=sequential_7/time_distributed_6/dense_6/MatMul/ReadVariableOp
sequential_7/embedding_10/CastCastembedding_10_input*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_7/embedding_10/Castþ
*sequential_7/embedding_10/embedding_lookupResourceGather0sequential_7_embedding_10_embedding_lookup_12643"sequential_7/embedding_10/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*C
_class9
75loc:@sequential_7/embedding_10/embedding_lookup/12643*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype02,
*sequential_7/embedding_10/embedding_lookupÕ
3sequential_7/embedding_10/embedding_lookup/IdentityIdentity3sequential_7/embedding_10/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@sequential_7/embedding_10/embedding_lookup/12643*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd25
3sequential_7/embedding_10/embedding_lookup/Identityï
5sequential_7/embedding_10/embedding_lookup/Identity_1Identity<sequential_7/embedding_10/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd27
5sequential_7/embedding_10/embedding_lookup/Identity_1²
 sequential_7/simple_rnn_10/ShapeShape>sequential_7/embedding_10/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2"
 sequential_7/simple_rnn_10/Shapeª
.sequential_7/simple_rnn_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_7/simple_rnn_10/strided_slice/stack®
0sequential_7/simple_rnn_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_7/simple_rnn_10/strided_slice/stack_1®
0sequential_7/simple_rnn_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_7/simple_rnn_10/strided_slice/stack_2
(sequential_7/simple_rnn_10/strided_sliceStridedSlice)sequential_7/simple_rnn_10/Shape:output:07sequential_7/simple_rnn_10/strided_slice/stack:output:09sequential_7/simple_rnn_10/strided_slice/stack_1:output:09sequential_7/simple_rnn_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_7/simple_rnn_10/strided_slice
&sequential_7/simple_rnn_10/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2(
&sequential_7/simple_rnn_10/zeros/mul/yØ
$sequential_7/simple_rnn_10/zeros/mulMul1sequential_7/simple_rnn_10/strided_slice:output:0/sequential_7/simple_rnn_10/zeros/mul/y:output:0*
T0*
_output_shapes
: 2&
$sequential_7/simple_rnn_10/zeros/mul
'sequential_7/simple_rnn_10/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2)
'sequential_7/simple_rnn_10/zeros/Less/yÓ
%sequential_7/simple_rnn_10/zeros/LessLess(sequential_7/simple_rnn_10/zeros/mul:z:00sequential_7/simple_rnn_10/zeros/Less/y:output:0*
T0*
_output_shapes
: 2'
%sequential_7/simple_rnn_10/zeros/Less
)sequential_7/simple_rnn_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_7/simple_rnn_10/zeros/packed/1ï
'sequential_7/simple_rnn_10/zeros/packedPack1sequential_7/simple_rnn_10/strided_slice:output:02sequential_7/simple_rnn_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_7/simple_rnn_10/zeros/packed
&sequential_7/simple_rnn_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&sequential_7/simple_rnn_10/zeros/Constá
 sequential_7/simple_rnn_10/zerosFill0sequential_7/simple_rnn_10/zeros/packed:output:0/sequential_7/simple_rnn_10/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 sequential_7/simple_rnn_10/zeros«
)sequential_7/simple_rnn_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)sequential_7/simple_rnn_10/transpose/perm
$sequential_7/simple_rnn_10/transpose	Transpose>sequential_7/embedding_10/embedding_lookup/Identity_1:output:02sequential_7/simple_rnn_10/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2&
$sequential_7/simple_rnn_10/transpose 
"sequential_7/simple_rnn_10/Shape_1Shape(sequential_7/simple_rnn_10/transpose:y:0*
T0*
_output_shapes
:2$
"sequential_7/simple_rnn_10/Shape_1®
0sequential_7/simple_rnn_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential_7/simple_rnn_10/strided_slice_1/stack²
2sequential_7/simple_rnn_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_7/simple_rnn_10/strided_slice_1/stack_1²
2sequential_7/simple_rnn_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_7/simple_rnn_10/strided_slice_1/stack_2
*sequential_7/simple_rnn_10/strided_slice_1StridedSlice+sequential_7/simple_rnn_10/Shape_1:output:09sequential_7/simple_rnn_10/strided_slice_1/stack:output:0;sequential_7/simple_rnn_10/strided_slice_1/stack_1:output:0;sequential_7/simple_rnn_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_7/simple_rnn_10/strided_slice_1»
6sequential_7/simple_rnn_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ28
6sequential_7/simple_rnn_10/TensorArrayV2/element_shape
(sequential_7/simple_rnn_10/TensorArrayV2TensorListReserve?sequential_7/simple_rnn_10/TensorArrayV2/element_shape:output:03sequential_7/simple_rnn_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02*
(sequential_7/simple_rnn_10/TensorArrayV2õ
Psequential_7/simple_rnn_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2R
Psequential_7/simple_rnn_10/TensorArrayUnstack/TensorListFromTensor/element_shapeä
Bsequential_7/simple_rnn_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(sequential_7/simple_rnn_10/transpose:y:0Ysequential_7/simple_rnn_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02D
Bsequential_7/simple_rnn_10/TensorArrayUnstack/TensorListFromTensor®
0sequential_7/simple_rnn_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential_7/simple_rnn_10/strided_slice_2/stack²
2sequential_7/simple_rnn_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_7/simple_rnn_10/strided_slice_2/stack_1²
2sequential_7/simple_rnn_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_7/simple_rnn_10/strided_slice_2/stack_2
*sequential_7/simple_rnn_10/strided_slice_2StridedSlice(sequential_7/simple_rnn_10/transpose:y:09sequential_7/simple_rnn_10/strided_slice_2/stack:output:0;sequential_7/simple_rnn_10/strided_slice_2/stack_1:output:0;sequential_7/simple_rnn_10/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2,
*sequential_7/simple_rnn_10/strided_slice_2
Csequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOpLsequential_7_simple_rnn_10_simple_rnn_cell_10_matmul_readvariableop_resource*
_output_shapes

:d@*
dtype02E
Csequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOpª
4sequential_7/simple_rnn_10/simple_rnn_cell_10/MatMulMatMul3sequential_7/simple_rnn_10/strided_slice_2:output:0Ksequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@26
4sequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul
Dsequential_7/simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOpMsequential_7_simple_rnn_10_simple_rnn_cell_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_7/simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOp¹
5sequential_7/simple_rnn_10/simple_rnn_cell_10/BiasAddBiasAdd>sequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul:product:0Lsequential_7/simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@27
5sequential_7/simple_rnn_10/simple_rnn_cell_10/BiasAdd
Esequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOpNsequential_7_simple_rnn_10_simple_rnn_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02G
Esequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOp¦
6sequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul_1MatMul)sequential_7/simple_rnn_10/zeros:output:0Msequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@28
6sequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul_1£
1sequential_7/simple_rnn_10/simple_rnn_cell_10/addAddV2>sequential_7/simple_rnn_10/simple_rnn_cell_10/BiasAdd:output:0@sequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1sequential_7/simple_rnn_10/simple_rnn_cell_10/addÙ
2sequential_7/simple_rnn_10/simple_rnn_cell_10/TanhTanh5sequential_7/simple_rnn_10/simple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2sequential_7/simple_rnn_10/simple_rnn_cell_10/TanhÅ
8sequential_7/simple_rnn_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2:
8sequential_7/simple_rnn_10/TensorArrayV2_1/element_shape¤
*sequential_7/simple_rnn_10/TensorArrayV2_1TensorListReserveAsequential_7/simple_rnn_10/TensorArrayV2_1/element_shape:output:03sequential_7/simple_rnn_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02,
*sequential_7/simple_rnn_10/TensorArrayV2_1
sequential_7/simple_rnn_10/timeConst*
_output_shapes
: *
dtype0*
value	B : 2!
sequential_7/simple_rnn_10/timeµ
3sequential_7/simple_rnn_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ25
3sequential_7/simple_rnn_10/while/maximum_iterations 
-sequential_7/simple_rnn_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_7/simple_rnn_10/while/loop_counter¿
 sequential_7/simple_rnn_10/whileWhile6sequential_7/simple_rnn_10/while/loop_counter:output:0<sequential_7/simple_rnn_10/while/maximum_iterations:output:0(sequential_7/simple_rnn_10/time:output:03sequential_7/simple_rnn_10/TensorArrayV2_1:handle:0)sequential_7/simple_rnn_10/zeros:output:03sequential_7/simple_rnn_10/strided_slice_1:output:0Rsequential_7/simple_rnn_10/TensorArrayUnstack/TensorListFromTensor:output_handle:0Lsequential_7_simple_rnn_10_simple_rnn_cell_10_matmul_readvariableop_resourceMsequential_7_simple_rnn_10_simple_rnn_cell_10_biasadd_readvariableop_resourceNsequential_7_simple_rnn_10_simple_rnn_cell_10_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*7
body/R-
+sequential_7_simple_rnn_10_while_body_12691*7
cond/R-
+sequential_7_simple_rnn_10_while_cond_12690*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2"
 sequential_7/simple_rnn_10/whileë
Ksequential_7/simple_rnn_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2M
Ksequential_7/simple_rnn_10/TensorArrayV2Stack/TensorListStack/element_shapeÕ
=sequential_7/simple_rnn_10/TensorArrayV2Stack/TensorListStackTensorListStack)sequential_7/simple_rnn_10/while:output:3Tsequential_7/simple_rnn_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02?
=sequential_7/simple_rnn_10/TensorArrayV2Stack/TensorListStack·
0sequential_7/simple_rnn_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ22
0sequential_7/simple_rnn_10/strided_slice_3/stack²
2sequential_7/simple_rnn_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 24
2sequential_7/simple_rnn_10/strided_slice_3/stack_1²
2sequential_7/simple_rnn_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_7/simple_rnn_10/strided_slice_3/stack_2¼
*sequential_7/simple_rnn_10/strided_slice_3StridedSliceFsequential_7/simple_rnn_10/TensorArrayV2Stack/TensorListStack:tensor:09sequential_7/simple_rnn_10/strided_slice_3/stack:output:0;sequential_7/simple_rnn_10/strided_slice_3/stack_1:output:0;sequential_7/simple_rnn_10/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2,
*sequential_7/simple_rnn_10/strided_slice_3¯
+sequential_7/simple_rnn_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+sequential_7/simple_rnn_10/transpose_1/perm
&sequential_7/simple_rnn_10/transpose_1	TransposeFsequential_7/simple_rnn_10/TensorArrayV2Stack/TensorListStack:tensor:04sequential_7/simple_rnn_10/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2(
&sequential_7/simple_rnn_10/transpose_1¯
-sequential_7/time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2/
-sequential_7/time_distributed_6/Reshape/shapeó
'sequential_7/time_distributed_6/ReshapeReshape*sequential_7/simple_rnn_10/transpose_1:y:06sequential_7/time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'sequential_7/time_distributed_6/Reshape
=sequential_7/time_distributed_6/dense_6/MatMul/ReadVariableOpReadVariableOpFsequential_7_time_distributed_6_dense_6_matmul_readvariableop_resource*
_output_shapes

:@.*
dtype02?
=sequential_7/time_distributed_6/dense_6/MatMul/ReadVariableOp
.sequential_7/time_distributed_6/dense_6/MatMulMatMul0sequential_7/time_distributed_6/Reshape:output:0Esequential_7/time_distributed_6/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.20
.sequential_7/time_distributed_6/dense_6/MatMul
>sequential_7/time_distributed_6/dense_6/BiasAdd/ReadVariableOpReadVariableOpGsequential_7_time_distributed_6_dense_6_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype02@
>sequential_7/time_distributed_6/dense_6/BiasAdd/ReadVariableOp¡
/sequential_7/time_distributed_6/dense_6/BiasAddBiasAdd8sequential_7/time_distributed_6/dense_6/MatMul:product:0Fsequential_7/time_distributed_6/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.21
/sequential_7/time_distributed_6/dense_6/BiasAddÙ
/sequential_7/time_distributed_6/dense_6/SoftmaxSoftmax8sequential_7/time_distributed_6/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.21
/sequential_7/time_distributed_6/dense_6/Softmax·
/sequential_7/time_distributed_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   .   21
/sequential_7/time_distributed_6/Reshape_1/shape
)sequential_7/time_distributed_6/Reshape_1Reshape9sequential_7/time_distributed_6/dense_6/Softmax:softmax:08sequential_7/time_distributed_6/Reshape_1/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2+
)sequential_7/time_distributed_6/Reshape_1³
/sequential_7/time_distributed_6/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   21
/sequential_7/time_distributed_6/Reshape_2/shapeù
)sequential_7/time_distributed_6/Reshape_2Reshape*sequential_7/simple_rnn_10/transpose_1:y:08sequential_7/time_distributed_6/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)sequential_7/time_distributed_6/Reshape_2±
IdentityIdentity2sequential_7/time_distributed_6/Reshape_1:output:0+^sequential_7/embedding_10/embedding_lookupE^sequential_7/simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOpD^sequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOpF^sequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOp!^sequential_7/simple_rnn_10/while?^sequential_7/time_distributed_6/dense_6/BiasAdd/ReadVariableOp>^sequential_7/time_distributed_6/dense_6/MatMul/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::::2X
*sequential_7/embedding_10/embedding_lookup*sequential_7/embedding_10/embedding_lookup2
Dsequential_7/simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOpDsequential_7/simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOp2
Csequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOpCsequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOp2
Esequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOpEsequential_7/simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOp2D
 sequential_7/simple_rnn_10/while sequential_7/simple_rnn_10/while2
>sequential_7/time_distributed_6/dense_6/BiasAdd/ReadVariableOp>sequential_7/time_distributed_6/dense_6/BiasAdd/ReadVariableOp2~
=sequential_7/time_distributed_6/dense_6/MatMul/ReadVariableOp=sequential_7/time_distributed_6/dense_6/MatMul/ReadVariableOp:\ X
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameembedding_10_input
Õ

M__inference_time_distributed_6_layer_call_and_return_conditional_losses_13697

inputs*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource
identity¢dense_6/BiasAdd/ReadVariableOp¢dense_6/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¥
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:@.*
dtype02
dense_6/MatMul/ReadVariableOp
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/MatMul¤
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype02 
dense_6/BiasAdd/ReadVariableOp¡
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/BiasAddy
dense_6/SoftmaxSoftmaxdense_6/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/Softmaxw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   .   2
Reshape_1/shape
	Reshape_1Reshapedense_6/Softmax:softmax:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
	Reshape_1¬
IdentityIdentityReshape_1:output:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@::2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
H

H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_13653

inputs5
1simple_rnn_cell_10_matmul_readvariableop_resource6
2simple_rnn_cell_10_biasadd_readvariableop_resource7
3simple_rnn_cell_10_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_10/BiasAdd/ReadVariableOp¢(simple_rnn_cell_10/MatMul/ReadVariableOp¢*simple_rnn_cell_10/MatMul_1/ReadVariableOp¢whileD
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
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
valueB"ÿÿÿÿd   27
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_2Æ
(simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_10_matmul_readvariableop_resource*
_output_shapes

:d@*
dtype02*
(simple_rnn_cell_10/MatMul/ReadVariableOp¾
simple_rnn_cell_10/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/MatMulÅ
)simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_10/BiasAdd/ReadVariableOpÍ
simple_rnn_cell_10/BiasAddBiasAdd#simple_rnn_cell_10/MatMul:product:01simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/BiasAddÌ
*simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_10/MatMul_1/ReadVariableOpº
simple_rnn_cell_10/MatMul_1MatMulzeros:output:02simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/MatMul_1·
simple_rnn_cell_10/addAddV2#simple_rnn_cell_10/BiasAdd:output:0%simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/add
simple_rnn_cell_10/TanhTanhsimple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/Tanh
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_10_matmul_readvariableop_resource2simple_rnn_cell_10_biasadd_readvariableop_resource3simple_rnn_cell_10_matmul_1_readvariableop_resource*
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
while_body_13587*
condR
while_cond_13586*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
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
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
transpose_1ô
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_10/BiasAdd/ReadVariableOp)^simple_rnn_cell_10/MatMul/ReadVariableOp+^simple_rnn_cell_10/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿd:::2V
)simple_rnn_cell_10/BiasAdd/ReadVariableOp)simple_rnn_cell_10/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_10/MatMul/ReadVariableOp(simple_rnn_cell_10/MatMul/ReadVariableOp2X
*simple_rnn_cell_10/MatMul_1/ReadVariableOp*simple_rnn_cell_10/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ì<
ö
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_13156

inputs
simple_rnn_cell_10_13081
simple_rnn_cell_10_13083
simple_rnn_cell_10_13085
identity¢*simple_rnn_cell_10/StatefulPartitionedCall¢whileD
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
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
valueB"ÿÿÿÿd   27
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_2
*simple_rnn_cell_10/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_10_13081simple_rnn_cell_10_13083simple_rnn_cell_10_13085*
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
GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_10_layer_call_and_return_conditional_losses_128192,
*simple_rnn_cell_10/StatefulPartitionedCall
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
while/loop_counter÷
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_10_13081simple_rnn_cell_10_13083simple_rnn_cell_10_13085*
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
while_body_13093*
condR
while_cond_13092*8
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
IdentityIdentitytranspose_1:y:0+^simple_rnn_cell_10/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:::2X
*simple_rnn_cell_10/StatefulPartitionedCall*simple_rnn_cell_10/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ÿ<
Û
__inference__traced_save_14959
file_prefix6
2savev2_embedding_10_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopF
Bsavev2_simple_rnn_10_simple_rnn_cell_10_kernel_read_readvariableopP
Lsavev2_simple_rnn_10_simple_rnn_cell_10_recurrent_kernel_read_readvariableopD
@savev2_simple_rnn_10_simple_rnn_cell_10_bias_read_readvariableop8
4savev2_time_distributed_6_kernel_read_readvariableop6
2savev2_time_distributed_6_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopM
Isavev2_adam_simple_rnn_10_simple_rnn_cell_10_kernel_m_read_readvariableopW
Ssavev2_adam_simple_rnn_10_simple_rnn_cell_10_recurrent_kernel_m_read_readvariableopK
Gsavev2_adam_simple_rnn_10_simple_rnn_cell_10_bias_m_read_readvariableop?
;savev2_adam_time_distributed_6_kernel_m_read_readvariableop=
9savev2_adam_time_distributed_6_bias_m_read_readvariableopM
Isavev2_adam_simple_rnn_10_simple_rnn_cell_10_kernel_v_read_readvariableopW
Ssavev2_adam_simple_rnn_10_simple_rnn_cell_10_recurrent_kernel_v_read_readvariableopK
Gsavev2_adam_simple_rnn_10_simple_rnn_cell_10_bias_v_read_readvariableop?
;savev2_adam_time_distributed_6_kernel_v_read_readvariableop=
9savev2_adam_time_distributed_6_bias_v_read_readvariableop
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
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names¼
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesß
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_embedding_10_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopBsavev2_simple_rnn_10_simple_rnn_cell_10_kernel_read_readvariableopLsavev2_simple_rnn_10_simple_rnn_cell_10_recurrent_kernel_read_readvariableop@savev2_simple_rnn_10_simple_rnn_cell_10_bias_read_readvariableop4savev2_time_distributed_6_kernel_read_readvariableop2savev2_time_distributed_6_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopIsavev2_adam_simple_rnn_10_simple_rnn_cell_10_kernel_m_read_readvariableopSsavev2_adam_simple_rnn_10_simple_rnn_cell_10_recurrent_kernel_m_read_readvariableopGsavev2_adam_simple_rnn_10_simple_rnn_cell_10_bias_m_read_readvariableop;savev2_adam_time_distributed_6_kernel_m_read_readvariableop9savev2_adam_time_distributed_6_bias_m_read_readvariableopIsavev2_adam_simple_rnn_10_simple_rnn_cell_10_kernel_v_read_readvariableopSsavev2_adam_simple_rnn_10_simple_rnn_cell_10_recurrent_kernel_v_read_readvariableopGsavev2_adam_simple_rnn_10_simple_rnn_cell_10_bias_v_read_readvariableop;savev2_adam_time_distributed_6_kernel_v_read_readvariableop9savev2_adam_time_distributed_6_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *(
dtypes
2	2
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

identity_1Identity_1:output:0*µ
_input_shapes£
 : :
ëd: : : : : :d@:@@:@:@.:.: : : : :d@:@@:@:@.:.:d@:@@:@:@.:.: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
ëd:
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

:d@:$ 

_output_shapes

:@@: 	

_output_shapes
:@:$
 

_output_shapes

:@.: 

_output_shapes
:.:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:d@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@.: 

_output_shapes
:.:$ 

_output_shapes

:d@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@.: 

_output_shapes
:.:

_output_shapes
: 
D
¨
simple_rnn_10_while_body_140478
4simple_rnn_10_while_simple_rnn_10_while_loop_counter>
:simple_rnn_10_while_simple_rnn_10_while_maximum_iterations#
simple_rnn_10_while_placeholder%
!simple_rnn_10_while_placeholder_1%
!simple_rnn_10_while_placeholder_27
3simple_rnn_10_while_simple_rnn_10_strided_slice_1_0s
osimple_rnn_10_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_10_tensorarrayunstack_tensorlistfromtensor_0K
Gsimple_rnn_10_while_simple_rnn_cell_10_matmul_readvariableop_resource_0L
Hsimple_rnn_10_while_simple_rnn_cell_10_biasadd_readvariableop_resource_0M
Isimple_rnn_10_while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0 
simple_rnn_10_while_identity"
simple_rnn_10_while_identity_1"
simple_rnn_10_while_identity_2"
simple_rnn_10_while_identity_3"
simple_rnn_10_while_identity_45
1simple_rnn_10_while_simple_rnn_10_strided_slice_1q
msimple_rnn_10_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_10_tensorarrayunstack_tensorlistfromtensorI
Esimple_rnn_10_while_simple_rnn_cell_10_matmul_readvariableop_resourceJ
Fsimple_rnn_10_while_simple_rnn_cell_10_biasadd_readvariableop_resourceK
Gsimple_rnn_10_while_simple_rnn_cell_10_matmul_1_readvariableop_resource¢=simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp¢<simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp¢>simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOpß
Esimple_rnn_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2G
Esimple_rnn_10/while/TensorArrayV2Read/TensorListGetItem/element_shape§
7simple_rnn_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_10_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_10_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_10_while_placeholderNsimple_rnn_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype029
7simple_rnn_10/while/TensorArrayV2Read/TensorListGetItem
<simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_10_while_simple_rnn_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:d@*
dtype02>
<simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp 
-simple_rnn_10/while/simple_rnn_cell_10/MatMulMatMul>simple_rnn_10/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-simple_rnn_10/while/simple_rnn_cell_10/MatMul
=simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_10_while_simple_rnn_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02?
=simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp
.simple_rnn_10/while/simple_rnn_cell_10/BiasAddBiasAdd7simple_rnn_10/while/simple_rnn_cell_10/MatMul:product:0Esimple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@20
.simple_rnn_10/while/simple_rnn_cell_10/BiasAdd
>simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_10_while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02@
>simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp
/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1MatMul!simple_rnn_10_while_placeholder_2Fsimple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@21
/simple_rnn_10/while/simple_rnn_cell_10/MatMul_1
*simple_rnn_10/while/simple_rnn_cell_10/addAddV27simple_rnn_10/while/simple_rnn_cell_10/BiasAdd:output:09simple_rnn_10/while/simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*simple_rnn_10/while/simple_rnn_cell_10/addÄ
+simple_rnn_10/while/simple_rnn_cell_10/TanhTanh.simple_rnn_10/while/simple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+simple_rnn_10/while/simple_rnn_cell_10/Tanh«
8simple_rnn_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_10_while_placeholder_1simple_rnn_10_while_placeholder/simple_rnn_10/while/simple_rnn_cell_10/Tanh:y:0*
_output_shapes
: *
element_dtype02:
8simple_rnn_10/while/TensorArrayV2Write/TensorListSetItemx
simple_rnn_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_10/while/add/y¡
simple_rnn_10/while/addAddV2simple_rnn_10_while_placeholder"simple_rnn_10/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_10/while/add|
simple_rnn_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_10/while/add_1/y¼
simple_rnn_10/while/add_1AddV24simple_rnn_10_while_simple_rnn_10_while_loop_counter$simple_rnn_10/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_10/while/add_1È
simple_rnn_10/while/IdentityIdentitysimple_rnn_10/while/add_1:z:0>^simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp=^simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp?^simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_10/while/Identityé
simple_rnn_10/while/Identity_1Identity:simple_rnn_10_while_simple_rnn_10_while_maximum_iterations>^simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp=^simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp?^simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_10/while/Identity_1Ê
simple_rnn_10/while/Identity_2Identitysimple_rnn_10/while/add:z:0>^simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp=^simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp?^simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_10/while/Identity_2÷
simple_rnn_10/while/Identity_3IdentityHsimple_rnn_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp=^simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp?^simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
simple_rnn_10/while/Identity_3ï
simple_rnn_10/while/Identity_4Identity/simple_rnn_10/while/simple_rnn_cell_10/Tanh:y:0>^simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp=^simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp?^simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
simple_rnn_10/while/Identity_4"E
simple_rnn_10_while_identity%simple_rnn_10/while/Identity:output:0"I
simple_rnn_10_while_identity_1'simple_rnn_10/while/Identity_1:output:0"I
simple_rnn_10_while_identity_2'simple_rnn_10/while/Identity_2:output:0"I
simple_rnn_10_while_identity_3'simple_rnn_10/while/Identity_3:output:0"I
simple_rnn_10_while_identity_4'simple_rnn_10/while/Identity_4:output:0"h
1simple_rnn_10_while_simple_rnn_10_strided_slice_13simple_rnn_10_while_simple_rnn_10_strided_slice_1_0"
Fsimple_rnn_10_while_simple_rnn_cell_10_biasadd_readvariableop_resourceHsimple_rnn_10_while_simple_rnn_cell_10_biasadd_readvariableop_resource_0"
Gsimple_rnn_10_while_simple_rnn_cell_10_matmul_1_readvariableop_resourceIsimple_rnn_10_while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0"
Esimple_rnn_10_while_simple_rnn_cell_10_matmul_readvariableop_resourceGsimple_rnn_10_while_simple_rnn_cell_10_matmul_readvariableop_resource_0"à
msimple_rnn_10_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_10_tensorarrayunstack_tensorlistfromtensorosimple_rnn_10_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_10_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2~
=simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp=simple_rnn_10/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp2|
<simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp<simple_rnn_10/while/simple_rnn_cell_10/MatMul/ReadVariableOp2
>simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp>simple_rnn_10/while/simple_rnn_cell_10/MatMul_1/ReadVariableOp: 
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
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_14684

inputs*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource
identity¢dense_6/BiasAdd/ReadVariableOp¢dense_6/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¥
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:@.*
dtype02
dense_6/MatMul/ReadVariableOp
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/MatMul¤
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype02 
dense_6/BiasAdd/ReadVariableOp¡
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/BiasAddy
dense_6/SoftmaxSoftmaxdense_6/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/Softmaxw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   .   2
Reshape_1/shape
	Reshape_1Reshapedense_6/Softmax:softmax:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
	Reshape_1¬
IdentityIdentityReshape_1:output:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@::2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Óm

!__inference__traced_restore_15044
file_prefix,
(assignvariableop_embedding_10_embeddings 
assignvariableop_1_adam_iter"
assignvariableop_2_adam_beta_1"
assignvariableop_3_adam_beta_2!
assignvariableop_4_adam_decay)
%assignvariableop_5_adam_learning_rate>
:assignvariableop_6_simple_rnn_10_simple_rnn_cell_10_kernelH
Dassignvariableop_7_simple_rnn_10_simple_rnn_cell_10_recurrent_kernel<
8assignvariableop_8_simple_rnn_10_simple_rnn_cell_10_bias0
,assignvariableop_9_time_distributed_6_kernel/
+assignvariableop_10_time_distributed_6_bias
assignvariableop_11_total
assignvariableop_12_count
assignvariableop_13_total_1
assignvariableop_14_count_1F
Bassignvariableop_15_adam_simple_rnn_10_simple_rnn_cell_10_kernel_mP
Lassignvariableop_16_adam_simple_rnn_10_simple_rnn_cell_10_recurrent_kernel_mD
@assignvariableop_17_adam_simple_rnn_10_simple_rnn_cell_10_bias_m8
4assignvariableop_18_adam_time_distributed_6_kernel_m6
2assignvariableop_19_adam_time_distributed_6_bias_mF
Bassignvariableop_20_adam_simple_rnn_10_simple_rnn_cell_10_kernel_vP
Lassignvariableop_21_adam_simple_rnn_10_simple_rnn_cell_10_recurrent_kernel_vD
@assignvariableop_22_adam_simple_rnn_10_simple_rnn_cell_10_bias_v8
4assignvariableop_23_adam_time_distributed_6_kernel_v6
2assignvariableop_24_adam_time_distributed_6_bias_v
identity_26¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÂ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices­
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity§
AssignVariableOpAssignVariableOp(assignvariableop_embedding_10_embeddingsIdentity:output:0"/device:CPU:0*
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
AssignVariableOp_6AssignVariableOp:assignvariableop_6_simple_rnn_10_simple_rnn_cell_10_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7É
AssignVariableOp_7AssignVariableOpDassignvariableop_7_simple_rnn_10_simple_rnn_cell_10_recurrent_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8½
AssignVariableOp_8AssignVariableOp8assignvariableop_8_simple_rnn_10_simple_rnn_cell_10_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9±
AssignVariableOp_9AssignVariableOp,assignvariableop_9_time_distributed_6_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10³
AssignVariableOp_10AssignVariableOp+assignvariableop_10_time_distributed_6_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¡
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¡
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13£
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14£
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ê
AssignVariableOp_15AssignVariableOpBassignvariableop_15_adam_simple_rnn_10_simple_rnn_cell_10_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ô
AssignVariableOp_16AssignVariableOpLassignvariableop_16_adam_simple_rnn_10_simple_rnn_cell_10_recurrent_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17È
AssignVariableOp_17AssignVariableOp@assignvariableop_17_adam_simple_rnn_10_simple_rnn_cell_10_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¼
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_time_distributed_6_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19º
AssignVariableOp_19AssignVariableOp2assignvariableop_19_adam_time_distributed_6_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Ê
AssignVariableOp_20AssignVariableOpBassignvariableop_20_adam_simple_rnn_10_simple_rnn_cell_10_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ô
AssignVariableOp_21AssignVariableOpLassignvariableop_21_adam_simple_rnn_10_simple_rnn_cell_10_recurrent_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22È
AssignVariableOp_22AssignVariableOp@assignvariableop_22_adam_simple_rnn_10_simple_rnn_cell_10_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¼
AssignVariableOp_23AssignVariableOp4assignvariableop_23_adam_time_distributed_6_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24º
AssignVariableOp_24AssignVariableOp2assignvariableop_24_adam_time_distributed_6_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_249
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_25÷
Identity_26IdentityIdentity_25:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_26"#
identity_26Identity_26:output:0*y
_input_shapesh
f: :::::::::::::::::::::::::2$
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
AssignVariableOp_24AssignVariableOp_242(
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
ï
½
,__inference_sequential_7_layer_call_fn_14160

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_138222
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Û
B__inference_dense_6_layer_call_and_return_conditional_losses_13304

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@.*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:.*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
4

while_body_14335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_10_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_10_matmul_readvariableop_resource<
8while_simple_rnn_cell_10_biasadd_readvariableop_resource=
9while_simple_rnn_cell_10_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_10/MatMul/ReadVariableOp¢0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÚ
.while/simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:d@*
dtype020
.while/simple_rnn_cell_10/MatMul/ReadVariableOpè
while/simple_rnn_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_10/MatMulÙ
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpå
 while/simple_rnn_cell_10/BiasAddBiasAdd)while/simple_rnn_cell_10/MatMul:product:07while/simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_10/BiasAddà
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpÑ
!while/simple_rnn_cell_10/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/simple_rnn_cell_10/MatMul_1Ï
while/simple_rnn_cell_10/addAddV2)while/simple_rnn_cell_10/BiasAdd:output:0+while/simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_10/add
while/simple_rnn_cell_10/TanhTanh while/simple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_10/Tanhå
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_10/Tanh:y:0*
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
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity!while/simple_rnn_cell_10/Tanh:y:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_10_biasadd_readvariableop_resource:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_10_matmul_1_readvariableop_resource;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_10_matmul_readvariableop_resource9while_simple_rnn_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2b
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_10/MatMul/ReadVariableOp.while/simple_rnn_cell_10/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOp0while/simple_rnn_cell_10/MatMul_1/ReadVariableOp: 
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
Ëz
«
G__inference_sequential_7_layer_call_and_return_conditional_losses_14126

inputs'
#embedding_10_embedding_lookup_13999C
?simple_rnn_10_simple_rnn_cell_10_matmul_readvariableop_resourceD
@simple_rnn_10_simple_rnn_cell_10_biasadd_readvariableop_resourceE
Asimple_rnn_10_simple_rnn_cell_10_matmul_1_readvariableop_resource=
9time_distributed_6_dense_6_matmul_readvariableop_resource>
:time_distributed_6_dense_6_biasadd_readvariableop_resource
identity¢embedding_10/embedding_lookup¢7simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOp¢6simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOp¢8simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOp¢simple_rnn_10/while¢1time_distributed_6/dense_6/BiasAdd/ReadVariableOp¢0time_distributed_6/dense_6/MatMul/ReadVariableOpx
embedding_10/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_10/Cast½
embedding_10/embedding_lookupResourceGather#embedding_10_embedding_lookup_13999embedding_10/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_10/embedding_lookup/13999*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype02
embedding_10/embedding_lookup¡
&embedding_10/embedding_lookup/IdentityIdentity&embedding_10/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_10/embedding_lookup/13999*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&embedding_10/embedding_lookup/IdentityÈ
(embedding_10/embedding_lookup/Identity_1Identity/embedding_10/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(embedding_10/embedding_lookup/Identity_1
simple_rnn_10/ShapeShape1embedding_10/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
simple_rnn_10/Shape
!simple_rnn_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!simple_rnn_10/strided_slice/stack
#simple_rnn_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_10/strided_slice/stack_1
#simple_rnn_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#simple_rnn_10/strided_slice/stack_2¶
simple_rnn_10/strided_sliceStridedSlicesimple_rnn_10/Shape:output:0*simple_rnn_10/strided_slice/stack:output:0,simple_rnn_10/strided_slice/stack_1:output:0,simple_rnn_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_10/strided_slicex
simple_rnn_10/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_10/zeros/mul/y¤
simple_rnn_10/zeros/mulMul$simple_rnn_10/strided_slice:output:0"simple_rnn_10/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_10/zeros/mul{
simple_rnn_10/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
simple_rnn_10/zeros/Less/y
simple_rnn_10/zeros/LessLesssimple_rnn_10/zeros/mul:z:0#simple_rnn_10/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_10/zeros/Less~
simple_rnn_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_10/zeros/packed/1»
simple_rnn_10/zeros/packedPack$simple_rnn_10/strided_slice:output:0%simple_rnn_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_10/zeros/packed{
simple_rnn_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_10/zeros/Const­
simple_rnn_10/zerosFill#simple_rnn_10/zeros/packed:output:0"simple_rnn_10/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_10/zeros
simple_rnn_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_10/transpose/permÐ
simple_rnn_10/transpose	Transpose1embedding_10/embedding_lookup/Identity_1:output:0%simple_rnn_10/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
simple_rnn_10/transposey
simple_rnn_10/Shape_1Shapesimple_rnn_10/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_10/Shape_1
#simple_rnn_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_10/strided_slice_1/stack
%simple_rnn_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_10/strided_slice_1/stack_1
%simple_rnn_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_10/strided_slice_1/stack_2Â
simple_rnn_10/strided_slice_1StridedSlicesimple_rnn_10/Shape_1:output:0,simple_rnn_10/strided_slice_1/stack:output:0.simple_rnn_10/strided_slice_1/stack_1:output:0.simple_rnn_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_10/strided_slice_1¡
)simple_rnn_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2+
)simple_rnn_10/TensorArrayV2/element_shapeê
simple_rnn_10/TensorArrayV2TensorListReserve2simple_rnn_10/TensorArrayV2/element_shape:output:0&simple_rnn_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_10/TensorArrayV2Û
Csimple_rnn_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2E
Csimple_rnn_10/TensorArrayUnstack/TensorListFromTensor/element_shape°
5simple_rnn_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_10/transpose:y:0Lsimple_rnn_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5simple_rnn_10/TensorArrayUnstack/TensorListFromTensor
#simple_rnn_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#simple_rnn_10/strided_slice_2/stack
%simple_rnn_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_10/strided_slice_2/stack_1
%simple_rnn_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_10/strided_slice_2/stack_2Ð
simple_rnn_10/strided_slice_2StridedSlicesimple_rnn_10/transpose:y:0,simple_rnn_10/strided_slice_2/stack:output:0.simple_rnn_10/strided_slice_2/stack_1:output:0.simple_rnn_10/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
simple_rnn_10/strided_slice_2ð
6simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOp?simple_rnn_10_simple_rnn_cell_10_matmul_readvariableop_resource*
_output_shapes

:d@*
dtype028
6simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOpö
'simple_rnn_10/simple_rnn_cell_10/MatMulMatMul&simple_rnn_10/strided_slice_2:output:0>simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'simple_rnn_10/simple_rnn_cell_10/MatMulï
7simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_10_simple_rnn_cell_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype029
7simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOp
(simple_rnn_10/simple_rnn_cell_10/BiasAddBiasAdd1simple_rnn_10/simple_rnn_cell_10/MatMul:product:0?simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(simple_rnn_10/simple_rnn_cell_10/BiasAddö
8simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_10_simple_rnn_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02:
8simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOpò
)simple_rnn_10/simple_rnn_cell_10/MatMul_1MatMulsimple_rnn_10/zeros:output:0@simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)simple_rnn_10/simple_rnn_cell_10/MatMul_1ï
$simple_rnn_10/simple_rnn_cell_10/addAddV21simple_rnn_10/simple_rnn_cell_10/BiasAdd:output:03simple_rnn_10/simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$simple_rnn_10/simple_rnn_cell_10/add²
%simple_rnn_10/simple_rnn_cell_10/TanhTanh(simple_rnn_10/simple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%simple_rnn_10/simple_rnn_cell_10/Tanh«
+simple_rnn_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2-
+simple_rnn_10/TensorArrayV2_1/element_shapeð
simple_rnn_10/TensorArrayV2_1TensorListReserve4simple_rnn_10/TensorArrayV2_1/element_shape:output:0&simple_rnn_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_10/TensorArrayV2_1j
simple_rnn_10/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_10/time
&simple_rnn_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&simple_rnn_10/while/maximum_iterations
 simple_rnn_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 simple_rnn_10/while/loop_counter
simple_rnn_10/whileWhile)simple_rnn_10/while/loop_counter:output:0/simple_rnn_10/while/maximum_iterations:output:0simple_rnn_10/time:output:0&simple_rnn_10/TensorArrayV2_1:handle:0simple_rnn_10/zeros:output:0&simple_rnn_10/strided_slice_1:output:0Esimple_rnn_10/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_10_simple_rnn_cell_10_matmul_readvariableop_resource@simple_rnn_10_simple_rnn_cell_10_biasadd_readvariableop_resourceAsimple_rnn_10_simple_rnn_cell_10_matmul_1_readvariableop_resource*
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
simple_rnn_10_while_body_14047**
cond"R 
simple_rnn_10_while_cond_14046*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
simple_rnn_10/whileÑ
>simple_rnn_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2@
>simple_rnn_10/TensorArrayV2Stack/TensorListStack/element_shape¡
0simple_rnn_10/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_10/while:output:3Gsimple_rnn_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype022
0simple_rnn_10/TensorArrayV2Stack/TensorListStack
#simple_rnn_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2%
#simple_rnn_10/strided_slice_3/stack
%simple_rnn_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%simple_rnn_10/strided_slice_3/stack_1
%simple_rnn_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%simple_rnn_10/strided_slice_3/stack_2î
simple_rnn_10/strided_slice_3StridedSlice9simple_rnn_10/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_10/strided_slice_3/stack:output:0.simple_rnn_10/strided_slice_3/stack_1:output:0.simple_rnn_10/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn_10/strided_slice_3
simple_rnn_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
simple_rnn_10/transpose_1/permÞ
simple_rnn_10/transpose_1	Transpose9simple_rnn_10/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_10/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_10/transpose_1
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2"
 time_distributed_6/Reshape/shape¿
time_distributed_6/ReshapeReshapesimple_rnn_10/transpose_1:y:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_6/ReshapeÞ
0time_distributed_6/dense_6/MatMul/ReadVariableOpReadVariableOp9time_distributed_6_dense_6_matmul_readvariableop_resource*
_output_shapes

:@.*
dtype022
0time_distributed_6/dense_6/MatMul/ReadVariableOpá
!time_distributed_6/dense_6/MatMulMatMul#time_distributed_6/Reshape:output:08time_distributed_6/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2#
!time_distributed_6/dense_6/MatMulÝ
1time_distributed_6/dense_6/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_6_dense_6_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype023
1time_distributed_6/dense_6/BiasAdd/ReadVariableOpí
"time_distributed_6/dense_6/BiasAddBiasAdd+time_distributed_6/dense_6/MatMul:product:09time_distributed_6/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2$
"time_distributed_6/dense_6/BiasAdd²
"time_distributed_6/dense_6/SoftmaxSoftmax+time_distributed_6/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2$
"time_distributed_6/dense_6/Softmax
"time_distributed_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   .   2$
"time_distributed_6/Reshape_1/shapeÙ
time_distributed_6/Reshape_1Reshape,time_distributed_6/dense_6/Softmax:softmax:0+time_distributed_6/Reshape_1/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
time_distributed_6/Reshape_1
"time_distributed_6/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2$
"time_distributed_6/Reshape_2/shapeÅ
time_distributed_6/Reshape_2Reshapesimple_rnn_10/transpose_1:y:0+time_distributed_6/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_6/Reshape_2É
IdentityIdentity%time_distributed_6/Reshape_1:output:0^embedding_10/embedding_lookup8^simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOp7^simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOp9^simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOp^simple_rnn_10/while2^time_distributed_6/dense_6/BiasAdd/ReadVariableOp1^time_distributed_6/dense_6/MatMul/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::::2>
embedding_10/embedding_lookupembedding_10/embedding_lookup2r
7simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOp7simple_rnn_10/simple_rnn_cell_10/BiasAdd/ReadVariableOp2p
6simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOp6simple_rnn_10/simple_rnn_cell_10/MatMul/ReadVariableOp2t
8simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOp8simple_rnn_10/simple_rnn_cell_10/MatMul_1/ReadVariableOp2*
simple_rnn_10/whilesimple_rnn_10/while2f
1time_distributed_6/dense_6/BiasAdd/ReadVariableOp1time_distributed_6/dense_6/BiasAdd/ReadVariableOp2d
0time_distributed_6/dense_6/MatMul/ReadVariableOp0time_distributed_6/dense_6/MatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
¥
while_cond_13474
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_13474___redundant_placeholder03
/while_while_cond_13474___redundant_placeholder13
/while_while_cond_13474___redundant_placeholder23
/while_while_cond_13474___redundant_placeholder3
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
ã

¯
simple_rnn_10_while_cond_140468
4simple_rnn_10_while_simple_rnn_10_while_loop_counter>
:simple_rnn_10_while_simple_rnn_10_while_maximum_iterations#
simple_rnn_10_while_placeholder%
!simple_rnn_10_while_placeholder_1%
!simple_rnn_10_while_placeholder_2:
6simple_rnn_10_while_less_simple_rnn_10_strided_slice_1O
Ksimple_rnn_10_while_simple_rnn_10_while_cond_14046___redundant_placeholder0O
Ksimple_rnn_10_while_simple_rnn_10_while_cond_14046___redundant_placeholder1O
Ksimple_rnn_10_while_simple_rnn_10_while_cond_14046___redundant_placeholder2O
Ksimple_rnn_10_while_simple_rnn_10_while_cond_14046___redundant_placeholder3 
simple_rnn_10_while_identity
¶
simple_rnn_10/while/LessLesssimple_rnn_10_while_placeholder6simple_rnn_10_while_less_simple_rnn_10_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_10/while/Less
simple_rnn_10/while/IdentityIdentitysimple_rnn_10/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_10/while/Identity"E
simple_rnn_10_while_identity%simple_rnn_10/while/Identity:output:0*@
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
4

while_body_13475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_10_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_10_matmul_readvariableop_resource<
8while_simple_rnn_cell_10_biasadd_readvariableop_resource=
9while_simple_rnn_cell_10_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_10/MatMul/ReadVariableOp¢0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÚ
.while/simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:d@*
dtype020
.while/simple_rnn_cell_10/MatMul/ReadVariableOpè
while/simple_rnn_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_10/MatMulÙ
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpå
 while/simple_rnn_cell_10/BiasAddBiasAdd)while/simple_rnn_cell_10/MatMul:product:07while/simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_10/BiasAddà
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpÑ
!while/simple_rnn_cell_10/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/simple_rnn_cell_10/MatMul_1Ï
while/simple_rnn_cell_10/addAddV2)while/simple_rnn_cell_10/BiasAdd:output:0+while/simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_10/add
while/simple_rnn_cell_10/TanhTanh while/simple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_10/Tanhå
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_10/Tanh:y:0*
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
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity!while/simple_rnn_cell_10/Tanh:y:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_10_biasadd_readvariableop_resource:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_10_matmul_1_readvariableop_resource;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_10_matmul_readvariableop_resource9while_simple_rnn_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2b
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_10/MatMul/ReadVariableOp.while/simple_rnn_cell_10/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOp0while/simple_rnn_cell_10/MatMul_1/ReadVariableOp: 
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
¡#

while_body_13093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0$
 while_simple_rnn_cell_10_13115_0$
 while_simple_rnn_cell_10_13117_0$
 while_simple_rnn_cell_10_13119_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor"
while_simple_rnn_cell_10_13115"
while_simple_rnn_cell_10_13117"
while_simple_rnn_cell_10_13119¢0while/simple_rnn_cell_10/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
0while/simple_rnn_cell_10/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_10_13115_0 while_simple_rnn_cell_10_13117_0 while_simple_rnn_cell_10_13119_0*
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
GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_10_layer_call_and_return_conditional_losses_1281922
0while/simple_rnn_cell_10/StatefulPartitionedCallý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_10/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:01^while/simple_rnn_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity¤
while/Identity_1Identitywhile_while_maximum_iterations1^while/simple_rnn_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:01^while/simple_rnn_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2À
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:01^while/simple_rnn_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ð
while/Identity_4Identity9while/simple_rnn_cell_10/StatefulPartitionedCall:output:11^while/simple_rnn_cell_10/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_10_13115 while_simple_rnn_cell_10_13115_0"B
while_simple_rnn_cell_10_13117 while_simple_rnn_cell_10_13117_0"B
while_simple_rnn_cell_10_13119 while_simple_rnn_cell_10_13119_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2d
0while/simple_rnn_cell_10/StatefulPartitionedCall0while/simple_rnn_cell_10/StatefulPartitionedCall: 
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
¿

-__inference_simple_rnn_10_layer_call_fn_14423
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
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
GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_132732
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
Õ

M__inference_time_distributed_6_layer_call_and_return_conditional_losses_13712

inputs*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource
identity¢dense_6/BiasAdd/ReadVariableOp¢dense_6/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¥
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:@.*
dtype02
dense_6/MatMul/ReadVariableOp
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/MatMul¤
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype02 
dense_6/BiasAdd/ReadVariableOp¡
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/BiasAddy
dense_6/SoftmaxSoftmaxdense_6/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/Softmaxw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   .   2
Reshape_1/shape
	Reshape_1Reshapedense_6/Softmax:softmax:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
	Reshape_1¬
IdentityIdentityReshape_1:output:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@::2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Å
Â
M__inference_simple_rnn_cell_10_layer_call_and_return_conditional_losses_12819

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d@*
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
2:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
H

H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_14647

inputs5
1simple_rnn_cell_10_matmul_readvariableop_resource6
2simple_rnn_cell_10_biasadd_readvariableop_resource7
3simple_rnn_cell_10_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_10/BiasAdd/ReadVariableOp¢(simple_rnn_cell_10/MatMul/ReadVariableOp¢*simple_rnn_cell_10/MatMul_1/ReadVariableOp¢whileD
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
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
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
valueB"ÿÿÿÿd   27
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_2Æ
(simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_10_matmul_readvariableop_resource*
_output_shapes

:d@*
dtype02*
(simple_rnn_cell_10/MatMul/ReadVariableOp¾
simple_rnn_cell_10/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/MatMulÅ
)simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_10/BiasAdd/ReadVariableOpÍ
simple_rnn_cell_10/BiasAddBiasAdd#simple_rnn_cell_10/MatMul:product:01simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/BiasAddÌ
*simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_10/MatMul_1/ReadVariableOpº
simple_rnn_cell_10/MatMul_1MatMulzeros:output:02simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/MatMul_1·
simple_rnn_cell_10/addAddV2#simple_rnn_cell_10/BiasAdd:output:0%simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/add
simple_rnn_cell_10/TanhTanhsimple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/Tanh
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_10_matmul_readvariableop_resource2simple_rnn_cell_10_biasadd_readvariableop_resource3simple_rnn_cell_10_matmul_1_readvariableop_resource*
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
while_body_14581*
condR
while_cond_14580*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
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
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
transpose_1ô
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_10/BiasAdd/ReadVariableOp)^simple_rnn_cell_10/MatMul/ReadVariableOp+^simple_rnn_cell_10/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿd:::2V
)simple_rnn_cell_10/BiasAdd/ReadVariableOp)simple_rnn_cell_10/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_10/MatMul/ReadVariableOp(simple_rnn_cell_10/MatMul/ReadVariableOp2X
*simple_rnn_cell_10/MatMul_1/ReadVariableOp*simple_rnn_cell_10/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ë
¥
while_cond_13586
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_13586___redundant_placeholder03
/while_while_cond_13586___redundant_placeholder13
/while_while_cond_13586___redundant_placeholder23
/while_while_cond_13586___redundant_placeholder3
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
Õ

M__inference_time_distributed_6_layer_call_and_return_conditional_losses_14699

inputs*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource
identity¢dense_6/BiasAdd/ReadVariableOp¢dense_6/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¥
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:@.*
dtype02
dense_6/MatMul/ReadVariableOp
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/MatMul¤
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype02 
dense_6/BiasAdd/ReadVariableOp¡
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/BiasAddy
dense_6/SoftmaxSoftmaxdense_6/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_6/Softmaxw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   .   2
Reshape_1/shape
	Reshape_1Reshapedense_6/Softmax:softmax:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
	Reshape_1¬
IdentityIdentityReshape_1:output:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@::2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ï
½
,__inference_sequential_7_layer_call_fn_14143

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_137842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
4

while_body_13587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
9while_simple_rnn_cell_10_matmul_readvariableop_resource_0>
:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0?
;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
7while_simple_rnn_cell_10_matmul_readvariableop_resource<
8while_simple_rnn_cell_10_biasadd_readvariableop_resource=
9while_simple_rnn_cell_10_matmul_1_readvariableop_resource¢/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_10/MatMul/ReadVariableOp¢0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÚ
.while/simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:d@*
dtype020
.while/simple_rnn_cell_10/MatMul/ReadVariableOpè
while/simple_rnn_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_10/MatMulÙ
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype021
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOpå
 while/simple_rnn_cell_10/BiasAddBiasAdd)while/simple_rnn_cell_10/MatMul:product:07while/simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_10/BiasAddà
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype022
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOpÑ
!while/simple_rnn_cell_10/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/simple_rnn_cell_10/MatMul_1Ï
while/simple_rnn_cell_10/addAddV2)while/simple_rnn_cell_10/BiasAdd:output:0+while/simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_10/add
while/simple_rnn_cell_10/TanhTanh while/simple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_10/Tanhå
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_10/Tanh:y:0*
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
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ö
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2£
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity!while/simple_rnn_cell_10/Tanh:y:00^while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_10/MatMul/ReadVariableOp1^while/simple_rnn_cell_10/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_10_biasadd_readvariableop_resource:while_simple_rnn_cell_10_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_10_matmul_1_readvariableop_resource;while_simple_rnn_cell_10_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_10_matmul_readvariableop_resource9while_simple_rnn_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2b
/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp/while/simple_rnn_cell_10/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_10/MatMul/ReadVariableOp.while/simple_rnn_cell_10/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_10/MatMul_1/ReadVariableOp0while/simple_rnn_cell_10/MatMul_1/ReadVariableOp: 
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
while_cond_14580
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_14580___redundant_placeholder03
/while_while_cond_14580___redundant_placeholder13
/while_while_cond_14580___redundant_placeholder23
/while_while_cond_14580___redundant_placeholder3
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
ÆH

H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_14289
inputs_05
1simple_rnn_cell_10_matmul_readvariableop_resource6
2simple_rnn_cell_10_biasadd_readvariableop_resource7
3simple_rnn_cell_10_matmul_1_readvariableop_resource
identity¢)simple_rnn_cell_10/BiasAdd/ReadVariableOp¢(simple_rnn_cell_10/MatMul/ReadVariableOp¢*simple_rnn_cell_10/MatMul_1/ReadVariableOp¢whileF
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
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
valueB"ÿÿÿÿd   27
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
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_2Æ
(simple_rnn_cell_10/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_10_matmul_readvariableop_resource*
_output_shapes

:d@*
dtype02*
(simple_rnn_cell_10/MatMul/ReadVariableOp¾
simple_rnn_cell_10/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/MatMulÅ
)simple_rnn_cell_10/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)simple_rnn_cell_10/BiasAdd/ReadVariableOpÍ
simple_rnn_cell_10/BiasAddBiasAdd#simple_rnn_cell_10/MatMul:product:01simple_rnn_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/BiasAddÌ
*simple_rnn_cell_10/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*simple_rnn_cell_10/MatMul_1/ReadVariableOpº
simple_rnn_cell_10/MatMul_1MatMulzeros:output:02simple_rnn_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/MatMul_1·
simple_rnn_cell_10/addAddV2#simple_rnn_cell_10/BiasAdd:output:0%simple_rnn_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/add
simple_rnn_cell_10/TanhTanhsimple_rnn_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_10/Tanh
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_10_matmul_readvariableop_resource2simple_rnn_cell_10_biasadd_readvariableop_resource3simple_rnn_cell_10_matmul_1_readvariableop_resource*
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
while_body_14223*
condR
while_cond_14222*8
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
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_10/BiasAdd/ReadVariableOp)^simple_rnn_cell_10/MatMul/ReadVariableOp+^simple_rnn_cell_10/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:::2V
)simple_rnn_cell_10/BiasAdd/ReadVariableOp)simple_rnn_cell_10/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_10/MatMul/ReadVariableOp(simple_rnn_cell_10/MatMul/ReadVariableOp2X
*simple_rnn_cell_10/MatMul_1/ReadVariableOp*simple_rnn_cell_10/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
Ë
¥
while_cond_14222
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_14222___redundant_placeholder03
/while_while_cond_14222___redundant_placeholder13
/while_while_cond_14222___redundant_placeholder23
/while_while_cond_14222___redundant_placeholder3
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
:"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ñ
serving_default½
R
embedding_10_input<
$serving_default_embedding_10_input:0ÿÿÿÿÿÿÿÿÿK
time_distributed_65
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ.tensorflow/serving/predict:ò×
÷(
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
`__call__
a_default_save_signature
*b&call_and_return_all_conditional_losses"·&
_tf_keras_sequential&{"class_name": "Sequential", "name": "sequential_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 130]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_10_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_10", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 130]}, "dtype": "float32", "input_dim": 17259, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 130}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_10", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_6", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 46, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 130]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 130]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_10_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_10", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 130]}, "dtype": "float32", "input_dim": 17259, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 130}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_10", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_6", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 46, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "acc", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
²


embeddings
	variables
trainable_variables
regularization_losses
	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_layerù{"class_name": "Embedding", "name": "embedding_10", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 130]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_10", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 130]}, "dtype": "float32", "input_dim": 17259, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 130}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 130]}}

cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
e__call__
*f&call_and_return_all_conditional_losses"×	
_tf_keras_rnn_layer¹	{"class_name": "SimpleRNN", "name": "simple_rnn_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_10", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 100]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 130, 100]}}
	
	layer
	variables
trainable_variables
regularization_losses
	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layerê{"class_name": "TimeDistributed", "name": "time_distributed_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "time_distributed_6", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 46, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 130, 64]}}
­
iter

beta_1

beta_2
	decay
learning_ratemV mW!mX"mY#mZv[ v\!v]"v^#v_"
	optimizer
J

0
1
 2
!3
"4
#5"
trackable_list_wrapper
C
0
 1
!2
"3
#4"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
	variables
$metrics
%layer_regularization_losses
trainable_variables
&non_trainable_variables
regularization_losses
'layer_metrics

(layers
`__call__
a_default_save_signature
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
,
iserving_default"
signature_map
+:)
ëd2embedding_10/embeddings
'

0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
	variables
)metrics
*layer_regularization_losses
trainable_variables
+non_trainable_variables
regularization_losses
,layer_metrics

-layers
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
é

kernel
 recurrent_kernel
!bias
.	variables
/trainable_variables
0regularization_losses
1	keras_api
j__call__
*k&call_and_return_all_conditional_losses"®
_tf_keras_layer{"class_name": "SimpleRNNCell", "name": "simple_rnn_cell_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_cell_10", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}
 "
trackable_list_wrapper
5
0
 1
!2"
trackable_list_wrapper
5
0
 1
!2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹
	variables
2metrics
3layer_regularization_losses
trainable_variables
4non_trainable_variables

5states
regularization_losses
6layer_metrics

7layers
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
ª

"kernel
#bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
l__call__
*m&call_and_return_all_conditional_losses"
_tf_keras_layerë{"class_name": "Dense", "name": "dense_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 46, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}}
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
	variables
<metrics
=layer_regularization_losses
trainable_variables
>non_trainable_variables
regularization_losses
?layer_metrics

@layers
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
9:7d@2'simple_rnn_10/simple_rnn_cell_10/kernel
C:A@@21simple_rnn_10/simple_rnn_cell_10/recurrent_kernel
3:1@2%simple_rnn_10/simple_rnn_cell_10/bias
+:)@.2time_distributed_6/kernel
%:#.2time_distributed_6/bias
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
'

0"
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'

0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
 1
!2"
trackable_list_wrapper
5
0
 1
!2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
.	variables
Cmetrics
Dlayer_regularization_losses
/trainable_variables
Enon_trainable_variables
0regularization_losses
Flayer_metrics

Glayers
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
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
'
0"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
8	variables
Hmetrics
Ilayer_regularization_losses
9trainable_variables
Jnon_trainable_variables
:regularization_losses
Klayer_metrics

Llayers
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
»
	Mtotal
	Ncount
O	variables
P	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
õ
	Qtotal
	Rcount
S
_fn_kwargs
T	variables
U	keras_api"®
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "acc", "dtype": "float32", "config": {"name": "acc", "dtype": "float32", "fn": "categorical_accuracy"}}
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
:  (2total
:  (2count
.
M0
N1"
trackable_list_wrapper
-
O	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
Q0
R1"
trackable_list_wrapper
-
T	variables"
_generic_user_object
>:<d@2.Adam/simple_rnn_10/simple_rnn_cell_10/kernel/m
H:F@@28Adam/simple_rnn_10/simple_rnn_cell_10/recurrent_kernel/m
8:6@2,Adam/simple_rnn_10/simple_rnn_cell_10/bias/m
0:.@.2 Adam/time_distributed_6/kernel/m
*:(.2Adam/time_distributed_6/bias/m
>:<d@2.Adam/simple_rnn_10/simple_rnn_cell_10/kernel/v
H:F@@28Adam/simple_rnn_10/simple_rnn_cell_10/recurrent_kernel/v
8:6@2,Adam/simple_rnn_10/simple_rnn_cell_10/bias/v
0:.@.2 Adam/time_distributed_6/kernel/v
*:(.2Adam/time_distributed_6/bias/v
þ2û
,__inference_sequential_7_layer_call_fn_13837
,__inference_sequential_7_layer_call_fn_14143
,__inference_sequential_7_layer_call_fn_14160
,__inference_sequential_7_layer_call_fn_13799À
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
ê2ç
 __inference__wrapped_model_12770Â
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
annotationsª *2¢/
-*
embedding_10_inputÿÿÿÿÿÿÿÿÿ
ê2ç
G__inference_sequential_7_layer_call_and_return_conditional_losses_14126
G__inference_sequential_7_layer_call_and_return_conditional_losses_13760
G__inference_sequential_7_layer_call_and_return_conditional_losses_13995
G__inference_sequential_7_layer_call_and_return_conditional_losses_13739À
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
Ö2Ó
,__inference_embedding_10_layer_call_fn_14177¢
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
ñ2î
G__inference_embedding_10_layer_call_and_return_conditional_losses_14170¢
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
2
-__inference_simple_rnn_10_layer_call_fn_14412
-__inference_simple_rnn_10_layer_call_fn_14423
-__inference_simple_rnn_10_layer_call_fn_14658
-__inference_simple_rnn_10_layer_call_fn_14669Õ
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
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_14289
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_14401
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_14647
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_14535Õ
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
2
2__inference_time_distributed_6_layer_call_fn_14779
2__inference_time_distributed_6_layer_call_fn_14708
2__inference_time_distributed_6_layer_call_fn_14770
2__inference_time_distributed_6_layer_call_fn_14717À
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
2ÿ
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_14761
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_14684
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_14739
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_14699À
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
ÕBÒ
#__inference_signature_wrapper_13864embedding_10_input"
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
¬2©
2__inference_simple_rnn_cell_10_layer_call_fn_14841
2__inference_simple_rnn_cell_10_layer_call_fn_14827¾
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
M__inference_simple_rnn_cell_10_layer_call_and_return_conditional_losses_14813
M__inference_simple_rnn_cell_10_layer_call_and_return_conditional_losses_14796¾
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
Ñ2Î
'__inference_dense_6_layer_call_fn_14861¢
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
ì2é
B__inference_dense_6_layer_call_and_return_conditional_losses_14852¢
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
 ¹
 __inference__wrapped_model_12770
! "#<¢9
2¢/
-*
embedding_10_inputÿÿÿÿÿÿÿÿÿ
ª "LªI
G
time_distributed_61.
time_distributed_6ÿÿÿÿÿÿÿÿÿ.¢
B__inference_dense_6_layer_call_and_return_conditional_losses_14852\"#/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ.
 z
'__inference_dense_6_layer_call_fn_14861O"#/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ.¬
G__inference_embedding_10_layer_call_and_return_conditional_losses_14170a
0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿd
 
,__inference_embedding_10_layer_call_fn_14177T
0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿdÅ
G__inference_sequential_7_layer_call_and_return_conditional_losses_13739z
! "#D¢A
:¢7
-*
embedding_10_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ.
 Å
G__inference_sequential_7_layer_call_and_return_conditional_losses_13760z
! "#D¢A
:¢7
-*
embedding_10_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ.
 ¹
G__inference_sequential_7_layer_call_and_return_conditional_losses_13995n
! "#8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ.
 ¹
G__inference_sequential_7_layer_call_and_return_conditional_losses_14126n
! "#8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ.
 
,__inference_sequential_7_layer_call_fn_13799m
! "#D¢A
:¢7
-*
embedding_10_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ.
,__inference_sequential_7_layer_call_fn_13837m
! "#D¢A
:¢7
-*
embedding_10_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ.
,__inference_sequential_7_layer_call_fn_14143a
! "#8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ.
,__inference_sequential_7_layer_call_fn_14160a
! "#8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ.Ò
#__inference_signature_wrapper_13864ª
! "#R¢O
¢ 
HªE
C
embedding_10_input-*
embedding_10_inputÿÿÿÿÿÿÿÿÿ"LªI
G
time_distributed_61.
time_distributed_6ÿÿÿÿÿÿÿÿÿ.×
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_14289! O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ×
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_14401! O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ¿
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_14535s! @¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ@
 ¿
H__inference_simple_rnn_10_layer_call_and_return_conditional_losses_14647s! @¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ@
 ®
-__inference_simple_rnn_10_layer_call_fn_14412}! O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@®
-__inference_simple_rnn_10_layer_call_fn_14423}! O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
-__inference_simple_rnn_10_layer_call_fn_14658f! @¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@
-__inference_simple_rnn_10_layer_call_fn_14669f! @¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@
M__inference_simple_rnn_cell_10_layer_call_and_return_conditional_losses_14796·! \¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿd
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
M__inference_simple_rnn_cell_10_layer_call_and_return_conditional_losses_14813·! \¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿd
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
2__inference_simple_rnn_cell_10_layer_call_fn_14827©! \¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿd
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
2__inference_simple_rnn_cell_10_layer_call_fn_14841©! \¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿd
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p 
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ@
"

1/0ÿÿÿÿÿÿÿÿÿ@¿
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_14684n"#<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ@
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ.
 ¿
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_14699n"#<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ@
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ.
 Ï
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_14739~"#D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ.
 Ï
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_14761~"#D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ.
 
2__inference_time_distributed_6_layer_call_fn_14708a"#<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ@
p

 
ª "ÿÿÿÿÿÿÿÿÿ.
2__inference_time_distributed_6_layer_call_fn_14717a"#<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ@
p 

 
ª "ÿÿÿÿÿÿÿÿÿ.§
2__inference_time_distributed_6_layer_call_fn_14770q"#D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ.§
2__inference_time_distributed_6_layer_call_fn_14779q"#D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ.