.class public Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;
.super Ljava/lang/Object;
.source "TricubicInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/TrivariateFunction;


# static fields
.field private static final AINV:[[D


# instance fields
.field private final splines:[[[Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

.field private final xval:[D

.field private final yval:[D

.field private final zval:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x40

    .line 44
    new-array v0, v3, [[D

    const/4 v1, 0x0

    new-array v2, v3, [D

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [D

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [D

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [D

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [D

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [D

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [D

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [D

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [D

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [D

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [D

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [D

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [D

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [D

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [D

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [D

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [D

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [D

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [D

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [D

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [D

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [D

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [D

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [D

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [D

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [D

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [D

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [D

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [D

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [D

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [D

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [D

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [D

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [D

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [D

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [D

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [D

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [D

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [D

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [D

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [D

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [D

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [D

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [D

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [D

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [D

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [D

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [D

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [D

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [D

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [D

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [D

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [D

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [D

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [D

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [D

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [D

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [D

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [D

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [D

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [D

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [D

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [D

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [D

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->AINV:[[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 8
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 8
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_10
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_11
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_12
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_13
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_14
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_15
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_16
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_17
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_18
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_19
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1a
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1b
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1c
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1e
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1f
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_20
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_21
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_22
    .array-data 8
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        0x0
        0x0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_23
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_24
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_25
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
    .end array-data

    :array_26
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        0x0
        0x0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_27
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
    .end array-data

    :array_28
    .array-data 8
        0x4022000000000000L    # 9.0
        0x0
        -0x3fde000000000000L    # -9.0
        0x0
        -0x3fde000000000000L    # -9.0
        0x0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_29
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4022000000000000L    # 9.0
        0x0
        -0x3fde000000000000L    # -9.0
        0x0
        -0x3fde000000000000L    # -9.0
        0x0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_2a
    .array-data 8
        -0x3fc5000000000000L    # -27.0
        0x403b000000000000L    # 27.0
        0x403b000000000000L    # 27.0
        -0x3fc5000000000000L    # -27.0
        0x403b000000000000L    # 27.0
        -0x3fc5000000000000L    # -27.0
        -0x3fc5000000000000L    # -27.0
        0x403b000000000000L    # 27.0
        -0x3fce000000000000L    # -18.0
        -0x3fde000000000000L    # -9.0
        0x4032000000000000L    # 18.0
        0x4022000000000000L    # 9.0
        0x4032000000000000L    # 18.0
        0x4022000000000000L    # 9.0
        -0x3fce000000000000L    # -18.0
        -0x3fde000000000000L    # -9.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_2b
    .array-data 8
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4022000000000000L    # 9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4022000000000000L    # 9.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2c
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
    .end array-data

    :array_2e
    .array-data 8
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2f
    .array-data 8
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe0000000000000L    # -8.0
        0x4020000000000000L    # 8.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_30
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_31
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_32
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_33
    .array-data 8
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_34
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_35
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
    .end array-data

    :array_36
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
    .end array-data

    :array_37
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_38
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_39
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
    .end array-data

    :array_3a
    .array-data 8
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_3b
    .array-data 8
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe0000000000000L    # -8.0
        0x4020000000000000L    # 8.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_3c
    .array-data 8
        0x4010000000000000L    # 4.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_3e
    .array-data 8
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_3f
    .array-data 8
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        -0x3fe0000000000000L    # -8.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        0x4020000000000000L    # 8.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>([D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D)V
    .locals 36
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "z"    # [D
    .param p4, "f"    # [[[D
    .param p5, "dFdX"    # [[[D
    .param p6, "dFdY"    # [[[D
    .param p7, "dFdZ"    # [[[D
    .param p8, "d2FdXdY"    # [[[D
    .param p9, "d2FdXdZ"    # [[[D
    .param p10, "d2FdYdZ"    # [[[D
    .param p11, "d3FdXdYdZ"    # [[[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 150
    move-object/from16 v0, p1

    array-length v14, v0

    .line 151
    .local v14, "xLen":I
    move-object/from16 v0, p2

    array-length v15, v0

    .line 152
    .local v15, "yLen":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    .line 154
    .local v28, "zLen":I
    if-eqz v14, :cond_0

    if-eqz v15, :cond_0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v29, v0

    if-eqz v29, :cond_0

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v29, v0

    if-eqz v29, :cond_0

    const/16 v29, 0x0

    aget-object v29, p4, v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-nez v29, :cond_1

    .line 155
    :cond_0
    new-instance v29, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct/range {v29 .. v29}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v29

    .line 157
    :cond_1
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v14, v0, :cond_2

    .line 158
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v14, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 160
    :cond_2
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v14, v0, :cond_3

    .line 161
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v14, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 163
    :cond_3
    move-object/from16 v0, p6

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v14, v0, :cond_4

    .line 164
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p6

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v14, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 166
    :cond_4
    move-object/from16 v0, p7

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v14, v0, :cond_5

    .line 167
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p7

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v14, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 169
    :cond_5
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v14, v0, :cond_6

    .line 170
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v14, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 172
    :cond_6
    move-object/from16 v0, p9

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v14, v0, :cond_7

    .line 173
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p9

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v14, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 175
    :cond_7
    move-object/from16 v0, p10

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v14, v0, :cond_8

    .line 176
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p10

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v14, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 178
    :cond_8
    move-object/from16 v0, p11

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v14, v0, :cond_9

    .line 179
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p11

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v14, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 182
    :cond_9
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 183
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 184
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 186
    invoke-virtual/range {p1 .. p1}, [D->clone()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [D

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    .line 187
    invoke-virtual/range {p2 .. p2}, [D->clone()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [D

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    .line 188
    invoke-virtual/range {p3 .. p3}, [D->clone()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [D

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    .line 190
    add-int/lit8 v11, v14, -0x1

    .line 191
    .local v11, "lastI":I
    add-int/lit8 v12, v15, -0x1

    .line 192
    .local v12, "lastJ":I
    add-int/lit8 v13, v28, -0x1

    .line 193
    .local v13, "lastK":I
    filled-new-array {v11, v12, v13}, [I

    move-result-object v29

    const-class v32, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [[[Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->splines:[[[Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    .line 195
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v11, :cond_1c

    .line 196
    aget-object v29, p4, v5

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v15, :cond_a

    .line 197
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v32, p4, v5

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 199
    :cond_a
    aget-object v29, p5, v5

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v15, :cond_b

    .line 200
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v32, p5, v5

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 202
    :cond_b
    aget-object v29, p6, v5

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v15, :cond_c

    .line 203
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v32, p6, v5

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 205
    :cond_c
    aget-object v29, p7, v5

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v15, :cond_d

    .line 206
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v32, p7, v5

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 208
    :cond_d
    aget-object v29, p8, v5

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v15, :cond_e

    .line 209
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v32, p8, v5

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 211
    :cond_e
    aget-object v29, p9, v5

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v15, :cond_f

    .line 212
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v32, p9, v5

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 214
    :cond_f
    aget-object v29, p10, v5

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v15, :cond_10

    .line 215
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v32, p10, v5

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 217
    :cond_10
    aget-object v29, p11, v5

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v15, :cond_11

    .line 218
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v32, p11, v5

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v0, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 221
    :cond_11
    add-int/lit8 v6, v5, 0x1

    .line 222
    .local v6, "ip1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    move-object/from16 v29, v0

    aget-wide v32, v29, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    move-object/from16 v29, v0

    aget-wide v34, v29, v5

    sub-double v16, v32, v34

    .line 223
    .local v16, "xR":D
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v12, :cond_1b

    .line 224
    aget-object v29, p4, v5

    aget-object v29, v29, v7

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v28

    if-eq v0, v1, :cond_12

    .line 225
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v32, p4, v5

    aget-object v32, v32, v7

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 227
    :cond_12
    aget-object v29, p5, v5

    aget-object v29, v29, v7

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v28

    if-eq v0, v1, :cond_13

    .line 228
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v32, p5, v5

    aget-object v32, v32, v7

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 230
    :cond_13
    aget-object v29, p6, v5

    aget-object v29, v29, v7

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v28

    if-eq v0, v1, :cond_14

    .line 231
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v32, p6, v5

    aget-object v32, v32, v7

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 233
    :cond_14
    aget-object v29, p7, v5

    aget-object v29, v29, v7

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v28

    if-eq v0, v1, :cond_15

    .line 234
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v32, p7, v5

    aget-object v32, v32, v7

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 236
    :cond_15
    aget-object v29, p8, v5

    aget-object v29, v29, v7

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v28

    if-eq v0, v1, :cond_16

    .line 237
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v32, p8, v5

    aget-object v32, v32, v7

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 239
    :cond_16
    aget-object v29, p9, v5

    aget-object v29, v29, v7

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v28

    if-eq v0, v1, :cond_17

    .line 240
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v32, p9, v5

    aget-object v32, v32, v7

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 242
    :cond_17
    aget-object v29, p10, v5

    aget-object v29, v29, v7

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v28

    if-eq v0, v1, :cond_18

    .line 243
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v32, p10, v5

    aget-object v32, v32, v7

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 245
    :cond_18
    aget-object v29, p11, v5

    aget-object v29, v29, v7

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v28

    if-eq v0, v1, :cond_19

    .line 246
    new-instance v29, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v32, p11, v5

    aget-object v32, v32, v7

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v29

    .line 249
    :cond_19
    add-int/lit8 v8, v7, 0x1

    .line 250
    .local v8, "jp1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    move-object/from16 v29, v0

    aget-wide v32, v29, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    move-object/from16 v29, v0

    aget-wide v34, v29, v7

    sub-double v24, v32, v34

    .line 251
    .local v24, "yR":D
    mul-double v18, v16, v24

    .line 252
    .local v18, "xRyR":D
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2
    if-ge v9, v13, :cond_1a

    .line 253
    add-int/lit8 v10, v9, 0x1

    .line 254
    .local v10, "kp1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    move-object/from16 v29, v0

    aget-wide v32, v29, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    move-object/from16 v29, v0

    aget-wide v34, v29, v9

    sub-double v30, v32, v34

    .line 255
    .local v30, "zR":D
    mul-double v22, v16, v30

    .line 256
    .local v22, "xRzR":D
    mul-double v26, v24, v30

    .line 257
    .local v26, "yRzR":D
    mul-double v20, v16, v26

    .line 259
    .local v20, "xRyRzR":D
    const/16 v29, 0x40

    move/from16 v0, v29

    new-array v4, v0, [D

    const/16 v29, 0x0

    aget-object v32, p4, v5

    aget-object v32, v32, v7

    aget-wide v32, v32, v9

    aput-wide v32, v4, v29

    const/16 v29, 0x1

    aget-object v32, p4, v6

    aget-object v32, v32, v7

    aget-wide v32, v32, v9

    aput-wide v32, v4, v29

    const/16 v29, 0x2

    aget-object v32, p4, v5

    aget-object v32, v32, v8

    aget-wide v32, v32, v9

    aput-wide v32, v4, v29

    const/16 v29, 0x3

    aget-object v32, p4, v6

    aget-object v32, v32, v8

    aget-wide v32, v32, v9

    aput-wide v32, v4, v29

    const/16 v29, 0x4

    aget-object v32, p4, v5

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    aput-wide v32, v4, v29

    const/16 v29, 0x5

    aget-object v32, p4, v6

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    aput-wide v32, v4, v29

    const/16 v29, 0x6

    aget-object v32, p4, v5

    aget-object v32, v32, v8

    aget-wide v32, v32, v10

    aput-wide v32, v4, v29

    const/16 v29, 0x7

    aget-object v32, p4, v6

    aget-object v32, v32, v8

    aget-wide v32, v32, v10

    aput-wide v32, v4, v29

    const/16 v29, 0x8

    aget-object v32, p5, v5

    aget-object v32, v32, v7

    aget-wide v32, v32, v9

    mul-double v32, v32, v16

    aput-wide v32, v4, v29

    const/16 v29, 0x9

    aget-object v32, p5, v6

    aget-object v32, v32, v7

    aget-wide v32, v32, v9

    mul-double v32, v32, v16

    aput-wide v32, v4, v29

    const/16 v29, 0xa

    aget-object v32, p5, v5

    aget-object v32, v32, v8

    aget-wide v32, v32, v9

    mul-double v32, v32, v16

    aput-wide v32, v4, v29

    const/16 v29, 0xb

    aget-object v32, p5, v6

    aget-object v32, v32, v8

    aget-wide v32, v32, v9

    mul-double v32, v32, v16

    aput-wide v32, v4, v29

    const/16 v29, 0xc

    aget-object v32, p5, v5

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    mul-double v32, v32, v16

    aput-wide v32, v4, v29

    const/16 v29, 0xd

    aget-object v32, p5, v6

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    mul-double v32, v32, v16

    aput-wide v32, v4, v29

    const/16 v29, 0xe

    aget-object v32, p5, v5

    aget-object v32, v32, v8

    aget-wide v32, v32, v10

    mul-double v32, v32, v16

    aput-wide v32, v4, v29

    const/16 v29, 0xf

    aget-object v32, p5, v6

    aget-object v32, v32, v8

    aget-wide v32, v32, v10

    mul-double v32, v32, v16

    aput-wide v32, v4, v29

    const/16 v29, 0x10

    aget-object v32, p6, v5

    aget-object v32, v32, v7

    aget-wide v32, v32, v9

    mul-double v32, v32, v24

    aput-wide v32, v4, v29

    const/16 v29, 0x11

    aget-object v32, p6, v6

    aget-object v32, v32, v7

    aget-wide v32, v32, v9

    mul-double v32, v32, v24

    aput-wide v32, v4, v29

    const/16 v29, 0x12

    aget-object v32, p6, v5

    aget-object v32, v32, v8

    aget-wide v32, v32, v9

    mul-double v32, v32, v24

    aput-wide v32, v4, v29

    const/16 v29, 0x13

    aget-object v32, p6, v6

    aget-object v32, v32, v8

    aget-wide v32, v32, v9

    mul-double v32, v32, v24

    aput-wide v32, v4, v29

    const/16 v29, 0x14

    aget-object v32, p6, v5

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    mul-double v32, v32, v24

    aput-wide v32, v4, v29

    const/16 v29, 0x15

    aget-object v32, p6, v6

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    mul-double v32, v32, v24

    aput-wide v32, v4, v29

    const/16 v29, 0x16

    aget-object v32, p6, v5

    aget-object v32, v32, v8

    aget-wide v32, v32, v10

    mul-double v32, v32, v24

    aput-wide v32, v4, v29

    const/16 v29, 0x17

    aget-object v32, p6, v6

    aget-object v32, v32, v8

    aget-wide v32, v32, v10

    mul-double v32, v32, v24

    aput-wide v32, v4, v29

    const/16 v29, 0x18

    aget-object v32, p7, v5

    aget-object v32, v32, v7

    aget-wide v32, v32, v9

    mul-double v32, v32, v30

    aput-wide v32, v4, v29

    const/16 v29, 0x19

    aget-object v32, p7, v6

    aget-object v32, v32, v7

    aget-wide v32, v32, v9

    mul-double v32, v32, v30

    aput-wide v32, v4, v29

    const/16 v29, 0x1a

    aget-object v32, p7, v5

    aget-object v32, v32, v8

    aget-wide v32, v32, v9

    mul-double v32, v32, v30

    aput-wide v32, v4, v29

    const/16 v29, 0x1b

    aget-object v32, p7, v6

    aget-object v32, v32, v8

    aget-wide v32, v32, v9

    mul-double v32, v32, v30

    aput-wide v32, v4, v29

    const/16 v29, 0x1c

    aget-object v32, p7, v5

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    mul-double v32, v32, v30

    aput-wide v32, v4, v29

    const/16 v29, 0x1d

    aget-object v32, p7, v6

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    mul-double v32, v32, v30

    aput-wide v32, v4, v29

    const/16 v29, 0x1e

    aget-object v32, p7, v5

    aget-object v32, v32, v8

    aget-wide v32, v32, v10

    mul-double v32, v32, v30

    aput-wide v32, v4, v29

    const/16 v29, 0x1f

    aget-object v32, p7, v6

    aget-object v32, v32, v8

    aget-wide v32, v32, v10

    mul-double v32, v32, v30

    aput-wide v32, v4, v29

    const/16 v29, 0x20

    aget-object v32, p8, v5

    aget-object v32, v32, v7

    aget-wide v32, v32, v9

    mul-double v32, v32, v18

    aput-wide v32, v4, v29

    const/16 v29, 0x21

    aget-object v32, p8, v6

    aget-object v32, v32, v7

    aget-wide v32, v32, v9

    mul-double v32, v32, v18

    aput-wide v32, v4, v29

    const/16 v29, 0x22

    aget-object v32, p8, v5

    aget-object v32, v32, v8

    aget-wide v32, v32, v9

    mul-double v32, v32, v18

    aput-wide v32, v4, v29

    const/16 v29, 0x23

    aget-object v32, p8, v6

    aget-object v32, v32, v8

    aget-wide v32, v32, v9

    mul-double v32, v32, v18

    aput-wide v32, v4, v29

    const/16 v29, 0x24

    aget-object v32, p8, v5

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    mul-double v32, v32, v18

    aput-wide v32, v4, v29

    const/16 v29, 0x25

    aget-object v32, p8, v6

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    mul-double v32, v32, v18

    aput-wide v32, v4, v29

    const/16 v29, 0x26

    aget-object v32, p8, v5

    aget-object v32, v32, v8

    aget-wide v32, v32, v10

    mul-double v32, v32, v18

    aput-wide v32, v4, v29

    const/16 v29, 0x27

    aget-object v32, p8, v6

    aget-object v32, v32, v8

    aget-wide v32, v32, v10

    mul-double v32, v32, v18

    aput-wide v32, v4, v29

    const/16 v29, 0x28

    aget-object v32, p9, v5

    aget-object v32, v32, v7

    aget-wide v32, v32, v9

    mul-double v32, v32, v22

    aput-wide v32, v4, v29

    const/16 v29, 0x29

    aget-object v32, p9, v6

    aget-object v32, v32, v7

    aget-wide v32, v32, v9

    mul-double v32, v32, v22

    aput-wide v32, v4, v29

    const/16 v29, 0x2a

    aget-object v32, p9, v5

    aget-object v32, v32, v8

    aget-wide v32, v32, v9

    mul-double v32, v32, v22

    aput-wide v32, v4, v29

    const/16 v29, 0x2b

    aget-object v32, p9, v6

    aget-object v32, v32, v8

    aget-wide v32, v32, v9

    mul-double v32, v32, v22

    aput-wide v32, v4, v29

    const/16 v29, 0x2c

    aget-object v32, p9, v5

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    mul-double v32, v32, v22

    aput-wide v32, v4, v29

    const/16 v29, 0x2d

    aget-object v32, p9, v6

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    mul-double v32, v32, v22

    aput-wide v32, v4, v29

    const/16 v29, 0x2e

    aget-object v32, p9, v5

    aget-object v32, v32, v8

    aget-wide v32, v32, v10

    mul-double v32, v32, v22

    aput-wide v32, v4, v29

    const/16 v29, 0x2f

    aget-object v32, p9, v6

    aget-object v32, v32, v8

    aget-wide v32, v32, v10

    mul-double v32, v32, v22

    aput-wide v32, v4, v29

    const/16 v29, 0x30

    aget-object v32, p10, v5

    aget-object v32, v32, v7

    aget-wide v32, v32, v9

    mul-double v32, v32, v26

    aput-wide v32, v4, v29

    const/16 v29, 0x31

    aget-object v32, p10, v6

    aget-object v32, v32, v7

    aget-wide v32, v32, v9

    mul-double v32, v32, v26

    aput-wide v32, v4, v29

    const/16 v29, 0x32

    aget-object v32, p10, v5

    aget-object v32, v32, v8

    aget-wide v32, v32, v9

    mul-double v32, v32, v26

    aput-wide v32, v4, v29

    const/16 v29, 0x33

    aget-object v32, p10, v6

    aget-object v32, v32, v8

    aget-wide v32, v32, v9

    mul-double v32, v32, v26

    aput-wide v32, v4, v29

    const/16 v29, 0x34

    aget-object v32, p10, v5

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    mul-double v32, v32, v26

    aput-wide v32, v4, v29

    const/16 v29, 0x35

    aget-object v32, p10, v6

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    mul-double v32, v32, v26

    aput-wide v32, v4, v29

    const/16 v29, 0x36

    aget-object v32, p10, v5

    aget-object v32, v32, v8

    aget-wide v32, v32, v10

    mul-double v32, v32, v26

    aput-wide v32, v4, v29

    const/16 v29, 0x37

    aget-object v32, p10, v6

    aget-object v32, v32, v8

    aget-wide v32, v32, v10

    mul-double v32, v32, v26

    aput-wide v32, v4, v29

    const/16 v29, 0x38

    aget-object v32, p11, v5

    aget-object v32, v32, v7

    aget-wide v32, v32, v9

    mul-double v32, v32, v20

    aput-wide v32, v4, v29

    const/16 v29, 0x39

    aget-object v32, p11, v6

    aget-object v32, v32, v7

    aget-wide v32, v32, v9

    mul-double v32, v32, v20

    aput-wide v32, v4, v29

    const/16 v29, 0x3a

    aget-object v32, p11, v5

    aget-object v32, v32, v8

    aget-wide v32, v32, v9

    mul-double v32, v32, v20

    aput-wide v32, v4, v29

    const/16 v29, 0x3b

    aget-object v32, p11, v6

    aget-object v32, v32, v8

    aget-wide v32, v32, v9

    mul-double v32, v32, v20

    aput-wide v32, v4, v29

    const/16 v29, 0x3c

    aget-object v32, p11, v5

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    mul-double v32, v32, v20

    aput-wide v32, v4, v29

    const/16 v29, 0x3d

    aget-object v32, p11, v6

    aget-object v32, v32, v7

    aget-wide v32, v32, v10

    mul-double v32, v32, v20

    aput-wide v32, v4, v29

    const/16 v29, 0x3e

    aget-object v32, p11, v5

    aget-object v32, v32, v8

    aget-wide v32, v32, v10

    mul-double v32, v32, v20

    aput-wide v32, v4, v29

    const/16 v29, 0x3f

    aget-object v32, p11, v6

    aget-object v32, v32, v8

    aget-wide v32, v32, v10

    mul-double v32, v32, v20

    aput-wide v32, v4, v29

    .line 301
    .local v4, "beta":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->splines:[[[Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    move-object/from16 v29, v0

    aget-object v29, v29, v5

    aget-object v29, v29, v7

    new-instance v32, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->computeCoefficients([D)[D

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;-><init>([D)V

    aput-object v32, v29, v9

    .line 252
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 223
    .end local v4    # "beta":[D
    .end local v10    # "kp1":I
    .end local v20    # "xRyRzR":D
    .end local v22    # "xRzR":D
    .end local v26    # "yRzR":D
    .end local v30    # "zR":D
    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 195
    .end local v8    # "jp1":I
    .end local v9    # "k":I
    .end local v18    # "xRyR":D
    .end local v24    # "yR":D
    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 305
    .end local v6    # "ip1":I
    .end local v7    # "j":I
    .end local v16    # "xR":D
    :cond_1c
    return-void
.end method

.method private computeCoefficients([D)[D
    .locals 13
    .param p1, "beta"    # [D

    .prologue
    const/16 v12, 0x40

    .line 425
    const/16 v6, 0x40

    .line 426
    .local v6, "sz":I
    new-array v0, v12, [D

    .line 428
    .local v0, "a":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v12, :cond_1

    .line 429
    const-wide/16 v4, 0x0

    .line 430
    .local v4, "result":D
    sget-object v7, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->AINV:[[D

    aget-object v3, v7, v1

    .line 431
    .local v3, "row":[D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v12, :cond_0

    .line 432
    aget-wide v8, v3, v2

    aget-wide v10, p1, v2

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 434
    :cond_0
    aput-wide v4, v0, v1

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    .end local v2    # "j":I
    .end local v3    # "row":[D
    .end local v4    # "result":D
    :cond_1
    return-object v0
.end method

.method private searchIndex(D[D)I
    .locals 7
    .param p1, "c"    # D
    .param p3, "val"    # [D

    .prologue
    const/4 v2, -0x1

    .line 362
    const/4 v3, 0x0

    aget-wide v4, p3, v3

    cmpg-double v3, p1, v4

    if-gez v3, :cond_1

    .line 373
    :cond_0
    :goto_0
    return v2

    .line 366
    :cond_1
    array-length v1, p3

    .line 367
    .local v1, "max":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 368
    aget-wide v4, p3, v0

    cmpg-double v3, p1, v4

    if-gtz v3, :cond_2

    .line 369
    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    .line 367
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public isValidPoint(DDD)Z
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    const/4 v0, 0x0

    .line 343
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    cmpl-double v1, p1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p3, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    cmpl-double v1, p3, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p5, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    cmpl-double v1, p5, v2

    if-lez v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public value(DDD)D
    .locals 21
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 314
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v4

    .line 315
    .local v4, "i":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 316
    new-instance v5, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    const/16 v16, 0x0

    aget-wide v16, v15, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-wide v16, v16, v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v14, v15, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v5

    .line 318
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v12

    .line 319
    .local v12, "j":I
    const/4 v5, -0x1

    if-ne v12, v5, :cond_1

    .line 320
    new-instance v5, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    const/16 v16, 0x0

    aget-wide v16, v15, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-wide v16, v16, v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v14, v15, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v5

    .line 322
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v13

    .line 323
    .local v13, "k":I
    const/4 v5, -0x1

    if-ne v13, v5, :cond_2

    .line 324
    new-instance v5, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    const/16 v16, 0x0

    aget-wide v16, v15, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-wide v16, v16, v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v14, v15, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v5

    .line 327
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    aget-wide v14, v5, v4

    sub-double v14, p1, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    add-int/lit8 v16, v4, 0x1

    aget-wide v16, v5, v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    aget-wide v18, v5, v4

    sub-double v16, v16, v18

    div-double v6, v14, v16

    .line 328
    .local v6, "xN":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    aget-wide v14, v5, v12

    sub-double v14, p3, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    add-int/lit8 v16, v12, 0x1

    aget-wide v16, v5, v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    aget-wide v18, v5, v12

    sub-double v16, v16, v18

    div-double v8, v14, v16

    .line 329
    .local v8, "yN":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    aget-wide v14, v5, v13

    sub-double v14, p5, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    add-int/lit8 v16, v13, 0x1

    aget-wide v16, v5, v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    aget-wide v18, v5, v13

    sub-double v16, v16, v18

    div-double v10, v14, v16

    .line 331
    .local v10, "zN":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->splines:[[[Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    aget-object v5, v5, v4

    aget-object v5, v5, v12

    aget-object v5, v5, v13

    invoke-virtual/range {v5 .. v11}, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;->value(DDD)D

    move-result-wide v14

    return-wide v14
.end method
