®
Õ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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

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
û
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%·Ñ8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
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
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.11.02v2.11.0-rc2-15-g6290819256d8Æ¿
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
t
Adam/v/fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/v/fc/bias
m
"Adam/v/fc/bias/Read/ReadVariableOpReadVariableOpAdam/v/fc/bias*
_output_shapes
:*
dtype0
t
Adam/m/fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/m/fc/bias
m
"Adam/m/fc/bias/Read/ReadVariableOpReadVariableOpAdam/m/fc/bias*
_output_shapes
:*
dtype0
}
Adam/v/fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	1*!
shared_nameAdam/v/fc/kernel
v
$Adam/v/fc/kernel/Read/ReadVariableOpReadVariableOpAdam/v/fc/kernel*
_output_shapes
:	1*
dtype0
}
Adam/m/fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	1*!
shared_nameAdam/m/fc/kernel
v
$Adam/m/fc/kernel/Read/ReadVariableOpReadVariableOpAdam/m/fc/kernel*
_output_shapes
:	1*
dtype0
v
Adam/v/bn0/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdam/v/bn0/beta
o
#Adam/v/bn0/beta/Read/ReadVariableOpReadVariableOpAdam/v/bn0/beta*
_output_shapes
: *
dtype0
v
Adam/m/bn0/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdam/m/bn0/beta
o
#Adam/m/bn0/beta/Read/ReadVariableOpReadVariableOpAdam/m/bn0/beta*
_output_shapes
: *
dtype0
x
Adam/v/bn0/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/v/bn0/gamma
q
$Adam/v/bn0/gamma/Read/ReadVariableOpReadVariableOpAdam/v/bn0/gamma*
_output_shapes
: *
dtype0
x
Adam/m/bn0/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/m/bn0/gamma
q
$Adam/m/bn0/gamma/Read/ReadVariableOpReadVariableOpAdam/m/bn0/gamma*
_output_shapes
: *
dtype0
z
Adam/v/conv0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/v/conv0/bias
s
%Adam/v/conv0/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv0/bias*
_output_shapes
: *
dtype0
z
Adam/m/conv0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/m/conv0/bias
s
%Adam/m/conv0/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv0/bias*
_output_shapes
: *
dtype0

Adam/v/conv0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/v/conv0/kernel

'Adam/v/conv0/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv0/kernel*&
_output_shapes
: *
dtype0

Adam/m/conv0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/m/conv0/kernel

'Adam/m/conv0/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv0/kernel*&
_output_shapes
: *
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
f
fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc/bias
_
fc/bias/Read/ReadVariableOpReadVariableOpfc/bias*
_output_shapes
:*
dtype0
o
	fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	1*
shared_name	fc/kernel
h
fc/kernel/Read/ReadVariableOpReadVariableOp	fc/kernel*
_output_shapes
:	1*
dtype0
~
bn0/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_namebn0/moving_variance
w
'bn0/moving_variance/Read/ReadVariableOpReadVariableOpbn0/moving_variance*
_output_shapes
: *
dtype0
v
bn0/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namebn0/moving_mean
o
#bn0/moving_mean/Read/ReadVariableOpReadVariableOpbn0/moving_mean*
_output_shapes
: *
dtype0
h
bn0/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
bn0/beta
a
bn0/beta/Read/ReadVariableOpReadVariableOpbn0/beta*
_output_shapes
: *
dtype0
j
	bn0/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	bn0/gamma
c
bn0/gamma/Read/ReadVariableOpReadVariableOp	bn0/gamma*
_output_shapes
: *
dtype0
l

conv0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
conv0/bias
e
conv0/bias/Read/ReadVariableOpReadVariableOp
conv0/bias*
_output_shapes
: *
dtype0
|
conv0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv0/kernel
u
 conv0/kernel/Read/ReadVariableOpReadVariableOpconv0/kernel*&
_output_shapes
: *
dtype0

serving_default_input_1Placeholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿðð
ª
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv0/kernel
conv0/bias	bn0/gammabn0/betabn0/moving_meanbn0/moving_variance	fc/kernelfc/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_38980

NoOpNoOp
ÂB
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ýA
valueóABðA BéA

layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
È
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias
 !_jit_compiled_convolution_op*
Õ
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(axis
	)gamma
*beta
+moving_mean
,moving_variance*

-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses* 

3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses* 

9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses* 

?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses* 
¦
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias*
<
0
 1
)2
*3
+4
,5
K6
L7*
.
0
 1
)2
*3
K4
L5*
* 
°
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Rtrace_0
Strace_1
Ttrace_2
Utrace_3* 
6
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_3* 
* 

