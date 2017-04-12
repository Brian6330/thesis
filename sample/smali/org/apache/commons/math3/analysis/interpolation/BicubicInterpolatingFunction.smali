.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;
.super Ljava/lang/Object;
.source "BicubicInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field private static final AINV:[[D

.field private static final NUM_COEFF:I = 0x10


# instance fields
.field private final splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

.field private final xval:[D

.field private final yval:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 42
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

    sput-object v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->AINV:[[D

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
    .end array-data

    :array_1
    .array-data 8
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
    .end array-data

    :array_2
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
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
    .end array-data

    :array_3
    .array-data 8
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
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
        0x3ff0000000000000L    # 1.0
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
        0x3ff0000000000000L    # 1.0
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
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
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
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
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
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
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
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
    .end array-data

    :array_a
    .array-data 8
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_b
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
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
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
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
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_e
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_f
    .array-data 8
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>([D[D[[D[[D[[D[[D)V
    .locals 22
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "f"    # [[D
    .param p4, "dFdX"    # [[D
    .param p5, "dFdY"    # [[D
    .param p6, "d2FdXdY"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    move-object/from16 v0, p1

    array-length v9, v0

    .line 94
    .local v9, "xLen":I
    move-object/from16 v0, p2

    array-length v14, v0

    .line 96
    .local v14, "yLen":I
    if-eqz v9, :cond_0

    if-eqz v14, :cond_0

    move-object/from16 v0, p3

    array-length v15, v0

    if-eqz v15, :cond_0

    const/4 v15, 0x0

    aget-object v15, p3, v15

    array-length v15, v15

    if-nez v15, :cond_1

    .line 97
    :cond_0
    new-instance v15, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v15}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v15

    .line 99
    :cond_1
    move-object/from16 v0, p3

    array-length v15, v0

    if-eq v9, v15, :cond_2

    .line 100
    new-instance v15, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v15, v9, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v15

    .line 102
    :cond_2
    move-object/from16 v0, p4

    array-length v15, v0

    if-eq v9, v15, :cond_3

    .line 103
    new-instance v15, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v15, v9, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v15

    .line 105
    :cond_3
    move-object/from16 v0, p5

    array-length v15, v0

    if-eq v9, v15, :cond_4

    .line 106
    new-instance v15, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v15, v9, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v15

    .line 108
    :cond_4
    move-object/from16 v0, p6

    array-length v15, v0

    if-eq v9, v15, :cond_5

    .line 109
    new-instance v15, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p6

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v15, v9, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v15

    .line 112
    :cond_5
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 113
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 115
    invoke-virtual/range {p1 .. p1}, [D->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [D

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    .line 116
    invoke-virtual/range {p2 .. p2}, [D->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [D

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    .line 118
    add-int/lit8 v7, v9, -0x1

    .line 119
    .local v7, "lastI":I
    add-int/lit8 v8, v14, -0x1

    .line 120
    .local v8, "lastJ":I
    filled-new-array {v7, v8}, [I

    move-result-object v15

    const-class v18, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    .line 122
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_b

    .line 123
    aget-object v15, p3, v3

    array-length v15, v15

    if-eq v15, v14, :cond_6

    .line 124
    new-instance v15, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v18, p3, v3

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v15, v0, v14}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v15

    .line 126
    :cond_6
    aget-object v15, p4, v3

    array-length v15, v15

    if-eq v15, v14, :cond_7

    .line 127
    new-instance v15, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v18, p4, v3

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v15, v0, v14}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v15

    .line 129
    :cond_7
    aget-object v15, p5, v3

    array-length v15, v15

    if-eq v15, v14, :cond_8

    .line 130
    new-instance v15, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v18, p5, v3

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v15, v0, v14}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v15

    .line 132
    :cond_8
    aget-object v15, p6, v3

    array-length v15, v15

    if-eq v15, v14, :cond_9

    .line 133
    new-instance v15, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v18, p6, v3

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v15, v0, v14}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v15

    .line 135
    :cond_9
    add-int/lit8 v4, v3, 0x1

    .line 136
    .local v4, "ip1":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    aget-wide v18, v15, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    aget-wide v20, v15, v3

    sub-double v10, v18, v20

    .line 137
    .local v10, "xR":D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v8, :cond_a

    .line 138
    add-int/lit8 v6, v5, 0x1

    .line 139
    .local v6, "jp1":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    aget-wide v18, v15, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    aget-wide v20, v15, v5

    sub-double v16, v18, v20

    .line 140
    .local v16, "yR":D
    mul-double v12, v10, v16

    .line 141
    .local v12, "xRyR":D
    const/16 v15, 0x10

    new-array v2, v15, [D

    const/4 v15, 0x0

    aget-object v18, p3, v3

    aget-wide v18, v18, v5

    aput-wide v18, v2, v15

    const/4 v15, 0x1

    aget-object v18, p3, v4

    aget-wide v18, v18, v5

    aput-wide v18, v2, v15

    const/4 v15, 0x2

    aget-object v18, p3, v3

    aget-wide v18, v18, v6

    aput-wide v18, v2, v15

    const/4 v15, 0x3

    aget-object v18, p3, v4

    aget-wide v18, v18, v6

    aput-wide v18, v2, v15

    const/4 v15, 0x4

    aget-object v18, p4, v3

    aget-wide v18, v18, v5

    mul-double v18, v18, v10

    aput-wide v18, v2, v15

    const/4 v15, 0x5

    aget-object v18, p4, v4

    aget-wide v18, v18, v5

    mul-double v18, v18, v10

    aput-wide v18, v2, v15

    const/4 v15, 0x6

    aget-object v18, p4, v3

    aget-wide v18, v18, v6

    mul-double v18, v18, v10

    aput-wide v18, v2, v15

    const/4 v15, 0x7

    aget-object v18, p4, v4

    aget-wide v18, v18, v6

    mul-double v18, v18, v10

    aput-wide v18, v2, v15

    const/16 v15, 0x8

    aget-object v18, p5, v3

    aget-wide v18, v18, v5

    mul-double v18, v18, v16

    aput-wide v18, v2, v15

    const/16 v15, 0x9

    aget-object v18, p5, v4

    aget-wide v18, v18, v5

    mul-double v18, v18, v16

    aput-wide v18, v2, v15

    const/16 v15, 0xa

    aget-object v18, p5, v3

    aget-wide v18, v18, v6

    mul-double v18, v18, v16

    aput-wide v18, v2, v15

    const/16 v15, 0xb

    aget-object v18, p5, v4

    aget-wide v18, v18, v6

    mul-double v18, v18, v16

    aput-wide v18, v2, v15

    const/16 v15, 0xc

    aget-object v18, p6, v3

    aget-wide v18, v18, v5

    mul-double v18, v18, v12

    aput-wide v18, v2, v15

    const/16 v15, 0xd

    aget-object v18, p6, v4

    aget-wide v18, v18, v5

    mul-double v18, v18, v12

    aput-wide v18, v2, v15

    const/16 v15, 0xe

    aget-object v18, p6, v3

    aget-wide v18, v18, v6

    mul-double v18, v18, v12

    aput-wide v18, v2, v15

    const/16 v15, 0xf

    aget-object v18, p6, v4

    aget-wide v18, v18, v6

    mul-double v18, v18, v12

    aput-wide v18, v2, v15

    .line 148
    .local v2, "beta":[D
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    aget-object v15, v15, v3

    new-instance v18, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->computeSplineCoefficients([D)[D

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;-><init>([D)V

    aput-object v18, v15, v5

    .line 137
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 122
    .end local v2    # "beta":[D
    .end local v6    # "jp1":I
    .end local v12    # "xRyR":D
    .end local v16    # "yR":D
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 151
    .end local v4    # "ip1":I
    .end local v5    # "j":I
    .end local v10    # "xR":D
    :cond_b
    return-void
.end method

.method private computeSplineCoefficients([D)[D
    .locals 11
    .param p1, "beta"    # [D

    .prologue
    const/16 v10, 0x10

    .line 247
    new-array v0, v10, [D

    .line 249
    .local v0, "a":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_1

    .line 250
    const-wide/16 v4, 0x0

    .line 251
    .local v4, "result":D
    sget-object v6, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->AINV:[[D

    aget-object v3, v6, v1

    .line 252
    .local v3, "row":[D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v10, :cond_0

    .line 253
    aget-wide v6, v3, v2

    aget-wide v8, p1, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 255
    :cond_0
    aput-wide v4, v0, v1

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v2    # "j":I
    .end local v3    # "row":[D
    .end local v4    # "result":D
    :cond_1
    return-object v0
.end method

.method private searchIndex(D[D)I
    .locals 9
    .param p1, "c"    # D
    .param p3, "val"    # [D

    .prologue
    .line 194
    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v1

    .line 196
    .local v1, "r":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    array-length v2, p3

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 198
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, p3, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    array-length v5, p3

    add-int/lit8 v5, v5, -0x1

    aget-wide v6, p3, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v2

    .line 201
    :cond_1
    if-gez v1, :cond_3

    .line 204
    neg-int v2, v1

    add-int/lit8 v1, v2, -0x2

    .line 214
    .end local v1    # "r":I
    :cond_2
    :goto_0
    return v1

    .line 206
    .restart local v1    # "r":I
    :cond_3
    array-length v2, p3

    add-int/lit8 v0, v2, -0x1

    .line 207
    .local v0, "last":I
    if-ne v1, v0, :cond_2

    .line 210
    add-int/lit8 v1, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public isValidPoint(DD)Z
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    cmpl-double v1, p1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p3, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    cmpl-double v1, p3, v2

    if-lez v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public value(DD)D
    .locals 15
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    move-wide/from16 v0, p1

    invoke-direct {p0, v0, v1, v8}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v2

    .line 159
    .local v2, "i":I
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v8}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v3

    .line 161
    .local v3, "j":I
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    aget-wide v8, v8, v2

    sub-double v8, p1, v8

    iget-object v10, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    add-int/lit8 v11, v2, 0x1

    aget-wide v10, v10, v11

    iget-object v12, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    aget-wide v12, v12, v2

    sub-double/2addr v10, v12

    div-double v4, v8, v10

    .line 162
    .local v4, "xN":D
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    aget-wide v8, v8, v3

    sub-double v8, p3, v8

    iget-object v10, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    add-int/lit8 v11, v3, 0x1

    aget-wide v10, v10, v11

    iget-object v12, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    aget-wide v12, v12, v3

    sub-double/2addr v10, v12

    div-double v6, v8, v10

    .line 164
    .local v6, "yN":D
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    aget-object v8, v8, v2

    aget-object v8, v8, v3

    invoke-virtual {v8, v4, v5, v6, v7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;->value(DD)D

    move-result-wide v8

    return-wide v8
.end method
