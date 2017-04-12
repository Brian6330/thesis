.class public Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;
.super Ljava/lang/Object;
.source "TricubicInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/TrivariateGridInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;->interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;

    move-result-object v0

    return-object v0
.end method

.method public interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;
    .locals 58
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
    .line 41
    move-object/from16 v0, p1

    array-length v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p2

    array-length v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p3

    array-length v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p4

    array-length v4, v0

    if-nez v4, :cond_1

    .line 42
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v4}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v4

    .line 44
    :cond_1
    move-object/from16 v0, p1

    array-length v4, v0

    move-object/from16 v0, p4

    array-length v5, v0

    if-eq v4, v5, :cond_2

    .line 45
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p1

    array-length v5, v0

    move-object/from16 v0, p4

    array-length v6, v0

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 48
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 49
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 50
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 52
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v49, v0

    .line 53
    .local v49, "xLen":I
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v56, v0

    .line 54
    .local v56, "yLen":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v57, v0

    .line 57
    .local v57, "zLen":I
    move/from16 v0, v49

    move/from16 v1, v56

    move/from16 v2, v57

    filled-new-array {v0, v1, v2}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[[D

    .line 58
    .local v10, "dFdX":[[[D
    move/from16 v0, v49

    move/from16 v1, v56

    move/from16 v2, v57

    filled-new-array {v0, v1, v2}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[[D

    .line 59
    .local v11, "dFdY":[[[D
    move/from16 v0, v49

    move/from16 v1, v56

    move/from16 v2, v57

    filled-new-array {v0, v1, v2}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[[D

    .line 60
    .local v12, "dFdZ":[[[D
    move/from16 v0, v49

    move/from16 v1, v56

    move/from16 v2, v57

    filled-new-array {v0, v1, v2}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[[D

    .line 61
    .local v13, "d2FdXdY":[[[D
    move/from16 v0, v49

    move/from16 v1, v56

    move/from16 v2, v57

    filled-new-array {v0, v1, v2}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[[D

    .line 62
    .local v14, "d2FdXdZ":[[[D
    move/from16 v0, v49

    move/from16 v1, v56

    move/from16 v2, v57

    filled-new-array {v0, v1, v2}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[[D

    .line 63
    .local v15, "d2FdYdZ":[[[D
    move/from16 v0, v49

    move/from16 v1, v56

    move/from16 v2, v57

    filled-new-array {v0, v1, v2}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [[[D

    .line 65
    .local v16, "d3FdXdYdZ":[[[D
    const/16 v34, 0x1

    .local v34, "i":I
    :goto_0
    add-int/lit8 v4, v49, -0x1

    move/from16 v0, v34

    if-ge v0, v4, :cond_7

    .line 66
    move-object/from16 v0, p2

    array-length v4, v0

    aget-object v5, p4, v34

    array-length v5, v5

    if-eq v4, v5, :cond_3

    .line 67
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p2

    array-length v5, v0

    aget-object v6, p4, v34

    array-length v6, v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 70
    :cond_3
    add-int/lit8 v37, v34, 0x1

    .line 71
    .local v37, "nI":I
    add-int/lit8 v46, v34, -0x1

    .line 73
    .local v46, "pI":I
    aget-wide v40, p1, v37

    .line 74
    .local v40, "nX":D
    aget-wide v50, p1, v46

    .line 76
    .local v50, "pX":D
    sub-double v20, v40, v50

    .line 78
    .local v20, "deltaX":D
    const/16 v35, 0x1

    .local v35, "j":I
    :goto_1
    add-int/lit8 v4, v56, -0x1

    move/from16 v0, v35

    if-ge v0, v4, :cond_6

    .line 79
    move-object/from16 v0, p3

    array-length v4, v0

    aget-object v5, p4, v34

    aget-object v5, v5, v35

    array-length v5, v5

    if-eq v4, v5, :cond_4

    .line 80
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p3

    array-length v5, v0

    aget-object v6, p4, v34

    aget-object v6, v6, v35

    array-length v6, v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 83
    :cond_4
    add-int/lit8 v38, v35, 0x1

    .line 84
    .local v38, "nJ":I
    add-int/lit8 v47, v35, -0x1

    .line 86
    .local v47, "pJ":I
    aget-wide v42, p2, v38

    .line 87
    .local v42, "nY":D
    aget-wide v52, p2, v47

    .line 89
    .local v52, "pY":D
    sub-double v28, v42, v52

    .line 90
    .local v28, "deltaY":D
    mul-double v22, v20, v28

    .line 92
    .local v22, "deltaXY":D
    const/16 v36, 0x1

    .local v36, "k":I
    :goto_2
    add-int/lit8 v4, v57, -0x1

    move/from16 v0, v36

    if-ge v0, v4, :cond_5

    .line 93
    add-int/lit8 v39, v36, 0x1

    .line 94
    .local v39, "nK":I
    add-int/lit8 v48, v36, -0x1

    .line 96
    .local v48, "pK":I
    aget-wide v44, p3, v39

    .line 97
    .local v44, "nZ":D
    aget-wide v54, p3, v48

    .line 99
    .local v54, "pZ":D
    sub-double v32, v44, v54

    .line 101
    .local v32, "deltaZ":D
    aget-object v4, v10, v34

    aget-object v4, v4, v35

    aget-object v5, p4, v37

    aget-object v5, v5, v35

    aget-wide v6, v5, v36

    aget-object v5, p4, v46

    aget-object v5, v5, v35

    aget-wide v8, v5, v36

    sub-double/2addr v6, v8

    div-double v6, v6, v20

    aput-wide v6, v4, v36

    .line 102
    aget-object v4, v11, v34

    aget-object v4, v4, v35

    aget-object v5, p4, v34

    aget-object v5, v5, v38

    aget-wide v6, v5, v36

    aget-object v5, p4, v34

    aget-object v5, v5, v47

    aget-wide v8, v5, v36

    sub-double/2addr v6, v8

    div-double v6, v6, v28

    aput-wide v6, v4, v36

    .line 103
    aget-object v4, v12, v34

    aget-object v4, v4, v35

    aget-object v5, p4, v34

    aget-object v5, v5, v35

    aget-wide v6, v5, v39

    aget-object v5, p4, v34

    aget-object v5, v5, v35

    aget-wide v8, v5, v48

    sub-double/2addr v6, v8

    div-double v6, v6, v32

    aput-wide v6, v4, v36

    .line 105
    mul-double v26, v20, v32

    .line 106
    .local v26, "deltaXZ":D
    mul-double v30, v28, v32

    .line 108
    .local v30, "deltaYZ":D
    aget-object v4, v13, v34

    aget-object v4, v4, v35

    aget-object v5, p4, v37

    aget-object v5, v5, v38

    aget-wide v6, v5, v36

    aget-object v5, p4, v37

    aget-object v5, v5, v47

    aget-wide v8, v5, v36

    sub-double/2addr v6, v8

    aget-object v5, p4, v46

    aget-object v5, v5, v38

    aget-wide v8, v5, v36

    sub-double/2addr v6, v8

    aget-object v5, p4, v46

    aget-object v5, v5, v47

    aget-wide v8, v5, v36

    add-double/2addr v6, v8

    div-double v6, v6, v22

    aput-wide v6, v4, v36

    .line 109
    aget-object v4, v14, v34

    aget-object v4, v4, v35

    aget-object v5, p4, v37

    aget-object v5, v5, v35

    aget-wide v6, v5, v39

    aget-object v5, p4, v37

    aget-object v5, v5, v35

    aget-wide v8, v5, v48

    sub-double/2addr v6, v8

    aget-object v5, p4, v46

    aget-object v5, v5, v35

    aget-wide v8, v5, v39

    sub-double/2addr v6, v8

    aget-object v5, p4, v46

    aget-object v5, v5, v35

    aget-wide v8, v5, v48

    add-double/2addr v6, v8

    div-double v6, v6, v26

    aput-wide v6, v4, v36

    .line 110
    aget-object v4, v15, v34

    aget-object v4, v4, v35

    aget-object v5, p4, v34

    aget-object v5, v5, v38

    aget-wide v6, v5, v39

    aget-object v5, p4, v34

    aget-object v5, v5, v38

    aget-wide v8, v5, v48

    sub-double/2addr v6, v8

    aget-object v5, p4, v34

    aget-object v5, v5, v47

    aget-wide v8, v5, v39

    sub-double/2addr v6, v8

    aget-object v5, p4, v34

    aget-object v5, v5, v47

    aget-wide v8, v5, v48

    add-double/2addr v6, v8

    div-double v6, v6, v30

    aput-wide v6, v4, v36

    .line 112
    mul-double v24, v22, v32

    .line 114
    .local v24, "deltaXYZ":D
    aget-object v4, v16, v34

    aget-object v4, v4, v35

    aget-object v5, p4, v37

    aget-object v5, v5, v38

    aget-wide v6, v5, v39

    aget-object v5, p4, v37

    aget-object v5, v5, v47

    aget-wide v8, v5, v39

    sub-double/2addr v6, v8

    aget-object v5, p4, v46

    aget-object v5, v5, v38

    aget-wide v8, v5, v39

    sub-double/2addr v6, v8

    aget-object v5, p4, v46

    aget-object v5, v5, v47

    aget-wide v8, v5, v39

    add-double/2addr v6, v8

    aget-object v5, p4, v37

    aget-object v5, v5, v38

    aget-wide v8, v5, v48

    sub-double/2addr v6, v8

    aget-object v5, p4, v37

    aget-object v5, v5, v47

    aget-wide v8, v5, v48

    add-double/2addr v6, v8

    aget-object v5, p4, v46

    aget-object v5, v5, v38

    aget-wide v8, v5, v48

    add-double/2addr v6, v8

    aget-object v5, p4, v46

    aget-object v5, v5, v47

    aget-wide v8, v5, v48

    sub-double/2addr v6, v8

    div-double v6, v6, v24

    aput-wide v6, v4, v36

    .line 92
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_2

    .line 78
    .end local v24    # "deltaXYZ":D
    .end local v26    # "deltaXZ":D
    .end local v30    # "deltaYZ":D
    .end local v32    # "deltaZ":D
    .end local v39    # "nK":I
    .end local v44    # "nZ":D
    .end local v48    # "pK":I
    .end local v54    # "pZ":D
    :cond_5
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_1

    .line 65
    .end local v22    # "deltaXY":D
    .end local v28    # "deltaY":D
    .end local v36    # "k":I
    .end local v38    # "nJ":I
    .end local v42    # "nY":D
    .end local v47    # "pJ":I
    .end local v52    # "pY":D
    :cond_6
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_0

    .line 123
    .end local v20    # "deltaX":D
    .end local v35    # "j":I
    .end local v37    # "nI":I
    .end local v40    # "nX":D
    .end local v46    # "pI":I
    .end local v50    # "pX":D
    :cond_7
    new-instance v4, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    invoke-direct/range {v4 .. v19}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;[D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[D[D[D)V

    return-object v4
.end method