Z
_variables
[_iterations
\_learning_rate
]_index_dict
^
_momentums
__velocities
`_update_step_xla*

aserving_default* 
* 
* 
* 

bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

gtrace_0* 

htrace_0* 

0
 1*

0
 1*
* 

inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ntrace_0* 

otrace_0* 
\V
VARIABLE_VALUEconv0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
conv0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
)0
*1
+2
,3*

)0
*1*
* 

pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

utrace_0
vtrace_1* 

wtrace_0
xtrace_1* 
* 
XR
VARIABLE_VALUE	bn0/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEbn0/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEbn0/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbn0/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

~trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

K0
L1*

K0
L1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

trace_0* 

trace_0* 
YS
VARIABLE_VALUE	fc/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEfc/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

+0
,1*
C
0
1
2
3
4
5
6
7
	8*

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
n
[0
1
2
 3
¡4
¢5
£6
¤7
¥8
¦9
§10
¨11
©12*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
4
0
 1
¢2
¤3
¦4
¨5*
4
0
¡1
£2
¥3
§4
©5*
* 
* 
* 
* 
* 
* 
* 
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
+0
,1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
ª	variables
«	keras_api

¬total

­count*
M
®	variables
¯	keras_api

°total

±count
²
_fn_kwargs*
^X
VARIABLE_VALUEAdam/m/conv0/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/conv0/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/conv0/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/conv0/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/m/bn0/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/v/bn0/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/m/bn0/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/v/bn0/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/m/fc/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/fc/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/m/fc/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/v/fc/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*

¬0
­1*

ª	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

°0
±1*

®	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¹	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename conv0/kernel/Read/ReadVariableOpconv0/bias/Read/ReadVariableOpbn0/gamma/Read/ReadVariableOpbn0/beta/Read/ReadVariableOp#bn0/moving_mean/Read/ReadVariableOp'bn0/moving_variance/Read/ReadVariableOpfc/kernel/Read/ReadVariableOpfc/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp'Adam/m/conv0/kernel/Read/ReadVariableOp'Adam/v/conv0/kernel/Read/ReadVariableOp%Adam/m/conv0/bias/Read/ReadVariableOp%Adam/v/conv0/bias/Read/ReadVariableOp$Adam/m/bn0/gamma/Read/ReadVariableOp$Adam/v/bn0/gamma/Read/ReadVariableOp#Adam/m/bn0/beta/Read/ReadVariableOp#Adam/v/bn0/beta/Read/ReadVariableOp$Adam/m/fc/kernel/Read/ReadVariableOp$Adam/v/fc/kernel/Read/ReadVariableOp"Adam/m/fc/bias/Read/ReadVariableOp"Adam/v/fc/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*'
Tin 
2	*
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
__inference__traced_save_39352
¬
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv0/kernel
conv0/bias	bn0/gammabn0/betabn0/moving_meanbn0/moving_variance	fc/kernelfc/bias	iterationlearning_rateAdam/m/conv0/kernelAdam/v/conv0/kernelAdam/m/conv0/biasAdam/v/conv0/biasAdam/m/bn0/gammaAdam/v/bn0/gammaAdam/m/bn0/betaAdam/v/bn0/betaAdam/m/fc/kernelAdam/v/fc/kernelAdam/m/fc/biasAdam/v/fc/biastotal_1count_1totalcount*&
Tin
2*
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
!__inference__traced_restore_39440þº
ç
e
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_39109

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

`
D__inference_max_pool1_layer_call_and_return_conditional_losses_38686

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê

%__inference_conv0_layer_call_fn_39118

inputs!
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_38707y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿôô: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô
 
_user_specified_nameinputs
¸+
¶
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_39098

