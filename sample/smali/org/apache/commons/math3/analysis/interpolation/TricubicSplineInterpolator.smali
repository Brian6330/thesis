.class public Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;
.super Ljava/lang/Object;
.source "TricubicSplineInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/TrivariateGridInterpolator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private nextIndex(II)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "max"    # I

    .prologue
    .line 187
    add-int/lit8 v0, p1, 0x1

    .line 188
    .local v0, "index":I
    if-ge v0, p2, :cond_0

    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private previousIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 198
    add-int/lit8 v0, p1, -0x1

    .line 199
    .local v0, "index":I
    if-ltz v0, :cond_0

    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/TrivariateFunction;
    .locals 1
    .param p1, "x0"    # [D
    .param p2, "x1"    # [D
    .param p3, "x2"    # [D
    .param p4, "x3"    # [[[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;

    move-result-object v0

    return-object v0
.end method

.method public interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;
    .locals 52
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .param p3, "zval"    # [D
    .param p4, "fval"    # [[[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 43
    move-object/from16 v0, p1

    array-length v6, v0

    if-eqz v6, :cond_0

    move-object/from16 v0, p2

    array-length v6, v0

    if-eqz v6, :cond_0

    move-object/from16 v0, p3

    array-length v6, v0

    if-eqz v6, :cond_0

    move-object/from16 v0, p4

    array-length v6, v0

    if-nez v6, :cond_1

    .line 44
    :cond_0
    new-instance v6, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v6}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v6

    .line 46
    :cond_1
    move-object/from16 v0, p1

    array-length v6, v0

    move-object/from16 v0, p4

    array-length v7, v0

    if-eq v6, v7, :cond_2

    .line 47
    new-instance v6, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v7, v0

    move-object/from16 v0, p4

    array-length v8, v0

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v6

    .line 50
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 51
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 52
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 54
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    .line 55
    .local v31, "xLen":I
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v37, v0

    .line 56
    .local v37, "yLen":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v41, v0

    .line 61
    .local v41, "zLen":I
    move/from16 v0, v41

    move/from16 v1, v31

    move/from16 v2, v37

    filled-new-array {v0, v1, v2}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [[[D

    .line 62
    .local v20, "fvalXY":[[[D
    move/from16 v0, v37

    move/from16 v1, v41

    move/from16 v2, v31

    filled-new-array {v0, v1, v2}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [[[D

    .line 63
    .local v21, "fvalZX":[[[D
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_7

    .line 64
    aget-object v6, p4, v22

    array-length v6, v6

    move/from16 v0, v37

    if-eq v6, v0, :cond_3

    .line 65
    new-instance v6, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v7, p4, v22

    array-length v7, v7

    move/from16 v0, v37

    invoke-direct {v6, v7, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v6

    .line 68
    :cond_3
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v37

    if-ge v0, v1, :cond_6

    .line 69
    aget-object v6, p4, v22

    aget-object v6, v6, v23

    array-length v6, v6

    move/from16 v0, v41

    if-eq v6, v0, :cond_4

    .line 70
    new-instance v6, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v7, p4, v22

    aget-object v7, v7, v23

    array-length v7, v7

    move/from16 v0, v41

    invoke-direct {v6, v7, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v6

    .line 73
    :cond_4
    const/16 v24, 0x0

    .local v24, "k":I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_5

    .line 74
    aget-object v6, p4, v22

    aget-object v6, v6, v23

    aget-wide v32, v6, v24

    .line 75
    .local v32, "v":D
    aget-object v6, v20, v24

    aget-object v6, v6, v22

    aput-wide v32, v6, v23

    .line 76
    aget-object v6, v21, v23

    aget-object v6, v6, v24

    aput-wide v32, v6, v22

    .line 73
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 68
    .end local v32    # "v":D
    :cond_5
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 63
    .end local v24    # "k":I
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 81
    .end local v23    # "j":I
    :cond_7
    new-instance v18, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;-><init>(Z)V

    .line 84
    .local v18, "bsi":Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;
    move/from16 v0, v31

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-object/from16 v36, v0

    .line 86
    .local v36, "xSplineYZ":[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    .line 87
    aget-object v6, p4, v22

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v6}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v6

    aput-object v6, v36, v22

    .line 86
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 91
    :cond_8
    move/from16 v0, v37

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-object/from16 v40, v0

    .line 93
    .local v40, "ySplineZX":[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    const/16 v23, 0x0

    .restart local v23    # "j":I
    :goto_4
    move/from16 v0, v23

    move/from16 v1, v37

    if-ge v0, v1, :cond_9

    .line 94
    aget-object v6, v21, v23

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v6}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v6

    aput-object v6, v40, v23

    .line 93
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 98
    :cond_9
    move/from16 v0, v41

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-object/from16 v44, v0

    .line 100
    .local v44, "zSplineXY":[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    const/16 v24, 0x0

    .restart local v24    # "k":I
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_a

    .line 101
    aget-object v6, v20, v24

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v6

    aput-object v6, v44, v24

    .line 100
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 105
    :cond_a
    move/from16 v0, v31

    move/from16 v1, v37

    move/from16 v2, v41

    filled-new-array {v0, v1, v2}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[[D

    .line 106
    .local v11, "dFdX":[[[D
    move/from16 v0, v31

    move/from16 v1, v37

    move/from16 v2, v41

    filled-new-array {v0, v1, v2}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[[D

    .line 107
    .local v12, "dFdY":[[[D
    move/from16 v0, v31

    move/from16 v1, v37

    move/from16 v2, v41

    filled-new-array {v0, v1, v2}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[[D

    .line 108
    .local v14, "d2FdXdY":[[[D
    const/16 v24, 0x0

    :goto_6
    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_d

    .line 109
    aget-object v19, v44, v24

    .line 110
    .local v19, "f":Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    const/16 v22, 0x0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_c

    .line 111
    aget-wide v34, p1, v22

    .line 112
    .local v34, "x":D
    const/16 v23, 0x0

    :goto_8
    move/from16 v0, v23

    move/from16 v1, v37

    if-ge v0, v1, :cond_b

    .line 113
    aget-wide v38, p2, v23

    .line 114
    .local v38, "y":D
    aget-object v6, v11, v22

    aget-object v6, v6, v23

    move-object/from16 v0, v19

    move-wide/from16 v1, v34

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeX(DD)D

    move-result-wide v8

    aput-wide v8, v6, v24

    .line 115
    aget-object v6, v12, v22

    aget-object v6, v6, v23

    move-object/from16 v0, v19

    move-wide/from16 v1, v34

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeY(DD)D

    move-result-wide v8

    aput-wide v8, v6, v24

    .line 116
    aget-object v6, v14, v22

    aget-object v6, v6, v23

    move-object/from16 v0, v19

    move-wide/from16 v1, v34

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v8

    aput-wide v8, v6, v24

    .line 112
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 110
    .end local v38    # "y":D
    :cond_b
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 108
    .end local v34    # "x":D
    :cond_c
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 122
    .end local v19    # "f":Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    :cond_d
    move/from16 v0, v31

    move/from16 v1, v37

    move/from16 v2, v41

    filled-new-array {v0, v1, v2}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[[D

    .line 123
    .local v13, "dFdZ":[[[D
    move/from16 v0, v31

    move/from16 v1, v37

    move/from16 v2, v41

    filled-new-array {v0, v1, v2}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [[[D

    .line 124
    .local v16, "d2FdYdZ":[[[D
    const/16 v22, 0x0

    :goto_9
    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_10

    .line 125
    aget-object v19, v36, v22

    .line 126
    .restart local v19    # "f":Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    const/16 v23, 0x0

    :goto_a
    move/from16 v0, v23

    move/from16 v1, v37

    if-ge v0, v1, :cond_f

    .line 127
    aget-wide v38, p2, v23

    .line 128
    .restart local v38    # "y":D
    const/16 v24, 0x0

    :goto_b
    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_e

    .line 129
    aget-wide v42, p3, v24

    .line 130
    .local v42, "z":D
    aget-object v6, v13, v22

    aget-object v6, v6, v23

    move-object/from16 v0, v19

    move-wide/from16 v1, v38

    move-wide/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeY(DD)D

    move-result-wide v8

    aput-wide v8, v6, v24

    .line 131
    aget-object v6, v16, v22

    aget-object v6, v6, v23

    move-object/from16 v0, v19

    move-wide/from16 v1, v38

    move-wide/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v8

    aput-wide v8, v6, v24

    .line 128
    add-int/lit8 v24, v24, 0x1

    goto :goto_b

    .line 126
    .end local v42    # "z":D
    :cond_e
    add-int/lit8 v23, v23, 0x1

    goto :goto_a

    .line 124
    .end local v38    # "y":D
    :cond_f
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 137
    .end local v19    # "f":Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    :cond_10
    move/from16 v0, v31

    move/from16 v1, v37

    move/from16 v2, v41

    filled-new-array {v0, v1, v2}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[[D

    .line 138
    .local v15, "d2FdZdX":[[[D
    const/16 v23, 0x0

    :goto_c
    move/from16 v0, v23

    move/from16 v1, v37

    if-ge v0, v1, :cond_13

    .line 139
    aget-object v19, v40, v23

    .line 140
    .restart local v19    # "f":Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    const/16 v24, 0x0

    :goto_d
    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_12

    .line 141
    aget-wide v42, p3, v24

    .line 142
    .restart local v42    # "z":D
    const/16 v22, 0x0

    :goto_e
    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_11

    .line 143
    aget-wide v34, p1, v22

    .line 144
    .restart local v34    # "x":D
    aget-object v6, v15, v22

    aget-object v6, v6, v23

    move-object/from16 v0, v19

    move-wide/from16 v1, v42

    move-wide/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v8

    aput-wide v8, v6, v24

    .line 142
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 140
    .end local v34    # "x":D
    :cond_11
    add-int/lit8 v24, v24, 0x1

    goto :goto_d

    .line 138
    .end local v42    # "z":D
    :cond_12
    add-int/lit8 v23, v23, 0x1

    goto :goto_c

    .line 150
    .end local v19    # "f":Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    :cond_13
    move/from16 v0, v31

    move/from16 v1, v37

    move/from16 v2, v41

    filled-new-array {v0, v1, v2}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [[[D

    .line 151
    .local v17, "d3FdXdYdZ":[[[D
    const/16 v22, 0x0

    :goto_f
    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_16

    .line 152
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->nextIndex(II)I

    move-result v25

    .line 153
    .local v25, "nI":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->previousIndex(I)I

    move-result v28

    .line 154
    .local v28, "pI":I
    const/16 v23, 0x0

    :goto_10
    move/from16 v0, v23

    move/from16 v1, v37

    if-ge v0, v1, :cond_15

    .line 155
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->nextIndex(II)I

    move-result v26

    .line 156
    .local v26, "nJ":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->previousIndex(I)I

    move-result v29

    .line 157
    .local v29, "pJ":I
    const/16 v24, 0x0

    :goto_11
    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_14

    .line 158
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->nextIndex(II)I

    move-result v27

    .line 159
    .local v27, "nK":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->previousIndex(I)I

    move-result v30

    .line 162
    .local v30, "pK":I
    aget-object v6, v17, v22

    aget-object v6, v6, v23

    aget-object v7, p4, v25

    aget-object v7, v7, v26

    aget-wide v8, v7, v27

    aget-object v7, p4, v25

    aget-object v7, v7, v29

    aget-wide v46, v7, v27

    sub-double v8, v8, v46

    aget-object v7, p4, v28

    aget-object v7, v7, v26

    aget-wide v46, v7, v27

    sub-double v8, v8, v46

    aget-object v7, p4, v28

    aget-object v7, v7, v29

    aget-wide v46, v7, v27

    add-double v8, v8, v46

    aget-object v7, p4, v25

    aget-object v7, v7, v26

    aget-wide v46, v7, v30

    sub-double v8, v8, v46

    aget-object v7, p4, v25

    aget-object v7, v7, v29

    aget-wide v46, v7, v30

    add-double v8, v8, v46

    aget-object v7, p4, v28

    aget-object v7, v7, v26

    aget-wide v46, v7, v30

    add-double v8, v8, v46

    aget-object v7, p4, v28

    aget-object v7, v7, v29

    aget-wide v46, v7, v30

    sub-double v8, v8, v46

    aget-wide v46, p1, v25

    aget-wide v48, p1, v28

    sub-double v46, v46, v48

    aget-wide v48, p2, v26

    aget-wide v50, p2, v29

    sub-double v48, v48, v50

    mul-double v46, v46, v48

    aget-wide v48, p3, v27

    aget-wide v50, p3, v30

    sub-double v48, v48, v50

    mul-double v46, v46, v48

    div-double v8, v8, v46

    aput-wide v8, v6, v24

    .line 157
    add-int/lit8 v24, v24, 0x1

    goto :goto_11

    .line 154
    .end local v27    # "nK":I
    .end local v30    # "pK":I
    :cond_14
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_10

    .line 151
    .end local v26    # "nJ":I
    .end local v29    # "pJ":I
    :cond_15
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_f

    .line 172
    .end local v25    # "nI":I
    .end local v28    # "pI":I
    :cond_16
    new-instance v6, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v6 .. v17}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;-><init>([D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D)V

    return-object v6
.end method
