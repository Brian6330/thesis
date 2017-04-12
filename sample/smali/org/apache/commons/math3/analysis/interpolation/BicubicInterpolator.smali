.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;
.super Ljava/lang/Object;
.source "BicubicInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/BivariateGridInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1
    .param p1, "x0"    # [D
    .param p2, "x1"    # [D
    .param p3, "x2"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;

    move-result-object v0

    return-object v0
.end method

.method public interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;
    .locals 34
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .param p3, "fval"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 52
    move-object/from16 v0, p1

    array-length v2, v0

    if-eqz v2, :cond_0

    move-object/from16 v0, p2

    array-length v2, v0

    if-eqz v2, :cond_0

    move-object/from16 v0, p3

    array-length v2, v0

    if-nez v2, :cond_1

    .line 53
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v2

    .line 55
    :cond_1
    move-object/from16 v0, p1

    array-length v2, v0

    move-object/from16 v0, p3

    array-length v3, v0

    if-eq v2, v3, :cond_2

    .line 56
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p3

    array-length v4, v0

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 59
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 60
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 62
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    .line 63
    .local v32, "xLen":I
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v33, v0

    .line 66
    .local v33, "yLen":I
    filled-new-array/range {v32 .. v33}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 67
    .local v7, "dFdX":[[D
    filled-new-array/range {v32 .. v33}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 68
    .local v8, "dFdY":[[D
    filled-new-array/range {v32 .. v33}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    .line 69
    .local v9, "d2FdXdY":[[D
    const/16 v18, 0x1

    .local v18, "i":I
    :goto_0
    add-int/lit8 v2, v32, -0x1

    move/from16 v0, v18

    if-ge v0, v2, :cond_4

    .line 70
    add-int/lit8 v20, v18, 0x1

    .line 71
    .local v20, "nI":I
    add-int/lit8 v26, v18, -0x1

    .line 73
    .local v26, "pI":I
    aget-wide v22, p1, v20

    .line 74
    .local v22, "nX":D
    aget-wide v28, p1, v26

    .line 76
    .local v28, "pX":D
    sub-double v12, v22, v28

    .line 78
    .local v12, "deltaX":D
    const/16 v19, 0x1

    .local v19, "j":I
    :goto_1
    add-int/lit8 v2, v33, -0x1

    move/from16 v0, v19

    if-ge v0, v2, :cond_3

    .line 79
    add-int/lit8 v21, v19, 0x1

    .line 80
    .local v21, "nJ":I
    add-int/lit8 v27, v19, -0x1

    .line 82
    .local v27, "pJ":I
    aget-wide v24, p2, v21

    .line 83
    .local v24, "nY":D
    aget-wide v30, p2, v27

    .line 85
    .local v30, "pY":D
    sub-double v16, v24, v30

    .line 87
    .local v16, "deltaY":D
    aget-object v2, v7, v18

    aget-object v3, p3, v20

    aget-wide v4, v3, v19

    aget-object v3, p3, v26

    aget-wide v10, v3, v19

    sub-double/2addr v4, v10

    div-double/2addr v4, v12

    aput-wide v4, v2, v19

    .line 88
    aget-object v2, v8, v18

    aget-object v3, p3, v18

    aget-wide v4, v3, v21

    aget-object v3, p3, v18

    aget-wide v10, v3, v27

    sub-double/2addr v4, v10

    div-double v4, v4, v16

    aput-wide v4, v2, v19

    .line 90
    mul-double v14, v12, v16

    .line 92
    .local v14, "deltaXY":D
    aget-object v2, v9, v18

    aget-object v3, p3, v20

    aget-wide v4, v3, v21

    aget-object v3, p3, v20

    aget-wide v10, v3, v27

    sub-double/2addr v4, v10

    aget-object v3, p3, v26

    aget-wide v10, v3, v21

    sub-double/2addr v4, v10

    aget-object v3, p3, v26

    aget-wide v10, v3, v27

    add-double/2addr v4, v10

    div-double/2addr v4, v14

    aput-wide v4, v2, v19

    .line 78
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 69
    .end local v14    # "deltaXY":D
    .end local v16    # "deltaY":D
    .end local v21    # "nJ":I
    .end local v24    # "nY":D
    .end local v27    # "pJ":I
    .end local v30    # "pY":D
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 97
    .end local v12    # "deltaX":D
    .end local v19    # "j":I
    .end local v20    # "nI":I
    .end local v22    # "nX":D
    .end local v26    # "pI":I
    .end local v28    # "pX":D
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-direct/range {v2 .. v11}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;[D[D[[D[[D[[D[[D[D[D)V

    return-object v2
.end method