inputs>
$conv0_conv2d_readvariableop_resource: 3
%conv0_biasadd_readvariableop_resource: )
bn0_readvariableop_resource: +
bn0_readvariableop_1_resource: :
,bn0_fusedbatchnormv3_readvariableop_resource: <
.bn0_fusedbatchnormv3_readvariableop_1_resource: 4
!fc_matmul_readvariableop_resource:	10
"fc_biasadd_readvariableop_resource:
identity¢bn0/AssignNewValue¢bn0/AssignNewValue_1¢#bn0/FusedBatchNormV3/ReadVariableOp¢%bn0/FusedBatchNormV3/ReadVariableOp_1¢bn0/ReadVariableOp¢bn0/ReadVariableOp_1¢conv0/BiasAdd/ReadVariableOp¢conv0/Conv2D/ReadVariableOp¢fc/BiasAdd/ReadVariableOp¢fc/MatMul/ReadVariableOp
zero_padding2d/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             
zero_padding2d/PadPadinputs$zero_padding2d/Pad/paddings:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô
conv0/Conv2D/ReadVariableOpReadVariableOp$conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0½
conv0/Conv2DConv2Dzero_padding2d/Pad:output:0#conv0/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî *
paddingVALID*
strides
~
conv0/BiasAdd/ReadVariableOpReadVariableOp%conv0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv0/BiasAddBiasAddconv0/Conv2D:output:0$conv0/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî j
bn0/ReadVariableOpReadVariableOpbn0_readvariableop_resource*
_output_shapes
: *
dtype0n
bn0/ReadVariableOp_1ReadVariableOpbn0_readvariableop_1_resource*
_output_shapes
: *
dtype0
#bn0/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
%bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ê
bn0/FusedBatchNormV3FusedBatchNormV3conv0/BiasAdd:output:0bn0/ReadVariableOp:value:0bn0/ReadVariableOp_1:value:0+bn0/FusedBatchNormV3/ReadVariableOp:value:0-bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿîî : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<Ö
bn0/AssignNewValueAssignVariableOp,bn0_fusedbatchnormv3_readvariableop_resource!bn0/FusedBatchNormV3:batch_mean:0$^bn0/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(à
bn0/AssignNewValue_1AssignVariableOp.bn0_fusedbatchnormv3_readvariableop_1_resource%bn0/FusedBatchNormV3:batch_variance:0&^bn0/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(m
activation/ReluRelubn0/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî ¨
max_pool0/MaxPoolMaxPoolactivation/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ;; *
ksize
*
paddingVALID*
strides
¥
max_pool1/MaxPoolMaxPoolmax_pool0/MaxPool:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  
flatten_2/ReshapeReshapemax_pool1/MaxPool:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1{
fc/MatMul/ReadVariableOpReadVariableOp!fc_matmul_readvariableop_resource*
_output_shapes
:	1*
dtype0
	fc/MatMulMatMulflatten_2/Reshape:output:0 fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
fc/BiasAdd/ReadVariableOpReadVariableOp"fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

fc/BiasAddBiasAddfc/MatMul:product:0!fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

fc/SigmoidSigmoidfc/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentityfc/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp^bn0/AssignNewValue^bn0/AssignNewValue_1$^bn0/FusedBatchNormV3/ReadVariableOp&^bn0/FusedBatchNormV3/ReadVariableOp_1^bn0/ReadVariableOp^bn0/ReadVariableOp_1^conv0/BiasAdd/ReadVariableOp^conv0/Conv2D/ReadVariableOp^fc/BiasAdd/ReadVariableOp^fc/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿðð: : : : : : : : 2(
bn0/AssignNewValuebn0/AssignNewValue2,
bn0/AssignNewValue_1bn0/AssignNewValue_12J
#bn0/FusedBatchNormV3/ReadVariableOp#bn0/FusedBatchNormV3/ReadVariableOp2N
%bn0/FusedBatchNormV3/ReadVariableOp_1%bn0/FusedBatchNormV3/ReadVariableOp_12(
bn0/ReadVariableOpbn0/ReadVariableOp2,
bn0/ReadVariableOp_1bn0/ReadVariableOp_12<
conv0/BiasAdd/ReadVariableOpconv0/BiasAdd/ReadVariableOp2:
conv0/Conv2D/ReadVariableOpconv0/Conv2D/ReadVariableOp26
fc/BiasAdd/ReadVariableOpfc/BiasAdd/ReadVariableOp24
fc/MatMul/ReadVariableOpfc/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð
 
_user_specified_nameinputs
¯
E
)__inference_flatten_2_layer_call_fn_39225

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_38737a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ç
e
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_38598

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
­
>__inference_bn0_layer_call_and_return_conditional_losses_38654

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<Æ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ð
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
å	
Ã
3__inference_BrainDetectionModel_layer_call_fn_39022

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:	1
	unknown_6:
identity¢StatefulPartitionedCall¯
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_38859o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿðð: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð
 
_user_specified_nameinputs
è	
Ä
3__inference_BrainDetectionModel_layer_call_fn_38899
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:	1
	unknown_6:
identity¢StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_38859o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿðð: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð
!
_user_specified_name	input_1
ª
E
)__inference_max_pool0_layer_call_fn_39205

inputs
identityÒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_38674
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·

"__inference_fc_layer_call_fn_39240

inputs
unknown:	1
	unknown_0:
identity¢StatefulPartitionedCallÒ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_38750o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ1: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs
ª
E
)__inference_max_pool1_layer_call_fn_39215

inputs
identityÒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_38686
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é
¾
#__inference_bn0_layer_call_fn_39154

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_38654
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


ï
=__inference_fc_layer_call_and_return_conditional_losses_38750

inputs1
matmul_readvariableop_resource:	1-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	1*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs
ç	
Ã
3__inference_BrainDetectionModel_layer_call_fn_39001

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:	1
	unknown_6:
identity¢StatefulPartitionedCall±
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_38757o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿðð: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð
 
_user_specified_nameinputs
ñ
a
E__inference_activation_layer_call_and_return_conditional_losses_39200

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿîî :Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî 
 
_user_specified_nameinputs

`
D__inference_max_pool0_layer_call_and_return_conditional_losses_38674

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê	
Ä
3__inference_BrainDetectionModel_layer_call_fn_38776
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:	1
	unknown_6:
identity¢StatefulPartitionedCall²
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_38757o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿðð: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð
!
_user_specified_name	input_1
Í
£
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_38757

inputs%
conv0_38708: 
conv0_38710: 
	bn0_38713: 
	bn0_38715: 
	bn0_38717: 
	bn0_38719: 
fc_38751:	1
fc_38753:
identity¢bn0/StatefulPartitionedCall¢conv0/StatefulPartitionedCall¢fc/StatefulPartitionedCallÍ
zero_padding2d/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_38598
conv0/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0conv0_38708conv0_38710*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_38707
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0	bn0_38713	bn0_38715	bn0_38717	bn0_38719*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_38623ã
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_38727Þ
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ;; * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_38674Ý
max_pool1/PartitionedCallPartitionedCall"max_pool0/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_38686Ö
flatten_2/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_38737ñ
fc/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0fc_38751fc_38753*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_38750r
IdentityIdentity#fc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
NoOpNoOp^bn0/StatefulPartitionedCall^conv0/StatefulPartitionedCall^fc/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿðð: : : : : : : : 2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð
 
_user_specified_nameinputs
Æ
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_39231

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ñ
a
E__inference_activation_layer_call_and_return_conditional_losses_38727

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿîî :Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî 
 
_user_specified_nameinputs
®

ù
@__inference_conv0_layer_call_and_return_conditional_losses_39128

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿôô: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô
 
_user_specified_nameinputs

`
D__inference_max_pool0_layer_call_and_return_conditional_losses_39210

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
åm
ø
!__inference__traced_restore_39440
file_prefix7
assignvariableop_conv0_kernel: +
assignvariableop_1_conv0_bias: *
assignvariableop_2_bn0_gamma: )
assignvariableop_3_bn0_beta: 0
"assignvariableop_4_bn0_moving_mean: 4
&assignvariableop_5_bn0_moving_variance: /
assignvariableop_6_fc_kernel:	1(
assignvariableop_7_fc_bias:&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: A
'assignvariableop_10_adam_m_conv0_kernel: A
'assignvariableop_11_adam_v_conv0_kernel: 3
%assignvariableop_12_adam_m_conv0_bias: 3
%assignvariableop_13_adam_v_conv0_bias: 2
$assignvariableop_14_adam_m_bn0_gamma: 2
$assignvariableop_15_adam_v_bn0_gamma: 1
#assignvariableop_16_adam_m_bn0_beta: 1
#assignvariableop_17_adam_v_bn0_beta: 7
$assignvariableop_18_adam_m_fc_kernel:	17
$assignvariableop_19_adam_v_fc_kernel:	10
"assignvariableop_20_adam_m_fc_bias:0
"assignvariableop_21_adam_v_fc_bias:%
assignvariableop_22_total_1: %
assignvariableop_23_count_1: #
assignvariableop_24_total: #
assignvariableop_25_count: 
identity_27¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ú
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0* 
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¦
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B ¦
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOpAssignVariableOpassignvariableop_conv0_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv0_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_2AssignVariableOpassignvariableop_2_bn0_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_3AssignVariableOpassignvariableop_3_bn0_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_4AssignVariableOp"assignvariableop_4_bn0_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_5AssignVariableOp&assignvariableop_5_bn0_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_6AssignVariableOpassignvariableop_6_fc_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_7AssignVariableOpassignvariableop_7_fc_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:³
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_10AssignVariableOp'assignvariableop_10_adam_m_conv0_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_11AssignVariableOp'assignvariableop_11_adam_v_conv0_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_12AssignVariableOp%assignvariableop_12_adam_m_conv0_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_13AssignVariableOp%assignvariableop_13_adam_v_conv0_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_14AssignVariableOp$assignvariableop_14_adam_m_bn0_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_15AssignVariableOp$assignvariableop_15_adam_v_bn0_gammaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_16AssignVariableOp#assignvariableop_16_adam_m_bn0_betaIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_17AssignVariableOp#assignvariableop_17_adam_v_bn0_betaIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_18AssignVariableOp$assignvariableop_18_adam_m_fc_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_19AssignVariableOp$assignvariableop_19_adam_v_fc_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_20AssignVariableOp"assignvariableop_20_adam_m_fc_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_21AssignVariableOp"assignvariableop_21_adam_v_fc_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_1Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_1Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_24AssignVariableOpassignvariableop_24_totalIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_25AssignVariableOpassignvariableop_25_countIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 
Identity_26Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_27IdentityIdentity_26:output:0^NoOp_1*
T0*
_output_shapes
: ø
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_27Identity_27:output:0*I
_input_shapes8
6: : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_25AssignVariableOp_252(
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
¬	
´
#__inference_signature_wrapper_38980
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:	1
	unknown_6:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_38588o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿðð: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð
!
_user_specified_name	input_1

`
D__inference_max_pool1_layer_call_and_return_conditional_losses_39220

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®

ù
@__inference_conv0_layer_call_and_return_conditional_losses_38707

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿôô: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô
 
_user_specified_nameinputs
´
J
.__inference_zero_padding2d_layer_call_fn_39103

inputs
identity×
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_38598
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î
¤
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_38955
input_1%
conv0_38931: 
conv0_38933: 
	bn0_38936: 
	bn0_38938: 
	bn0_38940: 
	bn0_38942: 
fc_38949:	1
fc_38951:
identity¢bn0/StatefulPartitionedCall¢conv0/StatefulPartitionedCall¢fc/StatefulPartitionedCallÎ
zero_padding2d/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_38598
conv0/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0conv0_38931conv0_38933*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_38707
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0	bn0_38936	bn0_38938	bn0_38940	bn0_38942*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_38654ã
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_38727Þ
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ;; * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_38674Ý
max_pool1/PartitionedCallPartitionedCall"max_pool0/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_38686Ö
flatten_2/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_38737ñ
fc/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0fc_38949fc_38951*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_38750r
IdentityIdentity#fc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
NoOpNoOp^bn0/StatefulPartitionedCall^conv0/StatefulPartitionedCall^fc/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿðð: : : : : : : : 2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð
!
_user_specified_name	input_1
ó
­
>__inference_bn0_layer_call_and_return_conditional_losses_39190

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<Æ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ð
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¹

>__inference_bn0_layer_call_and_return_conditional_losses_39172

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ °
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


ï
=__inference_fc_layer_call_and_return_conditional_losses_39251

inputs1
matmul_readvariableop_resource:	1-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	1*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs
¹

>__inference_bn0_layer_call_and_return_conditional_losses_38623

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ °
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ç
F
*__inference_activation_layer_call_fn_39195

inputs
identityº
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_38727j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿîî :Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî 
 
_user_specified_nameinputs
ë
¾
#__inference_bn0_layer_call_fn_39141

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_38623
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ë
£
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_38859

inputs%
conv0_38835: 
conv0_38837: 
	bn0_38840: 
	bn0_38842: 
	bn0_38844: 
	bn0_38846: 
fc_38853:	1
fc_38855:
identity¢bn0/StatefulPartitionedCall¢conv0/StatefulPartitionedCall¢fc/StatefulPartitionedCallÍ
zero_padding2d/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_38598
conv0/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0conv0_38835conv0_38837*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_38707
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0	bn0_38840	bn0_38842	bn0_38844	bn0_38846*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_38654ã
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_38727Þ
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ;; * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_38674Ý
max_pool1/PartitionedCallPartitionedCall"max_pool0/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_38686Ö
flatten_2/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_38737ñ
fc/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0fc_38853fc_38855*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_38750r
IdentityIdentity#fc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
NoOpNoOp^bn0/StatefulPartitionedCall^conv0/StatefulPartitionedCall^fc/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿðð: : : : : : : : 2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð
 
_user_specified_nameinputs
Ä7


__inference__traced_save_39352
file_prefix+
'savev2_conv0_kernel_read_readvariableop)
%savev2_conv0_bias_read_readvariableop(
$savev2_bn0_gamma_read_readvariableop'
#savev2_bn0_beta_read_readvariableop.
*savev2_bn0_moving_mean_read_readvariableop2
.savev2_bn0_moving_variance_read_readvariableop(
$savev2_fc_kernel_read_readvariableop&
"savev2_fc_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop2
.savev2_adam_m_conv0_kernel_read_readvariableop2
.savev2_adam_v_conv0_kernel_read_readvariableop0
,savev2_adam_m_conv0_bias_read_readvariableop0
,savev2_adam_v_conv0_bias_read_readvariableop/
+savev2_adam_m_bn0_gamma_read_readvariableop/
+savev2_adam_v_bn0_gamma_read_readvariableop.
*savev2_adam_m_bn0_beta_read_readvariableop.
*savev2_adam_v_bn0_beta_read_readvariableop/
+savev2_adam_m_fc_kernel_read_readvariableop/
+savev2_adam_v_fc_kernel_read_readvariableop-
)savev2_adam_m_fc_bias_read_readvariableop-
)savev2_adam_v_fc_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ÷
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0* 
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH£
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B ­

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv0_kernel_read_readvariableop%savev2_conv0_bias_read_readvariableop$savev2_bn0_gamma_read_readvariableop#savev2_bn0_beta_read_readvariableop*savev2_bn0_moving_mean_read_readvariableop.savev2_bn0_moving_variance_read_readvariableop$savev2_fc_kernel_read_readvariableop"savev2_fc_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop.savev2_adam_m_conv0_kernel_read_readvariableop.savev2_adam_v_conv0_kernel_read_readvariableop,savev2_adam_m_conv0_bias_read_readvariableop,savev2_adam_v_conv0_bias_read_readvariableop+savev2_adam_m_bn0_gamma_read_readvariableop+savev2_adam_v_bn0_gamma_read_readvariableop*savev2_adam_m_bn0_beta_read_readvariableop*savev2_adam_v_bn0_beta_read_readvariableop+savev2_adam_m_fc_kernel_read_readvariableop+savev2_adam_v_fc_kernel_read_readvariableop)savev2_adam_m_fc_bias_read_readvariableop)savev2_adam_v_fc_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *)
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:³
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

identity_1Identity_1:output:0*Ð
_input_shapes¾
»: : : : : : : :	1:: : : : : : : : : : :	1:	1::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	1: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	1:%!

_output_shapes
:	1: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
£4

 __inference__wrapped_model_38588
input_1R
8braindetectionmodel_conv0_conv2d_readvariableop_resource: G
9braindetectionmodel_conv0_biasadd_readvariableop_resource: =
/braindetectionmodel_bn0_readvariableop_resource: ?
1braindetectionmodel_bn0_readvariableop_1_resource: N
@braindetectionmodel_bn0_fusedbatchnormv3_readvariableop_resource: P
Bbraindetectionmodel_bn0_fusedbatchnormv3_readvariableop_1_resource: H
5braindetectionmodel_fc_matmul_readvariableop_resource:	1D
6braindetectionmodel_fc_biasadd_readvariableop_resource:
identity¢7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp¢9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1¢&BrainDetectionModel/bn0/ReadVariableOp¢(BrainDetectionModel/bn0/ReadVariableOp_1¢0BrainDetectionModel/conv0/BiasAdd/ReadVariableOp¢/BrainDetectionModel/conv0/Conv2D/ReadVariableOp¢-BrainDetectionModel/fc/BiasAdd/ReadVariableOp¢,BrainDetectionModel/fc/MatMul/ReadVariableOp 
/BrainDetectionModel/zero_padding2d/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ¬
&BrainDetectionModel/zero_padding2d/PadPadinput_18BrainDetectionModel/zero_padding2d/Pad/paddings:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô°
/BrainDetectionModel/conv0/Conv2D/ReadVariableOpReadVariableOp8braindetectionmodel_conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ù
 BrainDetectionModel/conv0/Conv2DConv2D/BrainDetectionModel/zero_padding2d/Pad:output:07BrainDetectionModel/conv0/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî *
paddingVALID*
strides
¦
0BrainDetectionModel/conv0/BiasAdd/ReadVariableOpReadVariableOp9braindetectionmodel_conv0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Í
!BrainDetectionModel/conv0/BiasAddBiasAdd)BrainDetectionModel/conv0/Conv2D:output:08BrainDetectionModel/conv0/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî 
&BrainDetectionModel/bn0/ReadVariableOpReadVariableOp/braindetectionmodel_bn0_readvariableop_resource*
_output_shapes
: *
dtype0
(BrainDetectionModel/bn0/ReadVariableOp_1ReadVariableOp1braindetectionmodel_bn0_readvariableop_1_resource*
_output_shapes
: *
dtype0´
7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOpReadVariableOp@braindetectionmodel_bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0¸
9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbraindetectionmodel_bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ô
(BrainDetectionModel/bn0/FusedBatchNormV3FusedBatchNormV3*BrainDetectionModel/conv0/BiasAdd:output:0.BrainDetectionModel/bn0/ReadVariableOp:value:00BrainDetectionModel/bn0/ReadVariableOp_1:value:0?BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp:value:0ABrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿîî : : : : :*
epsilon%o:*
is_training( 
#BrainDetectionModel/activation/ReluRelu,BrainDetectionModel/bn0/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî Ð
%BrainDetectionModel/max_pool0/MaxPoolMaxPool1BrainDetectionModel/activation/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ;; *
ksize
*
paddingVALID*
strides
Í
%BrainDetectionModel/max_pool1/MaxPoolMaxPool.BrainDetectionModel/max_pool0/MaxPool:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
t
#BrainDetectionModel/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  Á
%BrainDetectionModel/flatten_2/ReshapeReshape.BrainDetectionModel/max_pool1/MaxPool:output:0,BrainDetectionModel/flatten_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1£
,BrainDetectionModel/fc/MatMul/ReadVariableOpReadVariableOp5braindetectionmodel_fc_matmul_readvariableop_resource*
_output_shapes
:	1*
dtype0¿
BrainDetectionModel/fc/MatMulMatMul.BrainDetectionModel/flatten_2/Reshape:output:04BrainDetectionModel/fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-BrainDetectionModel/fc/BiasAdd/ReadVariableOpReadVariableOp6braindetectionmodel_fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
BrainDetectionModel/fc/BiasAddBiasAdd'BrainDetectionModel/fc/MatMul:product:05BrainDetectionModel/fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
BrainDetectionModel/fc/SigmoidSigmoid'BrainDetectionModel/fc/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
IdentityIdentity"BrainDetectionModel/fc/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp8^BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp:^BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1'^BrainDetectionModel/bn0/ReadVariableOp)^BrainDetectionModel/bn0/ReadVariableOp_11^BrainDetectionModel/conv0/BiasAdd/ReadVariableOp0^BrainDetectionModel/conv0/Conv2D/ReadVariableOp.^BrainDetectionModel/fc/BiasAdd/ReadVariableOp-^BrainDetectionModel/fc/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿðð: : : : : : : : 2r
7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp2v
9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_19BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_12P
&BrainDetectionModel/bn0/ReadVariableOp&BrainDetectionModel/bn0/ReadVariableOp2T
(BrainDetectionModel/bn0/ReadVariableOp_1(BrainDetectionModel/bn0/ReadVariableOp_12d
0BrainDetectionModel/conv0/BiasAdd/ReadVariableOp0BrainDetectionModel/conv0/BiasAdd/ReadVariableOp2b
/BrainDetectionModel/conv0/Conv2D/ReadVariableOp/BrainDetectionModel/conv0/Conv2D/ReadVariableOp2^
-BrainDetectionModel/fc/BiasAdd/ReadVariableOp-BrainDetectionModel/fc/BiasAdd/ReadVariableOp2\
,BrainDetectionModel/fc/MatMul/ReadVariableOp,BrainDetectionModel/fc/MatMul/ReadVariableOp:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð
!
_user_specified_name	input_1
¾&

N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_39060

inputs>
$conv0_conv2d_readvariableop_resource: 3
%conv0_biasadd_readvariableop_resource: )
bn0_readvariableop_resource: +
bn0_readvariableop_1_resource: :
,bn0_fusedbatchnormv3_readvariableop_resource: <
.bn0_fusedbatchnormv3_readvariableop_1_resource: 4
!fc_matmul_readvariableop_resource:	10
"fc_biasadd_readvariableop_resource:
identity¢#bn0/FusedBatchNormV3/ReadVariableOp¢%bn0/FusedBatchNormV3/ReadVariableOp_1¢bn0/ReadVariableOp¢bn0/ReadVariableOp_1¢conv0/BiasAdd/ReadVariableOp¢conv0/Conv2D/ReadVariableOp¢fc/BiasAdd/ReadVariableOp¢fc/MatMul/ReadVariableOp
zero_padding2d/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             
zero_padding2d/PadPadinputs$zero_padding2d/Pad/paddings:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô
conv0/Conv2D/ReadVariableOpReadVariableOp$conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0½
conv0/Conv2DConv2Dzero_padding2d/Pad:output:0#conv0/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî *
paddingVALID*
strides
~
conv0/BiasAdd/ReadVariableOpReadVariableOp%conv0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv0/BiasAddBiasAddconv0/Conv2D:output:0$conv0/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî j
bn0/ReadVariableOpReadVariableOpbn0_readvariableop_resource*
_output_shapes
: *
dtype0n
bn0/ReadVariableOp_1ReadVariableOpbn0_readvariableop_1_resource*
_output_shapes
: *
dtype0
#bn0/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
%bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ü
bn0/FusedBatchNormV3FusedBatchNormV3conv0/BiasAdd:output:0bn0/ReadVariableOp:value:0bn0/ReadVariableOp_1:value:0+bn0/FusedBatchNormV3/ReadVariableOp:value:0-bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿîî : : : : :*
epsilon%o:*
is_training( m
activation/ReluRelubn0/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî ¨
max_pool0/MaxPoolMaxPoolactivation/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ;; *
ksize
*
paddingVALID*
strides
¥
max_pool1/MaxPoolMaxPoolmax_pool0/MaxPool:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  
flatten_2/ReshapeReshapemax_pool1/MaxPool:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1{
fc/MatMul/ReadVariableOpReadVariableOp!fc_matmul_readvariableop_resource*
_output_shapes
:	1*
dtype0
	fc/MatMulMatMulflatten_2/Reshape:output:0 fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
fc/BiasAdd/ReadVariableOpReadVariableOp"fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

fc/BiasAddBiasAddfc/MatMul:product:0!fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

fc/SigmoidSigmoidfc/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentityfc/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
NoOpNoOp$^bn0/FusedBatchNormV3/ReadVariableOp&^bn0/FusedBatchNormV3/ReadVariableOp_1^bn0/ReadVariableOp^bn0/ReadVariableOp_1^conv0/BiasAdd/ReadVariableOp^conv0/Conv2D/ReadVariableOp^fc/BiasAdd/ReadVariableOp^fc/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿðð: : : : : : : : 2J
#bn0/FusedBatchNormV3/ReadVariableOp#bn0/FusedBatchNormV3/ReadVariableOp2N
%bn0/FusedBatchNormV3/ReadVariableOp_1%bn0/FusedBatchNormV3/ReadVariableOp_12(
bn0/ReadVariableOpbn0/ReadVariableOp2,
bn0/ReadVariableOp_1bn0/ReadVariableOp_12<
conv0/BiasAdd/ReadVariableOpconv0/BiasAdd/ReadVariableOp2:
conv0/Conv2D/ReadVariableOpconv0/Conv2D/ReadVariableOp26
fc/BiasAdd/ReadVariableOpfc/BiasAdd/ReadVariableOp24
fc/MatMul/ReadVariableOpfc/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð
 
_user_specified_nameinputs
Ð
¤
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_38927
input_1%
conv0_38903: 
conv0_38905: 
	bn0_38908: 
	bn0_38910: 
	bn0_38912: 
	bn0_38914: 
fc_38921:	1
fc_38923:
identity¢bn0/StatefulPartitionedCall¢conv0/StatefulPartitionedCall¢fc/StatefulPartitionedCallÎ
zero_padding2d/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_38598
conv0/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0conv0_38903conv0_38905*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_38707
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0	bn0_38908	bn0_38910	bn0_38912	bn0_38914*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_38623ã
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿîî * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_38727Þ
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ;; * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_38674Ý
max_pool1/PartitionedCallPartitionedCall"max_pool0/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_38686Ö
flatten_2/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_38737ñ
fc/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0fc_38921fc_38923*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_38750r
IdentityIdentity#fc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
NoOpNoOp^bn0/StatefulPartitionedCall^conv0/StatefulPartitionedCall^fc/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿðð: : : : : : : : 2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð
!
_user_specified_name	input_1
Æ
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_38737

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¯
serving_default
E
input_1:
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿðð6
fc0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ÛÔ
¦
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias
 !_jit_compiled_convolution_op"
_tf_keras_layer
ê
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(axis
	)gamma
*beta
+moving_mean
,moving_variance"
_tf_keras_layer
¥
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
»
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias"
_tf_keras_layer
X
0
 1
)2
*3
+4
,5
K6
L7"
trackable_list_wrapper
J
0
 1
)2
*3
K4
L5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object

Rtrace_0
Strace_1
Ttrace_2
Utrace_32
3__inference_BrainDetectionModel_layer_call_fn_38776
3__inference_BrainDetectionModel_layer_call_fn_39001
3__inference_BrainDetectionModel_layer_call_fn_39022
3__inference_BrainDetectionModel_layer_call_fn_38899¿
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zRtrace_0zStrace_1zTtrace_2zUtrace_3
í
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_32
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_39060
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_39098
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_38927
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_38955¿
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zVtrace_0zWtrace_1zXtrace_2zYtrace_3
ËBÈ
 __inference__wrapped_model_38588input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 

Z
_variables
[_iterations
\_learning_rate
]_index_dict
^
_momentums
__velocities
`_update_step_xla"
experimentalOptimizer
,
aserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ò
gtrace_02Õ
.__inference_zero_padding2d_layer_call_fn_39103¢
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
 zgtrace_0

htrace_02ð
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_39109¢
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
 zhtrace_0
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
é
ntrace_02Ì
%__inference_conv0_layer_call_fn_39118¢
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
 zntrace_0

otrace_02ç
@__inference_conv0_layer_call_and_return_conditional_losses_39128¢
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
 zotrace_0
&:$ 2conv0/kernel
: 2
conv0/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
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
 0
<
)0
*1
+2
,3"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
·
utrace_0
vtrace_12
#__inference_bn0_layer_call_fn_39141
#__inference_bn0_layer_call_fn_39154³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zutrace_0zvtrace_1
í
wtrace_0
xtrace_12¶
>__inference_bn0_layer_call_and_return_conditional_losses_39172
>__inference_bn0_layer_call_and_return_conditional_losses_39190³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zwtrace_0zxtrace_1
 "
trackable_list_wrapper
: 2	bn0/gamma
: 2bn0/beta
:  (2bn0/moving_mean
#:!  (2bn0/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
î
~trace_02Ñ
*__inference_activation_layer_call_fn_39195¢
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
 z~trace_0

trace_02ì
E__inference_activation_layer_call_and_return_conditional_losses_39200¢
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
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
ï
trace_02Ð
)__inference_max_pool0_layer_call_fn_39205¢
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
 ztrace_0

trace_02ë
D__inference_max_pool0_layer_call_and_return_conditional_losses_39210¢
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
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
ï
trace_02Ð
)__inference_max_pool1_layer_call_fn_39215¢
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
 ztrace_0

trace_02ë
D__inference_max_pool1_layer_call_and_return_conditional_losses_39220¢
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
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
ï
trace_02Ð
)__inference_flatten_2_layer_call_fn_39225¢
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
 ztrace_0

