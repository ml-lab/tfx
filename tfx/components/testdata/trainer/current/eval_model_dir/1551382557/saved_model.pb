ќ*
Р@@
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
И
AsString

input"T

output"
Ttype:
2		
"
	precisionintџџџџџџџџџ"

scientificbool( "
shortestbool( "
widthintџџџџџџџџџ"
fillstring 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
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
[
BucketizeWithInputBoundaries

input"T

boundaries

output"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Й
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
B
Equal
x"T
y"T
z
"
Ttype:
2	

,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	

GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
Ё
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
Щ
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0ўџџџџџџџџ"
value_indexint(0ўџџџџџџџџ"+

vocab_sizeintџџџџџџџџџ(0џџџџџџџџџ"
	delimiterstring	
+
IsNan
x"T
y
"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
.
Log1p
x"T
y"T"
Ttype:

2
$

LogicalAnd
x

y

z



LogicalNot
x

y

#
	LogicalOr
x

y

z

w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
2
LookupTableSizeV2
table_handle
size	
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
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
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
я
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
З
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	

SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2	"
Tidxtype0:
2	
М
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
і
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
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"eval*1.12.02v1.12.0-0-ga6d8ffae09Кн#

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 

global_step
VariableV2*
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step*
	container *
shape: 
В
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
o
input_example_tensorPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
b
ParseExample/ParseExample/namesConst*
valueB *
dtype0*
_output_shapes
: 
o
'ParseExample/ParseExample/sparse_keys_0Const*
valueB Bcompany*
dtype0*
_output_shapes
: 
|
'ParseExample/ParseExample/sparse_keys_1Const*%
valueB Bdropoff_census_tract*
dtype0*
_output_shapes
: 
~
'ParseExample/ParseExample/sparse_keys_2Const*'
valueB Bdropoff_community_area*
dtype0*
_output_shapes
: 
x
'ParseExample/ParseExample/sparse_keys_3Const*
dtype0*
_output_shapes
: *!
valueB Bdropoff_latitude
y
'ParseExample/ParseExample/sparse_keys_4Const*"
valueB Bdropoff_longitude*
dtype0*
_output_shapes
: 
l
'ParseExample/ParseExample/sparse_keys_5Const*
valueB
 Bfare*
dtype0*
_output_shapes
: 
t
'ParseExample/ParseExample/sparse_keys_6Const*
valueB Bpayment_type*
dtype0*
_output_shapes
: 
{
'ParseExample/ParseExample/sparse_keys_7Const*$
valueB Bpickup_census_tract*
dtype0*
_output_shapes
: 
}
'ParseExample/ParseExample/sparse_keys_8Const*&
valueB Bpickup_community_area*
dtype0*
_output_shapes
: 
w
'ParseExample/ParseExample/sparse_keys_9Const* 
valueB Bpickup_latitude*
dtype0*
_output_shapes
: 
y
(ParseExample/ParseExample/sparse_keys_10Const*!
valueB Bpickup_longitude*
dtype0*
_output_shapes
: 
m
(ParseExample/ParseExample/sparse_keys_11Const*
dtype0*
_output_shapes
: *
valueB
 Btips
s
(ParseExample/ParseExample/sparse_keys_12Const*
valueB B
trip_miles*
dtype0*
_output_shapes
: 
u
(ParseExample/ParseExample/sparse_keys_13Const*
valueB Btrip_seconds*
dtype0*
_output_shapes
: 
w
(ParseExample/ParseExample/sparse_keys_14Const*
dtype0*
_output_shapes
: *
valueB Btrip_start_day
x
(ParseExample/ParseExample/sparse_keys_15Const* 
valueB Btrip_start_hour*
dtype0*
_output_shapes
: 
y
(ParseExample/ParseExample/sparse_keys_16Const*
dtype0*
_output_shapes
: *!
valueB Btrip_start_month
}
(ParseExample/ParseExample/sparse_keys_17Const*%
valueB Btrip_start_timestamp*
dtype0*
_output_shapes
: 

ParseExample/ParseExampleParseExampleinput_example_tensorParseExample/ParseExample/names'ParseExample/ParseExample/sparse_keys_0'ParseExample/ParseExample/sparse_keys_1'ParseExample/ParseExample/sparse_keys_2'ParseExample/ParseExample/sparse_keys_3'ParseExample/ParseExample/sparse_keys_4'ParseExample/ParseExample/sparse_keys_5'ParseExample/ParseExample/sparse_keys_6'ParseExample/ParseExample/sparse_keys_7'ParseExample/ParseExample/sparse_keys_8'ParseExample/ParseExample/sparse_keys_9(ParseExample/ParseExample/sparse_keys_10(ParseExample/ParseExample/sparse_keys_11(ParseExample/ParseExample/sparse_keys_12(ParseExample/ParseExample/sparse_keys_13(ParseExample/ParseExample/sparse_keys_14(ParseExample/ParseExample/sparse_keys_15(ParseExample/ParseExample/sparse_keys_16(ParseExample/ParseExample/sparse_keys_17*
Tdense
 *
Ndense *ц
_output_shapesг
а:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::::::::::::::::::*
Nsparse*&
sparse_types
2					*
dense_shapes
 
ј
ConstConst*Т
valueИBЕ BЎ/usr/local/google/home/jyzhao/airflow/data/tfx/pipelines/chicago_taxi_oneshot/Transform/transform_output/5/transform_fn/assets/vocab_compute_and_apply_vocabulary_1_vocabulary*
dtype0*
_output_shapes
: 
ј
Const_1Const*Р
valueЖBГ BЌ/usr/local/google/home/jyzhao/airflow/data/tfx/pipelines/chicago_taxi_oneshot/Transform/transform_output/5/transform_fn/assets/vocab_compute_and_apply_vocabulary_vocabulary*
dtype0*
_output_shapes
: 
ќ
transform/ConstConst*М
valueВBЏ BЈ/usr/local/google/home/jyzhao/airflow/data/tfx/pipelines/chicago_taxi_oneshot/Transform/transform_output/5/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary*
dtype0*
_output_shapes
: 
~
transform/Const_1Const*9
value0B.	"$ќD'B|'B#'BN'Bю'B1'BчЏ'BуЦ'BRъ'B*
dtype0*
_output_shapes
:	

transform/Const_2Const*
dtype0*
_output_shapes
:*E
value<B:"0hrЏТbЏТІYЏТNUЏТ.RЏТNЏТoJЏТEЏТїCЏТй@ЏТ?ЏТе=ЏТ

transform/Const_3Const*О
valueДBБ BЊ/usr/local/google/home/jyzhao/airflow/data/tfx/pipelines/chicago_taxi_oneshot/Transform/transform_output/5/tftransform_tmp/vocab_compute_and_apply_vocabulary_1_vocabulary*
dtype0*
_output_shapes
: 

transform/Const_4Const*=
value4B2
"(U<'Blq'B['B:'Bs'B'Bж'BеА'BЪ'Beђ'B*
dtype0*
_output_shapes
:


transform/Const_5Const*E
value<B:"0qЏТcЏТ>\ЏТWЏТКSЏТєOЏТLЏТFЏТїCЏТ@ЏТѓ=ЏТC/ЏТ*
dtype0*
_output_shapes
:
V
transform/Const_6Const*
valueB
 *BD*
dtype0*
_output_shapes
: 
V
transform/Const_7Const*
dtype0*
_output_shapes
: *
valueB
 *wuI
V
transform/Const_8Const*
dtype0*
_output_shapes
: *
valueB
 *S":@
V
transform/Const_9Const*
dtype0*
_output_shapes
: *
valueB
 *уЄC
W
transform/Const_10Const*
valueB
 *m ;A*
dtype0*
_output_shapes
: 
W
transform/Const_11Const*
valueB
 *a ШB*
dtype0*
_output_shapes
: 
n
%transform/transform/inputs/fare/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

&transform/transform/inputs/fare/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

'transform/transform/inputs/fare/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
y
0transform/transform/inputs/trip_start_hour/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

1transform/transform/inputs/trip_start_hour/valuesPlaceholder*
dtype0	*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

2transform/transform/inputs/trip_start_hour/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
}
4transform/transform/inputs/pickup_census_tract/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

5transform/transform/inputs/pickup_census_tract/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

6transform/transform/inputs/pickup_census_tract/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
~
5transform/transform/inputs/dropoff_census_tract/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

6transform/transform/inputs/dropoff_census_tract/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

7transform/transform/inputs/dropoff_census_tract/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
q
(transform/transform/inputs/company/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

)transform/transform/inputs/company/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

*transform/transform/inputs/company/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
~
5transform/transform/inputs/trip_start_timestamp/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

6transform/transform/inputs/trip_start_timestamp/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*#
_output_shapes
:џџџџџџџџџ

7transform/transform/inputs/trip_start_timestamp/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
z
1transform/transform/inputs/pickup_longitude/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

2transform/transform/inputs/pickup_longitude/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

3transform/transform/inputs/pickup_longitude/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
z
1transform/transform/inputs/trip_start_month/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

2transform/transform/inputs/trip_start_month/valuesPlaceholder*
dtype0	*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

3transform/transform/inputs/trip_start_month/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
t
+transform/transform/inputs/trip_miles/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

,transform/transform/inputs/trip_miles/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

-transform/transform/inputs/trip_miles/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
{
2transform/transform/inputs/dropoff_longitude/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

3transform/transform/inputs/dropoff_longitude/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

4transform/transform/inputs/dropoff_longitude/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

7transform/transform/inputs/dropoff_community_area/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

8transform/transform/inputs/dropoff_community_area/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

9transform/transform/inputs/dropoff_community_area/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ

6transform/transform/inputs/pickup_community_area/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

7transform/transform/inputs/pickup_community_area/valuesPlaceholder*
dtype0	*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

8transform/transform/inputs/pickup_community_area/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
v
-transform/transform/inputs/payment_type/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

.transform/transform/inputs/payment_type/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

/transform/transform/inputs/payment_type/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
v
-transform/transform/inputs/trip_seconds/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

.transform/transform/inputs/trip_seconds/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

/transform/transform/inputs/trip_seconds/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
x
/transform/transform/inputs/trip_start_day/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

0transform/transform/inputs/trip_start_day/valuesPlaceholder*
dtype0	*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

1transform/transform/inputs/trip_start_day/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
n
%transform/transform/inputs/tips/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

&transform/transform/inputs/tips/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

'transform/transform/inputs/tips/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
y
0transform/transform/inputs/pickup_latitude/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

1transform/transform/inputs/pickup_latitude/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

2transform/transform/inputs/pickup_latitude/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
z
1transform/transform/inputs/dropoff_latitude/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

2transform/transform/inputs/dropoff_latitude/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

3transform/transform/inputs/dropoff_latitude/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

3transform/transform/inputs/inputs/fare/indices_copyIdentityParseExample/ParseExample:5*'
_output_shapes
:џџџџџџџџџ*
T0	

2transform/transform/inputs/inputs/fare/values_copyIdentityParseExample/ParseExample:23*
T0*#
_output_shapes
:џџџџџџџџџ

1transform/transform/inputs/inputs/fare/shape_copyIdentityParseExample/ParseExample:41*
T0	*
_output_shapes
:

>transform/transform/inputs/inputs/trip_start_hour/indices_copyIdentityParseExample/ParseExample:15*
T0	*'
_output_shapes
:џџџџџџџџџ

=transform/transform/inputs/inputs/trip_start_hour/values_copyIdentityParseExample/ParseExample:33*#
_output_shapes
:џџџџџџџџџ*
T0	

<transform/transform/inputs/inputs/trip_start_hour/shape_copyIdentityParseExample/ParseExample:51*
T0	*
_output_shapes
:

Btransform/transform/inputs/inputs/pickup_census_tract/indices_copyIdentityParseExample/ParseExample:7*
T0	*'
_output_shapes
:џџџџџџџџџ

Atransform/transform/inputs/inputs/pickup_census_tract/values_copyIdentityParseExample/ParseExample:25*#
_output_shapes
:џџџџџџџџџ*
T0

@transform/transform/inputs/inputs/pickup_census_tract/shape_copyIdentityParseExample/ParseExample:43*
T0	*
_output_shapes
:

Ctransform/transform/inputs/inputs/dropoff_census_tract/indices_copyIdentityParseExample/ParseExample:1*
T0	*'
_output_shapes
:џџџџџџџџџ

Btransform/transform/inputs/inputs/dropoff_census_tract/values_copyIdentityParseExample/ParseExample:19*
T0*#
_output_shapes
:џџџџџџџџџ

Atransform/transform/inputs/inputs/dropoff_census_tract/shape_copyIdentityParseExample/ParseExample:37*
T0	*
_output_shapes
:

6transform/transform/inputs/inputs/company/indices_copyIdentityParseExample/ParseExample*
T0	*'
_output_shapes
:џџџџџџџџџ

5transform/transform/inputs/inputs/company/values_copyIdentityParseExample/ParseExample:18*
T0*#
_output_shapes
:џџџџџџџџџ

4transform/transform/inputs/inputs/company/shape_copyIdentityParseExample/ParseExample:36*
_output_shapes
:*
T0	

Ctransform/transform/inputs/inputs/trip_start_timestamp/indices_copyIdentityParseExample/ParseExample:17*'
_output_shapes
:џџџџџџџџџ*
T0	

Btransform/transform/inputs/inputs/trip_start_timestamp/values_copyIdentityParseExample/ParseExample:35*
T0	*#
_output_shapes
:џџџџџџџџџ

Atransform/transform/inputs/inputs/trip_start_timestamp/shape_copyIdentityParseExample/ParseExample:53*
_output_shapes
:*
T0	

?transform/transform/inputs/inputs/pickup_longitude/indices_copyIdentityParseExample/ParseExample:10*
T0	*'
_output_shapes
:џџџџџџџџџ

>transform/transform/inputs/inputs/pickup_longitude/values_copyIdentityParseExample/ParseExample:28*#
_output_shapes
:џџџџџџџџџ*
T0

=transform/transform/inputs/inputs/pickup_longitude/shape_copyIdentityParseExample/ParseExample:46*
T0	*
_output_shapes
:

?transform/transform/inputs/inputs/trip_start_month/indices_copyIdentityParseExample/ParseExample:16*
T0	*'
_output_shapes
:џџџџџџџџџ

>transform/transform/inputs/inputs/trip_start_month/values_copyIdentityParseExample/ParseExample:34*
T0	*#
_output_shapes
:џџџџџџџџџ

=transform/transform/inputs/inputs/trip_start_month/shape_copyIdentityParseExample/ParseExample:52*
T0	*
_output_shapes
:

9transform/transform/inputs/inputs/trip_miles/indices_copyIdentityParseExample/ParseExample:12*'
_output_shapes
:џџџџџџџџџ*
T0	

8transform/transform/inputs/inputs/trip_miles/values_copyIdentityParseExample/ParseExample:30*
T0*#
_output_shapes
:џџџџџџџџџ

7transform/transform/inputs/inputs/trip_miles/shape_copyIdentityParseExample/ParseExample:48*
T0	*
_output_shapes
:

@transform/transform/inputs/inputs/dropoff_longitude/indices_copyIdentityParseExample/ParseExample:4*
T0	*'
_output_shapes
:џџџџџџџџџ

?transform/transform/inputs/inputs/dropoff_longitude/values_copyIdentityParseExample/ParseExample:22*
T0*#
_output_shapes
:џџџџџџџџџ

>transform/transform/inputs/inputs/dropoff_longitude/shape_copyIdentityParseExample/ParseExample:40*
T0	*
_output_shapes
:
 
Etransform/transform/inputs/inputs/dropoff_community_area/indices_copyIdentityParseExample/ParseExample:2*'
_output_shapes
:џџџџџџџџџ*
T0	

Dtransform/transform/inputs/inputs/dropoff_community_area/values_copyIdentityParseExample/ParseExample:20*
T0*#
_output_shapes
:џџџџџџџџџ

Ctransform/transform/inputs/inputs/dropoff_community_area/shape_copyIdentityParseExample/ParseExample:38*
T0	*
_output_shapes
:

Dtransform/transform/inputs/inputs/pickup_community_area/indices_copyIdentityParseExample/ParseExample:8*
T0	*'
_output_shapes
:џџџџџџџџџ

Ctransform/transform/inputs/inputs/pickup_community_area/values_copyIdentityParseExample/ParseExample:26*
T0	*#
_output_shapes
:џџџџџџџџџ

Btransform/transform/inputs/inputs/pickup_community_area/shape_copyIdentityParseExample/ParseExample:44*
_output_shapes
:*
T0	

;transform/transform/inputs/inputs/payment_type/indices_copyIdentityParseExample/ParseExample:6*
T0	*'
_output_shapes
:џџџџџџџџџ

:transform/transform/inputs/inputs/payment_type/values_copyIdentityParseExample/ParseExample:24*
T0*#
_output_shapes
:џџџџџџџџџ

9transform/transform/inputs/inputs/payment_type/shape_copyIdentityParseExample/ParseExample:42*
T0	*
_output_shapes
:

;transform/transform/inputs/inputs/trip_seconds/indices_copyIdentityParseExample/ParseExample:13*
T0	*'
_output_shapes
:џџџџџџџџџ

:transform/transform/inputs/inputs/trip_seconds/values_copyIdentityParseExample/ParseExample:31*
T0*#
_output_shapes
:џџџџџџџџџ

9transform/transform/inputs/inputs/trip_seconds/shape_copyIdentityParseExample/ParseExample:49*
T0	*
_output_shapes
:

=transform/transform/inputs/inputs/trip_start_day/indices_copyIdentityParseExample/ParseExample:14*
T0	*'
_output_shapes
:џџџџџџџџџ

<transform/transform/inputs/inputs/trip_start_day/values_copyIdentityParseExample/ParseExample:32*
T0	*#
_output_shapes
:џџџџџџџџџ

;transform/transform/inputs/inputs/trip_start_day/shape_copyIdentityParseExample/ParseExample:50*
T0	*
_output_shapes
:

3transform/transform/inputs/inputs/tips/indices_copyIdentityParseExample/ParseExample:11*
T0	*'
_output_shapes
:џџџџџџџџџ

2transform/transform/inputs/inputs/tips/values_copyIdentityParseExample/ParseExample:29*
T0*#
_output_shapes
:џџџџџџџџџ

1transform/transform/inputs/inputs/tips/shape_copyIdentityParseExample/ParseExample:47*
T0	*
_output_shapes
:

>transform/transform/inputs/inputs/pickup_latitude/indices_copyIdentityParseExample/ParseExample:9*
T0	*'
_output_shapes
:џџџџџџџџџ

=transform/transform/inputs/inputs/pickup_latitude/values_copyIdentityParseExample/ParseExample:27*#
_output_shapes
:џџџџџџџџџ*
T0

<transform/transform/inputs/inputs/pickup_latitude/shape_copyIdentityParseExample/ParseExample:45*
T0	*
_output_shapes
:

?transform/transform/inputs/inputs/dropoff_latitude/indices_copyIdentityParseExample/ParseExample:3*
T0	*'
_output_shapes
:џџџџџџџџџ

>transform/transform/inputs/inputs/dropoff_latitude/values_copyIdentityParseExample/ParseExample:21*
T0*#
_output_shapes
:џџџџџџџџџ

=transform/transform/inputs/inputs/dropoff_latitude/shape_copyIdentityParseExample/ParseExample:39*
T0	*
_output_shapes
:
q
'transform/transform/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
s
)transform/transform/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)transform/transform/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ћ
!transform/transform/strided_sliceStridedSlice7transform/transform/inputs/inputs/trip_miles/shape_copy'transform/transform/strided_slice/stack)transform/transform/strided_slice/stack_1)transform/transform/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0	*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
r
0transform/transform/SparseToDense/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Х
.transform/transform/SparseToDense/output_shapePack!transform/transform/strided_slice0transform/transform/SparseToDense/output_shape/1*
T0	*

axis *
N*
_output_shapes
:
t
/transform/transform/SparseToDense/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
т
!transform/transform/SparseToDenseSparseToDense9transform/transform/inputs/inputs/trip_miles/indices_copy.transform/transform/SparseToDense/output_shape8transform/transform/inputs/inputs/trip_miles/values_copy/transform/transform/SparseToDense/default_value*
Tindices0	*
validate_indices(*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/SqueezeSqueeze!transform/transform/SparseToDense*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0

6transform/transform/scale_to_z_score/mean_and_var/SizeSizetransform/transform/Squeeze*
T0*
out_type0*
_output_shapes
: 
Ж
6transform/transform/scale_to_z_score/mean_and_var/CastCast6transform/transform/scale_to_z_score/mean_and_var/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0

7transform/transform/scale_to_z_score/mean_and_var/ConstConst*
valueB: *
dtype0*
_output_shapes
:
а
5transform/transform/scale_to_z_score/mean_and_var/SumSumtransform/transform/Squeeze7transform/transform/scale_to_z_score/mean_and_var/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
д
9transform/transform/scale_to_z_score/mean_and_var/truedivRealDiv5transform/transform/scale_to_z_score/mean_and_var/Sum6transform/transform/scale_to_z_score/mean_and_var/Cast*
T0*
_output_shapes
: 
Т
5transform/transform/scale_to_z_score/mean_and_var/subSubtransform/transform/Squeeze9transform/transform/scale_to_z_score/mean_and_var/truediv*
T0*#
_output_shapes
:џџџџџџџџџ
Ї
8transform/transform/scale_to_z_score/mean_and_var/SquareSquare5transform/transform/scale_to_z_score/mean_and_var/sub*
T0*#
_output_shapes
:џџџџџџџџџ

9transform/transform/scale_to_z_score/mean_and_var/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
ё
7transform/transform/scale_to_z_score/mean_and_var/Sum_1Sum8transform/transform/scale_to_z_score/mean_and_var/Square9transform/transform/scale_to_z_score/mean_and_var/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
и
;transform/transform/scale_to_z_score/mean_and_var/truediv_1RealDiv7transform/transform/scale_to_z_score/mean_and_var/Sum_16transform/transform/scale_to_z_score/mean_and_var/Cast*
T0*
_output_shapes
: 
~
=transform/transform/scale_to_z_score/mean_and_var/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 

?transform/transform/scale_to_z_score/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 

(transform/transform/scale_to_z_score/subSubtransform/transform/Squeezetransform/Const_8*
T0*#
_output_shapes
:џџџџџџџџџ
e
)transform/transform/scale_to_z_score/SqrtSqrttransform/Const_9*
T0*
_output_shapes
: 
t
/transform/transform/scale_to_z_score/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ж
-transform/transform/scale_to_z_score/NotEqualNotEqual)transform/transform/scale_to_z_score/Sqrt/transform/transform/scale_to_z_score/NotEqual/y*
T0*
_output_shapes
: 
К
,transform/transform/scale_to_z_score/truedivRealDiv(transform/transform/scale_to_z_score/sub)transform/transform/scale_to_z_score/Sqrt*#
_output_shapes
:џџџџџџџџџ*
T0
ъ
+transform/transform/scale_to_z_score/SelectSelect-transform/transform/scale_to_z_score/NotEqual,transform/transform/scale_to_z_score/truediv(transform/transform/scale_to_z_score/sub*
T0*#
_output_shapes
:џџџџџџџџџ
s
)transform/transform/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
§
#transform/transform/strided_slice_1StridedSlice1transform/transform/inputs/inputs/fare/shape_copy)transform/transform/strided_slice_1/stack+transform/transform/strided_slice_1/stack_1+transform/transform/strided_slice_1/stack_2*
Index0*
T0	*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
t
2transform/transform/SparseToDense_1/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ы
0transform/transform/SparseToDense_1/output_shapePack#transform/transform/strided_slice_12transform/transform/SparseToDense_1/output_shape/1*
N*
_output_shapes
:*
T0	*

axis 
v
1transform/transform/SparseToDense_1/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
м
#transform/transform/SparseToDense_1SparseToDense3transform/transform/inputs/inputs/fare/indices_copy0transform/transform/SparseToDense_1/output_shape2transform/transform/inputs/inputs/fare/values_copy1transform/transform/SparseToDense_1/default_value*
Tindices0	*
validate_indices(*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_1Squeeze#transform/transform/SparseToDense_1*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


8transform/transform/scale_to_z_score_1/mean_and_var/SizeSizetransform/transform/Squeeze_1*
_output_shapes
: *
T0*
out_type0
К
8transform/transform/scale_to_z_score_1/mean_and_var/CastCast8transform/transform/scale_to_z_score_1/mean_and_var/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

9transform/transform/scale_to_z_score_1/mean_and_var/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ж
7transform/transform/scale_to_z_score_1/mean_and_var/SumSumtransform/transform/Squeeze_19transform/transform/scale_to_z_score_1/mean_and_var/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
к
;transform/transform/scale_to_z_score_1/mean_and_var/truedivRealDiv7transform/transform/scale_to_z_score_1/mean_and_var/Sum8transform/transform/scale_to_z_score_1/mean_and_var/Cast*
T0*
_output_shapes
: 
Ш
7transform/transform/scale_to_z_score_1/mean_and_var/subSubtransform/transform/Squeeze_1;transform/transform/scale_to_z_score_1/mean_and_var/truediv*
T0*#
_output_shapes
:џџџџџџџџџ
Ћ
:transform/transform/scale_to_z_score_1/mean_and_var/SquareSquare7transform/transform/scale_to_z_score_1/mean_and_var/sub*
T0*#
_output_shapes
:џџџџџџџџџ

;transform/transform/scale_to_z_score_1/mean_and_var/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
ї
9transform/transform/scale_to_z_score_1/mean_and_var/Sum_1Sum:transform/transform/scale_to_z_score_1/mean_and_var/Square;transform/transform/scale_to_z_score_1/mean_and_var/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
о
=transform/transform/scale_to_z_score_1/mean_and_var/truediv_1RealDiv9transform/transform/scale_to_z_score_1/mean_and_var/Sum_18transform/transform/scale_to_z_score_1/mean_and_var/Cast*
T0*
_output_shapes
: 

?transform/transform/scale_to_z_score_1/mean_and_var/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 

Atransform/transform/scale_to_z_score_1/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 

*transform/transform/scale_to_z_score_1/subSubtransform/transform/Squeeze_1transform/Const_10*
T0*#
_output_shapes
:џџџџџџџџџ
h
+transform/transform/scale_to_z_score_1/SqrtSqrttransform/Const_11*
_output_shapes
: *
T0
v
1transform/transform/scale_to_z_score_1/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
М
/transform/transform/scale_to_z_score_1/NotEqualNotEqual+transform/transform/scale_to_z_score_1/Sqrt1transform/transform/scale_to_z_score_1/NotEqual/y*
_output_shapes
: *
T0
Р
.transform/transform/scale_to_z_score_1/truedivRealDiv*transform/transform/scale_to_z_score_1/sub+transform/transform/scale_to_z_score_1/Sqrt*
T0*#
_output_shapes
:џџџџџџџџџ
ђ
-transform/transform/scale_to_z_score_1/SelectSelect/transform/transform/scale_to_z_score_1/NotEqual.transform/transform/scale_to_z_score_1/truediv*transform/transform/scale_to_z_score_1/sub*
T0*#
_output_shapes
:џџџџџџџџџ
s
)transform/transform/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB: 
u
+transform/transform/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

#transform/transform/strided_slice_2StridedSlice9transform/transform/inputs/inputs/trip_seconds/shape_copy)transform/transform/strided_slice_2/stack+transform/transform/strided_slice_2/stack_1+transform/transform/strided_slice_2/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0	*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
t
2transform/transform/SparseToDense_2/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ы
0transform/transform/SparseToDense_2/output_shapePack#transform/transform/strided_slice_22transform/transform/SparseToDense_2/output_shape/1*
T0	*

axis *
N*
_output_shapes
:
v
1transform/transform/SparseToDense_2/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ь
#transform/transform/SparseToDense_2SparseToDense;transform/transform/inputs/inputs/trip_seconds/indices_copy0transform/transform/SparseToDense_2/output_shape:transform/transform/inputs/inputs/trip_seconds/values_copy1transform/transform/SparseToDense_2/default_value*'
_output_shapes
:џџџџџџџџџ*
Tindices0	*
validate_indices(*
T0

transform/transform/Squeeze_2Squeeze#transform/transform/SparseToDense_2*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


8transform/transform/scale_to_z_score_2/mean_and_var/SizeSizetransform/transform/Squeeze_2*
T0*
out_type0*
_output_shapes
: 
К
8transform/transform/scale_to_z_score_2/mean_and_var/CastCast8transform/transform/scale_to_z_score_2/mean_and_var/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

9transform/transform/scale_to_z_score_2/mean_and_var/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ж
7transform/transform/scale_to_z_score_2/mean_and_var/SumSumtransform/transform/Squeeze_29transform/transform/scale_to_z_score_2/mean_and_var/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
к
;transform/transform/scale_to_z_score_2/mean_and_var/truedivRealDiv7transform/transform/scale_to_z_score_2/mean_and_var/Sum8transform/transform/scale_to_z_score_2/mean_and_var/Cast*
_output_shapes
: *
T0
Ш
7transform/transform/scale_to_z_score_2/mean_and_var/subSubtransform/transform/Squeeze_2;transform/transform/scale_to_z_score_2/mean_and_var/truediv*
T0*#
_output_shapes
:џџџџџџџџџ
Ћ
:transform/transform/scale_to_z_score_2/mean_and_var/SquareSquare7transform/transform/scale_to_z_score_2/mean_and_var/sub*
T0*#
_output_shapes
:џџџџџџџџџ

;transform/transform/scale_to_z_score_2/mean_and_var/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
ї
9transform/transform/scale_to_z_score_2/mean_and_var/Sum_1Sum:transform/transform/scale_to_z_score_2/mean_and_var/Square;transform/transform/scale_to_z_score_2/mean_and_var/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
о
=transform/transform/scale_to_z_score_2/mean_and_var/truediv_1RealDiv9transform/transform/scale_to_z_score_2/mean_and_var/Sum_18transform/transform/scale_to_z_score_2/mean_and_var/Cast*
T0*
_output_shapes
: 

?transform/transform/scale_to_z_score_2/mean_and_var/PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 

Atransform/transform/scale_to_z_score_2/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 

*transform/transform/scale_to_z_score_2/subSubtransform/transform/Squeeze_2transform/Const_6*#
_output_shapes
:џџџџџџџџџ*
T0
g
+transform/transform/scale_to_z_score_2/SqrtSqrttransform/Const_7*
T0*
_output_shapes
: 
v
1transform/transform/scale_to_z_score_2/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
М
/transform/transform/scale_to_z_score_2/NotEqualNotEqual+transform/transform/scale_to_z_score_2/Sqrt1transform/transform/scale_to_z_score_2/NotEqual/y*
_output_shapes
: *
T0
Р
.transform/transform/scale_to_z_score_2/truedivRealDiv*transform/transform/scale_to_z_score_2/sub+transform/transform/scale_to_z_score_2/Sqrt*#
_output_shapes
:џџџџџџџџџ*
T0
ђ
-transform/transform/scale_to_z_score_2/SelectSelect/transform/transform/scale_to_z_score_2/NotEqual.transform/transform/scale_to_z_score_2/truediv*transform/transform/scale_to_z_score_2/sub*
T0*#
_output_shapes
:џџџџџџџџџ
s
)transform/transform/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_3/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

#transform/transform/strided_slice_3StridedSlice9transform/transform/inputs/inputs/payment_type/shape_copy)transform/transform/strided_slice_3/stack+transform/transform/strided_slice_3/stack_1+transform/transform/strided_slice_3/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0	*
Index0
t
2transform/transform/SparseToDense_3/output_shape/1Const*
dtype0	*
_output_shapes
: *
value	B	 R
Ы
0transform/transform/SparseToDense_3/output_shapePack#transform/transform/strided_slice_32transform/transform/SparseToDense_3/output_shape/1*
T0	*

axis *
N*
_output_shapes
:
r
1transform/transform/SparseToDense_3/default_valueConst*
valueB B *
dtype0*
_output_shapes
: 
ь
#transform/transform/SparseToDense_3SparseToDense;transform/transform/inputs/inputs/payment_type/indices_copy0transform/transform/SparseToDense_3/output_shape:transform/transform/inputs/inputs/payment_type/values_copy1transform/transform/SparseToDense_3/default_value*
validate_indices(*
T0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_3Squeeze#transform/transform/SparseToDense_3*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


Itransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
є
Ctransform/transform/compute_and_apply_vocabulary/vocabulary/ReshapeReshapetransform/transform/Squeeze_3Itransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ

Gtransform/transform/compute_and_apply_vocabulary/vocabulary/PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 
Ы
Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *y
shared_namejhhash_table_Tensor("compute_and_apply_vocabulary/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
	key_dtype0*
	container 
Ј
]transform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_table/ConstConst*
valueB	 R
џџџџџџџџџ*
dtype0	*
_output_shapes
: 
Ш
btransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_table/table_initInitializeTableFromTextFileV2Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_tableConst_1*
	key_indexўџџџџџџџџ*
value_indexџџџџџџџџџ*

vocab_sizeџџџџџџџџџ*
	delimiter	
з
Qtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_SizeLookupTableSizeV2Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_table*
_output_shapes
: 

Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Size/add/yConst*
value	B	 R
*
dtype0	*
_output_shapes
: 
Љ
Utransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Size/addAddQtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_SizeWtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Size/add/y*
T0	*
_output_shapes
: 
а
_transform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/hash_bucketStringToHashBucketFasttransform/transform/Squeeze_3*
num_buckets
*#
_output_shapes
:џџџџџџџџџ

etransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/hash_table_LookupLookupTableFindV2Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_tabletransform/transform/Squeeze_3]transform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_table/Const*#
_output_shapes
:џџџџџџџџџ*	
Tin0*

Tout0	
щ
ctransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/hash_table_SizeLookupTableSizeV2Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_table*
_output_shapes
: 
в
Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/AddAdd_transform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/hash_bucketctransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/hash_table_Size*#
_output_shapes
:џџџџџџџџџ*
T0	
м
\transform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/NotEqualNotEqualetransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/hash_table_Lookup]transform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_table/Const*#
_output_shapes
:џџџџџџџџџ*
T0	
Љ
Stransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_LookupSelect\transform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/NotEqualetransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/hash_table_LookupWtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/Add*
T0	*#
_output_shapes
:џџџџџџџџџ

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 

@transform/transform/compute_and_apply_vocabulary/apply_vocab/subSubUtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Size/addBtransform/transform/compute_and_apply_vocabulary/apply_vocab/sub/y*
T0	*
_output_shapes
: 
s
)transform/transform/strided_slice_4/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_4/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

#transform/transform/strided_slice_4StridedSlice4transform/transform/inputs/inputs/company/shape_copy)transform/transform/strided_slice_4/stack+transform/transform/strided_slice_4/stack_1+transform/transform/strided_slice_4/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
t
2transform/transform/SparseToDense_4/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ы
0transform/transform/SparseToDense_4/output_shapePack#transform/transform/strided_slice_42transform/transform/SparseToDense_4/output_shape/1*
T0	*

axis *
N*
_output_shapes
:
r
1transform/transform/SparseToDense_4/default_valueConst*
valueB B *
dtype0*
_output_shapes
: 
т
#transform/transform/SparseToDense_4SparseToDense6transform/transform/inputs/inputs/company/indices_copy0transform/transform/SparseToDense_4/output_shape5transform/transform/inputs/inputs/company/values_copy1transform/transform/SparseToDense_4/default_value*
validate_indices(*
T0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_4Squeeze#transform/transform/SparseToDense_4*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

Ktransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ј
Etransform/transform/compute_and_apply_vocabulary_1/vocabulary/ReshapeReshapetransform/transform/Squeeze_4Ktransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ

Itransform/transform/compute_and_apply_vocabulary_1/vocabulary/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 
Я
Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_tableHashTableV2*{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_1/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: 
Њ
_transform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
џџџџџџџџџ
Ъ
dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_table/table_initInitializeTableFromTextFileV2Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_tableConst*
	key_indexўџџџџџџџџ*
value_indexџџџџџџџџџ*

vocab_sizeџџџџџџџџџ*
	delimiter	
л
Stransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_SizeLookupTableSizeV2Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_table*
_output_shapes
: 

Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Size/add/yConst*
value	B	 R
*
dtype0	*
_output_shapes
: 
Џ
Wtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Size/addAddStransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_SizeYtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Size/add/y*
T0	*
_output_shapes
: 
в
atransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/hash_bucketStringToHashBucketFasttransform/transform/Squeeze_4*#
_output_shapes
:џџџџџџџџџ*
num_buckets


gtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/hash_table_LookupLookupTableFindV2Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_tabletransform/transform/Squeeze_4_transform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_table/Const*#
_output_shapes
:џџџџџџџџџ*	
Tin0*

Tout0	
э
etransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/hash_table_SizeLookupTableSizeV2Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_table*
_output_shapes
: 
и
Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/AddAddatransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/hash_bucketetransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/hash_table_Size*
T0	*#
_output_shapes
:џџџџџџџџџ
т
^transform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/NotEqualNotEqualgtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/hash_table_Lookup_transform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_table/Const*
T0	*#
_output_shapes
:џџџџџџџџџ
Б
Utransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_LookupSelect^transform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/NotEqualgtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/hash_table_LookupYtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/Add*
T0	*#
_output_shapes
:џџџџџџџџџ

Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 

Btransform/transform/compute_and_apply_vocabulary_1/apply_vocab/subSubWtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Size/addDtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub/y*
T0	*
_output_shapes
: 
s
)transform/transform/strided_slice_5/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_5/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

#transform/transform/strided_slice_5StridedSlice<transform/transform/inputs/inputs/pickup_latitude/shape_copy)transform/transform/strided_slice_5/stack+transform/transform/strided_slice_5/stack_1+transform/transform/strided_slice_5/stack_2*
T0	*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
t
2transform/transform/SparseToDense_5/output_shape/1Const*
dtype0	*
_output_shapes
: *
value	B	 R
Ы
0transform/transform/SparseToDense_5/output_shapePack#transform/transform/strided_slice_52transform/transform/SparseToDense_5/output_shape/1*
T0	*

axis *
N*
_output_shapes
:
v
1transform/transform/SparseToDense_5/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ђ
#transform/transform/SparseToDense_5SparseToDense>transform/transform/inputs/inputs/pickup_latitude/indices_copy0transform/transform/SparseToDense_5/output_shape=transform/transform/inputs/inputs/pickup_latitude/values_copy1transform/transform/SparseToDense_5/default_value*
validate_indices(*
T0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_5Squeeze#transform/transform/SparseToDense_5*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0

3transform/transform/bucketize/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
x
6transform/transform/bucketize/quantiles/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
Р
2transform/transform/bucketize/quantiles/ExpandDims
ExpandDimstransform/Const_16transform/transform/bucketize/quantiles/ExpandDims/dim*
T0*
_output_shapes

:	*

Tdim0
л
:transform/transform/bucketize/apply_buckets/assign_bucketsBucketizeWithInputBoundariestransform/transform/Squeeze_52transform/transform/bucketize/quantiles/ExpandDims*
T0*#
_output_shapes
:џџџџџџџџџ
Ф
3transform/transform/bucketize/apply_buckets/ToInt64Cast:transform/transform/bucketize/apply_buckets/assign_buckets*

SrcT0*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0	
s
1transform/transform/bucketize/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ѓ
1transform/transform/bucketize/apply_buckets/ShapeShape2transform/transform/bucketize/quantiles/ExpandDims*
T0*
out_type0*
_output_shapes
:

?transform/transform/bucketize/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Atransform/transform/bucketize/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Atransform/transform/bucketize/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
е
9transform/transform/bucketize/apply_buckets/strided_sliceStridedSlice1transform/transform/bucketize/apply_buckets/Shape?transform/transform/bucketize/apply_buckets/strided_slice/stackAtransform/transform/bucketize/apply_buckets/strided_slice/stack_1Atransform/transform/bucketize/apply_buckets/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
s
)transform/transform/strided_slice_6/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_6/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

#transform/transform/strided_slice_6StridedSlice=transform/transform/inputs/inputs/pickup_longitude/shape_copy)transform/transform/strided_slice_6/stack+transform/transform/strided_slice_6/stack_1+transform/transform/strided_slice_6/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0	*
Index0*
shrink_axis_mask
t
2transform/transform/SparseToDense_6/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ы
0transform/transform/SparseToDense_6/output_shapePack#transform/transform/strided_slice_62transform/transform/SparseToDense_6/output_shape/1*
T0	*

axis *
N*
_output_shapes
:
v
1transform/transform/SparseToDense_6/default_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
є
#transform/transform/SparseToDense_6SparseToDense?transform/transform/inputs/inputs/pickup_longitude/indices_copy0transform/transform/SparseToDense_6/output_shape>transform/transform/inputs/inputs/pickup_longitude/values_copy1transform/transform/SparseToDense_6/default_value*'
_output_shapes
:џџџџџџџџџ*
Tindices0	*
validate_indices(*
T0

transform/transform/Squeeze_6Squeeze#transform/transform/SparseToDense_6*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

5transform/transform/bucketize_1/quantiles/PlaceholderPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
z
8transform/transform/bucketize_1/quantiles/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
Ф
4transform/transform/bucketize_1/quantiles/ExpandDims
ExpandDimstransform/Const_28transform/transform/bucketize_1/quantiles/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
п
<transform/transform/bucketize_1/apply_buckets/assign_bucketsBucketizeWithInputBoundariestransform/transform/Squeeze_64transform/transform/bucketize_1/quantiles/ExpandDims*
T0*#
_output_shapes
:џџџџџџџџџ
Ш
5transform/transform/bucketize_1/apply_buckets/ToInt64Cast<transform/transform/bucketize_1/apply_buckets/assign_buckets*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0	*

SrcT0
u
3transform/transform/bucketize_1/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ї
3transform/transform/bucketize_1/apply_buckets/ShapeShape4transform/transform/bucketize_1/quantiles/ExpandDims*
T0*
out_type0*
_output_shapes
:

Atransform/transform/bucketize_1/apply_buckets/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:

Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
п
;transform/transform/bucketize_1/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_1/apply_buckets/ShapeAtransform/transform/bucketize_1/apply_buckets/strided_slice/stackCtransform/transform/bucketize_1/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
s
)transform/transform/strided_slice_7/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_7/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

#transform/transform/strided_slice_7StridedSlice=transform/transform/inputs/inputs/dropoff_latitude/shape_copy)transform/transform/strided_slice_7/stack+transform/transform/strided_slice_7/stack_1+transform/transform/strided_slice_7/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0	*
shrink_axis_mask
t
2transform/transform/SparseToDense_7/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ы
0transform/transform/SparseToDense_7/output_shapePack#transform/transform/strided_slice_72transform/transform/SparseToDense_7/output_shape/1*
T0	*

axis *
N*
_output_shapes
:
v
1transform/transform/SparseToDense_7/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
є
#transform/transform/SparseToDense_7SparseToDense?transform/transform/inputs/inputs/dropoff_latitude/indices_copy0transform/transform/SparseToDense_7/output_shape>transform/transform/inputs/inputs/dropoff_latitude/values_copy1transform/transform/SparseToDense_7/default_value*'
_output_shapes
:џџџџџџџџџ*
Tindices0	*
validate_indices(*
T0

transform/transform/Squeeze_7Squeeze#transform/transform/SparseToDense_7*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


5transform/transform/bucketize_2/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
z
8transform/transform/bucketize_2/quantiles/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
Ф
4transform/transform/bucketize_2/quantiles/ExpandDims
ExpandDimstransform/Const_48transform/transform/bucketize_2/quantiles/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:

п
<transform/transform/bucketize_2/apply_buckets/assign_bucketsBucketizeWithInputBoundariestransform/transform/Squeeze_74transform/transform/bucketize_2/quantiles/ExpandDims*#
_output_shapes
:џџџџџџџџџ*
T0
Ш
5transform/transform/bucketize_2/apply_buckets/ToInt64Cast<transform/transform/bucketize_2/apply_buckets/assign_buckets*

SrcT0*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0	
u
3transform/transform/bucketize_2/apply_buckets/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
Ї
3transform/transform/bucketize_2/apply_buckets/ShapeShape4transform/transform/bucketize_2/quantiles/ExpandDims*
_output_shapes
:*
T0*
out_type0

Atransform/transform/bucketize_2/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
п
;transform/transform/bucketize_2/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_2/apply_buckets/ShapeAtransform/transform/bucketize_2/apply_buckets/strided_slice/stackCtransform/transform/bucketize_2/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
s
)transform/transform/strided_slice_8/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_8/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_8/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

#transform/transform/strided_slice_8StridedSlice>transform/transform/inputs/inputs/dropoff_longitude/shape_copy)transform/transform/strided_slice_8/stack+transform/transform/strided_slice_8/stack_1+transform/transform/strided_slice_8/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0	*
Index0
t
2transform/transform/SparseToDense_8/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ы
0transform/transform/SparseToDense_8/output_shapePack#transform/transform/strided_slice_82transform/transform/SparseToDense_8/output_shape/1*
N*
_output_shapes
:*
T0	*

axis 
v
1transform/transform/SparseToDense_8/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
і
#transform/transform/SparseToDense_8SparseToDense@transform/transform/inputs/inputs/dropoff_longitude/indices_copy0transform/transform/SparseToDense_8/output_shape?transform/transform/inputs/inputs/dropoff_longitude/values_copy1transform/transform/SparseToDense_8/default_value*
Tindices0	*
validate_indices(*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_8Squeeze#transform/transform/SparseToDense_8*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

5transform/transform/bucketize_3/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
z
8transform/transform/bucketize_3/quantiles/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
Ф
4transform/transform/bucketize_3/quantiles/ExpandDims
ExpandDimstransform/Const_58transform/transform/bucketize_3/quantiles/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
п
<transform/transform/bucketize_3/apply_buckets/assign_bucketsBucketizeWithInputBoundariestransform/transform/Squeeze_84transform/transform/bucketize_3/quantiles/ExpandDims*
T0*#
_output_shapes
:џџџџџџџџџ
Ш
5transform/transform/bucketize_3/apply_buckets/ToInt64Cast<transform/transform/bucketize_3/apply_buckets/assign_buckets*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0	*

SrcT0
u
3transform/transform/bucketize_3/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ї
3transform/transform/bucketize_3/apply_buckets/ShapeShape4transform/transform/bucketize_3/quantiles/ExpandDims*
T0*
out_type0*
_output_shapes
:

Atransform/transform/bucketize_3/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
п
;transform/transform/bucketize_3/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_3/apply_buckets/ShapeAtransform/transform/bucketize_3/apply_buckets/strided_slice/stackCtransform/transform/bucketize_3/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
s
)transform/transform/strided_slice_9/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_9/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_9/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

#transform/transform/strided_slice_9StridedSlice<transform/transform/inputs/inputs/trip_start_hour/shape_copy)transform/transform/strided_slice_9/stack+transform/transform/strided_slice_9/stack_1+transform/transform/strided_slice_9/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0	
t
2transform/transform/SparseToDense_9/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ы
0transform/transform/SparseToDense_9/output_shapePack#transform/transform/strided_slice_92transform/transform/SparseToDense_9/output_shape/1*
T0	*

axis *
N*
_output_shapes
:
s
1transform/transform/SparseToDense_9/default_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ђ
#transform/transform/SparseToDense_9SparseToDense>transform/transform/inputs/inputs/trip_start_hour/indices_copy0transform/transform/SparseToDense_9/output_shape=transform/transform/inputs/inputs/trip_start_hour/values_copy1transform/transform/SparseToDense_9/default_value*
Tindices0	*
validate_indices(*
T0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_9Squeeze#transform/transform/SparseToDense_9*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

t
*transform/transform/strided_slice_10/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_10/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
v
,transform/transform/strided_slice_10/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

$transform/transform/strided_slice_10StridedSlice;transform/transform/inputs/inputs/trip_start_day/shape_copy*transform/transform/strided_slice_10/stack,transform/transform/strided_slice_10/stack_1,transform/transform/strided_slice_10/stack_2*
T0	*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
u
3transform/transform/SparseToDense_10/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ю
1transform/transform/SparseToDense_10/output_shapePack$transform/transform/strided_slice_103transform/transform/SparseToDense_10/output_shape/1*
T0	*

axis *
N*
_output_shapes
:
t
2transform/transform/SparseToDense_10/default_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ѓ
$transform/transform/SparseToDense_10SparseToDense=transform/transform/inputs/inputs/trip_start_day/indices_copy1transform/transform/SparseToDense_10/output_shape<transform/transform/inputs/inputs/trip_start_day/values_copy2transform/transform/SparseToDense_10/default_value*
Tindices0	*
validate_indices(*
T0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_10Squeeze$transform/transform/SparseToDense_10*
squeeze_dims
*
T0	*#
_output_shapes
:џџџџџџџџџ
t
*transform/transform/strided_slice_11/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_11/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
v
,transform/transform/strided_slice_11/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

$transform/transform/strided_slice_11StridedSlice=transform/transform/inputs/inputs/trip_start_month/shape_copy*transform/transform/strided_slice_11/stack,transform/transform/strided_slice_11/stack_1,transform/transform/strided_slice_11/stack_2*
T0	*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
u
3transform/transform/SparseToDense_11/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ю
1transform/transform/SparseToDense_11/output_shapePack$transform/transform/strided_slice_113transform/transform/SparseToDense_11/output_shape/1*
T0	*

axis *
N*
_output_shapes
:
t
2transform/transform/SparseToDense_11/default_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ї
$transform/transform/SparseToDense_11SparseToDense?transform/transform/inputs/inputs/trip_start_month/indices_copy1transform/transform/SparseToDense_11/output_shape>transform/transform/inputs/inputs/trip_start_month/values_copy2transform/transform/SparseToDense_11/default_value*
validate_indices(*
T0	*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_11Squeeze$transform/transform/SparseToDense_11*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

t
*transform/transform/strided_slice_12/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_12/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_12/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

$transform/transform/strided_slice_12StridedSlice@transform/transform/inputs/inputs/pickup_census_tract/shape_copy*transform/transform/strided_slice_12/stack,transform/transform/strided_slice_12/stack_1,transform/transform/strided_slice_12/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0	*
Index0
u
3transform/transform/SparseToDense_12/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ю
1transform/transform/SparseToDense_12/output_shapePack$transform/transform/strided_slice_123transform/transform/SparseToDense_12/output_shape/1*
T0	*

axis *
N*
_output_shapes
:
s
2transform/transform/SparseToDense_12/default_valueConst*
valueB B *
dtype0*
_output_shapes
: 
§
$transform/transform/SparseToDense_12SparseToDenseBtransform/transform/inputs/inputs/pickup_census_tract/indices_copy1transform/transform/SparseToDense_12/output_shapeAtransform/transform/inputs/inputs/pickup_census_tract/values_copy2transform/transform/SparseToDense_12/default_value*
Tindices0	*
validate_indices(*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_12Squeeze$transform/transform/SparseToDense_12*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ
t
*transform/transform/strided_slice_13/stackConst*
dtype0*
_output_shapes
:*
valueB: 
v
,transform/transform/strided_slice_13/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_13/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

$transform/transform/strided_slice_13StridedSliceAtransform/transform/inputs/inputs/dropoff_census_tract/shape_copy*transform/transform/strided_slice_13/stack,transform/transform/strided_slice_13/stack_1,transform/transform/strided_slice_13/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0	*
Index0
u
3transform/transform/SparseToDense_13/output_shape/1Const*
dtype0	*
_output_shapes
: *
value	B	 R
Ю
1transform/transform/SparseToDense_13/output_shapePack$transform/transform/strided_slice_133transform/transform/SparseToDense_13/output_shape/1*
T0	*

axis *
N*
_output_shapes
:
w
2transform/transform/SparseToDense_13/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
џ
$transform/transform/SparseToDense_13SparseToDenseCtransform/transform/inputs/inputs/dropoff_census_tract/indices_copy1transform/transform/SparseToDense_13/output_shapeBtransform/transform/inputs/inputs/dropoff_census_tract/values_copy2transform/transform/SparseToDense_13/default_value*
Tindices0	*
validate_indices(*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_13Squeeze$transform/transform/SparseToDense_13*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ
t
*transform/transform/strided_slice_14/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_14/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_14/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

$transform/transform/strided_slice_14StridedSliceBtransform/transform/inputs/inputs/pickup_community_area/shape_copy*transform/transform/strided_slice_14/stack,transform/transform/strided_slice_14/stack_1,transform/transform/strided_slice_14/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0	
u
3transform/transform/SparseToDense_14/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ю
1transform/transform/SparseToDense_14/output_shapePack$transform/transform/strided_slice_143transform/transform/SparseToDense_14/output_shape/1*
N*
_output_shapes
:*
T0	*

axis 
t
2transform/transform/SparseToDense_14/default_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 

$transform/transform/SparseToDense_14SparseToDenseDtransform/transform/inputs/inputs/pickup_community_area/indices_copy1transform/transform/SparseToDense_14/output_shapeCtransform/transform/inputs/inputs/pickup_community_area/values_copy2transform/transform/SparseToDense_14/default_value*'
_output_shapes
:џџџџџџџџџ*
Tindices0	*
validate_indices(*
T0	

transform/transform/Squeeze_14Squeeze$transform/transform/SparseToDense_14*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0	
t
*transform/transform/strided_slice_15/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_15/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_15/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

$transform/transform/strided_slice_15StridedSliceCtransform/transform/inputs/inputs/dropoff_community_area/shape_copy*transform/transform/strided_slice_15/stack,transform/transform/strided_slice_15/stack_1,transform/transform/strided_slice_15/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0	
u
3transform/transform/SparseToDense_15/output_shape/1Const*
dtype0	*
_output_shapes
: *
value	B	 R
Ю
1transform/transform/SparseToDense_15/output_shapePack$transform/transform/strided_slice_153transform/transform/SparseToDense_15/output_shape/1*
T0	*

axis *
N*
_output_shapes
:
w
2transform/transform/SparseToDense_15/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 

$transform/transform/SparseToDense_15SparseToDenseEtransform/transform/inputs/inputs/dropoff_community_area/indices_copy1transform/transform/SparseToDense_15/output_shapeDtransform/transform/inputs/inputs/dropoff_community_area/values_copy2transform/transform/SparseToDense_15/default_value*
Tindices0	*
validate_indices(*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_15Squeeze$transform/transform/SparseToDense_15*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ
t
*transform/transform/strided_slice_16/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_16/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_16/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

$transform/transform/strided_slice_16StridedSlice1transform/transform/inputs/inputs/fare/shape_copy*transform/transform/strided_slice_16/stack,transform/transform/strided_slice_16/stack_1,transform/transform/strided_slice_16/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0	
u
3transform/transform/SparseToDense_16/output_shape/1Const*
dtype0	*
_output_shapes
: *
value	B	 R
Ю
1transform/transform/SparseToDense_16/output_shapePack$transform/transform/strided_slice_163transform/transform/SparseToDense_16/output_shape/1*
T0	*

axis *
N*
_output_shapes
:
w
2transform/transform/SparseToDense_16/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
п
$transform/transform/SparseToDense_16SparseToDense3transform/transform/inputs/inputs/fare/indices_copy1transform/transform/SparseToDense_16/output_shape2transform/transform/inputs/inputs/fare/values_copy2transform/transform/SparseToDense_16/default_value*
Tindices0	*
validate_indices(*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_16Squeeze$transform/transform/SparseToDense_16*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0
t
*transform/transform/strided_slice_17/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_17/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
v
,transform/transform/strided_slice_17/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

$transform/transform/strided_slice_17StridedSlice1transform/transform/inputs/inputs/tips/shape_copy*transform/transform/strided_slice_17/stack,transform/transform/strided_slice_17/stack_1,transform/transform/strided_slice_17/stack_2*
Index0*
T0	*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
u
3transform/transform/SparseToDense_17/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ю
1transform/transform/SparseToDense_17/output_shapePack$transform/transform/strided_slice_173transform/transform/SparseToDense_17/output_shape/1*
T0	*

axis *
N*
_output_shapes
:
w
2transform/transform/SparseToDense_17/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
п
$transform/transform/SparseToDense_17SparseToDense3transform/transform/inputs/inputs/tips/indices_copy1transform/transform/SparseToDense_17/output_shape2transform/transform/inputs/inputs/tips/values_copy2transform/transform/SparseToDense_17/default_value*
Tindices0	*
validate_indices(*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_17Squeeze$transform/transform/SparseToDense_17*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ
p
transform/transform/IsNanIsNantransform/transform/Squeeze_16*
T0*#
_output_shapes
:џџџџџџџџџ
y
transform/transform/zeros_like	ZerosLiketransform/transform/Squeeze_16*#
_output_shapes
:џџџџџџџџџ*
T0

transform/transform/CastCasttransform/transform/zeros_like*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0	*

SrcT0
^
transform/transform/ConstConst*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 

transform/transform/MulMultransform/transform/Squeeze_16transform/transform/Const*
T0*#
_output_shapes
:џџџџџџџџџ

transform/transform/GreaterGreatertransform/transform/Squeeze_17transform/transform/Mul*
T0*#
_output_shapes
:џџџџџџџџџ

transform/transform/Cast_1Casttransform/transform/Greater*

SrcT0
*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0	
Ѓ
transform/transform/SelectSelecttransform/transform/IsNantransform/transform/Casttransform/transform/Cast_1*#
_output_shapes
:џџџџџџџџџ*
T0	
 
transform/transform/initNoOp
"
transform/transform/init_1NoOp

transform/initNoOp
S
SizeSizeinput_example_tensor*
_output_shapes
: *
T0*
out_type0
M
range/startConst*
value	B : *
dtype0*
_output_shapes
: 
M
range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
_
rangeRangerange/startSizerange/delta*#
_output_shapes
:џџџџџџџџџ*

Tidx0
N
Const_2Const*
valueB B0.12.1*
dtype0*
_output_shapes
: 
c
IdentityIdentityParseExample/ParseExample:5*
T0	*'
_output_shapes
:џџџџџџџџџ
b

Identity_1IdentityParseExample/ParseExample:23*
T0*#
_output_shapes
:џџџџџџџџџ
Y

Identity_2IdentityParseExample/ParseExample:41*
T0	*
_output_shapes
:
y

Identity_3Identity3transform/transform/bucketize/apply_buckets/ToInt64*
T0	*#
_output_shapes
:џџџџџџџџџ
d

Identity_4Identitytransform/transform/Squeeze_14*
T0	*#
_output_shapes
:џџџџџџџџџ


Identity_5IdentityStransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup*
T0	*#
_output_shapes
:џџџџџџџџџ
c

Identity_6IdentityParseExample/ParseExample*
T0	*'
_output_shapes
:џџџџџџџџџ
b

Identity_7IdentityParseExample/ParseExample:18*
T0*#
_output_shapes
:џџџџџџџџџ
Y

Identity_8IdentityParseExample/ParseExample:36*
T0	*
_output_shapes
:
f

Identity_9IdentityParseExample/ParseExample:17*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_10IdentityParseExample/ParseExample:35*
T0	*#
_output_shapes
:џџџџџџџџџ
Z
Identity_11IdentityParseExample/ParseExample:53*
T0	*
_output_shapes
:
g
Identity_12IdentityParseExample/ParseExample:16*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_13IdentityParseExample/ParseExample:34*#
_output_shapes
:џџџџџџџџџ*
T0	
Z
Identity_14IdentityParseExample/ParseExample:52*
T0	*
_output_shapes
:
f
Identity_15IdentityParseExample/ParseExample:4*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_16IdentityParseExample/ParseExample:22*
T0*#
_output_shapes
:џџџџџџџџџ
Z
Identity_17IdentityParseExample/ParseExample:40*
T0	*
_output_shapes
:
f
Identity_18IdentityParseExample/ParseExample:2*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_19IdentityParseExample/ParseExample:20*
T0*#
_output_shapes
:џџџџџџџџџ
Z
Identity_20IdentityParseExample/ParseExample:38*
T0	*
_output_shapes
:
e
Identity_21Identitytransform/transform/Squeeze_13*#
_output_shapes
:џџџџџџџџџ*
T0
g
Identity_22IdentityParseExample/ParseExample:13*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_23IdentityParseExample/ParseExample:31*#
_output_shapes
:џџџџџџџџџ*
T0
Z
Identity_24IdentityParseExample/ParseExample:49*
_output_shapes
:*
T0	
e
Identity_25Identitytransform/transform/Squeeze_12*
T0*#
_output_shapes
:џџџџџџџџџ
a
Identity_26Identitytransform/transform/Select*
T0	*#
_output_shapes
:џџџџџџџџџ
e
Identity_27Identitytransform/transform/Squeeze_11*
T0	*#
_output_shapes
:џџџџџџџџџ

Identity_28IdentityUtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup*#
_output_shapes
:џџџџџџџџџ*
T0	
|
Identity_29Identity5transform/transform/bucketize_3/apply_buckets/ToInt64*
T0	*#
_output_shapes
:џџџџџџџџџ
t
Identity_30Identity-transform/transform/scale_to_z_score_2/Select*
T0*#
_output_shapes
:џџџџџџџџџ
|
Identity_31Identity5transform/transform/bucketize_1/apply_buckets/ToInt64*
T0	*#
_output_shapes
:џџџџџџџџџ
g
Identity_32IdentityParseExample/ParseExample:15*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_33IdentityParseExample/ParseExample:33*
T0	*#
_output_shapes
:џџџџџџџџџ
Z
Identity_34IdentityParseExample/ParseExample:51*
_output_shapes
:*
T0	
d
Identity_35Identitytransform/transform/Squeeze_9*
T0	*#
_output_shapes
:џџџџџџџџџ
|
Identity_36Identity5transform/transform/bucketize_2/apply_buckets/ToInt64*
T0	*#
_output_shapes
:џџџџџџџџџ
f
Identity_37IdentityParseExample/ParseExample:7*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_38IdentityParseExample/ParseExample:25*#
_output_shapes
:џџџџџџџџџ*
T0
Z
Identity_39IdentityParseExample/ParseExample:43*
T0	*
_output_shapes
:
f
Identity_40IdentityParseExample/ParseExample:1*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_41IdentityParseExample/ParseExample:19*
T0*#
_output_shapes
:џџџџџџџџџ
Z
Identity_42IdentityParseExample/ParseExample:37*
T0	*
_output_shapes
:
e
Identity_43Identitytransform/transform/Squeeze_15*#
_output_shapes
:џџџџџџџџџ*
T0
r
Identity_44Identity+transform/transform/scale_to_z_score/Select*#
_output_shapes
:џџџџџџџџџ*
T0
e
Identity_45Identitytransform/transform/Squeeze_10*#
_output_shapes
:џџџџџџџџџ*
T0	
g
Identity_46IdentityParseExample/ParseExample:10*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_47IdentityParseExample/ParseExample:28*
T0*#
_output_shapes
:џџџџџџџџџ
Z
Identity_48IdentityParseExample/ParseExample:46*
T0	*
_output_shapes
:
g
Identity_49IdentityParseExample/ParseExample:12*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_50IdentityParseExample/ParseExample:30*
T0*#
_output_shapes
:џџџџџџџџџ
Z
Identity_51IdentityParseExample/ParseExample:48*
T0	*
_output_shapes
:
f
Identity_52IdentityParseExample/ParseExample:8*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_53IdentityParseExample/ParseExample:26*
T0	*#
_output_shapes
:џџџџџџџџџ
Z
Identity_54IdentityParseExample/ParseExample:44*
T0	*
_output_shapes
:
f
Identity_55IdentityParseExample/ParseExample:6*'
_output_shapes
:џџџџџџџџџ*
T0	
c
Identity_56IdentityParseExample/ParseExample:24*
T0*#
_output_shapes
:џџџџџџџџџ
Z
Identity_57IdentityParseExample/ParseExample:42*
_output_shapes
:*
T0	
g
Identity_58IdentityParseExample/ParseExample:14*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_59IdentityParseExample/ParseExample:32*
T0	*#
_output_shapes
:џџџџџџџџџ
Z
Identity_60IdentityParseExample/ParseExample:50*
T0	*
_output_shapes
:
g
Identity_61IdentityParseExample/ParseExample:11*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_62IdentityParseExample/ParseExample:29*
T0*#
_output_shapes
:џџџџџџџџџ
Z
Identity_63IdentityParseExample/ParseExample:47*
_output_shapes
:*
T0	
f
Identity_64IdentityParseExample/ParseExample:9*'
_output_shapes
:џџџџџџџџџ*
T0	
c
Identity_65IdentityParseExample/ParseExample:27*
T0*#
_output_shapes
:џџџџџџџџџ
Z
Identity_66IdentityParseExample/ParseExample:45*
T0	*
_output_shapes
:
f
Identity_67IdentityParseExample/ParseExample:3*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_68IdentityParseExample/ParseExample:21*
T0*#
_output_shapes
:џџџџџџџџџ
Z
Identity_69IdentityParseExample/ParseExample:39*
T0	*
_output_shapes
:
t
Identity_70Identity-transform/transform/scale_to_z_score_1/Select*
T0*#
_output_shapes
:џџџџџџџџџ
a
Identity_71Identitytransform/transform/Select*#
_output_shapes
:џџџџџџџџџ*
T0	

Adnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
й
=dnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims
ExpandDimsIdentity_70Adnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims/dim*
T0*'
_output_shapes
:џџџџџџџџџ*

Tdim0
Е
8dnn/input_from_feature_columns/input_layer/fare_xf/ShapeShape=dnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims*
T0*
out_type0*
_output_shapes
:

Fdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Hdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Hdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ј
@dnn/input_from_feature_columns/input_layer/fare_xf/strided_sliceStridedSlice8dnn/input_from_feature_columns/input_layer/fare_xf/ShapeFdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stackHdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stack_1Hdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0

Bdnn/input_from_feature_columns/input_layer/fare_xf/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

@dnn/input_from_feature_columns/input_layer/fare_xf/Reshape/shapePack@dnn/input_from_feature_columns/input_layer/fare_xf/strided_sliceBdnn/input_from_feature_columns/input_layer/fare_xf/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 

:dnn/input_from_feature_columns/input_layer/fare_xf/ReshapeReshape=dnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims@dnn/input_from_feature_columns/input_layer/fare_xf/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0

Gdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
х
Cdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDims
ExpandDimsIdentity_44Gdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
С
>dnn/input_from_feature_columns/input_layer/trip_miles_xf/ShapeShapeCdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDims*
_output_shapes
:*
T0*
out_type0

Ldnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Ndnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ndnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Fdnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_sliceStridedSlice>dnn/input_from_feature_columns/input_layer/trip_miles_xf/ShapeLdnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stackNdnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stack_1Ndnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 

Hdnn/input_from_feature_columns/input_layer/trip_miles_xf/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

Fdnn/input_from_feature_columns/input_layer/trip_miles_xf/Reshape/shapePackFdnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_sliceHdnn/input_from_feature_columns/input_layer/trip_miles_xf/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:

@dnn/input_from_feature_columns/input_layer/trip_miles_xf/ReshapeReshapeCdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDimsFdnn/input_from_feature_columns/input_layer/trip_miles_xf/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

Idnn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
щ
Ednn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDims
ExpandDimsIdentity_30Idnn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDims/dim*
T0*'
_output_shapes
:џџџџџџџџџ*

Tdim0
Х
@dnn/input_from_feature_columns/input_layer/trip_seconds_xf/ShapeShapeEdnn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDims*
T0*
out_type0*
_output_shapes
:

Ndnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Pdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Pdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
 
Hdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_sliceStridedSlice@dnn/input_from_feature_columns/input_layer/trip_seconds_xf/ShapeNdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stackPdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 

Jdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
 
Hdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_sliceJdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:

Bdnn/input_from_feature_columns/input_layer/trip_seconds_xf/ReshapeReshapeEdnn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDimsHdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
x
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
ў
1dnn/input_from_feature_columns/input_layer/concatConcatV2:dnn/input_from_feature_columns/input_layer/fare_xf/Reshape@dnn/input_from_feature_columns/input_layer/trip_miles_xf/ReshapeBdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
N*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
Х
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB"   d   *
dtype0*
_output_shapes
:
З
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB
 *о%wО*
dtype0*
_output_shapes
: 
З
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB
 *о%w>*
dtype0*
_output_shapes
: 

Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:d*

seed *
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
seed2 

>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
_output_shapes
: *
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
Ќ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d

:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d
п
dnn/hiddenlayer_0/kernel/part_0VarHandleOp*0
shared_name!dnn/hiddenlayer_0/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
	container *
shape
:d*
dtype0*
_output_shapes
: 

@dnn/hiddenlayer_0/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
и
&dnn/hiddenlayer_0/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0
Ч
3dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes

:d
Ў
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosConst*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
valueBd*    *
dtype0*
_output_shapes
:d
е
dnn/hiddenlayer_0/bias/part_0VarHandleOp*
dtype0*
_output_shapes
: *.
shared_namednn/hiddenlayer_0/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
	container *
shape:d

>dnn/hiddenlayer_0/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias/part_0*
_output_shapes
: 
Ч
$dnn/hiddenlayer_0/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0
Н
1dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
:d

'dnn/hiddenlayer_0/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes

:d
v
dnn/hiddenlayer_0/kernelIdentity'dnn/hiddenlayer_0/kernel/ReadVariableOp*
T0*
_output_shapes

:d
Ч
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*
T0*'
_output_shapes
:џџџџџџџџџd*
transpose_a( *
transpose_b( 

%dnn/hiddenlayer_0/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
:d
n
dnn/hiddenlayer_0/biasIdentity%dnn/hiddenlayer_0/bias/ReadVariableOp*
T0*
_output_shapes
:d

dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџd*
T0
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*'
_output_shapes
:џџџџџџџџџd*
T0
[
dnn/zero_fraction/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 

dnn/zero_fraction/EqualEqualdnn/hiddenlayer_0/Reludnn/zero_fraction/zero*
T0*'
_output_shapes
:џџџџџџџџџd

dnn/zero_fraction/CastCastdnn/zero_fraction/Equal*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџd*

DstT0
h
dnn/zero_fraction/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

dnn/zero_fraction/MeanMeandnn/zero_fraction/Castdnn/zero_fraction/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
 
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Ћ
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_0/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_0/activation*
dtype0*
_output_shapes
: 

 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
T0*
_output_shapes
: 
Х
@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB"d   F   *
dtype0*
_output_shapes
:
З
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB
 *H`@О*
dtype0*
_output_shapes
: 
З
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB
 *H`@>*
dtype0*
_output_shapes
: 

Hdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:dF*

seed *
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
seed2 

>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/sub*
_output_shapes

:dF*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0

:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF
п
dnn/hiddenlayer_1/kernel/part_0VarHandleOp*
	container *
shape
:dF*
dtype0*
_output_shapes
: *0
shared_name!dnn/hiddenlayer_1/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0

@dnn/hiddenlayer_1/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
и
&dnn/hiddenlayer_1/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_1/kernel/part_0:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0
Ч
3dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes

:dF
Ў
/dnn/hiddenlayer_1/bias/part_0/Initializer/zerosConst*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
valueBF*    *
dtype0*
_output_shapes
:F
е
dnn/hiddenlayer_1/bias/part_0VarHandleOp*
shape:F*
dtype0*
_output_shapes
: *.
shared_namednn/hiddenlayer_1/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
	container 

>dnn/hiddenlayer_1/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/bias/part_0*
_output_shapes
: 
Ч
$dnn/hiddenlayer_1/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_1/bias/part_0/dnn/hiddenlayer_1/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
dtype0
Н
1dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
:F*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0

'dnn/hiddenlayer_1/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes

:dF
v
dnn/hiddenlayer_1/kernelIdentity'dnn/hiddenlayer_1/kernel/ReadVariableOp*
T0*
_output_shapes

:dF
Ќ
dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Reludnn/hiddenlayer_1/kernel*'
_output_shapes
:џџџџџџџџџF*
transpose_a( *
transpose_b( *
T0

%dnn/hiddenlayer_1/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
:F
n
dnn/hiddenlayer_1/biasIdentity%dnn/hiddenlayer_1/bias/ReadVariableOp*
T0*
_output_shapes
:F

dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/bias*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџF
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџF
]
dnn/zero_fraction_1/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    

dnn/zero_fraction_1/EqualEqualdnn/hiddenlayer_1/Reludnn/zero_fraction_1/zero*
T0*'
_output_shapes
:џџџџџџџџџF

dnn/zero_fraction_1/CastCastdnn/zero_fraction_1/Equal*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџF*

DstT0
j
dnn/zero_fraction_1/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

dnn/zero_fraction_1/MeanMeandnn/zero_fraction_1/Castdnn/zero_fraction_1/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
 
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values*
dtype0*
_output_shapes
: 
­
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_1/activation/tagConst*
dtype0*
_output_shapes
: *1
value(B& B dnn/dnn/hiddenlayer_1/activation

 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
T0*
_output_shapes
: 
Х
@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB"F   0   
З
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB
 *йчfО*
dtype0*
_output_shapes
: 
З
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB
 *йчf>*
dtype0*
_output_shapes
: 

Hdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shape*

seed *
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
seed2 *
dtype0*
_output_shapes

:F0

>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F0

:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F0
п
dnn/hiddenlayer_2/kernel/part_0VarHandleOp*
dtype0*
_output_shapes
: *0
shared_name!dnn/hiddenlayer_2/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
	container *
shape
:F0

@dnn/hiddenlayer_2/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
и
&dnn/hiddenlayer_2/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_2/kernel/part_0:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
Ч
3dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes

:F0
Ў
/dnn/hiddenlayer_2/bias/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
valueB0*    
е
dnn/hiddenlayer_2/bias/part_0VarHandleOp*
dtype0*
_output_shapes
: *.
shared_namednn/hiddenlayer_2/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
	container *
shape:0

>dnn/hiddenlayer_2/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/bias/part_0*
_output_shapes
: 
Ч
$dnn/hiddenlayer_2/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_2/bias/part_0/dnn/hiddenlayer_2/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
dtype0
Н
1dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes
:0

'dnn/hiddenlayer_2/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes

:F0
v
dnn/hiddenlayer_2/kernelIdentity'dnn/hiddenlayer_2/kernel/ReadVariableOp*
T0*
_output_shapes

:F0
Ќ
dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Reludnn/hiddenlayer_2/kernel*
T0*'
_output_shapes
:џџџџџџџџџ0*
transpose_a( *
transpose_b( 

%dnn/hiddenlayer_2/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes
:0
n
dnn/hiddenlayer_2/biasIdentity%dnn/hiddenlayer_2/bias/ReadVariableOp*
T0*
_output_shapes
:0

dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/bias*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ0
k
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*'
_output_shapes
:џџџџџџџџџ0*
T0
]
dnn/zero_fraction_2/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 

dnn/zero_fraction_2/EqualEqualdnn/hiddenlayer_2/Reludnn/zero_fraction_2/zero*
T0*'
_output_shapes
:џџџџџџџџџ0

dnn/zero_fraction_2/CastCastdnn/zero_fraction_2/Equal*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџ0*

DstT0
j
dnn/zero_fraction_2/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

dnn/zero_fraction_2/MeanMeandnn/zero_fraction_2/Castdnn/zero_fraction_2/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
 
2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*
dtype0*
_output_shapes
: *>
value5B3 B-dnn/dnn/hiddenlayer_2/fraction_of_zero_values
­
-dnn/dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_2/activation/tagConst*
dtype0*
_output_shapes
: *1
value(B& B dnn/dnn/hiddenlayer_2/activation

 dnn/dnn/hiddenlayer_2/activationHistogramSummary$dnn/dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
T0*
_output_shapes
: 
Х
@dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
valueB"0   "   *
dtype0*
_output_shapes
:
З
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
valueB
 *О*
dtype0*
_output_shapes
: 
З
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
valueB
 *>*
dtype0*
_output_shapes
: 

Hdnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
seed2 *
dtype0*
_output_shapes

:0"*

seed 

>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:0"

:dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:0"
п
dnn/hiddenlayer_3/kernel/part_0VarHandleOp*
shape
:0"*
dtype0*
_output_shapes
: *0
shared_name!dnn/hiddenlayer_3/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
	container 

@dnn/hiddenlayer_3/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/kernel/part_0*
_output_shapes
: 
и
&dnn/hiddenlayer_3/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_3/kernel/part_0:dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0
Ч
3dnn/hiddenlayer_3/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes

:0"
Ў
/dnn/hiddenlayer_3/bias/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:"*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
valueB"*    
е
dnn/hiddenlayer_3/bias/part_0VarHandleOp*
dtype0*
_output_shapes
: *.
shared_namednn/hiddenlayer_3/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
	container *
shape:"

>dnn/hiddenlayer_3/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/bias/part_0*
_output_shapes
: 
Ч
$dnn/hiddenlayer_3/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_3/bias/part_0/dnn/hiddenlayer_3/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
dtype0
Н
1dnn/hiddenlayer_3/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
dtype0*
_output_shapes
:"

'dnn/hiddenlayer_3/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes

:0"
v
dnn/hiddenlayer_3/kernelIdentity'dnn/hiddenlayer_3/kernel/ReadVariableOp*
T0*
_output_shapes

:0"
Ќ
dnn/hiddenlayer_3/MatMulMatMuldnn/hiddenlayer_2/Reludnn/hiddenlayer_3/kernel*
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ"*
transpose_a( 

%dnn/hiddenlayer_3/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0*
dtype0*
_output_shapes
:"
n
dnn/hiddenlayer_3/biasIdentity%dnn/hiddenlayer_3/bias/ReadVariableOp*
T0*
_output_shapes
:"

dnn/hiddenlayer_3/BiasAddBiasAdddnn/hiddenlayer_3/MatMuldnn/hiddenlayer_3/bias*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ"*
T0
k
dnn/hiddenlayer_3/ReluReludnn/hiddenlayer_3/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ"
]
dnn/zero_fraction_3/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 

dnn/zero_fraction_3/EqualEqualdnn/hiddenlayer_3/Reludnn/zero_fraction_3/zero*
T0*'
_output_shapes
:џџџџџџџџџ"

dnn/zero_fraction_3/CastCastdnn/zero_fraction_3/Equal*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџ"*

DstT0
j
dnn/zero_fraction_3/ConstConst*
dtype0*
_output_shapes
:*
valueB"       

dnn/zero_fraction_3/MeanMeandnn/zero_fraction_3/Castdnn/zero_fraction_3/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
 
2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_3/fraction_of_zero_values*
dtype0*
_output_shapes
: 
­
-dnn/dnn/hiddenlayer_3/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsdnn/zero_fraction_3/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_3/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_3/activation*
dtype0*
_output_shapes
: 

 dnn/dnn/hiddenlayer_3/activationHistogramSummary$dnn/dnn/hiddenlayer_3/activation/tagdnn/hiddenlayer_3/Relu*
T0*
_output_shapes
: 
З
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB""      *
dtype0*
_output_shapes
:
Љ
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *+
_class!
loc:@dnn/logits/kernel/part_0*
valueB
 *їќгО
Љ
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB
 *їќг>*
dtype0*
_output_shapes
: 

Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
seed2 *
dtype0*
_output_shapes

:"*

seed 
ў
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: 

7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*
_output_shapes

:"*
T0*+
_class!
loc:@dnn/logits/kernel/part_0

3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:"
Ъ
dnn/logits/kernel/part_0VarHandleOp*+
_class!
loc:@dnn/logits/kernel/part_0*
	container *
shape
:"*
dtype0*
_output_shapes
: *)
shared_namednn/logits/kernel/part_0

9dnn/logits/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel/part_0*
_output_shapes
: 
М
dnn/logits/kernel/part_0/AssignAssignVariableOpdnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0
В
,dnn/logits/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
_output_shapes

:"
 
(dnn/logits/bias/part_0/Initializer/zerosConst*)
_class
loc:@dnn/logits/bias/part_0*
valueB*    *
dtype0*
_output_shapes
:
Р
dnn/logits/bias/part_0VarHandleOp*)
_class
loc:@dnn/logits/bias/part_0*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_namednn/logits/bias/part_0
}
7dnn/logits/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias/part_0*
_output_shapes
: 
Ћ
dnn/logits/bias/part_0/AssignAssignVariableOpdnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*)
_class
loc:@dnn/logits/bias/part_0*
dtype0
Ј
*dnn/logits/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*)
_class
loc:@dnn/logits/bias/part_0*
dtype0*
_output_shapes
:
y
 dnn/logits/kernel/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
dtype0*
_output_shapes

:"
h
dnn/logits/kernelIdentity dnn/logits/kernel/ReadVariableOp*
T0*
_output_shapes

:"

dnn/logits/MatMulMatMuldnn/hiddenlayer_3/Reludnn/logits/kernel*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 
q
dnn/logits/bias/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
dtype0*
_output_shapes
:
`
dnn/logits/biasIdentitydnn/logits/bias/ReadVariableOp*
T0*
_output_shapes
:

dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ
]
dnn/zero_fraction_4/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 

dnn/zero_fraction_4/EqualEqualdnn/logits/BiasAdddnn/zero_fraction_4/zero*
T0*'
_output_shapes
:џџџџџџџџџ

dnn/zero_fraction_4/CastCastdnn/zero_fraction_4/Equal*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџ*

DstT0
j
dnn/zero_fraction_4/ConstConst*
dtype0*
_output_shapes
:*
valueB"       

dnn/zero_fraction_4/MeanMeandnn/zero_fraction_4/Castdnn/zero_fraction_4/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

+dnn/dnn/logits/fraction_of_zero_values/tagsConst*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
dtype0*
_output_shapes
: 

&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_4/Mean*
T0*
_output_shapes
: 
w
dnn/dnn/logits/activation/tagConst**
value!B Bdnn/dnn/logits/activation*
dtype0*
_output_shapes
: 

dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: *
T0
т
Olinear/linear_model/company_xf/weights/part_0/Initializer/zeros/shape_as_tensorConst*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
valueB"ђ     *
dtype0*
_output_shapes
:
Ь
Elinear/linear_model/company_xf/weights/part_0/Initializer/zeros/ConstConst*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
н
?linear/linear_model/company_xf/weights/part_0/Initializer/zerosFillOlinear/linear_model/company_xf/weights/part_0/Initializer/zeros/shape_as_tensorElinear/linear_model/company_xf/weights/part_0/Initializer/zeros/Const*
T0*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*

index_type0*
_output_shapes
:	ђ

-linear/linear_model/company_xf/weights/part_0VarHandleOp*
	container *
shape:	ђ*
dtype0*
_output_shapes
: *>
shared_name/-linear/linear_model/company_xf/weights/part_0*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0
Ћ
Nlinear/linear_model/company_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp-linear/linear_model/company_xf/weights/part_0*
_output_shapes
: 

4linear/linear_model/company_xf/weights/part_0/AssignAssignVariableOp-linear/linear_model/company_xf/weights/part_0?linear/linear_model/company_xf/weights/part_0/Initializer/zeros*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
dtype0
ђ
Alinear/linear_model/company_xf/weights/part_0/Read/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0

:linear/linear_model/linear_model/company_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ы
6linear/linear_model/linear_model/company_xf/ExpandDims
ExpandDimsIdentity_28:linear/linear_model/linear_model/company_xf/ExpandDims/dim*

Tdim0*
T0	*'
_output_shapes
:џџџџџџџџџ

Jlinear/linear_model/linear_model/company_xf/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
м
Hlinear/linear_model/linear_model/company_xf/to_sparse_input/ignore_valueCastJlinear/linear_model/linear_model/company_xf/to_sparse_input/ignore_value/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	

Dlinear/linear_model/linear_model/company_xf/to_sparse_input/NotEqualNotEqual6linear/linear_model/linear_model/company_xf/ExpandDimsHlinear/linear_model/linear_model/company_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
Ф
Clinear/linear_model/linear_model/company_xf/to_sparse_input/indicesWhereDlinear/linear_model/linear_model/company_xf/to_sparse_input/NotEqual*
T0
*'
_output_shapes
:џџџџџџџџџ

Blinear/linear_model/linear_model/company_xf/to_sparse_input/valuesGatherNd6linear/linear_model/linear_model/company_xf/ExpandDimsClinear/linear_model/linear_model/company_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Н
Glinear/linear_model/linear_model/company_xf/to_sparse_input/dense_shapeShape6linear/linear_model/linear_model/company_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:
|
9linear/linear_model/linear_model/company_xf/num_buckets/xConst*
value
B :ђ*
dtype0*
_output_shapes
: 
К
7linear/linear_model/linear_model/company_xf/num_bucketsCast9linear/linear_model/linear_model/company_xf/num_buckets/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
t
2linear/linear_model/linear_model/company_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ќ
0linear/linear_model/linear_model/company_xf/zeroCast2linear/linear_model/linear_model/company_xf/zero/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
м
0linear/linear_model/linear_model/company_xf/LessLessBlinear/linear_model/linear_model/company_xf/to_sparse_input/values0linear/linear_model/linear_model/company_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
ѓ
8linear/linear_model/linear_model/company_xf/GreaterEqualGreaterEqualBlinear/linear_model/linear_model/company_xf/to_sparse_input/values7linear/linear_model/linear_model/company_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
ж
8linear/linear_model/linear_model/company_xf/out_of_range	LogicalOr0linear/linear_model/linear_model/company_xf/Less8linear/linear_model/linear_model/company_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Г
1linear/linear_model/linear_model/company_xf/ShapeShapeBlinear/linear_model/linear_model/company_xf/to_sparse_input/values*
T0	*
out_type0*
_output_shapes
:
w
5linear/linear_model/linear_model/company_xf/ToInt64/xConst*
value	B : *
dtype0*
_output_shapes
: 
В
3linear/linear_model/linear_model/company_xf/ToInt64Cast5linear/linear_model/linear_model/company_xf/ToInt64/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
ъ
:linear/linear_model/linear_model/company_xf/default_valuesFill1linear/linear_model/linear_model/company_xf/Shape3linear/linear_model/linear_model/company_xf/ToInt64*
T0	*

index_type0*#
_output_shapes
:џџџџџџџџџ
Є
2linear/linear_model/linear_model/company_xf/SelectSelect8linear/linear_model/linear_model/company_xf/out_of_range:linear/linear_model/linear_model/company_xf/default_valuesBlinear/linear_model/linear_model/company_xf/to_sparse_input/values*#
_output_shapes
:џџџџџџџџџ*
T0	
Э
8linear/linear_model/linear_model/company_xf/Shape_1/CastCastGlinear/linear_model/linear_model/company_xf/to_sparse_input/dense_shape*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0

?linear/linear_model/linear_model/company_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Alinear/linear_model/linear_model/company_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Alinear/linear_model/linear_model/company_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
м
9linear/linear_model/linear_model/company_xf/strided_sliceStridedSlice8linear/linear_model/linear_model/company_xf/Shape_1/Cast?linear/linear_model/linear_model/company_xf/strided_slice/stackAlinear/linear_model/linear_model/company_xf/strided_slice/stack_1Alinear/linear_model/linear_model/company_xf/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0

4linear/linear_model/linear_model/company_xf/Cast/x/1Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
х
2linear/linear_model/linear_model/company_xf/Cast/xPack9linear/linear_model/linear_model/company_xf/strided_slice4linear/linear_model/linear_model/company_xf/Cast/x/1*
N*
_output_shapes
:*
T0*

axis 
А
0linear/linear_model/linear_model/company_xf/CastCast2linear/linear_model/linear_model/company_xf/Cast/x*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
Й
9linear/linear_model/linear_model/company_xf/SparseReshapeSparseReshapeClinear/linear_model/linear_model/company_xf/to_sparse_input/indicesGlinear/linear_model/linear_model/company_xf/to_sparse_input/dense_shape0linear/linear_model/linear_model/company_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
А
Blinear/linear_model/linear_model/company_xf/SparseReshape/IdentityIdentity2linear/linear_model/linear_model/company_xf/Select*#
_output_shapes
:џџџџџџџџџ*
T0	
Љ
:linear/linear_model/linear_model/company_xf/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ

Dlinear/linear_model/linear_model/company_xf/weighted_sum/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 

Clinear/linear_model/linear_model/company_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
С
>linear/linear_model/linear_model/company_xf/weighted_sum/SliceSlice;linear/linear_model/linear_model/company_xf/SparseReshape:1Dlinear/linear_model/linear_model/company_xf/weighted_sum/Slice/beginClinear/linear_model/linear_model/company_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

>linear/linear_model/linear_model/company_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:

=linear/linear_model/linear_model/company_xf/weighted_sum/ProdProd>linear/linear_model/linear_model/company_xf/weighted_sum/Slice>linear/linear_model/linear_model/company_xf/weighted_sum/Const*
	keep_dims( *

Tidx0*
T0	*
_output_shapes
: 

Ilinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Flinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
с
Alinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2GatherV2;linear/linear_model/linear_model/company_xf/SparseReshape:1Ilinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2/indicesFlinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0

?linear/linear_model/linear_model/company_xf/weighted_sum/Cast/xPack=linear/linear_model/linear_model/company_xf/weighted_sum/ProdAlinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2*
T0	*

axis *
N*
_output_shapes
:
П
Flinear/linear_model/linear_model/company_xf/weighted_sum/SparseReshapeSparseReshape9linear/linear_model/linear_model/company_xf/SparseReshape;linear/linear_model/linear_model/company_xf/SparseReshape:1?linear/linear_model/linear_model/company_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
Э
Olinear/linear_model/linear_model/company_xf/weighted_sum/SparseReshape/IdentityIdentityBlinear/linear_model/linear_model/company_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Glinear/linear_model/linear_model/company_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 

Elinear/linear_model/linear_model/company_xf/weighted_sum/GreaterEqualGreaterEqualOlinear/linear_model/linear_model/company_xf/weighted_sum/SparseReshape/IdentityGlinear/linear_model/linear_model/company_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
Р
>linear/linear_model/linear_model/company_xf/weighted_sum/WhereWhereElinear/linear_model/linear_model/company_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ*
T0


Flinear/linear_model/linear_model/company_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

@linear/linear_model/linear_model/company_xf/weighted_sum/ReshapeReshape>linear/linear_model/linear_model/company_xf/weighted_sum/WhereFlinear/linear_model/linear_model/company_xf/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:џџџџџџџџџ

Hlinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ј
Clinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2_1GatherV2Flinear/linear_model/linear_model/company_xf/weighted_sum/SparseReshape@linear/linear_model/linear_model/company_xf/weighted_sum/ReshapeHlinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

Hlinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
§
Clinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2_2GatherV2Olinear/linear_model/linear_model/company_xf/weighted_sum/SparseReshape/Identity@linear/linear_model/linear_model/company_xf/weighted_sum/ReshapeHlinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2_2/axis*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	
М
Alinear/linear_model/linear_model/company_xf/weighted_sum/IdentityIdentityHlinear/linear_model/linear_model/company_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Rlinear/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ї
`linear/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsClinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2_1Clinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2_2Alinear/linear_model/linear_model/company_xf/weighted_sum/IdentityRlinear/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Е
dlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
З
flinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
З
flinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Ѕ
^linear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice`linear/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsdlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackflinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1flinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:џџџџџџџџџ

Ulinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/CastCast^linear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0

Wlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/UniqueUniqueblinear/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ї
flinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*M
_classC
A?loc:@linear/linear_model/linear_model/company_xf/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 

alinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2:linear/linear_model/linear_model/company_xf/ReadVariableOpWlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Uniqueflinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0*M
_classC
A?loc:@linear/linear_model/linear_model/company_xf/ReadVariableOp

jlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityalinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:џџџџџџџџџ*
T0
Р
Plinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumjlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityYlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Unique:1Ulinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0

Hlinear/linear_model/linear_model/company_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
Л
Blinear/linear_model/linear_model/company_xf/weighted_sum/Reshape_1Reshapeblinear/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Hlinear/linear_model/linear_model/company_xf/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:џџџџџџџџџ
Ю
>linear/linear_model/linear_model/company_xf/weighted_sum/ShapeShapePlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:

Llinear/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:

Nlinear/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Nlinear/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Flinear/linear_model/linear_model/company_xf/weighted_sum/strided_sliceStridedSlice>linear/linear_model/linear_model/company_xf/weighted_sum/ShapeLlinear/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stackNlinear/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack_1Nlinear/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

@linear/linear_model/linear_model/company_xf/weighted_sum/stack/0Const*
dtype0*
_output_shapes
: *
value	B :

>linear/linear_model/linear_model/company_xf/weighted_sum/stackPack@linear/linear_model/linear_model/company_xf/weighted_sum/stack/0Flinear/linear_model/linear_model/company_xf/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:

=linear/linear_model/linear_model/company_xf/weighted_sum/TileTileBlinear/linear_model/linear_model/company_xf/weighted_sum/Reshape_1>linear/linear_model/linear_model/company_xf/weighted_sum/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*

Tmultiples0*
T0

д
Clinear/linear_model/linear_model/company_xf/weighted_sum/zeros_like	ZerosLikePlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
Ъ
8linear/linear_model/linear_model/company_xf/weighted_sumSelect=linear/linear_model/linear_model/company_xf/weighted_sum/TileClinear/linear_model/linear_model/company_xf/weighted_sum/zeros_likePlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
Ш
?linear/linear_model/linear_model/company_xf/weighted_sum/Cast_1Cast;linear/linear_model/linear_model/company_xf/SparseReshape:1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0

Flinear/linear_model/linear_model/company_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Elinear/linear_model/linear_model/company_xf/weighted_sum/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
Ы
@linear/linear_model/linear_model/company_xf/weighted_sum/Slice_1Slice?linear/linear_model/linear_model/company_xf/weighted_sum/Cast_1Flinear/linear_model/linear_model/company_xf/weighted_sum/Slice_1/beginElinear/linear_model/linear_model/company_xf/weighted_sum/Slice_1/size*
_output_shapes
:*
Index0*
T0
И
@linear/linear_model/linear_model/company_xf/weighted_sum/Shape_1Shape8linear/linear_model/linear_model/company_xf/weighted_sum*
T0*
out_type0*
_output_shapes
:

Flinear/linear_model/linear_model/company_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:

Elinear/linear_model/linear_model/company_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ь
@linear/linear_model/linear_model/company_xf/weighted_sum/Slice_2Slice@linear/linear_model/linear_model/company_xf/weighted_sum/Shape_1Flinear/linear_model/linear_model/company_xf/weighted_sum/Slice_2/beginElinear/linear_model/linear_model/company_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Dlinear/linear_model/linear_model/company_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Я
?linear/linear_model/linear_model/company_xf/weighted_sum/concatConcatV2@linear/linear_model/linear_model/company_xf/weighted_sum/Slice_1@linear/linear_model/linear_model/company_xf/weighted_sum/Slice_2Dlinear/linear_model/linear_model/company_xf/weighted_sum/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:

Blinear/linear_model/linear_model/company_xf/weighted_sum/Reshape_2Reshape8linear/linear_model/linear_model/company_xf/weighted_sum?linear/linear_model/linear_model/company_xf/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
ш
Hlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zerosConst*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*
valueB
*    *
dtype0*
_output_shapes

:

Є
6linear/linear_model/dropoff_latitude_xf/weights/part_0VarHandleOp*
	container *
shape
:
*
dtype0*
_output_shapes
: *G
shared_name86linear/linear_model/dropoff_latitude_xf/weights/part_0*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0
Н
Wlinear/linear_model/dropoff_latitude_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*
_output_shapes
: 
Ћ
=linear/linear_model/dropoff_latitude_xf/weights/part_0/AssignAssignVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0Hlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zeros*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0

Jlinear/linear_model/dropoff_latitude_xf/weights/part_0/Read/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:


Clinear/linear_model/linear_model/dropoff_latitude_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
н
?linear/linear_model/linear_model/dropoff_latitude_xf/ExpandDims
ExpandDimsIdentity_36Clinear/linear_model/linear_model/dropoff_latitude_xf/ExpandDims/dim*

Tdim0*
T0	*'
_output_shapes
:џџџџџџџџџ

Slinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ю
Qlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_valueCastSlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	

Mlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/NotEqualNotEqual?linear/linear_model/linear_model/dropoff_latitude_xf/ExpandDimsQlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
ж
Llinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/indicesWhereMlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/NotEqual*
T0
*'
_output_shapes
:џџџџџџџџџ
Њ
Klinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/valuesGatherNd?linear/linear_model/linear_model/dropoff_latitude_xf/ExpandDimsLlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Я
Plinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shapeShape?linear/linear_model/linear_model/dropoff_latitude_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

Blinear/linear_model/linear_model/dropoff_latitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
Ь
@linear/linear_model/linear_model/dropoff_latitude_xf/num_bucketsCastBlinear/linear_model/linear_model/dropoff_latitude_xf/num_buckets/x*
Truncate( *
_output_shapes
: *

DstT0	*

SrcT0
}
;linear/linear_model/linear_model/dropoff_latitude_xf/zero/xConst*
dtype0*
_output_shapes
: *
value	B : 
О
9linear/linear_model/linear_model/dropoff_latitude_xf/zeroCast;linear/linear_model/linear_model/dropoff_latitude_xf/zero/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
ї
9linear/linear_model/linear_model/dropoff_latitude_xf/LessLessKlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/values9linear/linear_model/linear_model/dropoff_latitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ

Alinear/linear_model/linear_model/dropoff_latitude_xf/GreaterEqualGreaterEqualKlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/values@linear/linear_model/linear_model/dropoff_latitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
ё
Alinear/linear_model/linear_model/dropoff_latitude_xf/out_of_range	LogicalOr9linear/linear_model/linear_model/dropoff_latitude_xf/LessAlinear/linear_model/linear_model/dropoff_latitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Х
:linear/linear_model/linear_model/dropoff_latitude_xf/ShapeShapeKlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/values*
_output_shapes
:*
T0	*
out_type0

>linear/linear_model/linear_model/dropoff_latitude_xf/ToInt64/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
<linear/linear_model/linear_model/dropoff_latitude_xf/ToInt64Cast>linear/linear_model/linear_model/dropoff_latitude_xf/ToInt64/x*
Truncate( *
_output_shapes
: *

DstT0	*

SrcT0

Clinear/linear_model/linear_model/dropoff_latitude_xf/default_valuesFill:linear/linear_model/linear_model/dropoff_latitude_xf/Shape<linear/linear_model/linear_model/dropoff_latitude_xf/ToInt64*#
_output_shapes
:џџџџџџџџџ*
T0	*

index_type0
Ш
;linear/linear_model/linear_model/dropoff_latitude_xf/SelectSelectAlinear/linear_model/linear_model/dropoff_latitude_xf/out_of_rangeClinear/linear_model/linear_model/dropoff_latitude_xf/default_valuesKlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
п
Alinear/linear_model/linear_model/dropoff_latitude_xf/Shape_1/CastCastPlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shape*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0

Hlinear/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Jlinear/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Blinear/linear_model/linear_model/dropoff_latitude_xf/strided_sliceStridedSliceAlinear/linear_model/linear_model/dropoff_latitude_xf/Shape_1/CastHlinear/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stackJlinear/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stack_1Jlinear/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0

=linear/linear_model/linear_model/dropoff_latitude_xf/Cast/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

;linear/linear_model/linear_model/dropoff_latitude_xf/Cast/xPackBlinear/linear_model/linear_model/dropoff_latitude_xf/strided_slice=linear/linear_model/linear_model/dropoff_latitude_xf/Cast/x/1*
N*
_output_shapes
:*
T0*

axis 
Т
9linear/linear_model/linear_model/dropoff_latitude_xf/CastCast;linear/linear_model/linear_model/dropoff_latitude_xf/Cast/x*
Truncate( *
_output_shapes
:*

DstT0	*

SrcT0
н
Blinear/linear_model/linear_model/dropoff_latitude_xf/SparseReshapeSparseReshapeLlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/indicesPlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shape9linear/linear_model/linear_model/dropoff_latitude_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
Т
Klinear/linear_model/linear_model/dropoff_latitude_xf/SparseReshape/IdentityIdentity;linear/linear_model/linear_model/dropoff_latitude_xf/Select*#
_output_shapes
:џџџџџџџџџ*
T0	
К
Clinear/linear_model/linear_model/dropoff_latitude_xf/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:


Mlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Llinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
х
Glinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SliceSliceDlinear/linear_model/linear_model/dropoff_latitude_xf/SparseReshape:1Mlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice/beginLlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Glinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:

Flinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ProdProdGlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SliceGlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Const*
	keep_dims( *

Tidx0*
T0	*
_output_shapes
: 

Rlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Jlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2GatherV2Dlinear/linear_model/linear_model/dropoff_latitude_xf/SparseReshape:1Rlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/indicesOlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 

Hlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Cast/xPackFlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ProdJlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2*
N*
_output_shapes
:*
T0	*

axis 
у
Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshapeSparseReshapeBlinear/linear_model/linear_model/dropoff_latitude_xf/SparseReshapeDlinear/linear_model/linear_model/dropoff_latitude_xf/SparseReshape:1Hlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
п
Xlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/IdentityIdentityKlinear/linear_model/linear_model/dropoff_latitude_xf/SparseReshape/Identity*#
_output_shapes
:џџџџџџџџџ*
T0	

Plinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
И
Nlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqualGreaterEqualXlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/IdentityPlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0	
в
Glinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/WhereWhereNlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ*
T0

Ђ
Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Њ
Ilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ReshapeReshapeGlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/WhereOlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
T0	*
Tshape0

Qlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Llinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1GatherV2Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshapeIlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ReshapeQlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0

Qlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ё
Llinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2GatherV2Xlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/IdentityIlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ReshapeQlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2/axis*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	
Ю
Jlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/IdentityIdentityQlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

[linear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Є
ilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsLlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1Llinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2Jlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Identity[linear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
О
mlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Р
olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Р
olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
в
glinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsmlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackolinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0	*
shrink_axis_mask

^linear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/CastCastglinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0
Ѓ
`linear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniqueklinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
out_idx0*
T0	

olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*V
_classL
JHloc:@linear/linear_model/linear_model/dropoff_latitude_xf/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Л
jlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Clinear/linear_model/linear_model/dropoff_latitude_xf/ReadVariableOp`linear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Uniqueolinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*V
_classL
JHloc:@linear/linear_model/linear_model/dropoff_latitude_xf/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

slinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityjlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:џџџџџџџџџ
ф
Ylinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumslinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identityblinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1^linear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
Qlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
ж
Klinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1Reshapeklinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Qlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:џџџџџџџџџ
р
Glinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ShapeShapeYlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:

Ulinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
У
Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_sliceStridedSliceGlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ShapeUlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stackWlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_1Wlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0

Ilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Ѕ
Glinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/stackPackIlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/stack/0Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
Б
Flinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/TileTileKlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1Glinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ц
Llinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/zeros_like	ZerosLikeYlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ю
Alinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sumSelectFlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/TileLlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/zeros_likeYlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
к
Hlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Cast_1CastDlinear/linear_model/linear_model/dropoff_latitude_xf/SparseReshape:1*
Truncate( *
_output_shapes
:*

DstT0*

SrcT0	

Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Nlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
я
Ilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1SliceHlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Cast_1Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/beginNlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ъ
Ilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Shape_1ShapeAlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum*
T0*
out_type0*
_output_shapes
:

Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ё
Nlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
№
Ilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2SliceIlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Shape_1Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/beginNlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Mlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ѓ
Hlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/concatConcatV2Ilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1Ilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2Mlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ѓ
Klinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_2ReshapeAlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sumHlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
ъ
Ilinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zerosConst*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*
valueB
*    *
dtype0*
_output_shapes

:

Ї
7linear/linear_model/dropoff_longitude_xf/weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *H
shared_name97linear/linear_model/dropoff_longitude_xf/weights/part_0*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*
	container *
shape
:

П
Xlinear/linear_model/dropoff_longitude_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*
_output_shapes
: 
Џ
>linear/linear_model/dropoff_longitude_xf/weights/part_0/AssignAssignVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0Ilinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zeros*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*
dtype0

Klinear/linear_model/dropoff_longitude_xf/weights/part_0/Read/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:


Dlinear/linear_model/linear_model/dropoff_longitude_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
п
@linear/linear_model/linear_model/dropoff_longitude_xf/ExpandDims
ExpandDimsIdentity_29Dlinear/linear_model/linear_model/dropoff_longitude_xf/ExpandDims/dim*

Tdim0*
T0	*'
_output_shapes
:џџџџџџџџџ

Tlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
№
Rlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_valueCastTlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
Ђ
Nlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/NotEqualNotEqual@linear/linear_model/linear_model/dropoff_longitude_xf/ExpandDimsRlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
и
Mlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/indicesWhereNlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/NotEqual*
T0
*'
_output_shapes
:џџџџџџџџџ
­
Llinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/valuesGatherNd@linear/linear_model/linear_model/dropoff_longitude_xf/ExpandDimsMlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
б
Qlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shapeShape@linear/linear_model/linear_model/dropoff_longitude_xf/ExpandDims*
_output_shapes
:*
T0	*
out_type0	

Clinear/linear_model/linear_model/dropoff_longitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
Ю
Alinear/linear_model/linear_model/dropoff_longitude_xf/num_bucketsCastClinear/linear_model/linear_model/dropoff_longitude_xf/num_buckets/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
~
<linear/linear_model/linear_model/dropoff_longitude_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
Р
:linear/linear_model/linear_model/dropoff_longitude_xf/zeroCast<linear/linear_model/linear_model/dropoff_longitude_xf/zero/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
њ
:linear/linear_model/linear_model/dropoff_longitude_xf/LessLessLlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/values:linear/linear_model/linear_model/dropoff_longitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ

Blinear/linear_model/linear_model/dropoff_longitude_xf/GreaterEqualGreaterEqualLlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/valuesAlinear/linear_model/linear_model/dropoff_longitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
є
Blinear/linear_model/linear_model/dropoff_longitude_xf/out_of_range	LogicalOr:linear/linear_model/linear_model/dropoff_longitude_xf/LessBlinear/linear_model/linear_model/dropoff_longitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Ч
;linear/linear_model/linear_model/dropoff_longitude_xf/ShapeShapeLlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/values*
T0	*
out_type0*
_output_shapes
:

?linear/linear_model/linear_model/dropoff_longitude_xf/ToInt64/xConst*
dtype0*
_output_shapes
: *
value	B : 
Ц
=linear/linear_model/linear_model/dropoff_longitude_xf/ToInt64Cast?linear/linear_model/linear_model/dropoff_longitude_xf/ToInt64/x*
Truncate( *
_output_shapes
: *

DstT0	*

SrcT0

Dlinear/linear_model/linear_model/dropoff_longitude_xf/default_valuesFill;linear/linear_model/linear_model/dropoff_longitude_xf/Shape=linear/linear_model/linear_model/dropoff_longitude_xf/ToInt64*
T0	*

index_type0*#
_output_shapes
:џџџџџџџџџ
Ь
<linear/linear_model/linear_model/dropoff_longitude_xf/SelectSelectBlinear/linear_model/linear_model/dropoff_longitude_xf/out_of_rangeDlinear/linear_model/linear_model/dropoff_longitude_xf/default_valuesLlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/values*#
_output_shapes
:џџџџџџџџџ*
T0	
с
Blinear/linear_model/linear_model/dropoff_longitude_xf/Shape_1/CastCastQlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shape*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0

Ilinear/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Klinear/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Klinear/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Clinear/linear_model/linear_model/dropoff_longitude_xf/strided_sliceStridedSliceBlinear/linear_model/linear_model/dropoff_longitude_xf/Shape_1/CastIlinear/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stackKlinear/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stack_1Klinear/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

>linear/linear_model/linear_model/dropoff_longitude_xf/Cast/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

<linear/linear_model/linear_model/dropoff_longitude_xf/Cast/xPackClinear/linear_model/linear_model/dropoff_longitude_xf/strided_slice>linear/linear_model/linear_model/dropoff_longitude_xf/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
Ф
:linear/linear_model/linear_model/dropoff_longitude_xf/CastCast<linear/linear_model/linear_model/dropoff_longitude_xf/Cast/x*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
с
Clinear/linear_model/linear_model/dropoff_longitude_xf/SparseReshapeSparseReshapeMlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/indicesQlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shape:linear/linear_model/linear_model/dropoff_longitude_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
Ф
Llinear/linear_model/linear_model/dropoff_longitude_xf/SparseReshape/IdentityIdentity<linear/linear_model/linear_model/dropoff_longitude_xf/Select*
T0	*#
_output_shapes
:џџџџџџџџџ
М
Dlinear/linear_model/linear_model/dropoff_longitude_xf/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:


Nlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Mlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
щ
Hlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SliceSliceElinear/linear_model/linear_model/dropoff_longitude_xf/SparseReshape:1Nlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice/beginMlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Hlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ё
Glinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ProdProdHlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SliceHlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Const*
	keep_dims( *

Tidx0*
T0	*
_output_shapes
: 

Slinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Klinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2GatherV2Elinear/linear_model/linear_model/dropoff_longitude_xf/SparseReshape:1Slinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/indicesPlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0
Ё
Ilinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Cast/xPackGlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ProdKlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2*
T0	*

axis *
N*
_output_shapes
:
ч
Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshapeSparseReshapeClinear/linear_model/linear_model/dropoff_longitude_xf/SparseReshapeElinear/linear_model/linear_model/dropoff_longitude_xf/SparseReshape:1Ilinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
с
Ylinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/IdentityIdentityLlinear/linear_model/linear_model/dropoff_longitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Qlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Л
Olinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqualGreaterEqualYlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/IdentityQlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
д
Hlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/WhereWhereOlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:џџџџџџџџџ
Ѓ
Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
­
Jlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ReshapeReshapeHlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/WherePlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:џџџџџџџџџ

Rlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
 
Mlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1GatherV2Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshapeJlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ReshapeRlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0

Rlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ѕ
Mlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2GatherV2Ylinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/IdentityJlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ReshapeRlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2/axis*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	
а
Klinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/IdentityIdentityRlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

\linear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Љ
jlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsMlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1Mlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2Klinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Identity\linear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
П
nlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
С
plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
С
plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
з
hlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicejlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsnlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackplinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0	*
shrink_axis_mask

_linear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/CastCasthlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
Ѕ
alinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquellinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*W
_classM
KIloc:@linear/linear_model/linear_model/dropoff_longitude_xf/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Р
klinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Dlinear/linear_model/linear_model/dropoff_longitude_xf/ReadVariableOpalinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Uniqueplinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*W
_classM
KIloc:@linear/linear_model/linear_model/dropoff_longitude_xf/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

tlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityklinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:џџџџџџџџџ
ш
Zlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumtlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identityclinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1_linear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
Ѓ
Rlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
й
Llinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1Reshapellinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Rlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:џџџџџџџџџ
т
Hlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ShapeShapeZlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
 
Vlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ђ
Xlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ђ
Xlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ш
Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_sliceStridedSliceHlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ShapeVlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stackXlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_1Xlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0

Jlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
Ј
Hlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/stackPackJlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/stack/0Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice*
N*
_output_shapes
:*
T0*

axis 
Д
Glinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/TileTileLlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1Hlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ш
Mlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/zeros_like	ZerosLikeZlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
ђ
Blinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sumSelectGlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/TileMlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/zeros_likeZlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
м
Ilinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Cast_1CastElinear/linear_model/linear_model/dropoff_longitude_xf/SparseReshape:1*
Truncate( *
_output_shapes
:*

DstT0*

SrcT0	

Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Olinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
ѓ
Jlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1SliceIlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Cast_1Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/beginOlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ь
Jlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Shape_1ShapeBlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum*
T0*
out_type0*
_output_shapes
:

Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ђ
Olinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
є
Jlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2SliceJlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Shape_1Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/beginOlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Nlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ї
Ilinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/concatConcatV2Jlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1Jlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2Nlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
І
Llinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_2ReshapeBlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sumIlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
ь
Tlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
valueB"ђ     
ж
Jlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros/ConstConst*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
ё
Dlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zerosFillTlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros/shape_as_tensorJlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros/Const*
_output_shapes
:	ђ*
T0*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*

index_type0

2linear/linear_model/payment_type_xf/weights/part_0VarHandleOp*C
shared_name42linear/linear_model/payment_type_xf/weights/part_0*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
	container *
shape:	ђ*
dtype0*
_output_shapes
: 
Е
Slinear/linear_model/payment_type_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp2linear/linear_model/payment_type_xf/weights/part_0*
_output_shapes
: 

9linear/linear_model/payment_type_xf/weights/part_0/AssignAssignVariableOp2linear/linear_model/payment_type_xf/weights/part_0Dlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
dtype0

Flinear/linear_model/payment_type_xf/weights/part_0/Read/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0

?linear/linear_model/linear_model/payment_type_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
д
;linear/linear_model/linear_model/payment_type_xf/ExpandDims
ExpandDims
Identity_5?linear/linear_model/linear_model/payment_type_xf/ExpandDims/dim*

Tdim0*
T0	*'
_output_shapes
:џџџџџџџџџ

Olinear/linear_model/linear_model/payment_type_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ц
Mlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/ignore_valueCastOlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/ignore_value/x*
Truncate( *
_output_shapes
: *

DstT0	*

SrcT0

Ilinear/linear_model/linear_model/payment_type_xf/to_sparse_input/NotEqualNotEqual;linear/linear_model/linear_model/payment_type_xf/ExpandDimsMlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
Ю
Hlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/indicesWhereIlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/NotEqual*
T0
*'
_output_shapes
:џџџџџџџџџ

Glinear/linear_model/linear_model/payment_type_xf/to_sparse_input/valuesGatherNd;linear/linear_model/linear_model/payment_type_xf/ExpandDimsHlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/indices*#
_output_shapes
:џџџџџџџџџ*
Tindices0	*
Tparams0	
Ч
Llinear/linear_model/linear_model/payment_type_xf/to_sparse_input/dense_shapeShape;linear/linear_model/linear_model/payment_type_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

>linear/linear_model/linear_model/payment_type_xf/num_buckets/xConst*
value
B :ђ*
dtype0*
_output_shapes
: 
Ф
<linear/linear_model/linear_model/payment_type_xf/num_bucketsCast>linear/linear_model/linear_model/payment_type_xf/num_buckets/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
y
7linear/linear_model/linear_model/payment_type_xf/zero/xConst*
dtype0*
_output_shapes
: *
value	B : 
Ж
5linear/linear_model/linear_model/payment_type_xf/zeroCast7linear/linear_model/linear_model/payment_type_xf/zero/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
ы
5linear/linear_model/linear_model/payment_type_xf/LessLessGlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/values5linear/linear_model/linear_model/payment_type_xf/zero*#
_output_shapes
:џџџџџџџџџ*
T0	

=linear/linear_model/linear_model/payment_type_xf/GreaterEqualGreaterEqualGlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/values<linear/linear_model/linear_model/payment_type_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
х
=linear/linear_model/linear_model/payment_type_xf/out_of_range	LogicalOr5linear/linear_model/linear_model/payment_type_xf/Less=linear/linear_model/linear_model/payment_type_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Н
6linear/linear_model/linear_model/payment_type_xf/ShapeShapeGlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/values*
T0	*
out_type0*
_output_shapes
:
|
:linear/linear_model/linear_model/payment_type_xf/ToInt64/xConst*
dtype0*
_output_shapes
: *
value	B : 
М
8linear/linear_model/linear_model/payment_type_xf/ToInt64Cast:linear/linear_model/linear_model/payment_type_xf/ToInt64/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
љ
?linear/linear_model/linear_model/payment_type_xf/default_valuesFill6linear/linear_model/linear_model/payment_type_xf/Shape8linear/linear_model/linear_model/payment_type_xf/ToInt64*
T0	*

index_type0*#
_output_shapes
:џџџџџџџџџ
И
7linear/linear_model/linear_model/payment_type_xf/SelectSelect=linear/linear_model/linear_model/payment_type_xf/out_of_range?linear/linear_model/linear_model/payment_type_xf/default_valuesGlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
з
=linear/linear_model/linear_model/payment_type_xf/Shape_1/CastCastLlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/dense_shape*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0

Dlinear/linear_model/linear_model/payment_type_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Flinear/linear_model/linear_model/payment_type_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Flinear/linear_model/linear_model/payment_type_xf/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ѕ
>linear/linear_model/linear_model/payment_type_xf/strided_sliceStridedSlice=linear/linear_model/linear_model/payment_type_xf/Shape_1/CastDlinear/linear_model/linear_model/payment_type_xf/strided_slice/stackFlinear/linear_model/linear_model/payment_type_xf/strided_slice/stack_1Flinear/linear_model/linear_model/payment_type_xf/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0

9linear/linear_model/linear_model/payment_type_xf/Cast/x/1Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
є
7linear/linear_model/linear_model/payment_type_xf/Cast/xPack>linear/linear_model/linear_model/payment_type_xf/strided_slice9linear/linear_model/linear_model/payment_type_xf/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
К
5linear/linear_model/linear_model/payment_type_xf/CastCast7linear/linear_model/linear_model/payment_type_xf/Cast/x*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
Э
>linear/linear_model/linear_model/payment_type_xf/SparseReshapeSparseReshapeHlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/indicesLlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/dense_shape5linear/linear_model/linear_model/payment_type_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
К
Glinear/linear_model/linear_model/payment_type_xf/SparseReshape/IdentityIdentity7linear/linear_model/linear_model/payment_type_xf/Select*
T0	*#
_output_shapes
:џџџџџџџџџ
Г
?linear/linear_model/linear_model/payment_type_xf/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ

Ilinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 

Hlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
е
Clinear/linear_model/linear_model/payment_type_xf/weighted_sum/SliceSlice@linear/linear_model/linear_model/payment_type_xf/SparseReshape:1Ilinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice/beginHlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Clinear/linear_model/linear_model/payment_type_xf/weighted_sum/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

Blinear/linear_model/linear_model/payment_type_xf/weighted_sum/ProdProdClinear/linear_model/linear_model/payment_type_xf/weighted_sum/SliceClinear/linear_model/linear_model/payment_type_xf/weighted_sum/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0

Nlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ѕ
Flinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2GatherV2@linear/linear_model/linear_model/payment_type_xf/SparseReshape:1Nlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2/indicesKlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0

Dlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Cast/xPackBlinear/linear_model/linear_model/payment_type_xf/weighted_sum/ProdFlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2*
T0	*

axis *
N*
_output_shapes
:
г
Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshapeSparseReshape>linear/linear_model/linear_model/payment_type_xf/SparseReshape@linear/linear_model/linear_model/payment_type_xf/SparseReshape:1Dlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
з
Tlinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshape/IdentityIdentityGlinear/linear_model/linear_model/payment_type_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Llinear/linear_model/linear_model/payment_type_xf/weighted_sum/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
Ќ
Jlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GreaterEqualGreaterEqualTlinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshape/IdentityLlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
Ъ
Clinear/linear_model/linear_model/payment_type_xf/weighted_sum/WhereWhereJlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:џџџџџџџџџ

Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Elinear/linear_model/linear_model/payment_type_xf/weighted_sum/ReshapeReshapeClinear/linear_model/linear_model/payment_type_xf/weighted_sum/WhereKlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:џџџџџџџџџ

Mlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Hlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_1GatherV2Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshapeElinear/linear_model/linear_model/payment_type_xf/weighted_sum/ReshapeMlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_1/axis*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	

Mlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Hlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_2GatherV2Tlinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshape/IdentityElinear/linear_model/linear_model/payment_type_xf/weighted_sum/ReshapeMlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Ц
Flinear/linear_model/linear_model/payment_type_xf/weighted_sum/IdentityIdentityMlinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	

Wlinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

elinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsHlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_1Hlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_2Flinear/linear_model/linear_model/payment_type_xf/weighted_sum/IdentityWlinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
К
ilinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
М
klinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
М
klinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
О
clinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceelinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsilinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackklinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1klinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0

Zlinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/CastCastclinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0

\linear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/UniqueUniqueglinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

klinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*
_output_shapes
: *R
_classH
FDloc:@linear/linear_model/linear_model/payment_type_xf/ReadVariableOp*
value	B : 
Ї
flinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2?linear/linear_model/linear_model/payment_type_xf/ReadVariableOp\linear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Uniqueklinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*R
_classH
FDloc:@linear/linear_model/linear_model/payment_type_xf/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ

olinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityflinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:џџџџџџџџџ
д
Ulinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumolinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity^linear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Unique:1Zlinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ*

Tidx0

Mlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
Ъ
Glinear/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_1Reshapeglinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Mlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
T0
*
Tshape0
и
Clinear/linear_model/linear_model/payment_type_xf/weighted_sum/ShapeShapeUlinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:

Qlinear/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Slinear/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Slinear/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Џ
Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/strided_sliceStridedSliceClinear/linear_model/linear_model/payment_type_xf/weighted_sum/ShapeQlinear/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stackSlinear/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_1Slinear/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0

Elinear/linear_model/linear_model/payment_type_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 

Clinear/linear_model/linear_model/payment_type_xf/weighted_sum/stackPackElinear/linear_model/linear_model/payment_type_xf/weighted_sum/stack/0Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
Ѕ
Blinear/linear_model/linear_model/payment_type_xf/weighted_sum/TileTileGlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_1Clinear/linear_model/linear_model/payment_type_xf/weighted_sum/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*

Tmultiples0*
T0

о
Hlinear/linear_model/linear_model/payment_type_xf/weighted_sum/zeros_like	ZerosLikeUlinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
о
=linear/linear_model/linear_model/payment_type_xf/weighted_sumSelectBlinear/linear_model/linear_model/payment_type_xf/weighted_sum/TileHlinear/linear_model/linear_model/payment_type_xf/weighted_sum/zeros_likeUlinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
в
Dlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Cast_1Cast@linear/linear_model/linear_model/payment_type_xf/SparseReshape:1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0

Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 

Jlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
п
Elinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1SliceDlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Cast_1Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1/beginJlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Т
Elinear/linear_model/linear_model/payment_type_xf/weighted_sum/Shape_1Shape=linear/linear_model/linear_model/payment_type_xf/weighted_sum*
T0*
out_type0*
_output_shapes
:

Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
р
Elinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2SliceElinear/linear_model/linear_model/payment_type_xf/weighted_sum/Shape_1Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2/beginJlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Ilinear/linear_model/linear_model/payment_type_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
у
Dlinear/linear_model/linear_model/payment_type_xf/weighted_sum/concatConcatV2Elinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1Elinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2Ilinear/linear_model/linear_model/payment_type_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0

Glinear/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_2Reshape=linear/linear_model/linear_model/payment_type_xf/weighted_sumDlinear/linear_model/linear_model/payment_type_xf/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
ц
Glinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zerosConst*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0*
valueB
*    *
dtype0*
_output_shapes

:

Ё
5linear/linear_model/pickup_latitude_xf/weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *F
shared_name75linear/linear_model/pickup_latitude_xf/weights/part_0*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0*
	container *
shape
:

Л
Vlinear/linear_model/pickup_latitude_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp5linear/linear_model/pickup_latitude_xf/weights/part_0*
_output_shapes
: 
Ї
<linear/linear_model/pickup_latitude_xf/weights/part_0/AssignAssignVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0Glinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zeros*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0*
dtype0

Ilinear/linear_model/pickup_latitude_xf/weights/part_0/Read/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:


Blinear/linear_model/linear_model/pickup_latitude_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
к
>linear/linear_model/linear_model/pickup_latitude_xf/ExpandDims
ExpandDims
Identity_3Blinear/linear_model/linear_model/pickup_latitude_xf/ExpandDims/dim*'
_output_shapes
:џџџџџџџџџ*

Tdim0*
T0	

Rlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ь
Plinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/ignore_valueCastRlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	

Llinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/NotEqualNotEqual>linear/linear_model/linear_model/pickup_latitude_xf/ExpandDimsPlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value*'
_output_shapes
:џџџџџџџџџ*
T0	
д
Klinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/indicesWhereLlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/NotEqual*
T0
*'
_output_shapes
:џџџџџџџџџ
Ї
Jlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/valuesGatherNd>linear/linear_model/linear_model/pickup_latitude_xf/ExpandDimsKlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/indices*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Tindices0	
Э
Olinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/dense_shapeShape>linear/linear_model/linear_model/pickup_latitude_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

Alinear/linear_model/linear_model/pickup_latitude_xf/num_buckets/xConst*
dtype0*
_output_shapes
: *
value	B :

Ъ
?linear/linear_model/linear_model/pickup_latitude_xf/num_bucketsCastAlinear/linear_model/linear_model/pickup_latitude_xf/num_buckets/x*
Truncate( *
_output_shapes
: *

DstT0	*

SrcT0
|
:linear/linear_model/linear_model/pickup_latitude_xf/zero/xConst*
dtype0*
_output_shapes
: *
value	B : 
М
8linear/linear_model/linear_model/pickup_latitude_xf/zeroCast:linear/linear_model/linear_model/pickup_latitude_xf/zero/x*
Truncate( *
_output_shapes
: *

DstT0	*

SrcT0
є
8linear/linear_model/linear_model/pickup_latitude_xf/LessLessJlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/values8linear/linear_model/linear_model/pickup_latitude_xf/zero*#
_output_shapes
:џџџџџџџџџ*
T0	

@linear/linear_model/linear_model/pickup_latitude_xf/GreaterEqualGreaterEqualJlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/values?linear/linear_model/linear_model/pickup_latitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
ю
@linear/linear_model/linear_model/pickup_latitude_xf/out_of_range	LogicalOr8linear/linear_model/linear_model/pickup_latitude_xf/Less@linear/linear_model/linear_model/pickup_latitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
У
9linear/linear_model/linear_model/pickup_latitude_xf/ShapeShapeJlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/values*
_output_shapes
:*
T0	*
out_type0

=linear/linear_model/linear_model/pickup_latitude_xf/ToInt64/xConst*
value	B : *
dtype0*
_output_shapes
: 
Т
;linear/linear_model/linear_model/pickup_latitude_xf/ToInt64Cast=linear/linear_model/linear_model/pickup_latitude_xf/ToInt64/x*
Truncate( *
_output_shapes
: *

DstT0	*

SrcT0

Blinear/linear_model/linear_model/pickup_latitude_xf/default_valuesFill9linear/linear_model/linear_model/pickup_latitude_xf/Shape;linear/linear_model/linear_model/pickup_latitude_xf/ToInt64*
T0	*

index_type0*#
_output_shapes
:џџџџџџџџџ
Ф
:linear/linear_model/linear_model/pickup_latitude_xf/SelectSelect@linear/linear_model/linear_model/pickup_latitude_xf/out_of_rangeBlinear/linear_model/linear_model/pickup_latitude_xf/default_valuesJlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/values*#
_output_shapes
:џџџџџџџџџ*
T0	
н
@linear/linear_model/linear_model/pickup_latitude_xf/Shape_1/CastCastOlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/dense_shape*
Truncate( *
_output_shapes
:*

DstT0*

SrcT0	

Glinear/linear_model/linear_model/pickup_latitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Ilinear/linear_model/linear_model/pickup_latitude_xf/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Ilinear/linear_model/linear_model/pickup_latitude_xf/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

Alinear/linear_model/linear_model/pickup_latitude_xf/strided_sliceStridedSlice@linear/linear_model/linear_model/pickup_latitude_xf/Shape_1/CastGlinear/linear_model/linear_model/pickup_latitude_xf/strided_slice/stackIlinear/linear_model/linear_model/pickup_latitude_xf/strided_slice/stack_1Ilinear/linear_model/linear_model/pickup_latitude_xf/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0

<linear/linear_model/linear_model/pickup_latitude_xf/Cast/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
§
:linear/linear_model/linear_model/pickup_latitude_xf/Cast/xPackAlinear/linear_model/linear_model/pickup_latitude_xf/strided_slice<linear/linear_model/linear_model/pickup_latitude_xf/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
Р
8linear/linear_model/linear_model/pickup_latitude_xf/CastCast:linear/linear_model/linear_model/pickup_latitude_xf/Cast/x*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
й
Alinear/linear_model/linear_model/pickup_latitude_xf/SparseReshapeSparseReshapeKlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/indicesOlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/dense_shape8linear/linear_model/linear_model/pickup_latitude_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
Р
Jlinear/linear_model/linear_model/pickup_latitude_xf/SparseReshape/IdentityIdentity:linear/linear_model/linear_model/pickup_latitude_xf/Select*#
_output_shapes
:џџџџџџџџџ*
T0	
И
Blinear/linear_model/linear_model/pickup_latitude_xf/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:


Llinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Klinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
с
Flinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SliceSliceClinear/linear_model/linear_model/pickup_latitude_xf/SparseReshape:1Llinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice/beginKlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice/size*
_output_shapes
:*
Index0*
T0	

Flinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

Elinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ProdProdFlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SliceFlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Const*
	keep_dims( *

Tidx0*
T0	*
_output_shapes
: 

Qlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Ilinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2GatherV2Clinear/linear_model/linear_model/pickup_latitude_xf/SparseReshape:1Qlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/indicesNlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0

Glinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Cast/xPackElinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ProdIlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2*
T0	*

axis *
N*
_output_shapes
:
п
Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshapeSparseReshapeAlinear/linear_model/linear_model/pickup_latitude_xf/SparseReshapeClinear/linear_model/linear_model/pickup_latitude_xf/SparseReshape:1Glinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
н
Wlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/IdentityIdentityJlinear/linear_model/linear_model/pickup_latitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Olinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Е
Mlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqualGreaterEqualWlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/IdentityOlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0	
а
Flinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/WhereWhereMlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:џџџџџџџџџ
Ё
Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ї
Hlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ReshapeReshapeFlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/WhereNlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:џџџџџџџџџ

Plinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Klinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1GatherV2Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshapeHlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ReshapePlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0

Plinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Klinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2GatherV2Wlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/IdentityHlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ReshapePlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Ь
Ilinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/IdentityIdentityPlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Zlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

hlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsKlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1Klinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2Ilinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/IdentityZlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Н
llinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
П
nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
П
nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Э
flinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicehlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsllinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacknlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask 

]linear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/CastCastflinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0
Ё
_linear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquejlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*U
_classK
IGloc:@linear/linear_model/linear_model/pickup_latitude_xf/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Ж
ilinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Blinear/linear_model/linear_model/pickup_latitude_xf/ReadVariableOp_linear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Uniquenlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Tindices0	*
Tparams0*U
_classK
IGloc:@linear/linear_model/linear_model/pickup_latitude_xf/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
Taxis0

rlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityilinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:џџџџџџџџџ
р
Xlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumrlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identityalinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1]linear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
Plinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
г
Jlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1Reshapejlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Plinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:џџџџџџџџџ
о
Flinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ShapeShapeXlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:

Tlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
 
Vlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
 
Vlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
О
Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_sliceStridedSliceFlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ShapeTlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stackVlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_1Vlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask

Hlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Ђ
Flinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/stackPackHlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/stack/0Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
Ў
Elinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/TileTileJlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1Flinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ф
Klinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/zeros_like	ZerosLikeXlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
ъ
@linear/linear_model/linear_model/pickup_latitude_xf/weighted_sumSelectElinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/TileKlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/zeros_likeXlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
и
Glinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Cast_1CastClinear/linear_model/linear_model/pickup_latitude_xf/SparseReshape:1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0

Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Mlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ы
Hlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1SliceGlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Cast_1Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/beginMlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/size*
_output_shapes
:*
Index0*
T0
Ш
Hlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Shape_1Shape@linear/linear_model/linear_model/pickup_latitude_xf/weighted_sum*
T0*
out_type0*
_output_shapes
:

Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
 
Mlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ь
Hlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2SliceHlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Shape_1Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/beginMlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Llinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
я
Glinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/concatConcatV2Hlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1Hlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2Llinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
 
Jlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_2Reshape@linear/linear_model/linear_model/pickup_latitude_xf/weighted_sumGlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
ш
Hlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zerosConst*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*
valueB
*    *
dtype0*
_output_shapes

:

Є
6linear/linear_model/pickup_longitude_xf/weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *G
shared_name86linear/linear_model/pickup_longitude_xf/weights/part_0*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*
	container *
shape
:

Н
Wlinear/linear_model/pickup_longitude_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp6linear/linear_model/pickup_longitude_xf/weights/part_0*
_output_shapes
: 
Ћ
=linear/linear_model/pickup_longitude_xf/weights/part_0/AssignAssignVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0Hlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zeros*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0

Jlinear/linear_model/pickup_longitude_xf/weights/part_0/Read/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:


Clinear/linear_model/linear_model/pickup_longitude_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
н
?linear/linear_model/linear_model/pickup_longitude_xf/ExpandDims
ExpandDimsIdentity_31Clinear/linear_model/linear_model/pickup_longitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ*

Tdim0

Slinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ю
Qlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/ignore_valueCastSlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value/x*
Truncate( *
_output_shapes
: *

DstT0	*

SrcT0

Mlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/NotEqualNotEqual?linear/linear_model/linear_model/pickup_longitude_xf/ExpandDimsQlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
ж
Llinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/indicesWhereMlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ*
T0

Њ
Klinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/valuesGatherNd?linear/linear_model/linear_model/pickup_longitude_xf/ExpandDimsLlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/indices*#
_output_shapes
:џџџџџџџџџ*
Tindices0	*
Tparams0	
Я
Plinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/dense_shapeShape?linear/linear_model/linear_model/pickup_longitude_xf/ExpandDims*
_output_shapes
:*
T0	*
out_type0	

Blinear/linear_model/linear_model/pickup_longitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
Ь
@linear/linear_model/linear_model/pickup_longitude_xf/num_bucketsCastBlinear/linear_model/linear_model/pickup_longitude_xf/num_buckets/x*
Truncate( *
_output_shapes
: *

DstT0	*

SrcT0
}
;linear/linear_model/linear_model/pickup_longitude_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
О
9linear/linear_model/linear_model/pickup_longitude_xf/zeroCast;linear/linear_model/linear_model/pickup_longitude_xf/zero/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
ї
9linear/linear_model/linear_model/pickup_longitude_xf/LessLessKlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/values9linear/linear_model/linear_model/pickup_longitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ

Alinear/linear_model/linear_model/pickup_longitude_xf/GreaterEqualGreaterEqualKlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/values@linear/linear_model/linear_model/pickup_longitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
ё
Alinear/linear_model/linear_model/pickup_longitude_xf/out_of_range	LogicalOr9linear/linear_model/linear_model/pickup_longitude_xf/LessAlinear/linear_model/linear_model/pickup_longitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Х
:linear/linear_model/linear_model/pickup_longitude_xf/ShapeShapeKlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/values*
_output_shapes
:*
T0	*
out_type0

>linear/linear_model/linear_model/pickup_longitude_xf/ToInt64/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
<linear/linear_model/linear_model/pickup_longitude_xf/ToInt64Cast>linear/linear_model/linear_model/pickup_longitude_xf/ToInt64/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	

Clinear/linear_model/linear_model/pickup_longitude_xf/default_valuesFill:linear/linear_model/linear_model/pickup_longitude_xf/Shape<linear/linear_model/linear_model/pickup_longitude_xf/ToInt64*#
_output_shapes
:џџџџџџџџџ*
T0	*

index_type0
Ш
;linear/linear_model/linear_model/pickup_longitude_xf/SelectSelectAlinear/linear_model/linear_model/pickup_longitude_xf/out_of_rangeClinear/linear_model/linear_model/pickup_longitude_xf/default_valuesKlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
п
Alinear/linear_model/linear_model/pickup_longitude_xf/Shape_1/CastCastPlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/dense_shape*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0

Hlinear/linear_model/linear_model/pickup_longitude_xf/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Jlinear/linear_model/linear_model/pickup_longitude_xf/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Jlinear/linear_model/linear_model/pickup_longitude_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Blinear/linear_model/linear_model/pickup_longitude_xf/strided_sliceStridedSliceAlinear/linear_model/linear_model/pickup_longitude_xf/Shape_1/CastHlinear/linear_model/linear_model/pickup_longitude_xf/strided_slice/stackJlinear/linear_model/linear_model/pickup_longitude_xf/strided_slice/stack_1Jlinear/linear_model/linear_model/pickup_longitude_xf/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0

=linear/linear_model/linear_model/pickup_longitude_xf/Cast/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

;linear/linear_model/linear_model/pickup_longitude_xf/Cast/xPackBlinear/linear_model/linear_model/pickup_longitude_xf/strided_slice=linear/linear_model/linear_model/pickup_longitude_xf/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
Т
9linear/linear_model/linear_model/pickup_longitude_xf/CastCast;linear/linear_model/linear_model/pickup_longitude_xf/Cast/x*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
н
Blinear/linear_model/linear_model/pickup_longitude_xf/SparseReshapeSparseReshapeLlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/indicesPlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/dense_shape9linear/linear_model/linear_model/pickup_longitude_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
Т
Klinear/linear_model/linear_model/pickup_longitude_xf/SparseReshape/IdentityIdentity;linear/linear_model/linear_model/pickup_longitude_xf/Select*
T0	*#
_output_shapes
:џџџџџџџџџ
К
Clinear/linear_model/linear_model/pickup_longitude_xf/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:


Mlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 

Llinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
х
Glinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SliceSliceDlinear/linear_model/linear_model/pickup_longitude_xf/SparseReshape:1Mlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice/beginLlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Glinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

Flinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ProdProdGlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SliceGlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0

Rlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Jlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2GatherV2Dlinear/linear_model/linear_model/pickup_longitude_xf/SparseReshape:1Rlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/indicesOlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0

Hlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Cast/xPackFlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ProdJlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2*
T0	*

axis *
N*
_output_shapes
:
у
Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshapeSparseReshapeBlinear/linear_model/linear_model/pickup_longitude_xf/SparseReshapeDlinear/linear_model/linear_model/pickup_longitude_xf/SparseReshape:1Hlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
п
Xlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/IdentityIdentityKlinear/linear_model/linear_model/pickup_longitude_xf/SparseReshape/Identity*#
_output_shapes
:џџџџџџџџџ*
T0	

Plinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
И
Nlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqualGreaterEqualXlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/IdentityPlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0	
в
Glinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/WhereWhereNlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:џџџџџџџџџ
Ђ
Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
Њ
Ilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ReshapeReshapeGlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/WhereOlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:џџџџџџџџџ

Qlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Llinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1GatherV2Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshapeIlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ReshapeQlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ

Qlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Ё
Llinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2GatherV2Xlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/IdentityIlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ReshapeQlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2/axis*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	
Ю
Jlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/IdentityIdentityQlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	

[linear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Є
ilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsLlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1Llinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2Jlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Identity[linear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
T0	
О
mlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
Р
olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Р
olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
в
glinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsmlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackolinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
T0	*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:џџџџџџџџџ

^linear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/CastCastglinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0
Ѓ
`linear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniqueklinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*
_output_shapes
: *V
_classL
JHloc:@linear/linear_model/linear_model/pickup_longitude_xf/ReadVariableOp*
value	B : 
Л
jlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Clinear/linear_model/linear_model/pickup_longitude_xf/ReadVariableOp`linear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Uniqueolinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*V
_classL
JHloc:@linear/linear_model/linear_model/pickup_longitude_xf/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

slinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityjlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:џџџџџџџџџ*
T0
ф
Ylinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumslinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identityblinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1^linear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ*

Tidx0
Ђ
Qlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"џџџџ   
ж
Klinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1Reshapeklinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Qlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:џџџџџџџџџ
р
Glinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ShapeShapeYlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:

Ulinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
У
Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_sliceStridedSliceGlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ShapeUlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stackWlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_1Wlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 

Ilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Ѕ
Glinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/stackPackIlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/stack/0Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
Б
Flinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/TileTileKlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1Glinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ц
Llinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/zeros_like	ZerosLikeYlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
ю
Alinear/linear_model/linear_model/pickup_longitude_xf/weighted_sumSelectFlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/TileLlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/zeros_likeYlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
к
Hlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Cast_1CastDlinear/linear_model/linear_model/pickup_longitude_xf/SparseReshape:1*
Truncate( *
_output_shapes
:*

DstT0*

SrcT0	

Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Nlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
я
Ilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1SliceHlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Cast_1Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/beginNlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ъ
Ilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Shape_1ShapeAlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum*
T0*
out_type0*
_output_shapes
:

Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ё
Nlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
№
Ilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2SliceIlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Shape_1Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/beginNlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Mlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ѓ
Hlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/concatConcatV2Ilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1Ilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2Mlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ѓ
Klinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_2ReshapeAlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sumHlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
ф
Flinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zerosConst*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:

4linear/linear_model/trip_start_day_xf/weights/part_0VarHandleOp*E
shared_name64linear/linear_model/trip_start_day_xf/weights/part_0*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes
: 
Й
Ulinear/linear_model/trip_start_day_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp4linear/linear_model/trip_start_day_xf/weights/part_0*
_output_shapes
: 
Ѓ
;linear/linear_model/trip_start_day_xf/weights/part_0/AssignAssignVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0Flinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zeros*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0

Hlinear/linear_model/trip_start_day_xf/weights/part_0/Read/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0*
_output_shapes

:

Alinear/linear_model/linear_model/trip_start_day_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
й
=linear/linear_model/linear_model/trip_start_day_xf/ExpandDims
ExpandDimsIdentity_45Alinear/linear_model/linear_model/trip_start_day_xf/ExpandDims/dim*'
_output_shapes
:џџџџџџџџџ*

Tdim0*
T0	

Qlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ъ
Olinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/ignore_valueCastQlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/ignore_value/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	

Klinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/NotEqualNotEqual=linear/linear_model/linear_model/trip_start_day_xf/ExpandDimsOlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/ignore_value*'
_output_shapes
:џџџџџџџџџ*
T0	
в
Jlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/indicesWhereKlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/NotEqual*
T0
*'
_output_shapes
:џџџџџџџџџ
Є
Ilinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/valuesGatherNd=linear/linear_model/linear_model/trip_start_day_xf/ExpandDimsJlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/indices*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Tindices0	
Ы
Nlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/dense_shapeShape=linear/linear_model/linear_model/trip_start_day_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

@linear/linear_model/linear_model/trip_start_day_xf/num_buckets/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ш
>linear/linear_model/linear_model/trip_start_day_xf/num_bucketsCast@linear/linear_model/linear_model/trip_start_day_xf/num_buckets/x*
Truncate( *
_output_shapes
: *

DstT0	*

SrcT0
{
9linear/linear_model/linear_model/trip_start_day_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
К
7linear/linear_model/linear_model/trip_start_day_xf/zeroCast9linear/linear_model/linear_model/trip_start_day_xf/zero/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
ё
7linear/linear_model/linear_model/trip_start_day_xf/LessLessIlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/values7linear/linear_model/linear_model/trip_start_day_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ

?linear/linear_model/linear_model/trip_start_day_xf/GreaterEqualGreaterEqualIlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/values>linear/linear_model/linear_model/trip_start_day_xf/num_buckets*#
_output_shapes
:џџџџџџџџџ*
T0	
ы
?linear/linear_model/linear_model/trip_start_day_xf/out_of_range	LogicalOr7linear/linear_model/linear_model/trip_start_day_xf/Less?linear/linear_model/linear_model/trip_start_day_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
С
8linear/linear_model/linear_model/trip_start_day_xf/ShapeShapeIlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/values*
T0	*
out_type0*
_output_shapes
:
~
<linear/linear_model/linear_model/trip_start_day_xf/ToInt64/xConst*
value	B : *
dtype0*
_output_shapes
: 
Р
:linear/linear_model/linear_model/trip_start_day_xf/ToInt64Cast<linear/linear_model/linear_model/trip_start_day_xf/ToInt64/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
џ
Alinear/linear_model/linear_model/trip_start_day_xf/default_valuesFill8linear/linear_model/linear_model/trip_start_day_xf/Shape:linear/linear_model/linear_model/trip_start_day_xf/ToInt64*
T0	*

index_type0*#
_output_shapes
:џџџџџџџџџ
Р
9linear/linear_model/linear_model/trip_start_day_xf/SelectSelect?linear/linear_model/linear_model/trip_start_day_xf/out_of_rangeAlinear/linear_model/linear_model/trip_start_day_xf/default_valuesIlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
л
?linear/linear_model/linear_model/trip_start_day_xf/Shape_1/CastCastNlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/dense_shape*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0

Flinear/linear_model/linear_model/trip_start_day_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Hlinear/linear_model/linear_model/trip_start_day_xf/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Hlinear/linear_model/linear_model/trip_start_day_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
џ
@linear/linear_model/linear_model/trip_start_day_xf/strided_sliceStridedSlice?linear/linear_model/linear_model/trip_start_day_xf/Shape_1/CastFlinear/linear_model/linear_model/trip_start_day_xf/strided_slice/stackHlinear/linear_model/linear_model/trip_start_day_xf/strided_slice/stack_1Hlinear/linear_model/linear_model/trip_start_day_xf/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

;linear/linear_model/linear_model/trip_start_day_xf/Cast/x/1Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
њ
9linear/linear_model/linear_model/trip_start_day_xf/Cast/xPack@linear/linear_model/linear_model/trip_start_day_xf/strided_slice;linear/linear_model/linear_model/trip_start_day_xf/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
О
7linear/linear_model/linear_model/trip_start_day_xf/CastCast9linear/linear_model/linear_model/trip_start_day_xf/Cast/x*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
е
@linear/linear_model/linear_model/trip_start_day_xf/SparseReshapeSparseReshapeJlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/indicesNlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/dense_shape7linear/linear_model/linear_model/trip_start_day_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
О
Ilinear/linear_model/linear_model/trip_start_day_xf/SparseReshape/IdentityIdentity9linear/linear_model/linear_model/trip_start_day_xf/Select*
T0	*#
_output_shapes
:џџџџџџџџџ
Ж
Alinear/linear_model/linear_model/trip_start_day_xf/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0*
_output_shapes

:

Klinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 

Jlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
н
Elinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SliceSliceBlinear/linear_model/linear_model/trip_start_day_xf/SparseReshape:1Klinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice/beginJlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice/size*
_output_shapes
:*
Index0*
T0	

Elinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

Dlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/ProdProdElinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SliceElinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0

Plinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
§
Hlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2GatherV2Blinear/linear_model/linear_model/trip_start_day_xf/SparseReshape:1Plinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2/indicesMlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 

Flinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Cast/xPackDlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/ProdHlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2*
T0	*

axis *
N*
_output_shapes
:
л
Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshapeSparseReshape@linear/linear_model/linear_model/trip_start_day_xf/SparseReshapeBlinear/linear_model/linear_model/trip_start_day_xf/SparseReshape:1Flinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
л
Vlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/IdentityIdentityIlinear/linear_model/linear_model/trip_start_day_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Nlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
В
Llinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GreaterEqualGreaterEqualVlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/IdentityNlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
Ю
Elinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/WhereWhereLlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:џџџџџџџџџ
 
Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
Є
Glinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/ReshapeReshapeElinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/WhereMlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:џџџџџџџџџ

Olinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Jlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1GatherV2Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshapeGlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/ReshapeOlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1/axis*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	

Olinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Jlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2GatherV2Vlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/IdentityGlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/ReshapeOlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0
Ъ
Hlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/IdentityIdentityOlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Ylinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

glinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsJlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1Jlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2Hlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/IdentityYlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
М
klinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
О
mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
О
mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Ш
elinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceglinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsklinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackmlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
T0	*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:џџџџџџџџџ

\linear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/CastCastelinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0

^linear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/UniqueUniqueilinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*T
_classJ
HFloc:@linear/linear_model/linear_model/trip_start_day_xf/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Б
hlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Alinear/linear_model/linear_model/trip_start_day_xf/ReadVariableOp^linear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Uniquemlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*T
_classJ
HFloc:@linear/linear_model/linear_model/trip_start_day_xf/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ

qlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityhlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:џџџџџџџџџ
м
Wlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumqlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity`linear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Unique:1\linear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ*

Tidx0
 
Olinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
а
Ilinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_1Reshapeilinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Olinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:џџџџџџџџџ
м
Elinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/ShapeShapeWlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:

Slinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Ulinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ulinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Й
Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_sliceStridedSliceElinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/ShapeSlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stackUlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_1Ulinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask

Glinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/stack/0Const*
dtype0*
_output_shapes
: *
value	B :

Elinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/stackPackGlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/stack/0Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
Ћ
Dlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/TileTileIlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_1Elinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*

Tmultiples0
т
Jlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/zeros_like	ZerosLikeWlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
ц
?linear/linear_model/linear_model/trip_start_day_xf/weighted_sumSelectDlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/TileJlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/zeros_likeWlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ж
Flinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Cast_1CastBlinear/linear_model/linear_model/trip_start_day_xf/SparseReshape:1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0

Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 

Llinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ч
Glinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1SliceFlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Cast_1Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1/beginLlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ц
Glinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Shape_1Shape?linear/linear_model/linear_model/trip_start_day_xf/weighted_sum*
_output_shapes
:*
T0*
out_type0

Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:

Llinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ш
Glinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2SliceGlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Shape_1Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2/beginLlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Klinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ы
Flinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/concatConcatV2Glinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1Glinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2Klinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0

Ilinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_2Reshape?linear/linear_model/linear_model/trip_start_day_xf/weighted_sumFlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
ц
Glinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zerosConst*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
Ё
5linear/linear_model/trip_start_hour_xf/weights/part_0VarHandleOp*
shape
:*
dtype0*
_output_shapes
: *F
shared_name75linear/linear_model/trip_start_hour_xf/weights/part_0*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0*
	container 
Л
Vlinear/linear_model/trip_start_hour_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
_output_shapes
: 
Ї
<linear/linear_model/trip_start_hour_xf/weights/part_0/AssignAssignVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0Glinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zeros*
dtype0*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0

Ilinear/linear_model/trip_start_hour_xf/weights/part_0/Read/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
dtype0*
_output_shapes

:*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0

Blinear/linear_model/linear_model/trip_start_hour_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
л
>linear/linear_model/linear_model/trip_start_hour_xf/ExpandDims
ExpandDimsIdentity_35Blinear/linear_model/linear_model/trip_start_hour_xf/ExpandDims/dim*

Tdim0*
T0	*'
_output_shapes
:џџџџџџџџџ

Rlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ь
Plinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/ignore_valueCastRlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	

Llinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/NotEqualNotEqual>linear/linear_model/linear_model/trip_start_hour_xf/ExpandDimsPlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value*'
_output_shapes
:џџџџџџџџџ*
T0	
д
Klinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/indicesWhereLlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/NotEqual*
T0
*'
_output_shapes
:џџџџџџџџџ
Ї
Jlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/valuesGatherNd>linear/linear_model/linear_model/trip_start_hour_xf/ExpandDimsKlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/indices*#
_output_shapes
:џџџџџџџџџ*
Tindices0	*
Tparams0	
Э
Olinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/dense_shapeShape>linear/linear_model/linear_model/trip_start_hour_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

Alinear/linear_model/linear_model/trip_start_hour_xf/num_buckets/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
?linear/linear_model/linear_model/trip_start_hour_xf/num_bucketsCastAlinear/linear_model/linear_model/trip_start_hour_xf/num_buckets/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
|
:linear/linear_model/linear_model/trip_start_hour_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
М
8linear/linear_model/linear_model/trip_start_hour_xf/zeroCast:linear/linear_model/linear_model/trip_start_hour_xf/zero/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
є
8linear/linear_model/linear_model/trip_start_hour_xf/LessLessJlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/values8linear/linear_model/linear_model/trip_start_hour_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ

@linear/linear_model/linear_model/trip_start_hour_xf/GreaterEqualGreaterEqualJlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/values?linear/linear_model/linear_model/trip_start_hour_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
ю
@linear/linear_model/linear_model/trip_start_hour_xf/out_of_range	LogicalOr8linear/linear_model/linear_model/trip_start_hour_xf/Less@linear/linear_model/linear_model/trip_start_hour_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
У
9linear/linear_model/linear_model/trip_start_hour_xf/ShapeShapeJlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/values*
T0	*
out_type0*
_output_shapes
:

=linear/linear_model/linear_model/trip_start_hour_xf/ToInt64/xConst*
dtype0*
_output_shapes
: *
value	B : 
Т
;linear/linear_model/linear_model/trip_start_hour_xf/ToInt64Cast=linear/linear_model/linear_model/trip_start_hour_xf/ToInt64/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	

Blinear/linear_model/linear_model/trip_start_hour_xf/default_valuesFill9linear/linear_model/linear_model/trip_start_hour_xf/Shape;linear/linear_model/linear_model/trip_start_hour_xf/ToInt64*
T0	*

index_type0*#
_output_shapes
:џџџџџџџџџ
Ф
:linear/linear_model/linear_model/trip_start_hour_xf/SelectSelect@linear/linear_model/linear_model/trip_start_hour_xf/out_of_rangeBlinear/linear_model/linear_model/trip_start_hour_xf/default_valuesJlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
н
@linear/linear_model/linear_model/trip_start_hour_xf/Shape_1/CastCastOlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/dense_shape*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0

Glinear/linear_model/linear_model/trip_start_hour_xf/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Ilinear/linear_model/linear_model/trip_start_hour_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ilinear/linear_model/linear_model/trip_start_hour_xf/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

Alinear/linear_model/linear_model/trip_start_hour_xf/strided_sliceStridedSlice@linear/linear_model/linear_model/trip_start_hour_xf/Shape_1/CastGlinear/linear_model/linear_model/trip_start_hour_xf/strided_slice/stackIlinear/linear_model/linear_model/trip_start_hour_xf/strided_slice/stack_1Ilinear/linear_model/linear_model/trip_start_hour_xf/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0

<linear/linear_model/linear_model/trip_start_hour_xf/Cast/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
§
:linear/linear_model/linear_model/trip_start_hour_xf/Cast/xPackAlinear/linear_model/linear_model/trip_start_hour_xf/strided_slice<linear/linear_model/linear_model/trip_start_hour_xf/Cast/x/1*
N*
_output_shapes
:*
T0*

axis 
Р
8linear/linear_model/linear_model/trip_start_hour_xf/CastCast:linear/linear_model/linear_model/trip_start_hour_xf/Cast/x*
Truncate( *
_output_shapes
:*

DstT0	*

SrcT0
й
Alinear/linear_model/linear_model/trip_start_hour_xf/SparseReshapeSparseReshapeKlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/indicesOlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/dense_shape8linear/linear_model/linear_model/trip_start_hour_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
Р
Jlinear/linear_model/linear_model/trip_start_hour_xf/SparseReshape/IdentityIdentity:linear/linear_model/linear_model/trip_start_hour_xf/Select*
T0	*#
_output_shapes
:џџџџџџџџџ
И
Blinear/linear_model/linear_model/trip_start_hour_xf/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
dtype0*
_output_shapes

:

Llinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 

Klinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
с
Flinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SliceSliceClinear/linear_model/linear_model/trip_start_hour_xf/SparseReshape:1Llinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice/beginKlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Flinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

Elinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ProdProdFlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SliceFlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0

Qlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :

Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Ilinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2GatherV2Clinear/linear_model/linear_model/trip_start_hour_xf/SparseReshape:1Qlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/indicesNlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0

Glinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Cast/xPackElinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ProdIlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2*
N*
_output_shapes
:*
T0	*

axis 
п
Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshapeSparseReshapeAlinear/linear_model/linear_model/trip_start_hour_xf/SparseReshapeClinear/linear_model/linear_model/trip_start_hour_xf/SparseReshape:1Glinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
н
Wlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/IdentityIdentityJlinear/linear_model/linear_model/trip_start_hour_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Olinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Е
Mlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqualGreaterEqualWlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/IdentityOlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
а
Flinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/WhereWhereMlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:џџџџџџџџџ
Ё
Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ї
Hlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ReshapeReshapeFlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/WhereNlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:џџџџџџџџџ

Plinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 

Klinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1GatherV2Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshapeHlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ReshapePlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

Plinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Klinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2GatherV2Wlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/IdentityHlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ReshapePlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2/axis*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	
Ь
Ilinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/IdentityIdentityPlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Zlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

hlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsKlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1Klinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2Ilinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/IdentityZlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Н
llinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
П
nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
П
nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Э
flinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicehlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsllinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacknlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0	

]linear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/CastCastflinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
Ё
_linear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquejlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*U
_classK
IGloc:@linear/linear_model/linear_model/trip_start_hour_xf/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Ж
ilinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Blinear/linear_model/linear_model/trip_start_hour_xf/ReadVariableOp_linear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Uniquenlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0*U
_classK
IGloc:@linear/linear_model/linear_model/trip_start_hour_xf/ReadVariableOp

rlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityilinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:џџџџџџџџџ*
T0
р
Xlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumrlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identityalinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Unique:1]linear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
Ё
Plinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
г
Jlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1Reshapejlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Plinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:џџџџџџџџџ
о
Flinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ShapeShapeXlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:

Tlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
 
Vlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
 
Vlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
О
Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_sliceStridedSliceFlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ShapeTlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stackVlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_1Vlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

Hlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Ђ
Flinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/stackPackHlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/stack/0Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
Ў
Elinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/TileTileJlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1Flinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ф
Klinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/zeros_like	ZerosLikeXlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ъ
@linear/linear_model/linear_model/trip_start_hour_xf/weighted_sumSelectElinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/TileKlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/zeros_likeXlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
и
Glinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Cast_1CastClinear/linear_model/linear_model/trip_start_hour_xf/SparseReshape:1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0

Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Mlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ы
Hlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1SliceGlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Cast_1Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/beginMlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ш
Hlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Shape_1Shape@linear/linear_model/linear_model/trip_start_hour_xf/weighted_sum*
_output_shapes
:*
T0*
out_type0

Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
 
Mlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ь
Hlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2SliceHlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Shape_1Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/beginMlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Llinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
я
Glinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/concatConcatV2Hlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1Hlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2Llinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
 
Jlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_2Reshape@linear/linear_model/linear_model/trip_start_hour_xf/weighted_sumGlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
ш
Hlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zerosConst*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
Є
6linear/linear_model/trip_start_month_xf/weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *G
shared_name86linear/linear_model/trip_start_month_xf/weights/part_0*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*
	container *
shape
:
Н
Wlinear/linear_model/trip_start_month_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp6linear/linear_model/trip_start_month_xf/weights/part_0*
_output_shapes
: 
Ћ
=linear/linear_model/trip_start_month_xf/weights/part_0/AssignAssignVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0Hlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zeros*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0

Jlinear/linear_model/trip_start_month_xf/weights/part_0/Read/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0*
_output_shapes

:*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0

Clinear/linear_model/linear_model/trip_start_month_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
н
?linear/linear_model/linear_model/trip_start_month_xf/ExpandDims
ExpandDimsIdentity_27Clinear/linear_model/linear_model/trip_start_month_xf/ExpandDims/dim*

Tdim0*
T0	*'
_output_shapes
:џџџџџџџџџ

Slinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ю
Qlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/ignore_valueCastSlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/ignore_value/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	

Mlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/NotEqualNotEqual?linear/linear_model/linear_model/trip_start_month_xf/ExpandDimsQlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
ж
Llinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/indicesWhereMlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ*
T0

Њ
Klinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/valuesGatherNd?linear/linear_model/linear_model/trip_start_month_xf/ExpandDimsLlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Я
Plinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/dense_shapeShape?linear/linear_model/linear_model/trip_start_month_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

Blinear/linear_model/linear_model/trip_start_month_xf/num_buckets/xConst*
dtype0*
_output_shapes
: *
value	B :
Ь
@linear/linear_model/linear_model/trip_start_month_xf/num_bucketsCastBlinear/linear_model/linear_model/trip_start_month_xf/num_buckets/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
}
;linear/linear_model/linear_model/trip_start_month_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
О
9linear/linear_model/linear_model/trip_start_month_xf/zeroCast;linear/linear_model/linear_model/trip_start_month_xf/zero/x*
Truncate( *
_output_shapes
: *

DstT0	*

SrcT0
ї
9linear/linear_model/linear_model/trip_start_month_xf/LessLessKlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/values9linear/linear_model/linear_model/trip_start_month_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ

Alinear/linear_model/linear_model/trip_start_month_xf/GreaterEqualGreaterEqualKlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/values@linear/linear_model/linear_model/trip_start_month_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
ё
Alinear/linear_model/linear_model/trip_start_month_xf/out_of_range	LogicalOr9linear/linear_model/linear_model/trip_start_month_xf/LessAlinear/linear_model/linear_model/trip_start_month_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Х
:linear/linear_model/linear_model/trip_start_month_xf/ShapeShapeKlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/values*
T0	*
out_type0*
_output_shapes
:

>linear/linear_model/linear_model/trip_start_month_xf/ToInt64/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
<linear/linear_model/linear_model/trip_start_month_xf/ToInt64Cast>linear/linear_model/linear_model/trip_start_month_xf/ToInt64/x*
Truncate( *
_output_shapes
: *

DstT0	*

SrcT0

Clinear/linear_model/linear_model/trip_start_month_xf/default_valuesFill:linear/linear_model/linear_model/trip_start_month_xf/Shape<linear/linear_model/linear_model/trip_start_month_xf/ToInt64*#
_output_shapes
:џџџџџџџџџ*
T0	*

index_type0
Ш
;linear/linear_model/linear_model/trip_start_month_xf/SelectSelectAlinear/linear_model/linear_model/trip_start_month_xf/out_of_rangeClinear/linear_model/linear_model/trip_start_month_xf/default_valuesKlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
п
Alinear/linear_model/linear_model/trip_start_month_xf/Shape_1/CastCastPlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/dense_shape*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0

Hlinear/linear_model/linear_model/trip_start_month_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/trip_start_month_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/trip_start_month_xf/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

Blinear/linear_model/linear_model/trip_start_month_xf/strided_sliceStridedSliceAlinear/linear_model/linear_model/trip_start_month_xf/Shape_1/CastHlinear/linear_model/linear_model/trip_start_month_xf/strided_slice/stackJlinear/linear_model/linear_model/trip_start_month_xf/strided_slice/stack_1Jlinear/linear_model/linear_model/trip_start_month_xf/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

=linear/linear_model/linear_model/trip_start_month_xf/Cast/x/1Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

;linear/linear_model/linear_model/trip_start_month_xf/Cast/xPackBlinear/linear_model/linear_model/trip_start_month_xf/strided_slice=linear/linear_model/linear_model/trip_start_month_xf/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
Т
9linear/linear_model/linear_model/trip_start_month_xf/CastCast;linear/linear_model/linear_model/trip_start_month_xf/Cast/x*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
н
Blinear/linear_model/linear_model/trip_start_month_xf/SparseReshapeSparseReshapeLlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/indicesPlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/dense_shape9linear/linear_model/linear_model/trip_start_month_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
Т
Klinear/linear_model/linear_model/trip_start_month_xf/SparseReshape/IdentityIdentity;linear/linear_model/linear_model/trip_start_month_xf/Select*#
_output_shapes
:џџџџџџџџџ*
T0	
К
Clinear/linear_model/linear_model/trip_start_month_xf/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0*
_output_shapes

:

Mlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Llinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
х
Glinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SliceSliceDlinear/linear_model/linear_model/trip_start_month_xf/SparseReshape:1Mlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice/beginLlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Glinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:

Flinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/ProdProdGlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SliceGlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0

Rlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Jlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2GatherV2Dlinear/linear_model/linear_model/trip_start_month_xf/SparseReshape:1Rlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2/indicesOlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0

Hlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Cast/xPackFlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/ProdJlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2*
T0	*

axis *
N*
_output_shapes
:
у
Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshapeSparseReshapeBlinear/linear_model/linear_model/trip_start_month_xf/SparseReshapeDlinear/linear_model/linear_model/trip_start_month_xf/SparseReshape:1Hlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
п
Xlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/IdentityIdentityKlinear/linear_model/linear_model/trip_start_month_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Plinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
И
Nlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GreaterEqualGreaterEqualXlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/IdentityPlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
в
Glinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/WhereWhereNlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:џџџџџџџџџ
Ђ
Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Њ
Ilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/ReshapeReshapeGlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/WhereOlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:џџџџџџџџџ

Qlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Llinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1GatherV2Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshapeIlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/ReshapeQlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0

Qlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ё
Llinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2GatherV2Xlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/IdentityIlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/ReshapeQlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0
Ю
Jlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/IdentityIdentityQlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

[linear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Є
ilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsLlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1Llinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2Jlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Identity[linear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
О
mlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
Р
olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
Р
olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
в
glinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsmlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackolinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
T0	*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:џџџџџџџџџ

^linear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/CastCastglinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
Ѓ
`linear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/UniqueUniqueklinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
out_idx0*
T0	

olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*V
_classL
JHloc:@linear/linear_model/linear_model/trip_start_month_xf/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Л
jlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Clinear/linear_model/linear_model/trip_start_month_xf/ReadVariableOp`linear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Uniqueolinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Tindices0	*
Tparams0*V
_classL
JHloc:@linear/linear_model/linear_model/trip_start_month_xf/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
Taxis0

slinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityjlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:џџџџџџџџџ*
T0
ф
Ylinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumslinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identityblinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Unique:1^linear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
Qlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"џџџџ   
ж
Klinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_1Reshapeklinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Qlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:џџџџџџџџџ
р
Glinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/ShapeShapeYlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0*
out_type0

Ulinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
У
Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_sliceStridedSliceGlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/ShapeUlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stackWlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_1Wlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0

Ilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
Ѕ
Glinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/stackPackIlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/stack/0Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
Б
Flinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/TileTileKlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_1Glinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*

Tmultiples0*
T0

ц
Llinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/zeros_like	ZerosLikeYlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
ю
Alinear/linear_model/linear_model/trip_start_month_xf/weighted_sumSelectFlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/TileLlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/zeros_likeYlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
к
Hlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Cast_1CastDlinear/linear_model/linear_model/trip_start_month_xf/SparseReshape:1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0

Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Nlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
я
Ilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1SliceHlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Cast_1Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1/beginNlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ъ
Ilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Shape_1ShapeAlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum*
T0*
out_type0*
_output_shapes
:

Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ё
Nlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
№
Ilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2SliceIlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Shape_1Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2/beginNlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Mlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ѓ
Hlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/concatConcatV2Ilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1Ilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2Mlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
Ѓ
Klinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_2ReshapeAlinear/linear_model/linear_model/trip_start_month_xf/weighted_sumHlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

5linear/linear_model/linear_model/weighted_sum_no_biasAddNBlinear/linear_model/linear_model/company_xf/weighted_sum/Reshape_2Klinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_2Llinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_2Glinear/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_2Jlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_2Klinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_2Ilinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_2Jlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_2Klinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_2*
N	*'
_output_shapes
:џџџџџџџџџ*
T0
Т
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
valueB*    *
dtype0*
_output_shapes
:
ѓ
'linear/linear_model/bias_weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *8
shared_name)'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:

Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
я
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
л
;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0

/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:

 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
T0*
_output_shapes
:
к
-linear/linear_model/linear_model/weighted_sumBiasAdd5linear/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ
y
linear/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
d
linear/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
f
linear/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
linear/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ѕ
linear/strided_sliceStridedSlicelinear/ReadVariableOplinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
\
linear/bias/tagsConst*
valueB Blinear/bias*
dtype0*
_output_shapes
: 
e
linear/biasScalarSummarylinear/bias/tagslinear/strided_slice*
T0*
_output_shapes
: 

linear/Reshape/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0*
_output_shapes

:
g
linear/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

linear/ReshapeReshapelinear/Reshape/ReadVariableOplinear/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

linear/Reshape_1/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:

i
linear/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

linear/Reshape_1Reshapelinear/Reshape_1/ReadVariableOplinear/Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:


linear/Reshape_2/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ
i
linear/Reshape_2/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

linear/Reshape_2Reshapelinear/Reshape_2/ReadVariableOplinear/Reshape_2/shape*
T0*
Tshape0*
_output_shapes	
:ђ

linear/Reshape_3/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_3/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

linear/Reshape_3Reshapelinear/Reshape_3/ReadVariableOplinear/Reshape_3/shape*
T0*
Tshape0*
_output_shapes
:

linear/Reshape_4/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ
i
linear/Reshape_4/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

linear/Reshape_4Reshapelinear/Reshape_4/ReadVariableOplinear/Reshape_4/shape*
T0*
Tshape0*
_output_shapes	
:ђ

linear/Reshape_5/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:

i
linear/Reshape_5/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

linear/Reshape_5Reshapelinear/Reshape_5/ReadVariableOplinear/Reshape_5/shape*
_output_shapes
:
*
T0*
Tshape0

linear/Reshape_6/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_6/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

linear/Reshape_6Reshapelinear/Reshape_6/ReadVariableOplinear/Reshape_6/shape*
T0*
Tshape0*
_output_shapes
:

linear/Reshape_7/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:

i
linear/Reshape_7/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

linear/Reshape_7Reshapelinear/Reshape_7/ReadVariableOplinear/Reshape_7/shape*
_output_shapes
:
*
T0*
Tshape0

linear/Reshape_8/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:

i
linear/Reshape_8/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

linear/Reshape_8Reshapelinear/Reshape_8/ReadVariableOplinear/Reshape_8/shape*
T0*
Tshape0*
_output_shapes
:

T
linear/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

linear/concatConcatV2linear/Reshapelinear/Reshape_1linear/Reshape_2linear/Reshape_3linear/Reshape_4linear/Reshape_5linear/Reshape_6linear/Reshape_7linear/Reshape_8linear/concat/axis*
T0*
N	*
_output_shapes	
:Я*

Tidx0
^
linear/zero_fraction/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
s
linear/zero_fraction/EqualEquallinear/concatlinear/zero_fraction/zero*
_output_shapes	
:Я*
T0

linear/zero_fraction/CastCastlinear/zero_fraction/Equal*

SrcT0
*
Truncate( *
_output_shapes	
:Я*

DstT0
d
linear/zero_fraction/ConstConst*
valueB: *
dtype0*
_output_shapes
:

linear/zero_fraction/MeanMeanlinear/zero_fraction/Castlinear/zero_fraction/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

$linear/fraction_of_zero_weights/tagsConst*0
value'B% Blinear/fraction_of_zero_weights*
dtype0*
_output_shapes
: 

linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tagslinear/zero_fraction/Mean*
_output_shapes
: *
T0
`
linear/zero_fraction_1/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ѓ
linear/zero_fraction_1/EqualEqual-linear/linear_model/linear_model/weighted_sumlinear/zero_fraction_1/zero*'
_output_shapes
:џџџџџџџџџ*
T0

linear/zero_fraction_1/CastCastlinear/zero_fraction_1/Equal*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџ*

DstT0
m
linear/zero_fraction_1/ConstConst*
dtype0*
_output_shapes
:*
valueB"       

linear/zero_fraction_1/MeanMeanlinear/zero_fraction_1/Castlinear/zero_fraction_1/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

*linear/linear/fraction_of_zero_values/tagsConst*6
value-B+ B%linear/linear/fraction_of_zero_values*
dtype0*
_output_shapes
: 
 
%linear/linear/fraction_of_zero_valuesScalarSummary*linear/linear/fraction_of_zero_values/tagslinear/zero_fraction_1/Mean*
T0*
_output_shapes
: 
u
linear/linear/activation/tagConst*)
value B Blinear/linear/activation*
dtype0*
_output_shapes
: 

linear/linear/activationHistogramSummarylinear/linear/activation/tag-linear/linear_model/linear_model/weighted_sum*
T0*
_output_shapes
: 

addAdddnn/logits/BiasAdd-linear/linear_model/linear_model/weighted_sum*
T0*'
_output_shapes
:џџџџџџџџџ
`
head/predictions/logits/ShapeShapeadd*
_output_shapes
:*
T0*
out_type0
s
1head/predictions/logits/assert_rank_at_least/rankConst*
dtype0*
_output_shapes
: *
value	B :
c
[head/predictions/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
T
Lhead/predictions/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
[
head/predictions/logisticSigmoidadd*
T0*'
_output_shapes
:џџџџџџџџџ
_
head/predictions/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:џџџџџџџџџ
q
&head/predictions/two_class_logits/axisConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
О
!head/predictions/two_class_logitsConcatV2head/predictions/zeros_likeadd&head/predictions/two_class_logits/axis*

Tidx0*
T0*
N*'
_output_shapes
:џџџџџџџџџ
~
head/predictions/probabilitiesSoftmax!head/predictions/two_class_logits*
T0*'
_output_shapes
:џџџџџџџџџ
o
$head/predictions/class_ids/dimensionConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
К
head/predictions/class_idsArgMax!head/predictions/two_class_logits$head/predictions/class_ids/dimension*
T0*
output_type0	*#
_output_shapes
:џџџџџџџџџ*

Tidx0
j
head/predictions/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
Є
head/predictions/ExpandDims
ExpandDimshead/predictions/class_idshead/predictions/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ*

Tdim0
е
head/predictions/str_classesAsStringhead/predictions/ExpandDims*
T0	*

fill *

scientific( *
widthџџџџџџџџџ*'
_output_shapes
:џџџџџџџџџ*
	precisionџџџџџџџџџ*
shortest( 
e
head/labels/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

head/labels/ExpandDims
ExpandDimsIdentity_71head/labels/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ*

Tdim0
g
head/labels/ShapeShapehead/labels/ExpandDims*
T0	*
out_type0*
_output_shapes
:
V
head/labels/Shape_1Shapeadd*
T0*
out_type0*
_output_shapes
:
g
%head/labels/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
|
&head/labels/assert_rank_at_least/ShapeShapehead/labels/ExpandDims*
_output_shapes
:*
T0	*
out_type0
W
Ohead/labels/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
H
@head/labels/assert_rank_at_least/static_checks_determined_all_okNoOp
Ќ
head/labels/strided_slice/stackConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB: *
dtype0*
_output_shapes
:
З
!head/labels/strided_slice/stack_1ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ў
!head/labels/strided_slice/stack_2ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
Л
head/labels/strided_sliceStridedSlicehead/labels/Shape_1head/labels/strided_slice/stack!head/labels/strided_slice/stack_1!head/labels/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
Ј
head/labels/concat/values_1ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:

head/labels/concat/axisConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
value	B : *
dtype0*
_output_shapes
: 
Љ
head/labels/concatConcatV2head/labels/strided_slicehead/labels/concat/values_1head/labels/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
s
head/labels/assert_equal/EqualEqualhead/labels/concathead/labels/Shape*
_output_shapes
:*
T0
Ћ
head/labels/assert_equal/ConstConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB: *
dtype0*
_output_shapes
:

head/labels/assert_equal/AllAllhead/labels/assert_equal/Equalhead/labels/assert_equal/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
Р
%head/labels/assert_equal/Assert/ConstConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*(
valueB Bexpected_labels_shape: *
dtype0*
_output_shapes
: 
Й
'head/labels/assert_equal/Assert/Const_1ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB Blabels_shape: *
dtype0*
_output_shapes
: 
Ш
-head/labels/assert_equal/Assert/Assert/data_0ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
dtype0*
_output_shapes
: *(
valueB Bexpected_labels_shape: 
П
-head/labels/assert_equal/Assert/Assert/data_2ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB Blabels_shape: *
dtype0*
_output_shapes
: 
ѓ
&head/labels/assert_equal/Assert/AssertAsserthead/labels/assert_equal/All-head/labels/assert_equal/Assert/Assert/data_0head/labels/concat-head/labels/assert_equal/Assert/Assert/data_2head/labels/Shape*
T
2*
	summarize
Э
head/labelsIdentityhead/labels/ExpandDims'^head/labels/assert_equal/Assert/AssertA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
T0	*'
_output_shapes
:џџџџџџџџџ
r
head/ToFloatCasthead/labels*

SrcT0	*
Truncate( *'
_output_shapes
:џџџџџџџџџ*

DstT0
\
head/assert_range/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

-head/assert_range/assert_less_equal/LessEqual	LessEqualhead/ToFloathead/assert_range/Const*
T0*'
_output_shapes
:џџџџџџџџџ
z
)head/assert_range/assert_less_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Н
'head/assert_range/assert_less_equal/AllAll-head/assert_range/assert_less_equal/LessEqual)head/assert_range/assert_less_equal/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 

0head/assert_range/assert_less_equal/Assert/ConstConst*-
value$B" BLabels must <= n_classes - 1*
dtype0*
_output_shapes
: 
Г
2head/assert_range/assert_less_equal/Assert/Const_1Const*
dtype0*
_output_shapes
: *Q
valueHBF B@Condition x <= y did not hold element-wise:x (head/ToFloat:0) = 

2head/assert_range/assert_less_equal/Assert/Const_2Const*1
value(B& B y (head/assert_range/Const:0) = *
dtype0*
_output_shapes
: 
М
=head/assert_range/assert_less_equal/Assert/AssertGuard/SwitchSwitch'head/assert_range/assert_less_equal/All'head/assert_range/assert_less_equal/All*
T0
*
_output_shapes
: : 
­
?head/assert_range/assert_less_equal/Assert/AssertGuard/switch_tIdentity?head/assert_range/assert_less_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Ћ
?head/assert_range/assert_less_equal/Assert/AssertGuard/switch_fIdentity=head/assert_range/assert_less_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 

>head/assert_range/assert_less_equal/Assert/AssertGuard/pred_idIdentity'head/assert_range/assert_less_equal/All*
T0
*
_output_shapes
: 

;head/assert_range/assert_less_equal/Assert/AssertGuard/NoOpNoOp@^head/assert_range/assert_less_equal/Assert/AssertGuard/switch_t
Щ
Ihead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependencyIdentity?head/assert_range/assert_less_equal/Assert/AssertGuard/switch_t<^head/assert_range/assert_less_equal/Assert/AssertGuard/NoOp*
_output_shapes
: *
T0
*R
_classH
FDloc:@head/assert_range/assert_less_equal/Assert/AssertGuard/switch_t
у
Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_0Const@^head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f*-
value$B" BLabels must <= n_classes - 1*
dtype0*
_output_shapes
: 

Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_1Const@^head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f*Q
valueHBF B@Condition x <= y did not hold element-wise:x (head/ToFloat:0) = *
dtype0*
_output_shapes
: 
ч
Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_3Const@^head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f*1
value(B& B y (head/assert_range/Const:0) = *
dtype0*
_output_shapes
: 

=head/assert_range/assert_less_equal/Assert/AssertGuard/AssertAssertDhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/SwitchDhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_0Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_1Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_3Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_2*
T	
2*
	summarize

Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch'head/assert_range/assert_less_equal/All>head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id*
_output_shapes
: : *
T0
*:
_class0
.,loc:@head/assert_range/assert_less_equal/All

Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switchhead/ToFloat>head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id*
T0*
_class
loc:@head/ToFloat*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
ј
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_2Switchhead/assert_range/Const>head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id*
T0**
_class 
loc:@head/assert_range/Const*
_output_shapes
: : 
Э
Khead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependency_1Identity?head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f>^head/assert_range/assert_less_equal/Assert/AssertGuard/Assert*
T0
*R
_classH
FDloc:@head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 

<head/assert_range/assert_less_equal/Assert/AssertGuard/MergeMergeKhead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependency_1Ihead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
p
+head/assert_range/assert_non_negative/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Л
Ahead/assert_range/assert_non_negative/assert_less_equal/LessEqual	LessEqual+head/assert_range/assert_non_negative/Consthead/ToFloat*
T0*'
_output_shapes
:џџџџџџџџџ

=head/assert_range/assert_non_negative/assert_less_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
љ
;head/assert_range/assert_non_negative/assert_less_equal/AllAllAhead/assert_range/assert_non_negative/assert_less_equal/LessEqual=head/assert_range/assert_non_negative/assert_less_equal/Const*
_output_shapes
: *
	keep_dims( *

Tidx0

Dhead/assert_range/assert_non_negative/assert_less_equal/Assert/ConstConst*!
valueB BLabels must >= 0*
dtype0*
_output_shapes
: 
В
Fhead/assert_range/assert_non_negative/assert_less_equal/Assert/Const_1Const*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 

Fhead/assert_range/assert_non_negative/assert_less_equal/Assert/Const_2Const*&
valueB Bx (head/ToFloat:0) = *
dtype0*
_output_shapes
: 
ј
Qhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/SwitchSwitch;head/assert_range/assert_non_negative/assert_less_equal/All;head/assert_range/assert_non_negative/assert_less_equal/All*
T0
*
_output_shapes
: : 
е
Shead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_tIdentityShead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
г
Shead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_fIdentityQhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 
М
Rhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_idIdentity;head/assert_range/assert_non_negative/assert_less_equal/All*
_output_shapes
: *
T0

­
Ohead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpT^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t

]head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependencyIdentityShead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_tP^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
_output_shapes
: *
T0
*f
_class\
ZXloc:@head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t
џ
Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0ConstT^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f*!
valueB BLabels must >= 0*
dtype0*
_output_shapes
: 

Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1ConstT^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 

Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2ConstT^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f*&
valueB Bx (head/ToFloat:0) = *
dtype0*
_output_shapes
: 
П
Qhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssertXhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/SwitchXhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1*
T
2*
	summarize
ц
Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch;head/assert_range/assert_non_negative/assert_less_equal/AllRhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id*
T0
*N
_classD
B@loc:@head/assert_range/assert_non_negative/assert_less_equal/All*
_output_shapes
: : 
Ќ
Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switchhead/ToFloatRhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id*
T0*
_class
loc:@head/ToFloat*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ

_head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1IdentityShead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_fR^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
T0
*f
_class\
ZXloc:@head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
Х
Phead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/MergeMerge_head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1]head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
ј
head/assert_range/IdentityIdentityhead/ToFloat=^head/assert_range/assert_less_equal/Assert/AssertGuard/MergeQ^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Merge*
T0*'
_output_shapes
:џџџџџџџџџ
a
head/logistic_loss/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:џџџџџџџџџ

head/logistic_loss/GreaterEqualGreaterEqualaddhead/logistic_loss/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ

head/logistic_loss/SelectSelecthead/logistic_loss/GreaterEqualaddhead/logistic_loss/zeros_like*'
_output_shapes
:џџџџџџџџџ*
T0
T
head/logistic_loss/NegNegadd*
T0*'
_output_shapes
:џџџџџџџџџ

head/logistic_loss/Select_1Selecthead/logistic_loss/GreaterEqualhead/logistic_loss/Negadd*'
_output_shapes
:џџџџџџџџџ*
T0
p
head/logistic_loss/mulMuladdhead/assert_range/Identity*'
_output_shapes
:џџџџџџџџџ*
T0

head/logistic_loss/subSubhead/logistic_loss/Selecthead/logistic_loss/mul*
T0*'
_output_shapes
:џџџџџџџџџ
l
head/logistic_loss/ExpExphead/logistic_loss/Select_1*
T0*'
_output_shapes
:џџџџџџџџџ
k
head/logistic_loss/Log1pLog1phead/logistic_loss/Exp*
T0*'
_output_shapes
:џџџџџџџџџ
}
head/logistic_lossAddhead/logistic_loss/subhead/logistic_loss/Log1p*
T0*'
_output_shapes
:џџџџџџџџџ
t
/head/weighted_loss/assert_broadcastable/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
x
5head/weighted_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
v
4head/weighted_loss/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B : 

4head/weighted_loss/assert_broadcastable/values/shapeShapehead/logistic_loss*
_output_shapes
:*
T0*
out_type0
u
3head/weighted_loss/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
K
Chead/weighted_loss/assert_broadcastable/static_scalar_check_successNoOp
Ї
head/weighted_loss/ToFloat/xConstD^head/weighted_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  ?

head/weighted_loss/MulMulhead/logistic_losshead/weighted_loss/ToFloat/x*
T0*'
_output_shapes
:џџџџџџџџџ
Џ
head/weighted_loss/ConstConstD^head/weighted_loss/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:

head/weighted_loss/SumSumhead/weighted_loss/Mulhead/weighted_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
q
,metrics/label/mean/broadcast_weights/weightsConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

Gmetrics/label/mean/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Fmetrics/label/mean/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
 
Fmetrics/label/mean/broadcast_weights/assert_broadcastable/values/shapeShapehead/assert_range/Identity*
_output_shapes
:*
T0*
out_type0

Emetrics/label/mean/broadcast_weights/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
]
Umetrics/label/mean/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
ц
4metrics/label/mean/broadcast_weights/ones_like/ShapeShapehead/assert_range/IdentityV^metrics/label/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
б
4metrics/label/mean/broadcast_weights/ones_like/ConstConstV^metrics/label/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ц
.metrics/label/mean/broadcast_weights/ones_likeFill4metrics/label/mean/broadcast_weights/ones_like/Shape4metrics/label/mean/broadcast_weights/ones_like/Const*'
_output_shapes
:џџџџџџџџџ*
T0*

index_type0
Л
$metrics/label/mean/broadcast_weightsMul,metrics/label/mean/broadcast_weights/weights.metrics/label/mean/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ

*metrics/label/mean/total/Initializer/zerosConst*+
_class!
loc:@metrics/label/mean/total*
valueB
 *    *
dtype0*
_output_shapes
: 
Љ
metrics/label/mean/total
VariableV2*
shared_name *+
_class!
loc:@metrics/label/mean/total*
	container *
shape: *
dtype0*
_output_shapes
: 
ц
metrics/label/mean/total/AssignAssignmetrics/label/mean/total*metrics/label/mean/total/Initializer/zeros*
T0*+
_class!
loc:@metrics/label/mean/total*
validate_shape(*
_output_shapes
: *
use_locking(

metrics/label/mean/total/readIdentitymetrics/label/mean/total*
T0*+
_class!
loc:@metrics/label/mean/total*
_output_shapes
: 

*metrics/label/mean/count/Initializer/zerosConst*+
_class!
loc:@metrics/label/mean/count*
valueB
 *    *
dtype0*
_output_shapes
: 
Љ
metrics/label/mean/count
VariableV2*
shared_name *+
_class!
loc:@metrics/label/mean/count*
	container *
shape: *
dtype0*
_output_shapes
: 
ц
metrics/label/mean/count/AssignAssignmetrics/label/mean/count*metrics/label/mean/count/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@metrics/label/mean/count

metrics/label/mean/count/readIdentitymetrics/label/mean/count*
T0*+
_class!
loc:@metrics/label/mean/count*
_output_shapes
: 
­
Imetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shapeShape$metrics/label/mean/broadcast_weights*
T0*
out_type0*
_output_shapes
:

Hmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B :
Ђ
Hmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shapeShapehead/assert_range/Identity*
T0*
out_type0*
_output_shapes
:

Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar/xConst*
dtype0*
_output_shapes
: *
value	B : 

Emetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalarEqualGmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar/xHmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 

Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/SwitchSwitchEmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalarEmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
е
Smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_tIdentitySmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
г
Smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_fIdentityQmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
Ц
Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_idIdentityEmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
ѕ
Smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1SwitchEmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalarRmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0
*X
_classN
LJloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 

qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualxmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchzmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 

xmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchGmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/rankRmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*Z
_classP
NLloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/values/rank*
_output_shapes
: : 
Ђ
zmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchHmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rankRmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*[
_classQ
OMloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rank*
_output_shapes
: : 
ў
kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchqmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankqmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitymmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0


mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentitykmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 

lmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityqmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
Р
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
й
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
И
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchHmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shapeRmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*[
_classQ
OMloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape

metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchlmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*[
_classQ
OMloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
Ч
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
И
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
в
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapemetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
Д
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Ю
|metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likemetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0
Т
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
п
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes

:
М
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchImetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shapeRmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*\
_classR
PNloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::

metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchlmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*\
_classR
PNloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
Ѕ
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1|metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
set_operationa-b*
validate_indices(*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:
г
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizemetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0*
out_type0
Љ
wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
Ё
umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualwmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 

mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchqmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranklmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_classz
xvloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 

jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergemmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
Ш
Pmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeMergejmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeUmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1*
N*
_output_shapes
: : *
T0

Љ
Ametrics/label/mean/broadcast_weights_1/assert_broadcastable/ConstConst*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.

Cmetrics/label/mean/broadcast_weights_1/assert_broadcastable/Const_1Const*
dtype0*
_output_shapes
: *
valueB Bweights.shape=
Њ
Cmetrics/label/mean/broadcast_weights_1/assert_broadcastable/Const_2Const*7
value.B, B&metrics/label/mean/broadcast_weights:0*
dtype0*
_output_shapes
: 

Cmetrics/label/mean/broadcast_weights_1/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
 
Cmetrics/label/mean/broadcast_weights_1/assert_broadcastable/Const_4Const*-
value$B" Bhead/assert_range/Identity:0*
dtype0*
_output_shapes
: 

Cmetrics/label/mean/broadcast_weights_1/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

Nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/SwitchSwitchPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergePmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
Я
Pmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tIdentityPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch:1*
_output_shapes
: *
T0

Э
Pmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fIdentityNmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
Ю
Ometrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_idIdentityPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: *
T0

Ї
Lmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOpNoOpQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t

Zmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependencyIdentityPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tM^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOp*
T0
*c
_classY
WUloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 

Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
ї
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB Bweights.shape=

Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*7
value.B, B&metrics/label/mean/broadcast_weights:0*
dtype0*
_output_shapes
: 
і
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 

Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*-
value$B" Bhead/assert_range/Identity:0*
dtype0*
_output_shapes
: 
ѓ
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
щ
Nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/AssertAssertUmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchUmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize

Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchSwitchPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeOmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
_output_shapes
: : *
T0
*c
_classY
WUloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge

Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchImetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shapeOmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id* 
_output_shapes
::*
T0*\
_classR
PNloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape

Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchHmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shapeOmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*[
_classQ
OMloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
і
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchEmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalarOmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*X
_classN
LJloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 

\metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1IdentityPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fO^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert*
T0
*c
_classY
WUloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
М
Mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/MergeMerge\metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1Zmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
р
6metrics/label/mean/broadcast_weights_1/ones_like/ShapeShapehead/assert_range/IdentityN^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
_output_shapes
:*
T0*
out_type0
Ы
6metrics/label/mean/broadcast_weights_1/ones_like/ConstConstN^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *  ?
ь
0metrics/label/mean/broadcast_weights_1/ones_likeFill6metrics/label/mean/broadcast_weights_1/ones_like/Shape6metrics/label/mean/broadcast_weights_1/ones_like/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ
З
&metrics/label/mean/broadcast_weights_1Mul$metrics/label/mean/broadcast_weights0metrics/label/mean/broadcast_weights_1/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ

metrics/label/mean/MulMulhead/assert_range/Identity&metrics/label/mean/broadcast_weights_1*
T0*'
_output_shapes
:џџџџџџџџџ
i
metrics/label/mean/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

metrics/label/mean/SumSum&metrics/label/mean/broadcast_weights_1metrics/label/mean/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
k
metrics/label/mean/Const_1Const*
dtype0*
_output_shapes
:*
valueB"       

metrics/label/mean/Sum_1Summetrics/label/mean/Mulmetrics/label/mean/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
О
metrics/label/mean/AssignAdd	AssignAddmetrics/label/mean/totalmetrics/label/mean/Sum_1*
T0*+
_class!
loc:@metrics/label/mean/total*
_output_shapes
: *
use_locking( 
з
metrics/label/mean/AssignAdd_1	AssignAddmetrics/label/mean/countmetrics/label/mean/Sum^metrics/label/mean/Mul*
_output_shapes
: *
use_locking( *
T0*+
_class!
loc:@metrics/label/mean/count

metrics/label/mean/truedivRealDivmetrics/label/mean/total/readmetrics/label/mean/count/read*
T0*
_output_shapes
: 
b
metrics/label/mean/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

metrics/label/mean/GreaterGreatermetrics/label/mean/count/readmetrics/label/mean/zeros_like*
T0*
_output_shapes
: 

metrics/label/mean/valueSelectmetrics/label/mean/Greatermetrics/label/mean/truedivmetrics/label/mean/zeros_like*
T0*
_output_shapes
: 

metrics/label/mean/truediv_1RealDivmetrics/label/mean/AssignAddmetrics/label/mean/AssignAdd_1*
T0*
_output_shapes
: 
d
metrics/label/mean/zeros_like_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 

metrics/label/mean/Greater_1Greatermetrics/label/mean/AssignAdd_1metrics/label/mean/zeros_like_1*
T0*
_output_shapes
: 
Є
metrics/label/mean/update_opSelectmetrics/label/mean/Greater_1metrics/label/mean/truediv_1metrics/label/mean/zeros_like_1*
T0*
_output_shapes
: 
 
,metrics/average_loss/total/Initializer/zerosConst*
dtype0*
_output_shapes
: *-
_class#
!loc:@metrics/average_loss/total*
valueB
 *    
­
metrics/average_loss/total
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *-
_class#
!loc:@metrics/average_loss/total
ю
!metrics/average_loss/total/AssignAssignmetrics/average_loss/total,metrics/average_loss/total/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@metrics/average_loss/total*
validate_shape(*
_output_shapes
: 

metrics/average_loss/total/readIdentitymetrics/average_loss/total*
T0*-
_class#
!loc:@metrics/average_loss/total*
_output_shapes
: 
 
,metrics/average_loss/count/Initializer/zerosConst*-
_class#
!loc:@metrics/average_loss/count*
valueB
 *    *
dtype0*
_output_shapes
: 
­
metrics/average_loss/count
VariableV2*
dtype0*
_output_shapes
: *
shared_name *-
_class#
!loc:@metrics/average_loss/count*
	container *
shape: 
ю
!metrics/average_loss/count/AssignAssignmetrics/average_loss/count,metrics/average_loss/count/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*-
_class#
!loc:@metrics/average_loss/count

metrics/average_loss/count/readIdentitymetrics/average_loss/count*
_output_shapes
: *
T0*-
_class#
!loc:@metrics/average_loss/count
_
metrics/average_loss/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Imetrics/average_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Hmetrics/average_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B : 

Hmetrics/average_loss/broadcast_weights/assert_broadcastable/values/shapeShapehead/logistic_loss*
_output_shapes
:*
T0*
out_type0

Gmetrics/average_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
_
Wmetrics/average_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
т
6metrics/average_loss/broadcast_weights/ones_like/ShapeShapehead/logistic_lossX^metrics/average_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0*
out_type0
е
6metrics/average_loss/broadcast_weights/ones_like/ConstConstX^metrics/average_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ь
0metrics/average_loss/broadcast_weights/ones_likeFill6metrics/average_loss/broadcast_weights/ones_like/Shape6metrics/average_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ
­
&metrics/average_loss/broadcast_weightsMulmetrics/average_loss/Const0metrics/average_loss/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ

metrics/average_loss/MulMulhead/logistic_loss&metrics/average_loss/broadcast_weights*
T0*'
_output_shapes
:џџџџџџџџџ
m
metrics/average_loss/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ѓ
metrics/average_loss/SumSum&metrics/average_loss/broadcast_weightsmetrics/average_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
m
metrics/average_loss/Const_2Const*
valueB"       *
dtype0*
_output_shapes
:

metrics/average_loss/Sum_1Summetrics/average_loss/Mulmetrics/average_loss/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Ц
metrics/average_loss/AssignAdd	AssignAddmetrics/average_loss/totalmetrics/average_loss/Sum_1*
T0*-
_class#
!loc:@metrics/average_loss/total*
_output_shapes
: *
use_locking( 
с
 metrics/average_loss/AssignAdd_1	AssignAddmetrics/average_loss/countmetrics/average_loss/Sum^metrics/average_loss/Mul*
_output_shapes
: *
use_locking( *
T0*-
_class#
!loc:@metrics/average_loss/count

metrics/average_loss/truedivRealDivmetrics/average_loss/total/readmetrics/average_loss/count/read*
T0*
_output_shapes
: 
d
metrics/average_loss/zeros_likeConst*
dtype0*
_output_shapes
: *
valueB
 *    

metrics/average_loss/GreaterGreatermetrics/average_loss/count/readmetrics/average_loss/zeros_like*
T0*
_output_shapes
: 
Ђ
metrics/average_loss/valueSelectmetrics/average_loss/Greatermetrics/average_loss/truedivmetrics/average_loss/zeros_like*
T0*
_output_shapes
: 

metrics/average_loss/truediv_1RealDivmetrics/average_loss/AssignAdd metrics/average_loss/AssignAdd_1*
T0*
_output_shapes
: 
f
!metrics/average_loss/zeros_like_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 

metrics/average_loss/Greater_1Greater metrics/average_loss/AssignAdd_1!metrics/average_loss/zeros_like_1*
T0*
_output_shapes
: 
Ќ
metrics/average_loss/update_opSelectmetrics/average_loss/Greater_1metrics/average_loss/truediv_1!metrics/average_loss/zeros_like_1*
_output_shapes
: *
T0
R
metrics/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

metrics/CastCasthead/predictions/ExpandDims*

SrcT0	*
Truncate( *'
_output_shapes
:џџџџџџџџџ*

DstT0
r
metrics/EqualEqualmetrics/Casthead/assert_range/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
w
metrics/ToFloatCastmetrics/Equal*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџ*

DstT0

(metrics/accuracy/total/Initializer/zerosConst*)
_class
loc:@metrics/accuracy/total*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
metrics/accuracy/total
VariableV2*)
_class
loc:@metrics/accuracy/total*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
о
metrics/accuracy/total/AssignAssignmetrics/accuracy/total(metrics/accuracy/total/Initializer/zeros*
T0*)
_class
loc:@metrics/accuracy/total*
validate_shape(*
_output_shapes
: *
use_locking(

metrics/accuracy/total/readIdentitymetrics/accuracy/total*
T0*)
_class
loc:@metrics/accuracy/total*
_output_shapes
: 

(metrics/accuracy/count/Initializer/zerosConst*)
_class
loc:@metrics/accuracy/count*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
metrics/accuracy/count
VariableV2*
dtype0*
_output_shapes
: *
shared_name *)
_class
loc:@metrics/accuracy/count*
	container *
shape: 
о
metrics/accuracy/count/AssignAssignmetrics/accuracy/count(metrics/accuracy/count/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@metrics/accuracy/count*
validate_shape(*
_output_shapes
: 

metrics/accuracy/count/readIdentitymetrics/accuracy/count*
T0*)
_class
loc:@metrics/accuracy/count*
_output_shapes
: 

Emetrics/accuracy/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Dmetrics/accuracy/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

Dmetrics/accuracy/broadcast_weights/assert_broadcastable/values/shapeShapemetrics/ToFloat*
T0*
out_type0*
_output_shapes
:

Cmetrics/accuracy/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
[
Smetrics/accuracy/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
з
2metrics/accuracy/broadcast_weights/ones_like/ShapeShapemetrics/ToFloatT^metrics/accuracy/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0*
out_type0
Э
2metrics/accuracy/broadcast_weights/ones_like/ConstConstT^metrics/accuracy/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
р
,metrics/accuracy/broadcast_weights/ones_likeFill2metrics/accuracy/broadcast_weights/ones_like/Shape2metrics/accuracy/broadcast_weights/ones_like/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ

"metrics/accuracy/broadcast_weightsMulmetrics/Const,metrics/accuracy/broadcast_weights/ones_like*'
_output_shapes
:џџџџџџџџџ*
T0

metrics/accuracy/MulMulmetrics/ToFloat"metrics/accuracy/broadcast_weights*
T0*'
_output_shapes
:џџџџџџџџџ
g
metrics/accuracy/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

metrics/accuracy/SumSum"metrics/accuracy/broadcast_weightsmetrics/accuracy/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
i
metrics/accuracy/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:

metrics/accuracy/Sum_1Summetrics/accuracy/Mulmetrics/accuracy/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
Ж
metrics/accuracy/AssignAdd	AssignAddmetrics/accuracy/totalmetrics/accuracy/Sum_1*
T0*)
_class
loc:@metrics/accuracy/total*
_output_shapes
: *
use_locking( 
Э
metrics/accuracy/AssignAdd_1	AssignAddmetrics/accuracy/countmetrics/accuracy/Sum^metrics/accuracy/Mul*
T0*)
_class
loc:@metrics/accuracy/count*
_output_shapes
: *
use_locking( 
~
metrics/accuracy/truedivRealDivmetrics/accuracy/total/readmetrics/accuracy/count/read*
T0*
_output_shapes
: 
`
metrics/accuracy/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
~
metrics/accuracy/GreaterGreatermetrics/accuracy/count/readmetrics/accuracy/zeros_like*
_output_shapes
: *
T0

metrics/accuracy/valueSelectmetrics/accuracy/Greatermetrics/accuracy/truedivmetrics/accuracy/zeros_like*
T0*
_output_shapes
: 

metrics/accuracy/truediv_1RealDivmetrics/accuracy/AssignAddmetrics/accuracy/AssignAdd_1*
T0*
_output_shapes
: 
b
metrics/accuracy/zeros_like_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 

metrics/accuracy/Greater_1Greatermetrics/accuracy/AssignAdd_1metrics/accuracy/zeros_like_1*
T0*
_output_shapes
: 

metrics/accuracy/update_opSelectmetrics/accuracy/Greater_1metrics/accuracy/truediv_1metrics/accuracy/zeros_like_1*
_output_shapes
: *
T0

metrics/precision/CastCasthead/predictions/ExpandDims*

SrcT0	*
Truncate( *'
_output_shapes
:џџџџџџџџџ*

DstT0


metrics/precision/Cast_1Casthead/assert_range/Identity*

SrcT0*
Truncate( *'
_output_shapes
:џџџџџџџџџ*

DstT0

\
metrics/precision/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
j
(metrics/precision/true_positives/Equal/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
Ѕ
&metrics/precision/true_positives/EqualEqualmetrics/precision/Cast_1(metrics/precision/true_positives/Equal/y*
T0
*'
_output_shapes
:џџџџџџџџџ
l
*metrics/precision/true_positives/Equal_1/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
Ї
(metrics/precision/true_positives/Equal_1Equalmetrics/precision/Cast*metrics/precision/true_positives/Equal_1/y*
T0
*'
_output_shapes
:џџџџџџџџџ
Д
+metrics/precision/true_positives/LogicalAnd
LogicalAnd&metrics/precision/true_positives/Equal(metrics/precision/true_positives/Equal_1*'
_output_shapes
:џџџџџџџџџ
W
Ometrics/precision/true_positives/assert_type/statically_determined_correct_typeNoOp
И
8metrics/precision/true_positives/count/Initializer/zerosConst*9
_class/
-+loc:@metrics/precision/true_positives/count*
valueB
 *    *
dtype0*
_output_shapes
: 
Х
&metrics/precision/true_positives/count
VariableV2*
dtype0*
_output_shapes
: *
shared_name *9
_class/
-+loc:@metrics/precision/true_positives/count*
	container *
shape: 

-metrics/precision/true_positives/count/AssignAssign&metrics/precision/true_positives/count8metrics/precision/true_positives/count/Initializer/zeros*
T0*9
_class/
-+loc:@metrics/precision/true_positives/count*
validate_shape(*
_output_shapes
: *
use_locking(
Л
+metrics/precision/true_positives/count/readIdentity&metrics/precision/true_positives/count*
T0*9
_class/
-+loc:@metrics/precision/true_positives/count*
_output_shapes
: 
Ў
(metrics/precision/true_positives/ToFloatCast+metrics/precision/true_positives/LogicalAnd*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџ*

DstT0
g
%metrics/precision/true_positives/RankConst*
dtype0*
_output_shapes
: *
value	B :
v
4metrics/precision/true_positives/assert_rank_in/rankConst*
value	B : *
dtype0*
_output_shapes
: 
x
5metrics/precision/true_positives/assert_rank_in/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
f
^metrics/precision/true_positives/assert_rank_in/assert_type/statically_determined_correct_typeNoOp
h
`metrics/precision/true_positives/assert_rank_in/assert_type_1/statically_determined_correct_typeNoOp
W
Ometrics/precision/true_positives/assert_rank_in/static_checks_determined_all_okNoOp
ђ
$metrics/precision/true_positives/MulMul(metrics/precision/true_positives/ToFloatmetrics/precision/ConstP^metrics/precision/true_positives/assert_rank_in/static_checks_determined_all_ok*
T0*'
_output_shapes
:џџџџџџџџџ

)metrics/precision/true_positives/IdentityIdentity+metrics/precision/true_positives/count/read*
_output_shapes
: *
T0
w
&metrics/precision/true_positives/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
З
$metrics/precision/true_positives/SumSum$metrics/precision/true_positives/Mul&metrics/precision/true_positives/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
є
*metrics/precision/true_positives/AssignAdd	AssignAdd&metrics/precision/true_positives/count$metrics/precision/true_positives/Sum*
use_locking( *
T0*9
_class/
-+loc:@metrics/precision/true_positives/count*
_output_shapes
: 
k
)metrics/precision/false_positives/Equal/yConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
Ї
'metrics/precision/false_positives/EqualEqualmetrics/precision/Cast_1)metrics/precision/false_positives/Equal/y*
T0
*'
_output_shapes
:џџџџџџџџџ
m
+metrics/precision/false_positives/Equal_1/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
Љ
)metrics/precision/false_positives/Equal_1Equalmetrics/precision/Cast+metrics/precision/false_positives/Equal_1/y*
T0
*'
_output_shapes
:џџџџџџџџџ
З
,metrics/precision/false_positives/LogicalAnd
LogicalAnd'metrics/precision/false_positives/Equal)metrics/precision/false_positives/Equal_1*'
_output_shapes
:џџџџџџџџџ
X
Pmetrics/precision/false_positives/assert_type/statically_determined_correct_typeNoOp
К
9metrics/precision/false_positives/count/Initializer/zerosConst*
dtype0*
_output_shapes
: *:
_class0
.,loc:@metrics/precision/false_positives/count*
valueB
 *    
Ч
'metrics/precision/false_positives/count
VariableV2*
shared_name *:
_class0
.,loc:@metrics/precision/false_positives/count*
	container *
shape: *
dtype0*
_output_shapes
: 
Ђ
.metrics/precision/false_positives/count/AssignAssign'metrics/precision/false_positives/count9metrics/precision/false_positives/count/Initializer/zeros*
T0*:
_class0
.,loc:@metrics/precision/false_positives/count*
validate_shape(*
_output_shapes
: *
use_locking(
О
,metrics/precision/false_positives/count/readIdentity'metrics/precision/false_positives/count*
_output_shapes
: *
T0*:
_class0
.,loc:@metrics/precision/false_positives/count
А
)metrics/precision/false_positives/ToFloatCast,metrics/precision/false_positives/LogicalAnd*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџ*

DstT0
h
&metrics/precision/false_positives/RankConst*
value	B :*
dtype0*
_output_shapes
: 
w
5metrics/precision/false_positives/assert_rank_in/rankConst*
value	B : *
dtype0*
_output_shapes
: 
y
6metrics/precision/false_positives/assert_rank_in/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
g
_metrics/precision/false_positives/assert_rank_in/assert_type/statically_determined_correct_typeNoOp
i
ametrics/precision/false_positives/assert_rank_in/assert_type_1/statically_determined_correct_typeNoOp
X
Pmetrics/precision/false_positives/assert_rank_in/static_checks_determined_all_okNoOp
ѕ
%metrics/precision/false_positives/MulMul)metrics/precision/false_positives/ToFloatmetrics/precision/ConstQ^metrics/precision/false_positives/assert_rank_in/static_checks_determined_all_ok*
T0*'
_output_shapes
:џџџџџџџџџ

*metrics/precision/false_positives/IdentityIdentity,metrics/precision/false_positives/count/read*
T0*
_output_shapes
: 
x
'metrics/precision/false_positives/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
К
%metrics/precision/false_positives/SumSum%metrics/precision/false_positives/Mul'metrics/precision/false_positives/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
ј
+metrics/precision/false_positives/AssignAdd	AssignAdd'metrics/precision/false_positives/count%metrics/precision/false_positives/Sum*
use_locking( *
T0*:
_class0
.,loc:@metrics/precision/false_positives/count*
_output_shapes
: 

metrics/precision/addAdd)metrics/precision/true_positives/Identity*metrics/precision/false_positives/Identity*
T0*
_output_shapes
: 
`
metrics/precision/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
y
metrics/precision/GreaterGreatermetrics/precision/addmetrics/precision/Greater/y*
T0*
_output_shapes
: 

metrics/precision/add_1Add)metrics/precision/true_positives/Identity*metrics/precision/false_positives/Identity*
T0*
_output_shapes
: 

metrics/precision/divRealDiv)metrics/precision/true_positives/Identitymetrics/precision/add_1*
T0*
_output_shapes
: 
^
metrics/precision/value/eConst*
valueB
 *    *
dtype0*
_output_shapes
: 

metrics/precision/valueSelectmetrics/precision/Greatermetrics/precision/divmetrics/precision/value/e*
T0*
_output_shapes
: 

metrics/precision/add_2Add*metrics/precision/true_positives/AssignAdd+metrics/precision/false_positives/AssignAdd*
T0*
_output_shapes
: 
b
metrics/precision/Greater_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *    

metrics/precision/Greater_1Greatermetrics/precision/add_2metrics/precision/Greater_1/y*
_output_shapes
: *
T0

metrics/precision/add_3Add*metrics/precision/true_positives/AssignAdd+metrics/precision/false_positives/AssignAdd*
T0*
_output_shapes
: 

metrics/precision/div_1RealDiv*metrics/precision/true_positives/AssignAddmetrics/precision/add_3*
T0*
_output_shapes
: 
b
metrics/precision/update_op/eConst*
valueB
 *    *
dtype0*
_output_shapes
: 

metrics/precision/update_opSelectmetrics/precision/Greater_1metrics/precision/div_1metrics/precision/update_op/e*
T0*
_output_shapes
: 

metrics/recall/CastCasthead/predictions/ExpandDims*

SrcT0	*
Truncate( *'
_output_shapes
:џџџџџџџџџ*

DstT0


metrics/recall/Cast_1Casthead/assert_range/Identity*
Truncate( *'
_output_shapes
:џџџџџџџџџ*

DstT0
*

SrcT0
Y
metrics/recall/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
%metrics/recall/true_positives/Equal/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: 

#metrics/recall/true_positives/EqualEqualmetrics/recall/Cast_1%metrics/recall/true_positives/Equal/y*
T0
*'
_output_shapes
:џџџџџџџџџ
i
'metrics/recall/true_positives/Equal_1/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: 

%metrics/recall/true_positives/Equal_1Equalmetrics/recall/Cast'metrics/recall/true_positives/Equal_1/y*
T0
*'
_output_shapes
:џџџџџџџџџ
Ћ
(metrics/recall/true_positives/LogicalAnd
LogicalAnd#metrics/recall/true_positives/Equal%metrics/recall/true_positives/Equal_1*'
_output_shapes
:џџџџџџџџџ
T
Lmetrics/recall/true_positives/assert_type/statically_determined_correct_typeNoOp
В
5metrics/recall/true_positives/count/Initializer/zerosConst*6
_class,
*(loc:@metrics/recall/true_positives/count*
valueB
 *    *
dtype0*
_output_shapes
: 
П
#metrics/recall/true_positives/count
VariableV2*
dtype0*
_output_shapes
: *
shared_name *6
_class,
*(loc:@metrics/recall/true_positives/count*
	container *
shape: 

*metrics/recall/true_positives/count/AssignAssign#metrics/recall/true_positives/count5metrics/recall/true_positives/count/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@metrics/recall/true_positives/count*
validate_shape(*
_output_shapes
: 
В
(metrics/recall/true_positives/count/readIdentity#metrics/recall/true_positives/count*
T0*6
_class,
*(loc:@metrics/recall/true_positives/count*
_output_shapes
: 
Ј
%metrics/recall/true_positives/ToFloatCast(metrics/recall/true_positives/LogicalAnd*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџ*

DstT0
d
"metrics/recall/true_positives/RankConst*
value	B :*
dtype0*
_output_shapes
: 
s
1metrics/recall/true_positives/assert_rank_in/rankConst*
value	B : *
dtype0*
_output_shapes
: 
u
2metrics/recall/true_positives/assert_rank_in/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
c
[metrics/recall/true_positives/assert_rank_in/assert_type/statically_determined_correct_typeNoOp
e
]metrics/recall/true_positives/assert_rank_in/assert_type_1/statically_determined_correct_typeNoOp
T
Lmetrics/recall/true_positives/assert_rank_in/static_checks_determined_all_okNoOp
ц
!metrics/recall/true_positives/MulMul%metrics/recall/true_positives/ToFloatmetrics/recall/ConstM^metrics/recall/true_positives/assert_rank_in/static_checks_determined_all_ok*
T0*'
_output_shapes
:џџџџџџџџџ
}
&metrics/recall/true_positives/IdentityIdentity(metrics/recall/true_positives/count/read*
T0*
_output_shapes
: 
t
#metrics/recall/true_positives/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Ў
!metrics/recall/true_positives/SumSum!metrics/recall/true_positives/Mul#metrics/recall/true_positives/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
ш
'metrics/recall/true_positives/AssignAdd	AssignAdd#metrics/recall/true_positives/count!metrics/recall/true_positives/Sum*
use_locking( *
T0*6
_class,
*(loc:@metrics/recall/true_positives/count*
_output_shapes
: 
h
&metrics/recall/false_negatives/Equal/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: 

$metrics/recall/false_negatives/EqualEqualmetrics/recall/Cast_1&metrics/recall/false_negatives/Equal/y*'
_output_shapes
:џџџџџџџџџ*
T0

j
(metrics/recall/false_negatives/Equal_1/yConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
 
&metrics/recall/false_negatives/Equal_1Equalmetrics/recall/Cast(metrics/recall/false_negatives/Equal_1/y*'
_output_shapes
:џџџџџџџџџ*
T0

Ў
)metrics/recall/false_negatives/LogicalAnd
LogicalAnd$metrics/recall/false_negatives/Equal&metrics/recall/false_negatives/Equal_1*'
_output_shapes
:џџџџџџџџџ
U
Mmetrics/recall/false_negatives/assert_type/statically_determined_correct_typeNoOp
Д
6metrics/recall/false_negatives/count/Initializer/zerosConst*7
_class-
+)loc:@metrics/recall/false_negatives/count*
valueB
 *    *
dtype0*
_output_shapes
: 
С
$metrics/recall/false_negatives/count
VariableV2*
dtype0*
_output_shapes
: *
shared_name *7
_class-
+)loc:@metrics/recall/false_negatives/count*
	container *
shape: 

+metrics/recall/false_negatives/count/AssignAssign$metrics/recall/false_negatives/count6metrics/recall/false_negatives/count/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@metrics/recall/false_negatives/count*
validate_shape(*
_output_shapes
: 
Е
)metrics/recall/false_negatives/count/readIdentity$metrics/recall/false_negatives/count*
T0*7
_class-
+)loc:@metrics/recall/false_negatives/count*
_output_shapes
: 
Њ
&metrics/recall/false_negatives/ToFloatCast)metrics/recall/false_negatives/LogicalAnd*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџ*

DstT0
e
#metrics/recall/false_negatives/RankConst*
value	B :*
dtype0*
_output_shapes
: 
t
2metrics/recall/false_negatives/assert_rank_in/rankConst*
dtype0*
_output_shapes
: *
value	B : 
v
3metrics/recall/false_negatives/assert_rank_in/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
d
\metrics/recall/false_negatives/assert_rank_in/assert_type/statically_determined_correct_typeNoOp
f
^metrics/recall/false_negatives/assert_rank_in/assert_type_1/statically_determined_correct_typeNoOp
U
Mmetrics/recall/false_negatives/assert_rank_in/static_checks_determined_all_okNoOp
щ
"metrics/recall/false_negatives/MulMul&metrics/recall/false_negatives/ToFloatmetrics/recall/ConstN^metrics/recall/false_negatives/assert_rank_in/static_checks_determined_all_ok*
T0*'
_output_shapes
:џџџџџџџџџ

'metrics/recall/false_negatives/IdentityIdentity)metrics/recall/false_negatives/count/read*
T0*
_output_shapes
: 
u
$metrics/recall/false_negatives/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Б
"metrics/recall/false_negatives/SumSum"metrics/recall/false_negatives/Mul$metrics/recall/false_negatives/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
ь
(metrics/recall/false_negatives/AssignAdd	AssignAdd$metrics/recall/false_negatives/count"metrics/recall/false_negatives/Sum*
T0*7
_class-
+)loc:@metrics/recall/false_negatives/count*
_output_shapes
: *
use_locking( 

metrics/recall/addAdd&metrics/recall/true_positives/Identity'metrics/recall/false_negatives/Identity*
T0*
_output_shapes
: 
]
metrics/recall/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
metrics/recall/GreaterGreatermetrics/recall/addmetrics/recall/Greater/y*
T0*
_output_shapes
: 

metrics/recall/add_1Add&metrics/recall/true_positives/Identity'metrics/recall/false_negatives/Identity*
T0*
_output_shapes
: 
|
metrics/recall/divRealDiv&metrics/recall/true_positives/Identitymetrics/recall/add_1*
T0*
_output_shapes
: 
[
metrics/recall/value/eConst*
valueB
 *    *
dtype0*
_output_shapes
: 

metrics/recall/valueSelectmetrics/recall/Greatermetrics/recall/divmetrics/recall/value/e*
T0*
_output_shapes
: 

metrics/recall/add_2Add'metrics/recall/true_positives/AssignAdd(metrics/recall/false_negatives/AssignAdd*
T0*
_output_shapes
: 
_
metrics/recall/Greater_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
v
metrics/recall/Greater_1Greatermetrics/recall/add_2metrics/recall/Greater_1/y*
_output_shapes
: *
T0

metrics/recall/add_3Add'metrics/recall/true_positives/AssignAdd(metrics/recall/false_negatives/AssignAdd*
T0*
_output_shapes
: 

metrics/recall/div_1RealDiv'metrics/recall/true_positives/AssignAddmetrics/recall/add_3*
T0*
_output_shapes
: 
_
metrics/recall/update_op/eConst*
dtype0*
_output_shapes
: *
valueB
 *    

metrics/recall/update_opSelectmetrics/recall/Greater_1metrics/recall/div_1metrics/recall/update_op/e*
_output_shapes
: *
T0
v
1metrics/prediction/mean/broadcast_weights/weightsConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

Lmetrics/prediction/mean/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Kmetrics/prediction/mean/broadcast_weights/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B : 
Є
Kmetrics/prediction/mean/broadcast_weights/assert_broadcastable/values/shapeShapehead/predictions/logistic*
_output_shapes
:*
T0*
out_type0

Jmetrics/prediction/mean/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
b
Zmetrics/prediction/mean/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
я
9metrics/prediction/mean/broadcast_weights/ones_like/ShapeShapehead/predictions/logistic[^metrics/prediction/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0*
out_type0
л
9metrics/prediction/mean/broadcast_weights/ones_like/ConstConst[^metrics/prediction/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ѕ
3metrics/prediction/mean/broadcast_weights/ones_likeFill9metrics/prediction/mean/broadcast_weights/ones_like/Shape9metrics/prediction/mean/broadcast_weights/ones_like/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ
Ъ
)metrics/prediction/mean/broadcast_weightsMul1metrics/prediction/mean/broadcast_weights/weights3metrics/prediction/mean/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
І
/metrics/prediction/mean/total/Initializer/zerosConst*0
_class&
$"loc:@metrics/prediction/mean/total*
valueB
 *    *
dtype0*
_output_shapes
: 
Г
metrics/prediction/mean/total
VariableV2*
dtype0*
_output_shapes
: *
shared_name *0
_class&
$"loc:@metrics/prediction/mean/total*
	container *
shape: 
њ
$metrics/prediction/mean/total/AssignAssignmetrics/prediction/mean/total/metrics/prediction/mean/total/Initializer/zeros*
use_locking(*
T0*0
_class&
$"loc:@metrics/prediction/mean/total*
validate_shape(*
_output_shapes
: 
 
"metrics/prediction/mean/total/readIdentitymetrics/prediction/mean/total*
T0*0
_class&
$"loc:@metrics/prediction/mean/total*
_output_shapes
: 
І
/metrics/prediction/mean/count/Initializer/zerosConst*0
_class&
$"loc:@metrics/prediction/mean/count*
valueB
 *    *
dtype0*
_output_shapes
: 
Г
metrics/prediction/mean/count
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *0
_class&
$"loc:@metrics/prediction/mean/count*
	container 
њ
$metrics/prediction/mean/count/AssignAssignmetrics/prediction/mean/count/metrics/prediction/mean/count/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*0
_class&
$"loc:@metrics/prediction/mean/count
 
"metrics/prediction/mean/count/readIdentitymetrics/prediction/mean/count*
T0*0
_class&
$"loc:@metrics/prediction/mean/count*
_output_shapes
: 
З
Nmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shapeShape)metrics/prediction/mean/broadcast_weights*
T0*
out_type0*
_output_shapes
:

Mmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B :
І
Mmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shapeShapehead/predictions/logistic*
T0*
out_type0*
_output_shapes
:

Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 

Jmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarEqualLmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar/xMmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 

Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/SwitchSwitchJmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarJmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
п
Xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_tIdentityXmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
н
Xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_fIdentityVmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
а
Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_idIdentityJmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 

Xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1SwitchJmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarWmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0
*]
_classS
QOloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
 
vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqual}metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
В
}metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchLmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rankWmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*_
_classU
SQloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rank*
_output_shapes
: : 
Ж
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchMmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rankWmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0*`
_classV
TRloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank

pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchvmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankvmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityrmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 

rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentitypmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0


qmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityvmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: *
T0

Ъ
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ш
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
Ь
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchMmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shapeWmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*`
_classV
TRloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape
Ј
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchqmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*`
_classV
TRloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape
б
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
Т
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
т
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapemetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
_output_shapes

:*
T0*

index_type0
О
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
ф
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likemetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*

Tidx0*
T0*
N*
_output_shapes

:
Ь
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ю
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes

:
а
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchNmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shapeWmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*a
_classW
USloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
­
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchqmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*a
_classW
USloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
Е
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
set_operationa-b*
validate_indices(*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:
н
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizemetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0*
out_type0
Г
|metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B : 
А
zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqual|metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 

rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchvmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankqmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_class
}{loc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 

ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergermetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
з
Umetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeMergeometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeZmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
Ў
Fmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

Hmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
Д
Hmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_2Const*<
value3B1 B+metrics/prediction/mean/broadcast_weights:0*
dtype0*
_output_shapes
: 

Hmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Є
Hmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_4Const*
dtype0*
_output_shapes
: *,
value#B! Bhead/predictions/logistic:0

Hmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Ў
Smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/SwitchSwitchUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
й
Umetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tIdentityUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch:1*
_output_shapes
: *
T0

з
Umetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fIdentitySmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
и
Tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_idIdentityUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
Б
Qmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOpNoOpV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t
Ё
_metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependencyIdentityUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tR^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOp*
T0
*h
_class^
\Zloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 

Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*<
value3B1 B+metrics/prediction/mean/broadcast_weights:0*
dtype0*
_output_shapes
: 

Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 

Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*,
value#B! Bhead/predictions/logistic:0*
dtype0*
_output_shapes
: 
§
Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
 
Smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/AssertAssertZmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchZmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize

Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchSwitchUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeTmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*h
_class^
\Zloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 

\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchNmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shapeTmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*a
_classW
USloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::

\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchMmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shapeTmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id* 
_output_shapes
::*
T0*`
_classV
TRloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape

\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchJmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarTmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*]
_classS
QOloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
Ѕ
ametrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1IdentityUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fT^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert*
_output_shapes
: *
T0
*h
_class^
\Zloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f
Ы
Rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/MergeMergeametrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1_metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
щ
;metrics/prediction/mean/broadcast_weights_1/ones_like/ShapeShapehead/predictions/logisticS^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
е
;metrics/prediction/mean/broadcast_weights_1/ones_like/ConstConstS^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *  ?
ћ
5metrics/prediction/mean/broadcast_weights_1/ones_likeFill;metrics/prediction/mean/broadcast_weights_1/ones_like/Shape;metrics/prediction/mean/broadcast_weights_1/ones_like/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ
Ц
+metrics/prediction/mean/broadcast_weights_1Mul)metrics/prediction/mean/broadcast_weights5metrics/prediction/mean/broadcast_weights_1/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ

metrics/prediction/mean/MulMulhead/predictions/logistic+metrics/prediction/mean/broadcast_weights_1*
T0*'
_output_shapes
:џџџџџџџџџ
n
metrics/prediction/mean/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
Ќ
metrics/prediction/mean/SumSum+metrics/prediction/mean/broadcast_weights_1metrics/prediction/mean/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
p
metrics/prediction/mean/Const_1Const*
dtype0*
_output_shapes
:*
valueB"       
 
metrics/prediction/mean/Sum_1Summetrics/prediction/mean/Mulmetrics/prediction/mean/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
в
!metrics/prediction/mean/AssignAdd	AssignAddmetrics/prediction/mean/totalmetrics/prediction/mean/Sum_1*
T0*0
_class&
$"loc:@metrics/prediction/mean/total*
_output_shapes
: *
use_locking( 
№
#metrics/prediction/mean/AssignAdd_1	AssignAddmetrics/prediction/mean/countmetrics/prediction/mean/Sum^metrics/prediction/mean/Mul*
T0*0
_class&
$"loc:@metrics/prediction/mean/count*
_output_shapes
: *
use_locking( 

metrics/prediction/mean/truedivRealDiv"metrics/prediction/mean/total/read"metrics/prediction/mean/count/read*
T0*
_output_shapes
: 
g
"metrics/prediction/mean/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

metrics/prediction/mean/GreaterGreater"metrics/prediction/mean/count/read"metrics/prediction/mean/zeros_like*
_output_shapes
: *
T0
Ў
metrics/prediction/mean/valueSelectmetrics/prediction/mean/Greatermetrics/prediction/mean/truediv"metrics/prediction/mean/zeros_like*
T0*
_output_shapes
: 

!metrics/prediction/mean/truediv_1RealDiv!metrics/prediction/mean/AssignAdd#metrics/prediction/mean/AssignAdd_1*
T0*
_output_shapes
: 
i
$metrics/prediction/mean/zeros_like_1Const*
dtype0*
_output_shapes
: *
valueB
 *    

!metrics/prediction/mean/Greater_1Greater#metrics/prediction/mean/AssignAdd_1$metrics/prediction/mean/zeros_like_1*
_output_shapes
: *
T0
И
!metrics/prediction/mean/update_opSelect!metrics/prediction/mean/Greater_1!metrics/prediction/mean/truediv_1$metrics/prediction/mean/zeros_like_1*
_output_shapes
: *
T0
d
metrics/accuracy_baseline/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

metrics/accuracy_baseline/subSubmetrics/accuracy_baseline/sub/xmetrics/label/mean/value*
_output_shapes
: *
T0

metrics/accuracy_baseline/valueMaximummetrics/label/mean/valuemetrics/accuracy_baseline/sub*
T0*
_output_shapes
: 
f
!metrics/accuracy_baseline/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

metrics/accuracy_baseline/sub_1Sub!metrics/accuracy_baseline/sub_1/xmetrics/label/mean/update_op*
_output_shapes
: *
T0

#metrics/accuracy_baseline/update_opMaximummetrics/label/mean/update_opmetrics/accuracy_baseline/sub_1*
T0*
_output_shapes
: 
j
%metrics/auc/broadcast_weights/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

@metrics/auc/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

?metrics/auc/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

?metrics/auc/broadcast_weights/assert_broadcastable/values/shapeShapehead/predictions/logistic*
_output_shapes
:*
T0*
out_type0

>metrics/auc/broadcast_weights/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
V
Nmetrics/auc/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
з
-metrics/auc/broadcast_weights/ones_like/ShapeShapehead/predictions/logisticO^metrics/auc/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
У
-metrics/auc/broadcast_weights/ones_like/ConstConstO^metrics/auc/broadcast_weights/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  ?
б
'metrics/auc/broadcast_weights/ones_likeFill-metrics/auc/broadcast_weights/ones_like/Shape-metrics/auc/broadcast_weights/ones_like/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ
І
metrics/auc/broadcast_weightsMul%metrics/auc/broadcast_weights/weights'metrics/auc/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
W
metrics/auc/Cast/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 

-metrics/auc/assert_greater_equal/GreaterEqualGreaterEqualhead/predictions/logisticmetrics/auc/Cast/x*'
_output_shapes
:џџџџџџџџџ*
T0
w
&metrics/auc/assert_greater_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
З
$metrics/auc/assert_greater_equal/AllAll-metrics/auc/assert_greater_equal/GreaterEqual&metrics/auc/assert_greater_equal/Const*
_output_shapes
: *
	keep_dims( *

Tidx0

-metrics/auc/assert_greater_equal/Assert/ConstConst*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 
Н
/metrics/auc/assert_greater_equal/Assert/Const_1Const*
dtype0*
_output_shapes
: *^
valueUBS BMCondition x >= y did not hold element-wise:x (head/predictions/logistic:0) = 

/metrics/auc/assert_greater_equal/Assert/Const_2Const*,
value#B! By (metrics/auc/Cast/x:0) = *
dtype0*
_output_shapes
: 
Г
:metrics/auc/assert_greater_equal/Assert/AssertGuard/SwitchSwitch$metrics/auc/assert_greater_equal/All$metrics/auc/assert_greater_equal/All*
T0
*
_output_shapes
: : 
Ї
<metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_tIdentity<metrics/auc/assert_greater_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Ѕ
<metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_fIdentity:metrics/auc/assert_greater_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 

;metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_idIdentity$metrics/auc/assert_greater_equal/All*
_output_shapes
: *
T0


8metrics/auc/assert_greater_equal/Assert/AssertGuard/NoOpNoOp=^metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_t
Н
Fmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependencyIdentity<metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_t9^metrics/auc/assert_greater_equal/Assert/AssertGuard/NoOp*
_output_shapes
: *
T0
*O
_classE
CAloc:@metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_t
о
Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_0Const=^metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 

Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1Const=^metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f*^
valueUBS BMCondition x >= y did not hold element-wise:x (head/predictions/logistic:0) = *
dtype0*
_output_shapes
: 
м
Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_3Const=^metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f*
dtype0*
_output_shapes
: *,
value#B! By (metrics/auc/Cast/x:0) = 
ћ
:metrics/auc/assert_greater_equal/Assert/AssertGuard/AssertAssertAmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/SwitchAmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_0Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_3Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2*
T	
2*
	summarize

Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/SwitchSwitch$metrics/auc/assert_greater_equal/All;metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id*
T0
*7
_class-
+)loc:@metrics/auc/assert_greater_equal/All*
_output_shapes
: : 

Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1Switchhead/predictions/logistic;metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*
T0*,
_class"
 loc:@head/predictions/logistic
ш
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2Switchmetrics/auc/Cast/x;metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id*
T0*%
_class
loc:@metrics/auc/Cast/x*
_output_shapes
: : 
С
Hmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependency_1Identity<metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f;^metrics/auc/assert_greater_equal/Assert/AssertGuard/Assert*
_output_shapes
: *
T0
*O
_classE
CAloc:@metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f

9metrics/auc/assert_greater_equal/Assert/AssertGuard/MergeMergeHmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependency_1Fmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
Y
metrics/auc/Cast_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

'metrics/auc/assert_less_equal/LessEqual	LessEqualhead/predictions/logisticmetrics/auc/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ
t
#metrics/auc/assert_less_equal/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
Ћ
!metrics/auc/assert_less_equal/AllAll'metrics/auc/assert_less_equal/LessEqual#metrics/auc/assert_less_equal/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 

*metrics/auc/assert_less_equal/Assert/ConstConst*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 
К
,metrics/auc/assert_less_equal/Assert/Const_1Const*^
valueUBS BMCondition x <= y did not hold element-wise:x (head/predictions/logistic:0) = *
dtype0*
_output_shapes
: 

,metrics/auc/assert_less_equal/Assert/Const_2Const*
dtype0*
_output_shapes
: *.
value%B# By (metrics/auc/Cast_1/x:0) = 
Њ
7metrics/auc/assert_less_equal/Assert/AssertGuard/SwitchSwitch!metrics/auc/assert_less_equal/All!metrics/auc/assert_less_equal/All*
T0
*
_output_shapes
: : 
Ё
9metrics/auc/assert_less_equal/Assert/AssertGuard/switch_tIdentity9metrics/auc/assert_less_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 

9metrics/auc/assert_less_equal/Assert/AssertGuard/switch_fIdentity7metrics/auc/assert_less_equal/Assert/AssertGuard/Switch*
_output_shapes
: *
T0


8metrics/auc/assert_less_equal/Assert/AssertGuard/pred_idIdentity!metrics/auc/assert_less_equal/All*
T0
*
_output_shapes
: 
y
5metrics/auc/assert_less_equal/Assert/AssertGuard/NoOpNoOp:^metrics/auc/assert_less_equal/Assert/AssertGuard/switch_t
Б
Cmetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependencyIdentity9metrics/auc/assert_less_equal/Assert/AssertGuard/switch_t6^metrics/auc/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*L
_classB
@>loc:@metrics/auc/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
и
>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_0Const:^metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 

>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_1Const:^metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f*^
valueUBS BMCondition x <= y did not hold element-wise:x (head/predictions/logistic:0) = *
dtype0*
_output_shapes
: 
и
>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_3Const:^metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f*.
value%B# By (metrics/auc/Cast_1/x:0) = *
dtype0*
_output_shapes
: 
ц
7metrics/auc/assert_less_equal/Assert/AssertGuard/AssertAssert>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_0>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_1@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_3@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2*
T	
2*
	summarize
ў
>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch!metrics/auc/assert_less_equal/All8metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id*
T0
*4
_class*
(&loc:@metrics/auc/assert_less_equal/All*
_output_shapes
: : 

@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switchhead/predictions/logistic8metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id*
T0*,
_class"
 loc:@head/predictions/logistic*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
ц
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2Switchmetrics/auc/Cast_1/x8metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id*
_output_shapes
: : *
T0*'
_class
loc:@metrics/auc/Cast_1/x
Е
Emetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependency_1Identity9metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f8^metrics/auc/assert_less_equal/Assert/AssertGuard/Assert*
T0
*L
_classB
@>loc:@metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
ї
6metrics/auc/assert_less_equal/Assert/AssertGuard/MergeMergeEmetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependency_1Cmetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
ќ
metrics/auc/Cast_2Casthead/assert_range/Identity:^metrics/auc/assert_greater_equal/Assert/AssertGuard/Merge7^metrics/auc/assert_less_equal/Assert/AssertGuard/Merge*
Truncate( *'
_output_shapes
:џџџџџџџџџ*

DstT0
*

SrcT0
j
metrics/auc/Reshape/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

metrics/auc/ReshapeReshapehead/predictions/logisticmetrics/auc/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
l
metrics/auc/Reshape_1/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:

metrics/auc/Reshape_1Reshapemetrics/auc/Cast_2metrics/auc/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:џџџџџџџџџ
d
metrics/auc/ShapeShapemetrics/auc/Reshape*
T0*
out_type0*
_output_shapes
:
i
metrics/auc/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!metrics/auc/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
k
!metrics/auc/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Е
metrics/auc/strided_sliceStridedSlicemetrics/auc/Shapemetrics/auc/strided_slice/stack!metrics/auc/strided_slice/stack_1!metrics/auc/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 

metrics/auc/ConstConst*Й
valueЏBЌШ" ПжГЯЉЄ;ЯЉ$<Зўv<ЯЉЄ<CдЭ<Зўі<=ЯЉ$=	?9=CдM=}ib=Зўv=јЩ==2_=ЯЉЄ=lєЎ=	?Й=ІУ=CдЭ=ри=}iт=Дь=Зўі=ЊЄ >јЩ>Gя
>>ф9>2_>>ЯЉ$>Я)>lє.>Л4>	?9>Wd>>ІC>єЎH>CдM>љR>рX>.D]>}ib>Ыg>Дl>hйq>Зўv>$|>ЊЄ>Q7>јЩ> \>Gя>ю>><Ї>ф9>Ь>2_>йё>>(Ђ>ЯЉЄ>v<Ї>ЯЉ>ХaЌ>lєЎ>Б>ЛД>bЌЖ>	?Й>АбЛ>WdО>џіР>ІУ>MЦ>єЎШ>AЫ>CдЭ>ъfа>љв>9е>ри>Бк>.Dн>жжп>}iт>$ќф>Ыч>r!ъ>Дь>СFя>hйё>lє>Зўі>^љ>$ќ>ЌЖў>ЊЄ ?§э?Q7?Ѕ?јЩ?L? \?ѓЅ	?Gя
?8?ю?BЫ??щ]?<Ї?№?ф9?7?Ь?п?2_?Ј?йё?-;??дЭ ?("?{`#?ЯЉ$?#ѓ%?v<'?Ъ(?Я)?q+?Хa,?Ћ-?lє.?Р=0?1?gа2?Л4?c5?bЌ6?Еѕ7?	?9?]:?Аб;?=?Wd>?Ћ­??џі@?R@B?ІC?њвD?MF?ЁeG?єЎH?HјI?AK?яL?CдM?O?ъfP?>АQ?љR?хBT?9U?еV?рX?3hY?БZ?лњ[?.D]?^?жж_?) a?}ib?аВc?$ќd?xEf?Ыg?иh?r!j?Цjk?Дl?m§m?СFo?p?hйq?М"s?lt?cЕu?Зўv?
Hx?^y?Вкz?$|?Ym}?ЌЖ~? ?*
dtype0*
_output_shapes	
:Ш
d
metrics/auc/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:

metrics/auc/ExpandDims
ExpandDimsmetrics/auc/Constmetrics/auc/ExpandDims/dim*
_output_shapes
:	Ш*

Tdim0*
T0
U
metrics/auc/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 

metrics/auc/stackPackmetrics/auc/stack/0metrics/auc/strided_slice*
T0*

axis *
N*
_output_shapes
:

metrics/auc/TileTilemetrics/auc/ExpandDimsmetrics/auc/stack*
T0*(
_output_shapes
:Шџџџџџџџџџ*

Tmultiples0
X
metrics/auc/transpose/RankRankmetrics/auc/Reshape*
T0*
_output_shapes
: 
]
metrics/auc/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
z
metrics/auc/transpose/subSubmetrics/auc/transpose/Rankmetrics/auc/transpose/sub/y*
T0*
_output_shapes
: 
c
!metrics/auc/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
c
!metrics/auc/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
З
metrics/auc/transpose/RangeRange!metrics/auc/transpose/Range/startmetrics/auc/transpose/Rank!metrics/auc/transpose/Range/delta*#
_output_shapes
:џџџџџџџџџ*

Tidx0

metrics/auc/transpose/sub_1Submetrics/auc/transpose/submetrics/auc/transpose/Range*
T0*#
_output_shapes
:џџџџџџџџџ

metrics/auc/transpose	Transposemetrics/auc/Reshapemetrics/auc/transpose/sub_1*
Tperm0*
T0*'
_output_shapes
:џџџџџџџџџ
m
metrics/auc/Tile_1/multiplesConst*
valueB"Ш      *
dtype0*
_output_shapes
:

metrics/auc/Tile_1Tilemetrics/auc/transposemetrics/auc/Tile_1/multiples*(
_output_shapes
:Шџџџџџџџџџ*

Tmultiples0*
T0
w
metrics/auc/GreaterGreatermetrics/auc/Tile_1metrics/auc/Tile*
T0*(
_output_shapes
:Шџџџџџџџџџ
c
metrics/auc/LogicalNot
LogicalNotmetrics/auc/Greater*(
_output_shapes
:Шџџџџџџџџџ
m
metrics/auc/Tile_2/multiplesConst*
dtype0*
_output_shapes
:*
valueB"Ш      

metrics/auc/Tile_2Tilemetrics/auc/Reshape_1metrics/auc/Tile_2/multiples*(
_output_shapes
:Шџџџџџџџџџ*

Tmultiples0*
T0

d
metrics/auc/LogicalNot_1
LogicalNotmetrics/auc/Tile_2*(
_output_shapes
:Шџџџџџџџџџ

Bmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shapeShapemetrics/auc/broadcast_weights*
T0*
out_type0*
_output_shapes
:

Ametrics/auc/broadcast_weights_1/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B :

Ametrics/auc/broadcast_weights_1/assert_broadcastable/values/shapeShapehead/predictions/logistic*
T0*
out_type0*
_output_shapes
:

@metrics/auc/broadcast_weights_1/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 

@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
э
>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalarEqual@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar/xAmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
ї
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/SwitchSwitch>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
Ч
Lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_tIdentityLmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
Х
Lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_fIdentityJmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
И
Kmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_idIdentity>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
й
Lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1Switch>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalarKmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0
*Q
_classG
ECloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
ќ
jmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualqmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchsmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 

qmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitch@metrics/auc/broadcast_weights_1/assert_broadcastable/values/rankKmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*S
_classI
GEloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/values/rank*
_output_shapes
: : 

smetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchAmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/rankKmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0*T
_classJ
HFloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/weights/rank
щ
dmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchjmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankjmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
ћ
fmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityfmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 
љ
fmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentitydmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0

ў
emetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityjmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
Б
}metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Т
ymetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1}metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:

metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchAmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shapeKmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*T
_classJ
HFloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/values/shape
ј
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchemetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*T
_classJ
HFloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/values/shape
И
~metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
Љ
~metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
Л
xmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFill~metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape~metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
Ѕ
zmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
А
umetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2ymetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsxmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likezmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0
Г
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
Ш
{metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
_output_shapes

:*

Tdim0*
T0
 
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchBmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shapeKmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*U
_classK
IGloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
§
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchemetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*U
_classK
IGloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape

metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation{metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1umetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b*
validate_indices(*
T0
Ф
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizemetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 

pmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 

nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualpmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
_output_shapes
: *
T0
х
fmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchjmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankemetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
_output_shapes
: : *
T0
*}
_classs
qoloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank
№
cmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergefmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
Г
Imetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeMergecmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeNmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
Ђ
:metrics/auc/broadcast_weights_1/assert_broadcastable/ConstConst*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.

<metrics/auc/broadcast_weights_1/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

<metrics/auc/broadcast_weights_1/assert_broadcastable/Const_2Const*0
value'B% Bmetrics/auc/broadcast_weights:0*
dtype0*
_output_shapes
: 

<metrics/auc/broadcast_weights_1/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 

<metrics/auc/broadcast_weights_1/assert_broadcastable/Const_4Const*,
value#B! Bhead/predictions/logistic:0*
dtype0*
_output_shapes
: 

<metrics/auc/broadcast_weights_1/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

Gmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/SwitchSwitchImetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeImetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
С
Imetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tIdentityImetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
П
Imetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fIdentityGmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch*
_output_shapes
: *
T0

Р
Hmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_idIdentityImetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 

Emetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOpNoOpJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t
ё
Smetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependencyIdentityImetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tF^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOp*
T0
*\
_classR
PNloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 

Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
щ
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
њ
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*0
value'B% Bmetrics/auc/broadcast_weights:0*
dtype0*
_output_shapes
: 
ш
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
і
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *,
value#B! Bhead/predictions/logistic:0
х
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB B
is_scalar=

Gmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/AssertAssertNmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchNmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
ю
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchSwitchImetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeHmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*\
_classR
PNloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
ъ
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchBmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shapeHmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*U
_classK
IGloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
ш
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchAmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shapeHmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*T
_classJ
HFloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
к
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3Switch>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalarHmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*Q
_classG
ECloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
ѕ
Umetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1IdentityImetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fH^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert*
T0
*\
_classR
PNloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
Ї
Fmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/MergeMergeUmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1Smetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
б
/metrics/auc/broadcast_weights_1/ones_like/ShapeShapehead/predictions/logisticG^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
_output_shapes
:*
T0*
out_type0
Н
/metrics/auc/broadcast_weights_1/ones_like/ConstConstG^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *  ?
з
)metrics/auc/broadcast_weights_1/ones_likeFill/metrics/auc/broadcast_weights_1/ones_like/Shape/metrics/auc/broadcast_weights_1/ones_like/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ
Ђ
metrics/auc/broadcast_weights_1Mulmetrics/auc/broadcast_weights)metrics/auc/broadcast_weights_1/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
l
metrics/auc/Reshape_2/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:

metrics/auc/Reshape_2Reshapemetrics/auc/broadcast_weights_1metrics/auc/Reshape_2/shape*'
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
m
metrics/auc/Tile_3/multiplesConst*
valueB"Ш      *
dtype0*
_output_shapes
:

metrics/auc/Tile_3Tilemetrics/auc/Reshape_2metrics/auc/Tile_3/multiples*

Tmultiples0*
T0*(
_output_shapes
:Шџџџџџџџџџ
Њ
,metrics/auc/true_positives/Initializer/zerosConst*-
_class#
!loc:@metrics/auc/true_positives*
valueBШ*    *
dtype0*
_output_shapes	
:Ш
З
metrics/auc/true_positives
VariableV2*
shared_name *-
_class#
!loc:@metrics/auc/true_positives*
	container *
shape:Ш*
dtype0*
_output_shapes	
:Ш
ѓ
!metrics/auc/true_positives/AssignAssignmetrics/auc/true_positives,metrics/auc/true_positives/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@metrics/auc/true_positives*
validate_shape(*
_output_shapes	
:Ш

metrics/auc/true_positives/readIdentitymetrics/auc/true_positives*
_output_shapes	
:Ш*
T0*-
_class#
!loc:@metrics/auc/true_positives
w
metrics/auc/LogicalAnd
LogicalAndmetrics/auc/Tile_2metrics/auc/Greater*(
_output_shapes
:Шџџџџџџџџџ

metrics/auc/ToFloatCastmetrics/auc/LogicalAnd*
Truncate( *(
_output_shapes
:Шџџџџџџџџџ*

DstT0*

SrcT0

r
metrics/auc/mulMulmetrics/auc/ToFloatmetrics/auc/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
c
!metrics/auc/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

metrics/auc/SumSummetrics/auc/mul!metrics/auc/Sum/reduction_indices*
T0*
_output_shapes	
:Ш*
	keep_dims( *

Tidx0
З
metrics/auc/AssignAdd	AssignAddmetrics/auc/true_positivesmetrics/auc/Sum*
_output_shapes	
:Ш*
use_locking( *
T0*-
_class#
!loc:@metrics/auc/true_positives
Ќ
-metrics/auc/false_negatives/Initializer/zerosConst*
dtype0*
_output_shapes	
:Ш*.
_class$
" loc:@metrics/auc/false_negatives*
valueBШ*    
Й
metrics/auc/false_negatives
VariableV2*
dtype0*
_output_shapes	
:Ш*
shared_name *.
_class$
" loc:@metrics/auc/false_negatives*
	container *
shape:Ш
ї
"metrics/auc/false_negatives/AssignAssignmetrics/auc/false_negatives-metrics/auc/false_negatives/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@metrics/auc/false_negatives*
validate_shape(*
_output_shapes	
:Ш

 metrics/auc/false_negatives/readIdentitymetrics/auc/false_negatives*
T0*.
_class$
" loc:@metrics/auc/false_negatives*
_output_shapes	
:Ш
|
metrics/auc/LogicalAnd_1
LogicalAndmetrics/auc/Tile_2metrics/auc/LogicalNot*(
_output_shapes
:Шџџџџџџџџџ

metrics/auc/ToFloat_1Castmetrics/auc/LogicalAnd_1*
Truncate( *(
_output_shapes
:Шџџџџџџџџџ*

DstT0*

SrcT0

v
metrics/auc/mul_1Mulmetrics/auc/ToFloat_1metrics/auc/Tile_3*(
_output_shapes
:Шџџџџџџџџџ*
T0
e
#metrics/auc/Sum_1/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :

metrics/auc/Sum_1Summetrics/auc/mul_1#metrics/auc/Sum_1/reduction_indices*
_output_shapes	
:Ш*
	keep_dims( *

Tidx0*
T0
Н
metrics/auc/AssignAdd_1	AssignAddmetrics/auc/false_negativesmetrics/auc/Sum_1*
use_locking( *
T0*.
_class$
" loc:@metrics/auc/false_negatives*
_output_shapes	
:Ш
Њ
,metrics/auc/true_negatives/Initializer/zerosConst*-
_class#
!loc:@metrics/auc/true_negatives*
valueBШ*    *
dtype0*
_output_shapes	
:Ш
З
metrics/auc/true_negatives
VariableV2*
	container *
shape:Ш*
dtype0*
_output_shapes	
:Ш*
shared_name *-
_class#
!loc:@metrics/auc/true_negatives
ѓ
!metrics/auc/true_negatives/AssignAssignmetrics/auc/true_negatives,metrics/auc/true_negatives/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@metrics/auc/true_negatives*
validate_shape(*
_output_shapes	
:Ш

metrics/auc/true_negatives/readIdentitymetrics/auc/true_negatives*
T0*-
_class#
!loc:@metrics/auc/true_negatives*
_output_shapes	
:Ш

metrics/auc/LogicalAnd_2
LogicalAndmetrics/auc/LogicalNot_1metrics/auc/LogicalNot*(
_output_shapes
:Шџџџџџџџџџ

metrics/auc/ToFloat_2Castmetrics/auc/LogicalAnd_2*

SrcT0
*
Truncate( *(
_output_shapes
:Шџџџџџџџџџ*

DstT0
v
metrics/auc/mul_2Mulmetrics/auc/ToFloat_2metrics/auc/Tile_3*(
_output_shapes
:Шџџџџџџџџџ*
T0
e
#metrics/auc/Sum_2/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :

metrics/auc/Sum_2Summetrics/auc/mul_2#metrics/auc/Sum_2/reduction_indices*
	keep_dims( *

Tidx0*
T0*
_output_shapes	
:Ш
Л
metrics/auc/AssignAdd_2	AssignAddmetrics/auc/true_negativesmetrics/auc/Sum_2*
_output_shapes	
:Ш*
use_locking( *
T0*-
_class#
!loc:@metrics/auc/true_negatives
Ќ
-metrics/auc/false_positives/Initializer/zerosConst*
dtype0*
_output_shapes	
:Ш*.
_class$
" loc:@metrics/auc/false_positives*
valueBШ*    
Й
metrics/auc/false_positives
VariableV2*
dtype0*
_output_shapes	
:Ш*
shared_name *.
_class$
" loc:@metrics/auc/false_positives*
	container *
shape:Ш
ї
"metrics/auc/false_positives/AssignAssignmetrics/auc/false_positives-metrics/auc/false_positives/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@metrics/auc/false_positives*
validate_shape(*
_output_shapes	
:Ш

 metrics/auc/false_positives/readIdentitymetrics/auc/false_positives*
T0*.
_class$
" loc:@metrics/auc/false_positives*
_output_shapes	
:Ш

metrics/auc/LogicalAnd_3
LogicalAndmetrics/auc/LogicalNot_1metrics/auc/Greater*(
_output_shapes
:Шџџџџџџџџџ

metrics/auc/ToFloat_3Castmetrics/auc/LogicalAnd_3*

SrcT0
*
Truncate( *(
_output_shapes
:Шџџџџџџџџџ*

DstT0
v
metrics/auc/mul_3Mulmetrics/auc/ToFloat_3metrics/auc/Tile_3*(
_output_shapes
:Шџџџџџџџџџ*
T0
e
#metrics/auc/Sum_3/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

metrics/auc/Sum_3Summetrics/auc/mul_3#metrics/auc/Sum_3/reduction_indices*
T0*
_output_shapes	
:Ш*
	keep_dims( *

Tidx0
Н
metrics/auc/AssignAdd_3	AssignAddmetrics/auc/false_positivesmetrics/auc/Sum_3*
use_locking( *
T0*.
_class$
" loc:@metrics/auc/false_positives*
_output_shapes	
:Ш
V
metrics/auc/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *Н75
p
metrics/auc/addAddmetrics/auc/true_positives/readmetrics/auc/add/y*
T0*
_output_shapes	
:Ш

metrics/auc/add_1Addmetrics/auc/true_positives/read metrics/auc/false_negatives/read*
_output_shapes	
:Ш*
T0
X
metrics/auc/add_2/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 
f
metrics/auc/add_2Addmetrics/auc/add_1metrics/auc/add_2/y*
T0*
_output_shapes	
:Ш
d
metrics/auc/divRealDivmetrics/auc/addmetrics/auc/add_2*
T0*
_output_shapes	
:Ш

metrics/auc/add_3Add metrics/auc/false_positives/readmetrics/auc/true_negatives/read*
T0*
_output_shapes	
:Ш
X
metrics/auc/add_4/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 
f
metrics/auc/add_4Addmetrics/auc/add_3metrics/auc/add_4/y*
_output_shapes	
:Ш*
T0
w
metrics/auc/div_1RealDiv metrics/auc/false_positives/readmetrics/auc/add_4*
T0*
_output_shapes	
:Ш
k
!metrics/auc/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
#metrics/auc/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:Ч
m
#metrics/auc/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Т
metrics/auc/strided_slice_1StridedSlicemetrics/auc/div_1!metrics/auc/strided_slice_1/stack#metrics/auc/strided_slice_1/stack_1#metrics/auc/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes	
:Ч
k
!metrics/auc/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_2/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Т
metrics/auc/strided_slice_2StridedSlicemetrics/auc/div_1!metrics/auc/strided_slice_2/stack#metrics/auc/strided_slice_2/stack_1#metrics/auc/strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes	
:Ч
v
metrics/auc/subSubmetrics/auc/strided_slice_1metrics/auc/strided_slice_2*
T0*
_output_shapes	
:Ч
k
!metrics/auc/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
#metrics/auc/strided_slice_3/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Р
metrics/auc/strided_slice_3StridedSlicemetrics/auc/div!metrics/auc/strided_slice_3/stack#metrics/auc/strided_slice_3/stack_1#metrics/auc/strided_slice_3/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes	
:Ч*
T0*
Index0
k
!metrics/auc/strided_slice_4/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_4/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Р
metrics/auc/strided_slice_4StridedSlicemetrics/auc/div!metrics/auc/strided_slice_4/stack#metrics/auc/strided_slice_4/stack_1#metrics/auc/strided_slice_4/stack_2*
end_mask*
_output_shapes	
:Ч*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask 
x
metrics/auc/add_5Addmetrics/auc/strided_slice_3metrics/auc/strided_slice_4*
_output_shapes	
:Ч*
T0
Z
metrics/auc/truediv/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
n
metrics/auc/truedivRealDivmetrics/auc/add_5metrics/auc/truediv/y*
T0*
_output_shapes	
:Ч
d
metrics/auc/Mul_4Mulmetrics/auc/submetrics/auc/truediv*
_output_shapes	
:Ч*
T0
]
metrics/auc/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
~
metrics/auc/valueSummetrics/auc/Mul_4metrics/auc/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
X
metrics/auc/add_6/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 
j
metrics/auc/add_6Addmetrics/auc/AssignAddmetrics/auc/add_6/y*
T0*
_output_shapes	
:Ш
n
metrics/auc/add_7Addmetrics/auc/AssignAddmetrics/auc/AssignAdd_1*
T0*
_output_shapes	
:Ш
X
metrics/auc/add_8/yConst*
dtype0*
_output_shapes
: *
valueB
 *Н75
f
metrics/auc/add_8Addmetrics/auc/add_7metrics/auc/add_8/y*
T0*
_output_shapes	
:Ш
h
metrics/auc/div_2RealDivmetrics/auc/add_6metrics/auc/add_8*
T0*
_output_shapes	
:Ш
p
metrics/auc/add_9Addmetrics/auc/AssignAdd_3metrics/auc/AssignAdd_2*
_output_shapes	
:Ш*
T0
Y
metrics/auc/add_10/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 
h
metrics/auc/add_10Addmetrics/auc/add_9metrics/auc/add_10/y*
_output_shapes	
:Ш*
T0
o
metrics/auc/div_3RealDivmetrics/auc/AssignAdd_3metrics/auc/add_10*
_output_shapes	
:Ш*
T0
k
!metrics/auc/strided_slice_5/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
#metrics/auc/strided_slice_5/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Т
metrics/auc/strided_slice_5StridedSlicemetrics/auc/div_3!metrics/auc/strided_slice_5/stack#metrics/auc/strided_slice_5/stack_1#metrics/auc/strided_slice_5/stack_2*
end_mask *
_output_shapes	
:Ч*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask 
k
!metrics/auc/strided_slice_6/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_6/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Т
metrics/auc/strided_slice_6StridedSlicemetrics/auc/div_3!metrics/auc/strided_slice_6/stack#metrics/auc/strided_slice_6/stack_1#metrics/auc/strided_slice_6/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes	
:Ч*
T0*
Index0
x
metrics/auc/sub_1Submetrics/auc/strided_slice_5metrics/auc/strided_slice_6*
T0*
_output_shapes	
:Ч
k
!metrics/auc/strided_slice_7/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
#metrics/auc/strided_slice_7/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Т
metrics/auc/strided_slice_7StridedSlicemetrics/auc/div_2!metrics/auc/strided_slice_7/stack#metrics/auc/strided_slice_7/stack_1#metrics/auc/strided_slice_7/stack_2*
end_mask *
_output_shapes	
:Ч*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
k
!metrics/auc/strided_slice_8/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_8/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_8/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Т
metrics/auc/strided_slice_8StridedSlicemetrics/auc/div_2!metrics/auc/strided_slice_8/stack#metrics/auc/strided_slice_8/stack_1#metrics/auc/strided_slice_8/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes	
:Ч
y
metrics/auc/add_11Addmetrics/auc/strided_slice_7metrics/auc/strided_slice_8*
T0*
_output_shapes	
:Ч
\
metrics/auc/truediv_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
s
metrics/auc/truediv_1RealDivmetrics/auc/add_11metrics/auc/truediv_1/y*
T0*
_output_shapes	
:Ч
h
metrics/auc/Mul_5Mulmetrics/auc/sub_1metrics/auc/truediv_1*
_output_shapes	
:Ч*
T0
]
metrics/auc/Const_2Const*
dtype0*
_output_shapes
:*
valueB: 

metrics/auc/update_opSummetrics/auc/Mul_5metrics/auc/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
{
6metrics/auc_precision_recall/broadcast_weights/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Qmetrics/auc_precision_recall/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Pmetrics/auc_precision_recall/broadcast_weights/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B : 
Љ
Pmetrics/auc_precision_recall/broadcast_weights/assert_broadcastable/values/shapeShapehead/predictions/logistic*
T0*
out_type0*
_output_shapes
:

Ometrics/auc_precision_recall/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
g
_metrics/auc_precision_recall/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
љ
>metrics/auc_precision_recall/broadcast_weights/ones_like/ShapeShapehead/predictions/logistic`^metrics/auc_precision_recall/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
х
>metrics/auc_precision_recall/broadcast_weights/ones_like/ConstConst`^metrics/auc_precision_recall/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

8metrics/auc_precision_recall/broadcast_weights/ones_likeFill>metrics/auc_precision_recall/broadcast_weights/ones_like/Shape>metrics/auc_precision_recall/broadcast_weights/ones_like/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ
й
.metrics/auc_precision_recall/broadcast_weightsMul6metrics/auc_precision_recall/broadcast_weights/weights8metrics/auc_precision_recall/broadcast_weights/ones_like*'
_output_shapes
:џџџџџџџџџ*
T0
h
#metrics/auc_precision_recall/Cast/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Р
>metrics/auc_precision_recall/assert_greater_equal/GreaterEqualGreaterEqualhead/predictions/logistic#metrics/auc_precision_recall/Cast/x*
T0*'
_output_shapes
:џџџџџџџџџ

7metrics/auc_precision_recall/assert_greater_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
ъ
5metrics/auc_precision_recall/assert_greater_equal/AllAll>metrics/auc_precision_recall/assert_greater_equal/GreaterEqual7metrics/auc_precision_recall/assert_greater_equal/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 

>metrics/auc_precision_recall/assert_greater_equal/Assert/ConstConst*
dtype0*
_output_shapes
: *.
value%B# Bpredictions must be in [0, 1]
Ю
@metrics/auc_precision_recall/assert_greater_equal/Assert/Const_1Const*^
valueUBS BMCondition x >= y did not hold element-wise:x (head/predictions/logistic:0) = *
dtype0*
_output_shapes
: 
­
@metrics/auc_precision_recall/assert_greater_equal/Assert/Const_2Const*
dtype0*
_output_shapes
: *=
value4B2 B,y (metrics/auc_precision_recall/Cast/x:0) = 
ц
Kmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/SwitchSwitch5metrics/auc_precision_recall/assert_greater_equal/All5metrics/auc_precision_recall/assert_greater_equal/All*
T0
*
_output_shapes
: : 
Щ
Mmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_tIdentityMmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Ч
Mmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_fIdentityKmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 
А
Lmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_idIdentity5metrics/auc_precision_recall/assert_greater_equal/All*
T0
*
_output_shapes
: 
Ё
Imetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/NoOpNoOpN^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_t

Wmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependencyIdentityMmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_tJ^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*`
_classV
TRloc:@metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 

Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_0ConstN^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 
А
Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_1ConstN^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f*^
valueUBS BMCondition x >= y did not hold element-wise:x (head/predictions/logistic:0) = *
dtype0*
_output_shapes
: 

Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_3ConstN^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f*=
value4B2 B,y (metrics/auc_precision_recall/Cast/x:0) = *
dtype0*
_output_shapes
: 
ђ
Kmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/AssertAssertRmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/SwitchRmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_0Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_1Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_3Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2*
T	
2*
	summarize
Ю
Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/SwitchSwitch5metrics/auc_precision_recall/assert_greater_equal/AllLmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id*
_output_shapes
: : *
T0
*H
_class>
<:loc:@metrics/auc_precision_recall/assert_greater_equal/All
К
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1Switchhead/predictions/logisticLmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*
T0*,
_class"
 loc:@head/predictions/logistic
Ќ
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2Switch#metrics/auc_precision_recall/Cast/xLmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id*
T0*6
_class,
*(loc:@metrics/auc_precision_recall/Cast/x*
_output_shapes
: : 

Ymetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependency_1IdentityMmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_fL^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert*
T0
*`
_classV
TRloc:@metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
Г
Jmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/MergeMergeYmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependency_1Wmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependency*
N*
_output_shapes
: : *
T0

j
%metrics/auc_precision_recall/Cast_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Й
8metrics/auc_precision_recall/assert_less_equal/LessEqual	LessEqualhead/predictions/logistic%metrics/auc_precision_recall/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ

4metrics/auc_precision_recall/assert_less_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
о
2metrics/auc_precision_recall/assert_less_equal/AllAll8metrics/auc_precision_recall/assert_less_equal/LessEqual4metrics/auc_precision_recall/assert_less_equal/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 

;metrics/auc_precision_recall/assert_less_equal/Assert/ConstConst*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 
Ы
=metrics/auc_precision_recall/assert_less_equal/Assert/Const_1Const*^
valueUBS BMCondition x <= y did not hold element-wise:x (head/predictions/logistic:0) = *
dtype0*
_output_shapes
: 
Ќ
=metrics/auc_precision_recall/assert_less_equal/Assert/Const_2Const*?
value6B4 B.y (metrics/auc_precision_recall/Cast_1/x:0) = *
dtype0*
_output_shapes
: 
н
Hmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/SwitchSwitch2metrics/auc_precision_recall/assert_less_equal/All2metrics/auc_precision_recall/assert_less_equal/All*
T0
*
_output_shapes
: : 
У
Jmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_tIdentityJmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
С
Jmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_fIdentityHmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 
Њ
Imetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_idIdentity2metrics/auc_precision_recall/assert_less_equal/All*
T0
*
_output_shapes
: 

Fmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/NoOpNoOpK^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_t
ѕ
Tmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependencyIdentityJmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_tG^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*]
_classS
QOloc:@metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
њ
Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_0ConstK^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 
Њ
Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_1ConstK^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f*^
valueUBS BMCondition x <= y did not hold element-wise:x (head/predictions/logistic:0) = *
dtype0*
_output_shapes
: 

Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_3ConstK^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f*?
value6B4 B.y (metrics/auc_precision_recall/Cast_1/x:0) = *
dtype0*
_output_shapes
: 
н
Hmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/AssertAssertOmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/SwitchOmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_0Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_1Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_3Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_2*
T	
2*
	summarize
Т
Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch2metrics/auc_precision_recall/assert_less_equal/AllImetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id*
T0
*E
_class;
97loc:@metrics/auc_precision_recall/assert_less_equal/All*
_output_shapes
: : 
Д
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switchhead/predictions/logisticImetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id*
T0*,
_class"
 loc:@head/predictions/logistic*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
Њ
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_2Switch%metrics/auc_precision_recall/Cast_1/xImetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id*
T0*8
_class.
,*loc:@metrics/auc_precision_recall/Cast_1/x*
_output_shapes
: : 
љ
Vmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependency_1IdentityJmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_fI^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert*
_output_shapes
: *
T0
*]
_classS
QOloc:@metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f
Њ
Gmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/MergeMergeVmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependency_1Tmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
Џ
#metrics/auc_precision_recall/Cast_2Casthead/assert_range/IdentityK^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/MergeH^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Merge*
Truncate( *'
_output_shapes
:џџџџџџџџџ*

DstT0
*

SrcT0
{
*metrics/auc_precision_recall/Reshape/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
Ж
$metrics/auc_precision_recall/ReshapeReshapehead/predictions/logistic*metrics/auc_precision_recall/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
}
,metrics/auc_precision_recall/Reshape_1/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:
Ф
&metrics/auc_precision_recall/Reshape_1Reshape#metrics/auc_precision_recall/Cast_2,metrics/auc_precision_recall/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:џџџџџџџџџ

"metrics/auc_precision_recall/ShapeShape$metrics/auc_precision_recall/Reshape*
T0*
out_type0*
_output_shapes
:
z
0metrics/auc_precision_recall/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
|
2metrics/auc_precision_recall/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
|
2metrics/auc_precision_recall/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

*metrics/auc_precision_recall/strided_sliceStridedSlice"metrics/auc_precision_recall/Shape0metrics/auc_precision_recall/strided_slice/stack2metrics/auc_precision_recall/strided_slice/stack_12metrics/auc_precision_recall/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask

"metrics/auc_precision_recall/ConstConst*
dtype0*
_output_shapes	
:Ш*Й
valueЏBЌШ" ПжГЯЉЄ;ЯЉ$<Зўv<ЯЉЄ<CдЭ<Зўі<=ЯЉ$=	?9=CдM=}ib=Зўv=јЩ==2_=ЯЉЄ=lєЎ=	?Й=ІУ=CдЭ=ри=}iт=Дь=Зўі=ЊЄ >јЩ>Gя
>>ф9>2_>>ЯЉ$>Я)>lє.>Л4>	?9>Wd>>ІC>єЎH>CдM>љR>рX>.D]>}ib>Ыg>Дl>hйq>Зўv>$|>ЊЄ>Q7>јЩ> \>Gя>ю>><Ї>ф9>Ь>2_>йё>>(Ђ>ЯЉЄ>v<Ї>ЯЉ>ХaЌ>lєЎ>Б>ЛД>bЌЖ>	?Й>АбЛ>WdО>џіР>ІУ>MЦ>єЎШ>AЫ>CдЭ>ъfа>љв>9е>ри>Бк>.Dн>жжп>}iт>$ќф>Ыч>r!ъ>Дь>СFя>hйё>lє>Зўі>^љ>$ќ>ЌЖў>ЊЄ ?§э?Q7?Ѕ?јЩ?L? \?ѓЅ	?Gя
?8?ю?BЫ??щ]?<Ї?№?ф9?7?Ь?п?2_?Ј?йё?-;??дЭ ?("?{`#?ЯЉ$?#ѓ%?v<'?Ъ(?Я)?q+?Хa,?Ћ-?lє.?Р=0?1?gа2?Л4?c5?bЌ6?Еѕ7?	?9?]:?Аб;?=?Wd>?Ћ­??џі@?R@B?ІC?њвD?MF?ЁeG?єЎH?HјI?AK?яL?CдM?O?ъfP?>АQ?љR?хBT?9U?еV?рX?3hY?БZ?лњ[?.D]?^?жж_?) a?}ib?аВc?$ќd?xEf?Ыg?иh?r!j?Цjk?Дl?m§m?СFo?p?hйq?М"s?lt?cЕu?Зўv?
Hx?^y?Вкz?$|?Ym}?ЌЖ~? ?
u
+metrics/auc_precision_recall/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
М
'metrics/auc_precision_recall/ExpandDims
ExpandDims"metrics/auc_precision_recall/Const+metrics/auc_precision_recall/ExpandDims/dim*
T0*
_output_shapes
:	Ш*

Tdim0
f
$metrics/auc_precision_recall/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Ж
"metrics/auc_precision_recall/stackPack$metrics/auc_precision_recall/stack/0*metrics/auc_precision_recall/strided_slice*
T0*

axis *
N*
_output_shapes
:
Л
!metrics/auc_precision_recall/TileTile'metrics/auc_precision_recall/ExpandDims"metrics/auc_precision_recall/stack*

Tmultiples0*
T0*(
_output_shapes
:Шџџџџџџџџџ
z
+metrics/auc_precision_recall/transpose/RankRank$metrics/auc_precision_recall/Reshape*
T0*
_output_shapes
: 
n
,metrics/auc_precision_recall/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
­
*metrics/auc_precision_recall/transpose/subSub+metrics/auc_precision_recall/transpose/Rank,metrics/auc_precision_recall/transpose/sub/y*
T0*
_output_shapes
: 
t
2metrics/auc_precision_recall/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
t
2metrics/auc_precision_recall/transpose/Range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
ћ
,metrics/auc_precision_recall/transpose/RangeRange2metrics/auc_precision_recall/transpose/Range/start+metrics/auc_precision_recall/transpose/Rank2metrics/auc_precision_recall/transpose/Range/delta*#
_output_shapes
:џџџџџџџџџ*

Tidx0
Л
,metrics/auc_precision_recall/transpose/sub_1Sub*metrics/auc_precision_recall/transpose/sub,metrics/auc_precision_recall/transpose/Range*
T0*#
_output_shapes
:џџџџџџџџџ
Ц
&metrics/auc_precision_recall/transpose	Transpose$metrics/auc_precision_recall/Reshape,metrics/auc_precision_recall/transpose/sub_1*
Tperm0*
T0*'
_output_shapes
:џџџџџџџџџ
~
-metrics/auc_precision_recall/Tile_1/multiplesConst*
valueB"Ш      *
dtype0*
_output_shapes
:
Ч
#metrics/auc_precision_recall/Tile_1Tile&metrics/auc_precision_recall/transpose-metrics/auc_precision_recall/Tile_1/multiples*

Tmultiples0*
T0*(
_output_shapes
:Шџџџџџџџџџ
Њ
$metrics/auc_precision_recall/GreaterGreater#metrics/auc_precision_recall/Tile_1!metrics/auc_precision_recall/Tile*
T0*(
_output_shapes
:Шџџџџџџџџџ

'metrics/auc_precision_recall/LogicalNot
LogicalNot$metrics/auc_precision_recall/Greater*(
_output_shapes
:Шџџџџџџџџџ
~
-metrics/auc_precision_recall/Tile_2/multiplesConst*
valueB"Ш      *
dtype0*
_output_shapes
:
Ч
#metrics/auc_precision_recall/Tile_2Tile&metrics/auc_precision_recall/Reshape_1-metrics/auc_precision_recall/Tile_2/multiples*

Tmultiples0*
T0
*(
_output_shapes
:Шџџџџџџџџџ

)metrics/auc_precision_recall/LogicalNot_1
LogicalNot#metrics/auc_precision_recall/Tile_2*(
_output_shapes
:Шџџџџџџџџџ
С
Smetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shapeShape.metrics/auc_precision_recall/broadcast_weights*
T0*
out_type0*
_output_shapes
:

Rmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B :
Ћ
Rmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shapeShapehead/predictions/logistic*
T0*
out_type0*
_output_shapes
:

Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
 
Ometrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalarEqualQmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar/xRmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
Њ
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/SwitchSwitchOmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalarOmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
щ
]metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_tIdentity]metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch:1*
_output_shapes
: *
T0

ч
]metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_fIdentity[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
к
\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_idIdentityOmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 

]metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1SwitchOmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0
*b
_classX
VTloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
Б
{metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
Ч
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchQmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/rank\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0*d
_classZ
XVloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/rank
Ы
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchRmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rank\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*e
_class[
YWloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rank*
_output_shapes
: : 

umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitch{metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank{metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitywmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 

wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityumetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0

 
vmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentity{metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: *
T0

д
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ї
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
р
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchRmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*e
_class[
YWloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape
М
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchvmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*e
_class[
YWloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
л
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
:*
valueB"      
Ь
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
ё
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapemetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
Ш
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
ј
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likemetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*

Tidx0*
T0*
N*
_output_shapes

:
ж
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
§
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:*

Tdim0
ф
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchSmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*f
_class\
ZXloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
С
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchvmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*f
_class\
ZXloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
Ф
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
validate_indices(*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b
ч
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizemetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 
О
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
Р
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
­
wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switch{metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankvmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
_output_shapes
: : *
T0
*
_class
loc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank
Ѓ
tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergewmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
N*
_output_shapes
: : *
T0

ц
Zmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeMergetmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
Г
Kmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

Mmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
О
Mmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/Const_2Const*A
value8B6 B0metrics/auc_precision_recall/broadcast_weights:0*
dtype0*
_output_shapes
: 

Mmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Љ
Mmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/Const_4Const*,
value#B! Bhead/predictions/logistic:0*
dtype0*
_output_shapes
: 

Mmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Н
Xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/SwitchSwitchZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
у
Zmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tIdentityZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
с
Zmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fIdentityXmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
т
Ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_idIdentityZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
Л
Vmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOpNoOp[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t
Е
dmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependencyIdentityZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tW^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOp*
_output_shapes
: *
T0
*m
_classc
a_loc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t
Є
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.

_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB Bweights.shape=
­
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *A
value8B6 B0metrics/auc_precision_recall/broadcast_weights:0

_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 

_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*,
value#B! Bhead/predictions/logistic:0*
dtype0*
_output_shapes
: 

_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB B
is_scalar=
з
Xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/AssertAssert_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
В
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchSwitchZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeYmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*m
_classc
a_loc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
Ў
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchSmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shapeYmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id* 
_output_shapes
::*
T0*f
_class\
ZXloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape
Ќ
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchRmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shapeYmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*e
_class[
YWloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::

ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchOmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalarYmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*b
_classX
VTloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
Й
fmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1IdentityZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fY^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert*
T0
*m
_classc
a_loc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
к
Wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/MergeMergefmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1dmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
ѓ
@metrics/auc_precision_recall/broadcast_weights_1/ones_like/ShapeShapehead/predictions/logisticX^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
п
@metrics/auc_precision_recall/broadcast_weights_1/ones_like/ConstConstX^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ?*
dtype0*
_output_shapes
: 

:metrics/auc_precision_recall/broadcast_weights_1/ones_likeFill@metrics/auc_precision_recall/broadcast_weights_1/ones_like/Shape@metrics/auc_precision_recall/broadcast_weights_1/ones_like/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ
е
0metrics/auc_precision_recall/broadcast_weights_1Mul.metrics/auc_precision_recall/broadcast_weights:metrics/auc_precision_recall/broadcast_weights_1/ones_like*'
_output_shapes
:џџџџџџџџџ*
T0
}
,metrics/auc_precision_recall/Reshape_2/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:
б
&metrics/auc_precision_recall/Reshape_2Reshape0metrics/auc_precision_recall/broadcast_weights_1,metrics/auc_precision_recall/Reshape_2/shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
~
-metrics/auc_precision_recall/Tile_3/multiplesConst*
valueB"Ш      *
dtype0*
_output_shapes
:
Ч
#metrics/auc_precision_recall/Tile_3Tile&metrics/auc_precision_recall/Reshape_2-metrics/auc_precision_recall/Tile_3/multiples*(
_output_shapes
:Шџџџџџџџџџ*

Tmultiples0*
T0
Ь
=metrics/auc_precision_recall/true_positives/Initializer/zerosConst*>
_class4
20loc:@metrics/auc_precision_recall/true_positives*
valueBШ*    *
dtype0*
_output_shapes	
:Ш
й
+metrics/auc_precision_recall/true_positives
VariableV2*
shared_name *>
_class4
20loc:@metrics/auc_precision_recall/true_positives*
	container *
shape:Ш*
dtype0*
_output_shapes	
:Ш
З
2metrics/auc_precision_recall/true_positives/AssignAssign+metrics/auc_precision_recall/true_positives=metrics/auc_precision_recall/true_positives/Initializer/zeros*
use_locking(*
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_positives*
validate_shape(*
_output_shapes	
:Ш
Я
0metrics/auc_precision_recall/true_positives/readIdentity+metrics/auc_precision_recall/true_positives*
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_positives*
_output_shapes	
:Ш
Њ
'metrics/auc_precision_recall/LogicalAnd
LogicalAnd#metrics/auc_precision_recall/Tile_2$metrics/auc_precision_recall/Greater*(
_output_shapes
:Шџџџџџџџџџ
Ї
$metrics/auc_precision_recall/ToFloatCast'metrics/auc_precision_recall/LogicalAnd*

SrcT0
*
Truncate( *(
_output_shapes
:Шџџџџџџџџџ*

DstT0
Ѕ
 metrics/auc_precision_recall/mulMul$metrics/auc_precision_recall/ToFloat#metrics/auc_precision_recall/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
t
2metrics/auc_precision_recall/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
Р
 metrics/auc_precision_recall/SumSum metrics/auc_precision_recall/mul2metrics/auc_precision_recall/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*
_output_shapes	
:Ш
ћ
&metrics/auc_precision_recall/AssignAdd	AssignAdd+metrics/auc_precision_recall/true_positives metrics/auc_precision_recall/Sum*
_output_shapes	
:Ш*
use_locking( *
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_positives
Ю
>metrics/auc_precision_recall/false_negatives/Initializer/zerosConst*?
_class5
31loc:@metrics/auc_precision_recall/false_negatives*
valueBШ*    *
dtype0*
_output_shapes	
:Ш
л
,metrics/auc_precision_recall/false_negatives
VariableV2*
	container *
shape:Ш*
dtype0*
_output_shapes	
:Ш*
shared_name *?
_class5
31loc:@metrics/auc_precision_recall/false_negatives
Л
3metrics/auc_precision_recall/false_negatives/AssignAssign,metrics/auc_precision_recall/false_negatives>metrics/auc_precision_recall/false_negatives/Initializer/zeros*
validate_shape(*
_output_shapes	
:Ш*
use_locking(*
T0*?
_class5
31loc:@metrics/auc_precision_recall/false_negatives
в
1metrics/auc_precision_recall/false_negatives/readIdentity,metrics/auc_precision_recall/false_negatives*
T0*?
_class5
31loc:@metrics/auc_precision_recall/false_negatives*
_output_shapes	
:Ш
Џ
)metrics/auc_precision_recall/LogicalAnd_1
LogicalAnd#metrics/auc_precision_recall/Tile_2'metrics/auc_precision_recall/LogicalNot*(
_output_shapes
:Шџџџџџџџџџ
Ћ
&metrics/auc_precision_recall/ToFloat_1Cast)metrics/auc_precision_recall/LogicalAnd_1*

SrcT0
*
Truncate( *(
_output_shapes
:Шџџџџџџџџџ*

DstT0
Љ
"metrics/auc_precision_recall/mul_1Mul&metrics/auc_precision_recall/ToFloat_1#metrics/auc_precision_recall/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
v
4metrics/auc_precision_recall/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
"metrics/auc_precision_recall/Sum_1Sum"metrics/auc_precision_recall/mul_14metrics/auc_precision_recall/Sum_1/reduction_indices*
T0*
_output_shapes	
:Ш*
	keep_dims( *

Tidx0

(metrics/auc_precision_recall/AssignAdd_1	AssignAdd,metrics/auc_precision_recall/false_negatives"metrics/auc_precision_recall/Sum_1*
use_locking( *
T0*?
_class5
31loc:@metrics/auc_precision_recall/false_negatives*
_output_shapes	
:Ш
Ь
=metrics/auc_precision_recall/true_negatives/Initializer/zerosConst*>
_class4
20loc:@metrics/auc_precision_recall/true_negatives*
valueBШ*    *
dtype0*
_output_shapes	
:Ш
й
+metrics/auc_precision_recall/true_negatives
VariableV2*
dtype0*
_output_shapes	
:Ш*
shared_name *>
_class4
20loc:@metrics/auc_precision_recall/true_negatives*
	container *
shape:Ш
З
2metrics/auc_precision_recall/true_negatives/AssignAssign+metrics/auc_precision_recall/true_negatives=metrics/auc_precision_recall/true_negatives/Initializer/zeros*
use_locking(*
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_negatives*
validate_shape(*
_output_shapes	
:Ш
Я
0metrics/auc_precision_recall/true_negatives/readIdentity+metrics/auc_precision_recall/true_negatives*
_output_shapes	
:Ш*
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_negatives
Е
)metrics/auc_precision_recall/LogicalAnd_2
LogicalAnd)metrics/auc_precision_recall/LogicalNot_1'metrics/auc_precision_recall/LogicalNot*(
_output_shapes
:Шџџџџџџџџџ
Ћ
&metrics/auc_precision_recall/ToFloat_2Cast)metrics/auc_precision_recall/LogicalAnd_2*

SrcT0
*
Truncate( *(
_output_shapes
:Шџџџџџџџџџ*

DstT0
Љ
"metrics/auc_precision_recall/mul_2Mul&metrics/auc_precision_recall/ToFloat_2#metrics/auc_precision_recall/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
v
4metrics/auc_precision_recall/Sum_2/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
Ц
"metrics/auc_precision_recall/Sum_2Sum"metrics/auc_precision_recall/mul_24metrics/auc_precision_recall/Sum_2/reduction_indices*
T0*
_output_shapes	
:Ш*
	keep_dims( *

Tidx0
џ
(metrics/auc_precision_recall/AssignAdd_2	AssignAdd+metrics/auc_precision_recall/true_negatives"metrics/auc_precision_recall/Sum_2*
use_locking( *
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_negatives*
_output_shapes	
:Ш
Ю
>metrics/auc_precision_recall/false_positives/Initializer/zerosConst*
dtype0*
_output_shapes	
:Ш*?
_class5
31loc:@metrics/auc_precision_recall/false_positives*
valueBШ*    
л
,metrics/auc_precision_recall/false_positives
VariableV2*
shared_name *?
_class5
31loc:@metrics/auc_precision_recall/false_positives*
	container *
shape:Ш*
dtype0*
_output_shapes	
:Ш
Л
3metrics/auc_precision_recall/false_positives/AssignAssign,metrics/auc_precision_recall/false_positives>metrics/auc_precision_recall/false_positives/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@metrics/auc_precision_recall/false_positives*
validate_shape(*
_output_shapes	
:Ш
в
1metrics/auc_precision_recall/false_positives/readIdentity,metrics/auc_precision_recall/false_positives*
_output_shapes	
:Ш*
T0*?
_class5
31loc:@metrics/auc_precision_recall/false_positives
В
)metrics/auc_precision_recall/LogicalAnd_3
LogicalAnd)metrics/auc_precision_recall/LogicalNot_1$metrics/auc_precision_recall/Greater*(
_output_shapes
:Шџџџџџџџџџ
Ћ
&metrics/auc_precision_recall/ToFloat_3Cast)metrics/auc_precision_recall/LogicalAnd_3*

SrcT0
*
Truncate( *(
_output_shapes
:Шџџџџџџџџџ*

DstT0
Љ
"metrics/auc_precision_recall/mul_3Mul&metrics/auc_precision_recall/ToFloat_3#metrics/auc_precision_recall/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
v
4metrics/auc_precision_recall/Sum_3/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
"metrics/auc_precision_recall/Sum_3Sum"metrics/auc_precision_recall/mul_34metrics/auc_precision_recall/Sum_3/reduction_indices*
_output_shapes	
:Ш*
	keep_dims( *

Tidx0*
T0

(metrics/auc_precision_recall/AssignAdd_3	AssignAdd,metrics/auc_precision_recall/false_positives"metrics/auc_precision_recall/Sum_3*
_output_shapes	
:Ш*
use_locking( *
T0*?
_class5
31loc:@metrics/auc_precision_recall/false_positives
g
"metrics/auc_precision_recall/add/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 
Ѓ
 metrics/auc_precision_recall/addAdd0metrics/auc_precision_recall/true_positives/read"metrics/auc_precision_recall/add/y*
T0*
_output_shapes	
:Ш
Д
"metrics/auc_precision_recall/add_1Add0metrics/auc_precision_recall/true_positives/read1metrics/auc_precision_recall/false_negatives/read*
T0*
_output_shapes	
:Ш
i
$metrics/auc_precision_recall/add_2/yConst*
dtype0*
_output_shapes
: *
valueB
 *Н75

"metrics/auc_precision_recall/add_2Add"metrics/auc_precision_recall/add_1$metrics/auc_precision_recall/add_2/y*
T0*
_output_shapes	
:Ш

 metrics/auc_precision_recall/divRealDiv metrics/auc_precision_recall/add"metrics/auc_precision_recall/add_2*
_output_shapes	
:Ш*
T0
i
$metrics/auc_precision_recall/add_3/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 
Ї
"metrics/auc_precision_recall/add_3Add0metrics/auc_precision_recall/true_positives/read$metrics/auc_precision_recall/add_3/y*
T0*
_output_shapes	
:Ш
Д
"metrics/auc_precision_recall/add_4Add0metrics/auc_precision_recall/true_positives/read1metrics/auc_precision_recall/false_positives/read*
_output_shapes	
:Ш*
T0
i
$metrics/auc_precision_recall/add_5/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 

"metrics/auc_precision_recall/add_5Add"metrics/auc_precision_recall/add_4$metrics/auc_precision_recall/add_5/y*
T0*
_output_shapes	
:Ш

"metrics/auc_precision_recall/div_1RealDiv"metrics/auc_precision_recall/add_3"metrics/auc_precision_recall/add_5*
T0*
_output_shapes	
:Ш
|
2metrics/auc_precision_recall/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB: 

4metrics/auc_precision_recall/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:Ч
~
4metrics/auc_precision_recall/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

,metrics/auc_precision_recall/strided_slice_1StridedSlice metrics/auc_precision_recall/div2metrics/auc_precision_recall/strided_slice_1/stack4metrics/auc_precision_recall/strided_slice_1/stack_14metrics/auc_precision_recall/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes	
:Ч
|
2metrics/auc_precision_recall/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB:
~
4metrics/auc_precision_recall/strided_slice_2/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

,metrics/auc_precision_recall/strided_slice_2StridedSlice metrics/auc_precision_recall/div2metrics/auc_precision_recall/strided_slice_2/stack4metrics/auc_precision_recall/strided_slice_2/stack_14metrics/auc_precision_recall/strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes	
:Ч
Љ
 metrics/auc_precision_recall/subSub,metrics/auc_precision_recall/strided_slice_1,metrics/auc_precision_recall/strided_slice_2*
T0*
_output_shapes	
:Ч
|
2metrics/auc_precision_recall/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:

4metrics/auc_precision_recall/strided_slice_3/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

,metrics/auc_precision_recall/strided_slice_3StridedSlice"metrics/auc_precision_recall/div_12metrics/auc_precision_recall/strided_slice_3/stack4metrics/auc_precision_recall/strided_slice_3/stack_14metrics/auc_precision_recall/strided_slice_3/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes	
:Ч*
T0*
Index0
|
2metrics/auc_precision_recall/strided_slice_4/stackConst*
valueB:*
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_4/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

,metrics/auc_precision_recall/strided_slice_4StridedSlice"metrics/auc_precision_recall/div_12metrics/auc_precision_recall/strided_slice_4/stack4metrics/auc_precision_recall/strided_slice_4/stack_14metrics/auc_precision_recall/strided_slice_4/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes	
:Ч*
T0*
Index0
Ћ
"metrics/auc_precision_recall/add_6Add,metrics/auc_precision_recall/strided_slice_3,metrics/auc_precision_recall/strided_slice_4*
T0*
_output_shapes	
:Ч
k
&metrics/auc_precision_recall/truediv/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
Ё
$metrics/auc_precision_recall/truedivRealDiv"metrics/auc_precision_recall/add_6&metrics/auc_precision_recall/truediv/y*
T0*
_output_shapes	
:Ч

"metrics/auc_precision_recall/Mul_4Mul metrics/auc_precision_recall/sub$metrics/auc_precision_recall/truediv*
T0*
_output_shapes	
:Ч
n
$metrics/auc_precision_recall/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
Б
"metrics/auc_precision_recall/valueSum"metrics/auc_precision_recall/Mul_4$metrics/auc_precision_recall/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
i
$metrics/auc_precision_recall/add_7/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 

"metrics/auc_precision_recall/add_7Add&metrics/auc_precision_recall/AssignAdd$metrics/auc_precision_recall/add_7/y*
T0*
_output_shapes	
:Ш
Ё
"metrics/auc_precision_recall/add_8Add&metrics/auc_precision_recall/AssignAdd(metrics/auc_precision_recall/AssignAdd_1*
T0*
_output_shapes	
:Ш
i
$metrics/auc_precision_recall/add_9/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 

"metrics/auc_precision_recall/add_9Add"metrics/auc_precision_recall/add_8$metrics/auc_precision_recall/add_9/y*
T0*
_output_shapes	
:Ш

"metrics/auc_precision_recall/div_2RealDiv"metrics/auc_precision_recall/add_7"metrics/auc_precision_recall/add_9*
T0*
_output_shapes	
:Ш
j
%metrics/auc_precision_recall/add_10/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 

#metrics/auc_precision_recall/add_10Add&metrics/auc_precision_recall/AssignAdd%metrics/auc_precision_recall/add_10/y*
T0*
_output_shapes	
:Ш
Ђ
#metrics/auc_precision_recall/add_11Add&metrics/auc_precision_recall/AssignAdd(metrics/auc_precision_recall/AssignAdd_3*
T0*
_output_shapes	
:Ш
j
%metrics/auc_precision_recall/add_12/yConst*
dtype0*
_output_shapes
: *
valueB
 *Н75

#metrics/auc_precision_recall/add_12Add#metrics/auc_precision_recall/add_11%metrics/auc_precision_recall/add_12/y*
_output_shapes	
:Ш*
T0

"metrics/auc_precision_recall/div_3RealDiv#metrics/auc_precision_recall/add_10#metrics/auc_precision_recall/add_12*
T0*
_output_shapes	
:Ш
|
2metrics/auc_precision_recall/strided_slice_5/stackConst*
valueB: *
dtype0*
_output_shapes
:

4metrics/auc_precision_recall/strided_slice_5/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_5/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

,metrics/auc_precision_recall/strided_slice_5StridedSlice"metrics/auc_precision_recall/div_22metrics/auc_precision_recall/strided_slice_5/stack4metrics/auc_precision_recall/strided_slice_5/stack_14metrics/auc_precision_recall/strided_slice_5/stack_2*
end_mask *
_output_shapes	
:Ч*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask 
|
2metrics/auc_precision_recall/strided_slice_6/stackConst*
valueB:*
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_6/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_6/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

,metrics/auc_precision_recall/strided_slice_6StridedSlice"metrics/auc_precision_recall/div_22metrics/auc_precision_recall/strided_slice_6/stack4metrics/auc_precision_recall/strided_slice_6/stack_14metrics/auc_precision_recall/strided_slice_6/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes	
:Ч*
T0*
Index0*
shrink_axis_mask 
Ћ
"metrics/auc_precision_recall/sub_1Sub,metrics/auc_precision_recall/strided_slice_5,metrics/auc_precision_recall/strided_slice_6*
T0*
_output_shapes	
:Ч
|
2metrics/auc_precision_recall/strided_slice_7/stackConst*
valueB: *
dtype0*
_output_shapes
:

4metrics/auc_precision_recall/strided_slice_7/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

,metrics/auc_precision_recall/strided_slice_7StridedSlice"metrics/auc_precision_recall/div_32metrics/auc_precision_recall/strided_slice_7/stack4metrics/auc_precision_recall/strided_slice_7/stack_14metrics/auc_precision_recall/strided_slice_7/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes	
:Ч*
Index0*
T0
|
2metrics/auc_precision_recall/strided_slice_8/stackConst*
valueB:*
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_8/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_8/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

,metrics/auc_precision_recall/strided_slice_8StridedSlice"metrics/auc_precision_recall/div_32metrics/auc_precision_recall/strided_slice_8/stack4metrics/auc_precision_recall/strided_slice_8/stack_14metrics/auc_precision_recall/strided_slice_8/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes	
:Ч
Ќ
#metrics/auc_precision_recall/add_13Add,metrics/auc_precision_recall/strided_slice_7,metrics/auc_precision_recall/strided_slice_8*
_output_shapes	
:Ч*
T0
m
(metrics/auc_precision_recall/truediv_1/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
І
&metrics/auc_precision_recall/truediv_1RealDiv#metrics/auc_precision_recall/add_13(metrics/auc_precision_recall/truediv_1/y*
T0*
_output_shapes	
:Ч

"metrics/auc_precision_recall/Mul_5Mul"metrics/auc_precision_recall/sub_1&metrics/auc_precision_recall/truediv_1*
_output_shapes	
:Ч*
T0
n
$metrics/auc_precision_recall/Const_2Const*
dtype0*
_output_shapes
:*
valueB: 
Е
&metrics/auc_precision_recall/update_opSum"metrics/auc_precision_recall/Mul_5$metrics/auc_precision_recall/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Ъ
initNoOp^metrics/accuracy/count/Assign^metrics/accuracy/total/Assign#^metrics/auc/false_negatives/Assign#^metrics/auc/false_positives/Assign"^metrics/auc/true_negatives/Assign"^metrics/auc/true_positives/Assign4^metrics/auc_precision_recall/false_negatives/Assign4^metrics/auc_precision_recall/false_positives/Assign3^metrics/auc_precision_recall/true_negatives/Assign3^metrics/auc_precision_recall/true_positives/Assign"^metrics/average_loss/count/Assign"^metrics/average_loss/total/Assign ^metrics/label/mean/count/Assign ^metrics/label/mean/total/Assign/^metrics/precision/false_positives/count/Assign.^metrics/precision/true_positives/count/Assign%^metrics/prediction/mean/count/Assign%^metrics/prediction/mean/total/Assign,^metrics/recall/false_negatives/count/Assign+^metrics/recall/true_positives/count/Assign
у
init_all_tablesNoOpc^transform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_table/table_inite^transform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_table/table_init

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
:d
X
save/IdentityIdentitysave/Read/ReadVariableOp*
T0*
_output_shapes
:d
^
save/Identity_1Identitysave/Identity"/device:CPU:0*
_output_shapes
:d*
T0
z
save/Read_1/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes

:d
`
save/Identity_2Identitysave/Read_1/ReadVariableOp*
T0*
_output_shapes

:d
d
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
T0*
_output_shapes

:d
t
save/Read_2/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
:F
\
save/Identity_4Identitysave/Read_2/ReadVariableOp*
_output_shapes
:F*
T0
`
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes
:F
z
save/Read_3/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes

:dF
`
save/Identity_6Identitysave/Read_3/ReadVariableOp*
T0*
_output_shapes

:dF
d
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
T0*
_output_shapes

:dF
t
save/Read_4/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes
:0
\
save/Identity_8Identitysave/Read_4/ReadVariableOp*
T0*
_output_shapes
:0
`
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
_output_shapes
:0*
T0
z
save/Read_5/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes

:F0
a
save/Identity_10Identitysave/Read_5/ReadVariableOp*
T0*
_output_shapes

:F0
f
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
T0*
_output_shapes

:F0
t
save/Read_6/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0*
dtype0*
_output_shapes
:"
]
save/Identity_12Identitysave/Read_6/ReadVariableOp*
T0*
_output_shapes
:"
b
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
T0*
_output_shapes
:"
z
save/Read_7/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes

:0"
a
save/Identity_14Identitysave/Read_7/ReadVariableOp*
T0*
_output_shapes

:0"
f
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
T0*
_output_shapes

:0"
m
save/Read_8/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
dtype0*
_output_shapes
:
]
save/Identity_16Identitysave/Read_8/ReadVariableOp*
T0*
_output_shapes
:
b
save/Identity_17Identitysave/Identity_16"/device:CPU:0*
T0*
_output_shapes
:
s
save/Read_9/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
dtype0*
_output_shapes

:"
a
save/Identity_18Identitysave/Read_9/ReadVariableOp*
_output_shapes

:"*
T0
f
save/Identity_19Identitysave/Identity_18"/device:CPU:0*
_output_shapes

:"*
T0

save/Read_10/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
^
save/Identity_20Identitysave/Read_10/ReadVariableOp*
T0*
_output_shapes
:
b
save/Identity_21Identitysave/Identity_20"/device:CPU:0*
T0*
_output_shapes
:

save/Read_11/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ
c
save/Identity_22Identitysave/Read_11/ReadVariableOp*
T0*
_output_shapes
:	ђ
g
save/Identity_23Identitysave/Identity_22"/device:CPU:0*
T0*
_output_shapes
:	ђ

save/Read_12/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:

b
save/Identity_24Identitysave/Read_12/ReadVariableOp*
T0*
_output_shapes

:

f
save/Identity_25Identitysave/Identity_24"/device:CPU:0*
T0*
_output_shapes

:


save/Read_13/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:

b
save/Identity_26Identitysave/Read_13/ReadVariableOp*
T0*
_output_shapes

:

f
save/Identity_27Identitysave/Identity_26"/device:CPU:0*
T0*
_output_shapes

:


save/Read_14/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ
c
save/Identity_28Identitysave/Read_14/ReadVariableOp*
_output_shapes
:	ђ*
T0
g
save/Identity_29Identitysave/Identity_28"/device:CPU:0*
T0*
_output_shapes
:	ђ

save/Read_15/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:

b
save/Identity_30Identitysave/Read_15/ReadVariableOp*
T0*
_output_shapes

:

f
save/Identity_31Identitysave/Identity_30"/device:CPU:0*
_output_shapes

:
*
T0

save/Read_16/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:

b
save/Identity_32Identitysave/Read_16/ReadVariableOp*
T0*
_output_shapes

:

f
save/Identity_33Identitysave/Identity_32"/device:CPU:0*
T0*
_output_shapes

:


save/Read_17/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_34Identitysave/Read_17/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_35Identitysave/Identity_34"/device:CPU:0*
T0*
_output_shapes

:

save/Read_18/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_36Identitysave/Read_18/ReadVariableOp*
_output_shapes

:*
T0
f
save/Identity_37Identitysave/Identity_36"/device:CPU:0*
T0*
_output_shapes

:

save/Read_19/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_38Identitysave/Read_19/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_39Identitysave/Identity_38"/device:CPU:0*
T0*
_output_shapes

:

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_3f50c936dd3a441199f9f9dc448849a0/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :

save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/Read_20/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:d
m
save/Identity_40Identitysave/Read_20/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:d
b
save/Identity_41Identitysave/Identity_40"/device:CPU:0*
T0*
_output_shapes
:d

save/Read_21/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:d
q
save/Identity_42Identitysave/Read_21/ReadVariableOp"/device:CPU:0*
_output_shapes

:d*
T0
f
save/Identity_43Identitysave/Identity_42"/device:CPU:0*
T0*
_output_shapes

:d

save/Read_22/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:F
m
save/Identity_44Identitysave/Read_22/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:F
b
save/Identity_45Identitysave/Identity_44"/device:CPU:0*
T0*
_output_shapes
:F

save/Read_23/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:dF
q
save/Identity_46Identitysave/Read_23/ReadVariableOp"/device:CPU:0*
_output_shapes

:dF*
T0
f
save/Identity_47Identitysave/Identity_46"/device:CPU:0*
T0*
_output_shapes

:dF

save/Read_24/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:0
m
save/Identity_48Identitysave/Read_24/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:0
b
save/Identity_49Identitysave/Identity_48"/device:CPU:0*
_output_shapes
:0*
T0

save/Read_25/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:F0
q
save/Identity_50Identitysave/Read_25/ReadVariableOp"/device:CPU:0*
_output_shapes

:F0*
T0
f
save/Identity_51Identitysave/Identity_50"/device:CPU:0*
T0*
_output_shapes

:F0

save/Read_26/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:"
m
save/Identity_52Identitysave/Read_26/ReadVariableOp"/device:CPU:0*
_output_shapes
:"*
T0
b
save/Identity_53Identitysave/Identity_52"/device:CPU:0*
T0*
_output_shapes
:"

save/Read_27/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:0"
q
save/Identity_54Identitysave/Read_27/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:0"
f
save/Identity_55Identitysave/Identity_54"/device:CPU:0*
T0*
_output_shapes

:0"
}
save/Read_28/ReadVariableOpReadVariableOpdnn/logits/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_56Identitysave/Read_28/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_57Identitysave/Identity_56"/device:CPU:0*
T0*
_output_shapes
:

save/Read_29/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:"
q
save/Identity_58Identitysave/Read_29/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:"
f
save/Identity_59Identitysave/Identity_58"/device:CPU:0*
T0*
_output_shapes

:"

save/Read_30/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_60Identitysave/Read_30/ReadVariableOp"/device:CPU:0*
_output_shapes
:*
T0
b
save/Identity_61Identitysave/Identity_60"/device:CPU:0*
_output_shapes
:*
T0

save/Read_31/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:	ђ
r
save/Identity_62Identitysave/Read_31/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:	ђ
g
save/Identity_63Identitysave/Identity_62"/device:CPU:0*
_output_shapes
:	ђ*
T0
Ё
save/Read_32/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:

q
save/Identity_64Identitysave/Read_32/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:

f
save/Identity_65Identitysave/Identity_64"/device:CPU:0*
T0*
_output_shapes

:

Ђ
save/Read_33/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:

q
save/Identity_66Identitysave/Read_33/ReadVariableOp"/device:CPU:0*
_output_shapes

:
*
T0
f
save/Identity_67Identitysave/Identity_66"/device:CPU:0*
T0*
_output_shapes

:


save/Read_34/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:	ђ
r
save/Identity_68Identitysave/Read_34/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:	ђ
g
save/Identity_69Identitysave/Identity_68"/device:CPU:0*
T0*
_output_shapes
:	ђ
 
save/Read_35/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:

q
save/Identity_70Identitysave/Read_35/ReadVariableOp"/device:CPU:0*
_output_shapes

:
*
T0
f
save/Identity_71Identitysave/Identity_70"/device:CPU:0*
T0*
_output_shapes

:

Ё
save/Read_36/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:

q
save/Identity_72Identitysave/Read_36/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:

f
save/Identity_73Identitysave/Identity_72"/device:CPU:0*
T0*
_output_shapes

:


save/Read_37/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_74Identitysave/Read_37/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_75Identitysave/Identity_74"/device:CPU:0*
T0*
_output_shapes

:
 
save/Read_38/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_76Identitysave/Read_38/ReadVariableOp"/device:CPU:0*
_output_shapes

:*
T0
f
save/Identity_77Identitysave/Identity_76"/device:CPU:0*
T0*
_output_shapes

:
Ё
save/Read_39/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_78Identitysave/Read_39/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_79Identitysave/Identity_78"/device:CPU:0*
T0*
_output_shapes

:
Њ
save/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*Ь
valueТBПBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelB linear/linear_model/bias_weightsB&linear/linear_model/company_xf/weightsB/linear/linear_model/dropoff_latitude_xf/weightsB0linear/linear_model/dropoff_longitude_xf/weightsB+linear/linear_model/payment_type_xf/weightsB.linear/linear_model/pickup_latitude_xf/weightsB/linear/linear_model/pickup_longitude_xf/weightsB-linear/linear_model/trip_start_day_xf/weightsB.linear/linear_model/trip_start_hour_xf/weightsB/linear/linear_model/trip_start_month_xf/weights

save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*­
valueЃB B	100 0,100B3 100 0,3:0,100B70 0,70B100 70 0,100:0,70B48 0,48B70 48 0,70:0,48B34 0,34B48 34 0,48:0,34B1 0,1B34 1 0,34:0,1B1 0,1B1010 1 0,1010:0,1B10 1 0,10:0,1B10 1 0,10:0,1B1010 1 0,1010:0,1B10 1 0,10:0,1B10 1 0,10:0,1B31 1 0,31:0,1B24 1 0,24:0,1B12 1 0,12:0,1*
dtype0*
_output_shapes
:

save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_41save/Identity_43save/Identity_45save/Identity_47save/Identity_49save/Identity_51save/Identity_53save/Identity_55save/Identity_57save/Identity_59save/Identity_61save/Identity_63save/Identity_65save/Identity_67save/Identity_69save/Identity_71save/Identity_73save/Identity_75save/Identity_77save/Identity_79"/device:CPU:0*"
dtypes
2
Ј
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
T0*)
_class
loc:@save/ShardedFilename_1*
_output_shapes
: 
р
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
Ј
save/Identity_80Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
~
save/RestoreV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	

save/AssignAssignglobal_stepsave/RestoreV2*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
(
save/restore_shardNoOp^save/Assign
­
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*Ь
valueТBПBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelB linear/linear_model/bias_weightsB&linear/linear_model/company_xf/weightsB/linear/linear_model/dropoff_latitude_xf/weightsB0linear/linear_model/dropoff_longitude_xf/weightsB+linear/linear_model/payment_type_xf/weightsB.linear/linear_model/pickup_latitude_xf/weightsB/linear/linear_model/pickup_longitude_xf/weightsB-linear/linear_model/trip_start_day_xf/weightsB.linear/linear_model/trip_start_hour_xf/weightsB/linear/linear_model/trip_start_month_xf/weights*
dtype0*
_output_shapes
:

!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*­
valueЃB B	100 0,100B3 100 0,3:0,100B70 0,70B100 70 0,100:0,70B48 0,48B70 48 0,70:0,48B34 0,34B48 34 0,48:0,34B1 0,1B34 1 0,34:0,1B1 0,1B1010 1 0,1010:0,1B10 1 0,10:0,1B10 1 0,10:0,1B1010 1 0,1010:0,1B10 1 0,10:0,1B10 1 0,10:0,1B31 1 0,31:0,1B24 1 0,24:0,1B12 1 0,12:0,1*
dtype0*
_output_shapes
:
щ
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*Ш
_output_shapesЕ
В:d:d:F:dF:0:F0:":0"::"::	ђ:
:
:	ђ:
:
:::*"
dtypes
2
b
save/Identity_81Identitysave/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes
:d
v
save/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/bias/part_0save/Identity_81"/device:CPU:0*
dtype0
h
save/Identity_82Identitysave/RestoreV2_1:1"/device:CPU:0*
_output_shapes

:d*
T0
z
save/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernel/part_0save/Identity_82"/device:CPU:0*
dtype0
d
save/Identity_83Identitysave/RestoreV2_1:2"/device:CPU:0*
T0*
_output_shapes
:F
x
save/AssignVariableOp_2AssignVariableOpdnn/hiddenlayer_1/bias/part_0save/Identity_83"/device:CPU:0*
dtype0
h
save/Identity_84Identitysave/RestoreV2_1:3"/device:CPU:0*
_output_shapes

:dF*
T0
z
save/AssignVariableOp_3AssignVariableOpdnn/hiddenlayer_1/kernel/part_0save/Identity_84"/device:CPU:0*
dtype0
d
save/Identity_85Identitysave/RestoreV2_1:4"/device:CPU:0*
_output_shapes
:0*
T0
x
save/AssignVariableOp_4AssignVariableOpdnn/hiddenlayer_2/bias/part_0save/Identity_85"/device:CPU:0*
dtype0
h
save/Identity_86Identitysave/RestoreV2_1:5"/device:CPU:0*
_output_shapes

:F0*
T0
z
save/AssignVariableOp_5AssignVariableOpdnn/hiddenlayer_2/kernel/part_0save/Identity_86"/device:CPU:0*
dtype0
d
save/Identity_87Identitysave/RestoreV2_1:6"/device:CPU:0*
T0*
_output_shapes
:"
x
save/AssignVariableOp_6AssignVariableOpdnn/hiddenlayer_3/bias/part_0save/Identity_87"/device:CPU:0*
dtype0
h
save/Identity_88Identitysave/RestoreV2_1:7"/device:CPU:0*
_output_shapes

:0"*
T0
z
save/AssignVariableOp_7AssignVariableOpdnn/hiddenlayer_3/kernel/part_0save/Identity_88"/device:CPU:0*
dtype0
d
save/Identity_89Identitysave/RestoreV2_1:8"/device:CPU:0*
T0*
_output_shapes
:
q
save/AssignVariableOp_8AssignVariableOpdnn/logits/bias/part_0save/Identity_89"/device:CPU:0*
dtype0
h
save/Identity_90Identitysave/RestoreV2_1:9"/device:CPU:0*
T0*
_output_shapes

:"
s
save/AssignVariableOp_9AssignVariableOpdnn/logits/kernel/part_0save/Identity_90"/device:CPU:0*
dtype0
e
save/Identity_91Identitysave/RestoreV2_1:10"/device:CPU:0*
T0*
_output_shapes
:

save/AssignVariableOp_10AssignVariableOp'linear/linear_model/bias_weights/part_0save/Identity_91"/device:CPU:0*
dtype0
j
save/Identity_92Identitysave/RestoreV2_1:11"/device:CPU:0*
T0*
_output_shapes
:	ђ

save/AssignVariableOp_11AssignVariableOp-linear/linear_model/company_xf/weights/part_0save/Identity_92"/device:CPU:0*
dtype0
i
save/Identity_93Identitysave/RestoreV2_1:12"/device:CPU:0*
T0*
_output_shapes

:


save/AssignVariableOp_12AssignVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0save/Identity_93"/device:CPU:0*
dtype0
i
save/Identity_94Identitysave/RestoreV2_1:13"/device:CPU:0*
T0*
_output_shapes

:


save/AssignVariableOp_13AssignVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0save/Identity_94"/device:CPU:0*
dtype0
j
save/Identity_95Identitysave/RestoreV2_1:14"/device:CPU:0*
T0*
_output_shapes
:	ђ

save/AssignVariableOp_14AssignVariableOp2linear/linear_model/payment_type_xf/weights/part_0save/Identity_95"/device:CPU:0*
dtype0
i
save/Identity_96Identitysave/RestoreV2_1:15"/device:CPU:0*
T0*
_output_shapes

:


save/AssignVariableOp_15AssignVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0save/Identity_96"/device:CPU:0*
dtype0
i
save/Identity_97Identitysave/RestoreV2_1:16"/device:CPU:0*
_output_shapes

:
*
T0

save/AssignVariableOp_16AssignVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0save/Identity_97"/device:CPU:0*
dtype0
i
save/Identity_98Identitysave/RestoreV2_1:17"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_17AssignVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0save/Identity_98"/device:CPU:0*
dtype0
i
save/Identity_99Identitysave/RestoreV2_1:18"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_18AssignVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0save/Identity_99"/device:CPU:0*
dtype0
j
save/Identity_100Identitysave/RestoreV2_1:19"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_19AssignVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0save/Identity_100"/device:CPU:0*
dtype0
Л
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"?
save/Const:0save/Identity_80:0save/restore_all (5 @F8"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"v
'evaluation_only/label_graph/example_refK*I
G
)type.googleapis.com/tensorflow.TensorInfo
range:0џџџџџџџџџ"%
saved_model_main_op


group_deps"ї
model_variablesур
Ћ
/linear/linear_model/company_xf/weights/part_0:04linear/linear_model/company_xf/weights/part_0/AssignClinear/linear_model/company_xf/weights/part_0/Read/ReadVariableOp:0"6
&linear/linear_model/company_xf/weightsђ  "ђ(2Alinear/linear_model/company_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/dropoff_latitude_xf/weights/part_0:0=linear/linear_model/dropoff_latitude_xf/weights/part_0/AssignLlinear/linear_model/dropoff_latitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/dropoff_latitude_xf/weights
  "
(2Jlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zeros:08
л
9linear/linear_model/dropoff_longitude_xf/weights/part_0:0>linear/linear_model/dropoff_longitude_xf/weights/part_0/AssignMlinear/linear_model/dropoff_longitude_xf/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/dropoff_longitude_xf/weights
  "
(2Klinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zeros:08
Ф
4linear/linear_model/payment_type_xf/weights/part_0:09linear/linear_model/payment_type_xf/weights/part_0/AssignHlinear/linear_model/payment_type_xf/weights/part_0/Read/ReadVariableOp:0";
+linear/linear_model/payment_type_xf/weightsђ  "ђ(2Flinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/pickup_latitude_xf/weights/part_0:0<linear/linear_model/pickup_latitude_xf/weights/part_0/AssignKlinear/linear_model/pickup_latitude_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/pickup_latitude_xf/weights
  "
(2Ilinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/pickup_longitude_xf/weights/part_0:0=linear/linear_model/pickup_longitude_xf/weights/part_0/AssignLlinear/linear_model/pickup_longitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/pickup_longitude_xf/weights
  "
(2Jlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zeros:08
Ь
6linear/linear_model/trip_start_day_xf/weights/part_0:0;linear/linear_model/trip_start_day_xf/weights/part_0/AssignJlinear/linear_model/trip_start_day_xf/weights/part_0/Read/ReadVariableOp:0";
-linear/linear_model/trip_start_day_xf/weights  "(2Hlinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/trip_start_hour_xf/weights/part_0:0<linear/linear_model/trip_start_hour_xf/weights/part_0/AssignKlinear/linear_model/trip_start_hour_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/trip_start_hour_xf/weights  "(2Ilinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/trip_start_month_xf/weights/part_0:0=linear/linear_model/trip_start_month_xf/weights/part_0/AssignLlinear/linear_model/trip_start_month_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/trip_start_month_xf/weights  "(2Jlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"Ѓ
	summaries

/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
/dnn/dnn/hiddenlayer_2/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2/activation:0
/dnn/dnn/hiddenlayer_3/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_3/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0
linear/bias:0
!linear/fraction_of_zero_weights:0
'linear/linear/fraction_of_zero_values:0
linear/linear/activation:0"+
trainable_variables++
ь
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_0/kerneld  "d(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_0/biasd "d(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign5dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_1/kerneldF  "dF(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign3dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_1/biasF "F(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign5dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_2/kernelF0  "F0(2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign3dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_2/bias0 "0(21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_3/kernel/part_0:0&dnn/hiddenlayer_3/kernel/part_0/Assign5dnn/hiddenlayer_3/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_3/kernel0"  "0"(2<dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_3/bias/part_0:0$dnn/hiddenlayer_3/bias/part_0/Assign3dnn/hiddenlayer_3/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_3/bias" ""(21dnn/hiddenlayer_3/bias/part_0/Initializer/zeros:08
Щ
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"
dnn/logits/kernel"  ""(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
Г
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias "(2*dnn/logits/bias/part_0/Initializer/zeros:08
Ћ
/linear/linear_model/company_xf/weights/part_0:04linear/linear_model/company_xf/weights/part_0/AssignClinear/linear_model/company_xf/weights/part_0/Read/ReadVariableOp:0"6
&linear/linear_model/company_xf/weightsђ  "ђ(2Alinear/linear_model/company_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/dropoff_latitude_xf/weights/part_0:0=linear/linear_model/dropoff_latitude_xf/weights/part_0/AssignLlinear/linear_model/dropoff_latitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/dropoff_latitude_xf/weights
  "
(2Jlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zeros:08
л
9linear/linear_model/dropoff_longitude_xf/weights/part_0:0>linear/linear_model/dropoff_longitude_xf/weights/part_0/AssignMlinear/linear_model/dropoff_longitude_xf/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/dropoff_longitude_xf/weights
  "
(2Klinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zeros:08
Ф
4linear/linear_model/payment_type_xf/weights/part_0:09linear/linear_model/payment_type_xf/weights/part_0/AssignHlinear/linear_model/payment_type_xf/weights/part_0/Read/ReadVariableOp:0";
+linear/linear_model/payment_type_xf/weightsђ  "ђ(2Flinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/pickup_latitude_xf/weights/part_0:0<linear/linear_model/pickup_latitude_xf/weights/part_0/AssignKlinear/linear_model/pickup_latitude_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/pickup_latitude_xf/weights
  "
(2Ilinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/pickup_longitude_xf/weights/part_0:0=linear/linear_model/pickup_longitude_xf/weights/part_0/AssignLlinear/linear_model/pickup_longitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/pickup_longitude_xf/weights
  "
(2Jlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zeros:08
Ь
6linear/linear_model/trip_start_day_xf/weights/part_0:0;linear/linear_model/trip_start_day_xf/weights/part_0/AssignJlinear/linear_model/trip_start_day_xf/weights/part_0/Read/ReadVariableOp:0";
-linear/linear_model/trip_start_day_xf/weights  "(2Hlinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/trip_start_hour_xf/weights/part_0:0<linear/linear_model/trip_start_hour_xf/weights/part_0/AssignKlinear/linear_model/trip_start_hour_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/trip_start_hour_xf/weights  "(2Ilinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/trip_start_month_xf/weights/part_0:0=linear/linear_model/trip_start_month_xf/weights/part_0/AssignLlinear/linear_model/trip_start_month_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/trip_start_month_xf/weights  "(2Jlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"3
%evaluation_only/metadata/tfma_version

0.12.1"'
)evaluation_only/label_graph/features/nodeн&*к&
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:23ParseExample/ParseExample:5ParseExample/ParseExample:41
u
)type.googleapis.com/tensorflow.TensorInfoH
5transform/transform/bucketize/apply_buckets/ToInt64:0	џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_14:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoh
Utransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup:0	џџџџџџџџџ
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:18ParseExample/ParseExample:0ParseExample/ParseExample:36
Ї
)type.googleapis.com/tensorflow.TensorInfoz	џџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:35ParseExample/ParseExample:17ParseExample/ParseExample:53
Ї
)type.googleapis.com/tensorflow.TensorInfoz	џџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:34ParseExample/ParseExample:16ParseExample/ParseExample:52
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:22ParseExample/ParseExample:4ParseExample/ParseExample:40
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:20ParseExample/ParseExample:2ParseExample/ParseExample:38
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_13:0џџџџџџџџџ
Ї
)type.googleapis.com/tensorflow.TensorInfozџџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:31ParseExample/ParseExample:13ParseExample/ParseExample:49
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_12:0џџџџџџџџџ
\
)type.googleapis.com/tensorflow.TensorInfo/
transform/transform/Select:0	џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_11:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoj
Wtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup:0	џџџџџџџџџ
w
)type.googleapis.com/tensorflow.TensorInfoJ
7transform/transform/bucketize_3/apply_buckets/ToInt64:0	џџџџџџџџџ
o
)type.googleapis.com/tensorflow.TensorInfoB
/transform/transform/scale_to_z_score_2/Select:0џџџџџџџџџ
w
)type.googleapis.com/tensorflow.TensorInfoJ
7transform/transform/bucketize_1/apply_buckets/ToInt64:0	џџџџџџџџџ
Ї
)type.googleapis.com/tensorflow.TensorInfoz	џџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:33ParseExample/ParseExample:15ParseExample/ParseExample:51
_
)type.googleapis.com/tensorflow.TensorInfo2
transform/transform/Squeeze_9:0	џџџџџџџџџ
w
)type.googleapis.com/tensorflow.TensorInfoJ
7transform/transform/bucketize_2/apply_buckets/ToInt64:0	џџџџџџџџџ
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:25ParseExample/ParseExample:7ParseExample/ParseExample:43
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:19ParseExample/ParseExample:1ParseExample/ParseExample:37
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_15:0џџџџџџџџџ
m
)type.googleapis.com/tensorflow.TensorInfo@
-transform/transform/scale_to_z_score/Select:0џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_10:0	џџџџџџџџџ
Ї
)type.googleapis.com/tensorflow.TensorInfozџџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:28ParseExample/ParseExample:10ParseExample/ParseExample:46
Ї
)type.googleapis.com/tensorflow.TensorInfozџџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:30ParseExample/ParseExample:12ParseExample/ParseExample:48
І
)type.googleapis.com/tensorflow.TensorInfoy	џџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:26ParseExample/ParseExample:8ParseExample/ParseExample:44
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:24ParseExample/ParseExample:6ParseExample/ParseExample:42
Ї
)type.googleapis.com/tensorflow.TensorInfoz	џџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:32ParseExample/ParseExample:14ParseExample/ParseExample:50
Ї
)type.googleapis.com/tensorflow.TensorInfozџџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:29ParseExample/ParseExample:11ParseExample/ParseExample:47
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:27ParseExample/ParseExample:9ParseExample/ParseExample:45
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:21ParseExample/ParseExample:3ParseExample/ParseExample:39
o
)type.googleapis.com/tensorflow.TensorInfoB
/transform/transform/scale_to_z_score_1/Select:0џџџџџџџџџ"о
metric_variablesЩ
Ц
metrics/label/mean/total:0
metrics/label/mean/count:0
metrics/average_loss/total:0
metrics/average_loss/count:0
metrics/accuracy/total:0
metrics/accuracy/count:0
(metrics/precision/true_positives/count:0
)metrics/precision/false_positives/count:0
%metrics/recall/true_positives/count:0
&metrics/recall/false_negatives/count:0
metrics/prediction/mean/total:0
metrics/prediction/mean/count:0
metrics/auc/true_positives:0
metrics/auc/false_negatives:0
metrics/auc/true_negatives:0
metrics/auc/false_positives:0
-metrics/auc_precision_recall/true_positives:0
.metrics/auc_precision_recall/false_negatives:0
-metrics/auc_precision_recall/true_negatives:0
.metrics/auc_precision_recall/false_positives:0"се
cond_contextЯеЫе
Ѕ
@head/assert_range/assert_less_equal/Assert/AssertGuard/cond_text@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0Ahead/assert_range/assert_less_equal/Assert/AssertGuard/switch_t:0 *й
Khead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependency:0
@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0
Ahead/assert_range/assert_less_equal/Assert/AssertGuard/switch_t:0
@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0
щ

Bhead/assert_range/assert_less_equal/Assert/AssertGuard/cond_text_1@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0Ahead/assert_range/assert_less_equal/Assert/AssertGuard/switch_f:0*	
head/ToFloat:0
head/assert_range/Const:0
)head/assert_range/assert_less_equal/All:0
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
Hhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Hhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_3:0
Mhead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0
Ahead/assert_range/assert_less_equal/Assert/AssertGuard/switch_f:0s
)head/assert_range/assert_less_equal/All:0Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0e
head/assert_range/Const:0Hhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0Z
head/ToFloat:0Hhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Х
Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/cond_textThead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0Uhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t:0 *Н
_head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency:0
Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
Uhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t:0Ќ
Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
ђ
Vhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/cond_text_1Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0Uhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f:0*ъ	
head/ToFloat:0
=head/assert_range/assert_non_negative/assert_less_equal/All:0
Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
\head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
ahead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
Uhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f:0n
head/ToFloat:0\head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
=head/assert_range/assert_non_negative/assert_less_equal/All:0Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch:0Ќ
Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
ў
Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_textTmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0 *і
Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:0
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0 
Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1Ќ
Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Y
Vmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_text_1Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0*Щ(
lmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
lmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
~metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
zmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
|metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0
Imetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/rank:0
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rank:0
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0Ќ
Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Ч
Imetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/rank:0zmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0л
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0и
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ъ
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rank:0|metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:02л#
и#
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textnmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *!
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
~metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0н
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1к
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0р
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02н

к

pmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0р
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ц
smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
­
Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_textQmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0 *Ў
\metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency:0
Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0І
Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0

Smetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_text_1Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0*
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7:0
^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1:0
Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0
Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0
Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0Ї
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0Є
Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0­
Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0І
Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Ј
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
К
Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_textYmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0 *Ѓ
Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0
Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:0
Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0Ж
Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Њ
Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
ѓ\
[metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_text_1Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0*­*
qmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
qmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
~metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
|metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0
Nmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rank:0
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank:0
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0т
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0е
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0б
Nmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rank:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0х
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ж
Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:02%
%
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textsmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *Ј"
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
~metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
|metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0Ђ
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0ф
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1ъ
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0І
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0ч
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:12

umetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*Б
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0№
xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0ъ
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
е
Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_textVmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0 *Ч
ametrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency:0
Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0А
Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Ї
Xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_text_1Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0*
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0
^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7:0
cmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1:0
Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0
Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0
Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0В
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0А
Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Ў
Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0Б
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0З
Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0

=metrics/auc/assert_greater_equal/Assert/AssertGuard/cond_text=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0>metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_t:0 *Щ
Hmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependency:0
=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0
>metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_t:0~
=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0
П

?metrics/auc/assert_greater_equal/Assert/AssertGuard/cond_text_1=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0>metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f:0*ќ
head/predictions/logistic:0
metrics/auc/Cast/x:0
&metrics/auc/assert_greater_equal/All:0
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0
Emetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
Emetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_0:0
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1:0
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_3:0
Jmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependency_1:0
=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0
>metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f:0~
=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0]
metrics/auc/Cast/x:0Emetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0m
&metrics/auc/assert_greater_equal/All:0Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0d
head/predictions/logistic:0Emetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
є
:metrics/auc/assert_less_equal/Assert/AssertGuard/cond_text:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0;metrics/auc/assert_less_equal/Assert/AssertGuard/switch_t:0 *К
Emetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependency:0
:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0
;metrics/auc/assert_less_equal/Assert/AssertGuard/switch_t:0x
:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0


<metrics/auc/assert_less_equal/Assert/AssertGuard/cond_text_1:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0;metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f:0*а
head/predictions/logistic:0
metrics/auc/Cast_1/x:0
#metrics/auc/assert_less_equal/All:0
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
Bmetrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Bmetrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_3:0
Gmetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0
;metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f:0\
metrics/auc/Cast_1/x:0Bmetrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0g
#metrics/auc/assert_less_equal/All:0@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch:0x
:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0a
head/predictions/logistic:0Bmetrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Њ
Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_textMmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0 *З
@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar:0
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:0
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0
Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar:0Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
хS
Ometrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_text_1Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0*&
emetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
emetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
fmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
fmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
{metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
}metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
|metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
wmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
zmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
rmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
pmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
smetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
umetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0
Bmetrics/auc/broadcast_weights_1/assert_broadcastable/values/rank:0
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/rank:0
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0Й
Bmetrics/auc/broadcast_weights_1/assert_broadcastable/values/rank:0smetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0Э
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Ъ
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0М
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/rank:0umetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:02к!
з!
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textgmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
{metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
}metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
|metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
wmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
zmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
rmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
pmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0в
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Я
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ь
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:12



imetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*Х
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0в
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0и
lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
ѕ
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_textJmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Kmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0 *
Umetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency:0
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Kmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
П
Lmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_text_1Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Kmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0*е
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7:0
Wmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1:0
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Kmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0
@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar:0
Kmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Kmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar:0Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0

Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/cond_textNmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0Ometrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_t:0 *
Ymetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependency:0
Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0
Ometrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_t:0 
Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0
І
Pmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/cond_text_1Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0Ometrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f:0*А
head/predictions/logistic:0
%metrics/auc_precision_recall/Cast/x:0
7metrics/auc_precision_recall/assert_greater_equal/All:0
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0
Vmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
Vmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_0:0
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_1:0
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_3:0
[metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependency_1:0
Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0
Ometrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f:0 
Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0u
head/predictions/logistic:0Vmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
7metrics/auc_precision_recall/assert_greater_equal/All:0Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0
%metrics/auc_precision_recall/Cast/x:0Vmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
§
Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/cond_textKmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0Lmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_t:0 *
Vmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependency:0
Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0
Lmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_t:0
Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0
ё
Mmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/cond_text_1Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0Lmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f:0*
head/predictions/logistic:0
'metrics/auc_precision_recall/Cast_1/x:0
4metrics/auc_precision_recall/assert_less_equal/All:0
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
Smetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Smetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_3:0
Xmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0
Lmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f:0r
head/predictions/logistic:0Smetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0
4metrics/auc_precision_recall/assert_less_equal/All:0Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch:0~
'metrics/auc_precision_recall/Cast_1/x:0Smetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
і
^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_text^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0 *а
Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar:0
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:0
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0Д
Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar:0_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1Р
^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
й`
`metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_text_1^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0*,
vmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
vmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
}metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0
Smetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/rank:0
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rank:0
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0п
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rank:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0Р
^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0я
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0м
Smetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/rank:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0ь
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:02Ц&
У&
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textxmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *Я#
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0А
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0ё
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1ю
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1Ќ
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0є
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02е
в
zmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*о
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
}metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0є
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0њ
}metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
§
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_text[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0 *р
fmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency:0
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0К
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Н
]metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_text_1[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0* 
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0
cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7:0
hmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1:0
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0
Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar:0
\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0С
\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0К
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0М
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0Л
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0И
Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar:0cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0"
'evaluation_only/label_graph/labels/node`*^
\
)type.googleapis.com/tensorflow.TensorInfo/
transform/transform/Select:0	џџџџџџџџџ"є
saved_model_assetsн*к
k
+type.googleapis.com/tensorflow.AssetFileDef<

	Const_1:0-vocab_compute_and_apply_vocabulary_vocabulary
k
+type.googleapis.com/tensorflow.AssetFileDef<
	
Const:0/vocab_compute_and_apply_vocabulary_1_vocabulary"
tft_schema_override_minы
ш
Dtransform/transform/compute_and_apply_vocabulary/apply_vocab/Const:0
Ftransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const:0
3transform/transform/bucketize/apply_buckets/Const:0
5transform/transform/bucketize_1/apply_buckets/Const:0
5transform/transform/bucketize_2/apply_buckets/Const:0
5transform/transform/bucketize_3/apply_buckets/Const:0"Ѓ
tft_schema_override_max

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/sub:0
Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub:0
;transform/transform/bucketize/apply_buckets/strided_slice:0
=transform/transform/bucketize_1/apply_buckets/strided_slice:0
=transform/transform/bucketize_2/apply_buckets/strided_slice:0
=transform/transform/bucketize_3/apply_buckets/strided_slice:0"=
&evaluation_only/label_graph/labels/key
$Bytes$__labels"
local_variables

metrics/label/mean/total:0metrics/label/mean/total/Assignmetrics/label/mean/total/read:02,metrics/label/mean/total/Initializer/zeros:0

metrics/label/mean/count:0metrics/label/mean/count/Assignmetrics/label/mean/count/read:02,metrics/label/mean/count/Initializer/zeros:0

metrics/average_loss/total:0!metrics/average_loss/total/Assign!metrics/average_loss/total/read:02.metrics/average_loss/total/Initializer/zeros:0

metrics/average_loss/count:0!metrics/average_loss/count/Assign!metrics/average_loss/count/read:02.metrics/average_loss/count/Initializer/zeros:0

metrics/accuracy/total:0metrics/accuracy/total/Assignmetrics/accuracy/total/read:02*metrics/accuracy/total/Initializer/zeros:0

metrics/accuracy/count:0metrics/accuracy/count/Assignmetrics/accuracy/count/read:02*metrics/accuracy/count/Initializer/zeros:0
Ф
(metrics/precision/true_positives/count:0-metrics/precision/true_positives/count/Assign-metrics/precision/true_positives/count/read:02:metrics/precision/true_positives/count/Initializer/zeros:0
Ш
)metrics/precision/false_positives/count:0.metrics/precision/false_positives/count/Assign.metrics/precision/false_positives/count/read:02;metrics/precision/false_positives/count/Initializer/zeros:0
И
%metrics/recall/true_positives/count:0*metrics/recall/true_positives/count/Assign*metrics/recall/true_positives/count/read:027metrics/recall/true_positives/count/Initializer/zeros:0
М
&metrics/recall/false_negatives/count:0+metrics/recall/false_negatives/count/Assign+metrics/recall/false_negatives/count/read:028metrics/recall/false_negatives/count/Initializer/zeros:0
 
metrics/prediction/mean/total:0$metrics/prediction/mean/total/Assign$metrics/prediction/mean/total/read:021metrics/prediction/mean/total/Initializer/zeros:0
 
metrics/prediction/mean/count:0$metrics/prediction/mean/count/Assign$metrics/prediction/mean/count/read:021metrics/prediction/mean/count/Initializer/zeros:0

metrics/auc/true_positives:0!metrics/auc/true_positives/Assign!metrics/auc/true_positives/read:02.metrics/auc/true_positives/Initializer/zeros:0

metrics/auc/false_negatives:0"metrics/auc/false_negatives/Assign"metrics/auc/false_negatives/read:02/metrics/auc/false_negatives/Initializer/zeros:0

metrics/auc/true_negatives:0!metrics/auc/true_negatives/Assign!metrics/auc/true_negatives/read:02.metrics/auc/true_negatives/Initializer/zeros:0

metrics/auc/false_positives:0"metrics/auc/false_positives/Assign"metrics/auc/false_positives/read:02/metrics/auc/false_positives/Initializer/zeros:0
и
-metrics/auc_precision_recall/true_positives:02metrics/auc_precision_recall/true_positives/Assign2metrics/auc_precision_recall/true_positives/read:02?metrics/auc_precision_recall/true_positives/Initializer/zeros:0
м
.metrics/auc_precision_recall/false_negatives:03metrics/auc_precision_recall/false_negatives/Assign3metrics/auc_precision_recall/false_negatives/read:02@metrics/auc_precision_recall/false_negatives/Initializer/zeros:0
и
-metrics/auc_precision_recall/true_negatives:02metrics/auc_precision_recall/true_negatives/Assign2metrics/auc_precision_recall/true_negatives/read:02?metrics/auc_precision_recall/true_negatives/Initializer/zeros:0
м
.metrics/auc_precision_recall/false_positives:03metrics/auc_precision_recall/false_positives/Assign3metrics/auc_precision_recall/false_positives/read:02@metrics/auc_precision_recall/false_positives/Initializer/zeros:0"
(evaluation_only/label_graph/features/keyхт
$Bytes$fare
$Bytes$pickup_latitude_xf
$Bytes$pickup_community_area_xf
$Bytes$payment_type_xf
$Bytes$company
$Bytes$trip_start_timestamp
$Bytes$trip_start_month
$Bytes$dropoff_longitude
$Bytes$dropoff_community_area
$Bytes$dropoff_census_tract_xf
$Bytes$trip_seconds
$Bytes$pickup_census_tract_xf
$Bytes$tips_xf
$Bytes$trip_start_month_xf
$Bytes$company_xf
$Bytes$dropoff_longitude_xf
$Bytes$trip_seconds_xf
$Bytes$pickup_longitude_xf
$Bytes$trip_start_hour
$Bytes$trip_start_hour_xf
$Bytes$dropoff_latitude_xf
$Bytes$pickup_census_tract
$Bytes$dropoff_census_tract
 $Bytes$dropoff_community_area_xf
$Bytes$trip_miles_xf
$Bytes$trip_start_day_xf
$Bytes$pickup_longitude
$Bytes$trip_miles
$Bytes$pickup_community_area
$Bytes$payment_type
$Bytes$trip_start_day
$Bytes$tips
$Bytes$pickup_latitude
$Bytes$dropoff_latitude
$Bytes$fare_xf"э+
	variablesп+м+
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
ь
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_0/kerneld  "d(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_0/biasd "d(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign5dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_1/kerneldF  "dF(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign3dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_1/biasF "F(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign5dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_2/kernelF0  "F0(2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign3dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_2/bias0 "0(21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_3/kernel/part_0:0&dnn/hiddenlayer_3/kernel/part_0/Assign5dnn/hiddenlayer_3/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_3/kernel0"  "0"(2<dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_3/bias/part_0:0$dnn/hiddenlayer_3/bias/part_0/Assign3dnn/hiddenlayer_3/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_3/bias" ""(21dnn/hiddenlayer_3/bias/part_0/Initializer/zeros:08
Щ
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"
dnn/logits/kernel"  ""(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
Г
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias "(2*dnn/logits/bias/part_0/Initializer/zeros:08
Ћ
/linear/linear_model/company_xf/weights/part_0:04linear/linear_model/company_xf/weights/part_0/AssignClinear/linear_model/company_xf/weights/part_0/Read/ReadVariableOp:0"6
&linear/linear_model/company_xf/weightsђ  "ђ(2Alinear/linear_model/company_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/dropoff_latitude_xf/weights/part_0:0=linear/linear_model/dropoff_latitude_xf/weights/part_0/AssignLlinear/linear_model/dropoff_latitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/dropoff_latitude_xf/weights
  "
(2Jlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zeros:08
л
9linear/linear_model/dropoff_longitude_xf/weights/part_0:0>linear/linear_model/dropoff_longitude_xf/weights/part_0/AssignMlinear/linear_model/dropoff_longitude_xf/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/dropoff_longitude_xf/weights
  "
(2Klinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zeros:08
Ф
4linear/linear_model/payment_type_xf/weights/part_0:09linear/linear_model/payment_type_xf/weights/part_0/AssignHlinear/linear_model/payment_type_xf/weights/part_0/Read/ReadVariableOp:0";
+linear/linear_model/payment_type_xf/weightsђ  "ђ(2Flinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/pickup_latitude_xf/weights/part_0:0<linear/linear_model/pickup_latitude_xf/weights/part_0/AssignKlinear/linear_model/pickup_latitude_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/pickup_latitude_xf/weights
  "
(2Ilinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/pickup_longitude_xf/weights/part_0:0=linear/linear_model/pickup_longitude_xf/weights/part_0/AssignLlinear/linear_model/pickup_longitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/pickup_longitude_xf/weights
  "
(2Jlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zeros:08
Ь
6linear/linear_model/trip_start_day_xf/weights/part_0:0;linear/linear_model/trip_start_day_xf/weights/part_0/AssignJlinear/linear_model/trip_start_day_xf/weights/part_0/Read/ReadVariableOp:0";
-linear/linear_model/trip_start_day_xf/weights  "(2Hlinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/trip_start_hour_xf/weights/part_0:0<linear/linear_model/trip_start_hour_xf/weights/part_0/AssignKlinear/linear_model/trip_start_hour_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/trip_start_hour_xf/weights  "(2Ilinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/trip_start_month_xf/weights/part_0:0=linear/linear_model/trip_start_month_xf/weights/part_0/AssignLlinear/linear_model/trip_start_month_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/trip_start_month_xf/weights  "(2Jlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08")
asset_filepaths

	Const_1:0
Const:0"Д
tft_schema_override_tensor

Utransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup:0
Wtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup:0
5transform/transform/bucketize/apply_buckets/ToInt64:0
7transform/transform/bucketize_1/apply_buckets/ToInt64:0
7transform/transform/bucketize_2/apply_buckets/ToInt64:0
7transform/transform/bucketize_3/apply_buckets/ToInt64:0"у
table_initializerЭ
Ъ
btransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_table/table_init
dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_table/table_init"&
losses

head/weighted_loss/Sum:0*ё0
evalш0
Q
features/trip_start_hour_xf2
transform/transform/Squeeze_9:0	џџџџџџџџџ

features/payment_typeyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:24ParseExample/ParseExample:6ParseExample/ParseExample:42

features/pickup_latitudeyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:27ParseExample/ParseExample:9ParseExample/ParseExample:45

features/dropoff_latitudeyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:21ParseExample/ParseExample:3ParseExample/ParseExample:39

tfma/version
	Const_2:0 
j
features/dropoff_latitude_xfJ
7transform/transform/bucketize_2/apply_buckets/ToInt64:0	џџџџџџџџџ

features/trip_start_hourz	џџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:33ParseExample/ParseExample:15ParseExample/ParseExample:51
C
features/tips_xf/
transform/transform/Select:0	џџџџџџџџџ
X
!features/pickup_community_area_xf3
 transform/transform/Squeeze_14:0	џџџџџџџџџ

features/trip_start_monthz	џџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:34ParseExample/ParseExample:16ParseExample/ParseExample:52

features/dropoff_longitudeyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:22ParseExample/ParseExample:4ParseExample/ParseExample:40

features/dropoff_community_areayџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:20ParseExample/ParseExample:2ParseExample/ParseExample:38

features/payment_type_xfh
Utransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup:0	џџџџџџџџџ
g
features/pickup_latitude_xfH
5transform/transform/bucketize/apply_buckets/ToInt64:0	џџџџџџџџџ
(

input_refs
range:0џџџџџџџџџ

features/trip_start_timestampz	џџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:35ParseExample/ParseExample:17ParseExample/ParseExample:53

features/tipszџџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:29ParseExample/ParseExample:11ParseExample/ParseExample:47
Y
"features/dropoff_community_area_xf3
 transform/transform/Squeeze_15:0џџџџџџџџџ
^
features/trip_seconds_xfB
/transform/transform/scale_to_z_score_2/Select:0џџџџџџџџџ
<
inputs/examples)
input_example_tensor:0џџџџџџџџџ
j
features/pickup_longitude_xfJ
7transform/transform/bucketize_1/apply_buckets/ToInt64:0	џџџџџџџџџ

features/trip_mileszџџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:30ParseExample/ParseExample:12ParseExample/ParseExample:48
Q
features/trip_start_day_xf3
 transform/transform/Squeeze_10:0	џџџџџџџџџ
k
features/dropoff_longitude_xfJ
7transform/transform/bucketize_3/apply_buckets/ToInt64:0	џџџџџџџџџ

features/trip_secondszџџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:31ParseExample/ParseExample:13ParseExample/ParseExample:49
V
features/fare_xfB
/transform/transform/scale_to_z_score_1/Select:0џџџџџџџџџ

features/pickup_community_areay	џџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:26ParseExample/ParseExample:8ParseExample/ParseExample:44
Z
features/trip_miles_xf@
-transform/transform/scale_to_z_score/Select:0џџџџџџџџџ
W
 features/dropoff_census_tract_xf3
 transform/transform/Squeeze_13:0џџџџџџџџџ

features/pickup_census_tractyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:25ParseExample/ParseExample:7ParseExample/ParseExample:43
S
features/trip_start_month_xf3
 transform/transform/Squeeze_11:0	џџџџџџџџџ

features/companyyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:18ParseExample/ParseExample:0ParseExample/ParseExample:36

features/company_xfj
Wtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup:0	џџџџџџџџџ

features/dropoff_census_tractyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:19ParseExample/ParseExample:1ParseExample/ParseExample:37
9
labels/
transform/transform/Select:0	џџџџџџџџџ

features/fareyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:23ParseExample/ParseExample:5ParseExample/ParseExample:41

features/trip_start_dayz	џџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:32ParseExample/ParseExample:14ParseExample/ParseExample:50

features/pickup_longitudezџџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:28ParseExample/ParseExample:10ParseExample/ParseExample:46
V
features/pickup_census_tract_xf3
 transform/transform/Squeeze_12:0џџџџџџџџџH
metrics/average_loss/update_op&
 metrics/average_loss/update_op:0 @
metrics/accuracy/update_op"
metrics/accuracy/update_op:0 :
metrics/precision/value
metrics/precision/value:0 X
&metrics/auc_precision_recall/update_op.
(metrics/auc_precision_recall/update_op:0 4
metrics/recall/value
metrics/recall/value:0 2
predictions/logits
add:0џџџџџџџџџB
metrics/precision/update_op#
metrics/precision/update_op:0 <
metrics/label/mean/value 
metrics/label/mean/value:0 6
metrics/auc/update_op
metrics/auc/update_op:0 D
metrics/label/mean/update_op$
metrics/label/mean/update_op:0 T
predictions/probabilities7
 head/predictions/probabilities:0џџџџџџџџџ&
loss
head/weighted_loss/Sum:0 .
metrics/auc/value
metrics/auc/value:0 P
"metrics/auc_precision_recall/value*
$metrics/auc_precision_recall/value:0 <
metrics/recall/update_op 
metrics/recall/update_op:0 R
#metrics/accuracy_baseline/update_op+
%metrics/accuracy_baseline/update_op:0 M
predictions/class_ids4
head/predictions/ExpandDims:0	џџџџџџџџџ@
metrics/average_loss/value"
metrics/average_loss/value:0 8
metrics/accuracy/value
metrics/accuracy/value:0 J
metrics/accuracy_baseline/value'
!metrics/accuracy_baseline/value:0 L
predictions/classes5
head/predictions/str_classes:0џџџџџџџџџJ
predictions/logistic2
head/predictions/logistic:0џџџџџџџџџN
!metrics/prediction/mean/update_op)
#metrics/prediction/mean/update_op:0 F
metrics/prediction/mean/value%
metrics/prediction/mean/value:0 tensorflow/supervised/eval