trace_02ë
D__inference_flatten_2_layer_call_and_return_conditional_losses_39231¢
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
 ztrace_0
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
è
trace_02É
"__inference_fc_layer_call_fn_39240¢
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
 ztrace_0

trace_02ä
=__inference_fc_layer_call_and_return_conditional_losses_39251¢
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
 ztrace_0
:	12	fc/kernel
:2fc/bias
.
+0
,1"
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
3__inference_BrainDetectionModel_layer_call_fn_38776input_1"¿
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
3__inference_BrainDetectionModel_layer_call_fn_39001inputs"¿
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
3__inference_BrainDetectionModel_layer_call_fn_39022inputs"¿
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
3__inference_BrainDetectionModel_layer_call_fn_38899input_1"¿
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_39060inputs"¿
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_39098inputs"¿
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 B
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_38927input_1"¿
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 B
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_38955input_1"¿
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsª *
 

[0
1
2
 3
¡4
¢5
£6
¤7
¥8
¦9
§10
¨11
©12"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
P
0
 1
¢2
¤3
¦4
¨5"
trackable_list_wrapper
P
0
¡1
£2
¥3
§4
©5"
trackable_list_wrapper
¿2¼¹
®²ª
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
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
 0
ÊBÇ
#__inference_signature_wrapper_38980input_1"
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
âBß
.__inference_zero_padding2d_layer_call_fn_39103inputs"¢
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
ýBú
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_39109inputs"¢
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
ÙBÖ
%__inference_conv0_layer_call_fn_39118inputs"¢
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
ôBñ
@__inference_conv0_layer_call_and_return_conditional_losses_39128inputs"¢
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
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
èBå
#__inference_bn0_layer_call_fn_39141inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
èBå
#__inference_bn0_layer_call_fn_39154inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
>__inference_bn0_layer_call_and_return_conditional_losses_39172inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
>__inference_bn0_layer_call_and_return_conditional_losses_39190inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
ÞBÛ
*__inference_activation_layer_call_fn_39195inputs"¢
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
ùBö
E__inference_activation_layer_call_and_return_conditional_losses_39200inputs"¢
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
ÝBÚ
)__inference_max_pool0_layer_call_fn_39205inputs"¢
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
øBõ
D__inference_max_pool0_layer_call_and_return_conditional_losses_39210inputs"¢
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
ÝBÚ
)__inference_max_pool1_layer_call_fn_39215inputs"¢
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
øBõ
D__inference_max_pool1_layer_call_and_return_conditional_losses_39220inputs"¢
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
ÝBÚ
)__inference_flatten_2_layer_call_fn_39225inputs"¢
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
øBõ
D__inference_flatten_2_layer_call_and_return_conditional_losses_39231inputs"¢
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
ÖBÓ
"__inference_fc_layer_call_fn_39240inputs"¢
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
ñBî
=__inference_fc_layer_call_and_return_conditional_losses_39251inputs"¢
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
R
ª	variables
«	keras_api

¬total

­count"
_tf_keras_metric
c
®	variables
¯	keras_api

°total

±count
²
_fn_kwargs"
_tf_keras_metric
+:) 2Adam/m/conv0/kernel
+:) 2Adam/v/conv0/kernel
: 2Adam/m/conv0/bias
: 2Adam/v/conv0/bias
: 2Adam/m/bn0/gamma
: 2Adam/v/bn0/gamma
: 2Adam/m/bn0/beta
: 2Adam/v/bn0/beta
!:	12Adam/m/fc/kernel
!:	12Adam/v/fc/kernel
:2Adam/m/fc/bias
:2Adam/v/fc/bias
0
¬0
­1"
trackable_list_wrapper
.
ª	variables"
_generic_user_object
:  (2total
:  (2count
0
°0
±1"
trackable_list_wrapper
.
®	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperÎ
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_38927| )*+,KLB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿðð
p 

 
ª ",¢)
"
tensor_0ÿÿÿÿÿÿÿÿÿ
 Î
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_38955| )*+,KLB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿðð
p

 
ª ",¢)
"
tensor_0ÿÿÿÿÿÿÿÿÿ
 Í
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_39060{ )*+,KLA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿðð
p 

 
ª ",¢)
"
tensor_0ÿÿÿÿÿÿÿÿÿ
 Í
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_39098{ )*+,KLA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿðð
p

 
ª ",¢)
"
tensor_0ÿÿÿÿÿÿÿÿÿ
 ¨
3__inference_BrainDetectionModel_layer_call_fn_38776q )*+,KLB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿðð
p 

 
ª "!
unknownÿÿÿÿÿÿÿÿÿ¨
3__inference_BrainDetectionModel_layer_call_fn_38899q )*+,KLB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿðð
p

 
ª "!
unknownÿÿÿÿÿÿÿÿÿ§
3__inference_BrainDetectionModel_layer_call_fn_39001p )*+,KLA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿðð
p 

 
ª "!
unknownÿÿÿÿÿÿÿÿÿ§
3__inference_BrainDetectionModel_layer_call_fn_39022p )*+,KLA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿðð
p

 
ª "!
unknownÿÿÿÿÿÿÿÿÿ
 __inference__wrapped_model_38588o )*+,KL:¢7
0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿðð
ª "'ª$
"
fc
fcÿÿÿÿÿÿÿÿÿ¼
E__inference_activation_layer_call_and_return_conditional_losses_39200s9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿîî 
ª "6¢3
,)
tensor_0ÿÿÿÿÿÿÿÿÿîî 
 
*__inference_activation_layer_call_fn_39195h9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿîî 
ª "+(
unknownÿÿÿÿÿÿÿÿÿîî à
>__inference_bn0_layer_call_and_return_conditional_losses_39172)*+,M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p 
ª "F¢C
<9
tensor_0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 à
>__inference_bn0_layer_call_and_return_conditional_losses_39190)*+,M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p
ª "F¢C
<9
tensor_0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 º
#__inference_bn0_layer_call_fn_39141)*+,M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p 
ª ";8
unknown+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ º
#__inference_bn0_layer_call_fn_39154)*+,M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p
ª ";8
unknown+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ »
@__inference_conv0_layer_call_and_return_conditional_losses_39128w 9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿôô
ª "6¢3
,)
tensor_0ÿÿÿÿÿÿÿÿÿîî 
 
%__inference_conv0_layer_call_fn_39118l 9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿôô
ª "+(
unknownÿÿÿÿÿÿÿÿÿîî ¥
=__inference_fc_layer_call_and_return_conditional_losses_39251dKL0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ1
ª ",¢)
"
tensor_0ÿÿÿÿÿÿÿÿÿ
 
"__inference_fc_layer_call_fn_39240YKL0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ1
ª "!
unknownÿÿÿÿÿÿÿÿÿ°
D__inference_flatten_2_layer_call_and_return_conditional_losses_39231h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª "-¢*
# 
tensor_0ÿÿÿÿÿÿÿÿÿ1
 
)__inference_flatten_2_layer_call_fn_39225]7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª ""
unknownÿÿÿÿÿÿÿÿÿ1î
D__inference_max_pool0_layer_call_and_return_conditional_losses_39210¥R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "O¢L
EB
tensor_04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 È
)__inference_max_pool0_layer_call_fn_39205R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "DA
unknown4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
D__inference_max_pool1_layer_call_and_return_conditional_losses_39220¥R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "O¢L
EB
tensor_04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 È
)__inference_max_pool1_layer_call_fn_39215R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "DA
unknown4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¡
#__inference_signature_wrapper_38980z )*+,KLE¢B
¢ 
;ª8
6
input_1+(
input_1ÿÿÿÿÿÿÿÿÿðð"'ª$
"
fc
fcÿÿÿÿÿÿÿÿÿó
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_39109¥R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "O¢L
EB
tensor_04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Í
.__inference_zero_padding2d_layer_call_fn_39103R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "DA
unknown4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