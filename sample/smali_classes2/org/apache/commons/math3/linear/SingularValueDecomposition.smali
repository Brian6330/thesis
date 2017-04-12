.class public Lorg/apache/commons/math3/linear/SingularValueDecomposition;
.super Ljava/lang/Object;
.source "SingularValueDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;
    }
.end annotation


# static fields
.field private static final EPS:D = 2.220446049250313E-16

.field private static final TINY:D = 1.6033346880071782E-291


# instance fields
.field private cachedS:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedUt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final m:I

.field private final n:I

.field private final singularValues:[D

.field private final tol:D

.field private final transposed:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 58
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v50

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v51

    move/from16 v0, v50

    move/from16 v1, v51

    if-ge v0, v1, :cond_0

    .line 92
    const/16 v50, 0x1

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->transposed:Z

    .line 93
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v4

    .line 94
    .local v4, "A":[[D
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v50

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    .line 95
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v50

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    .line 103
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v50

    new-array v0, v0, [D

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    .line 104
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v51, v0

    filled-new-array/range {v50 .. v51}, [I

    move-result-object v50

    sget-object v51, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v51

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 105
    .local v5, "U":[[D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v51, v0

    filled-new-array/range {v50 .. v51}, [I

    move-result-object v50

    sget-object v51, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v51

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 106
    .local v6, "V":[[D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v50

    new-array v7, v0, [D

    .line 107
    .local v7, "e":[D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v50

    new-array v0, v0, [D

    move-object/from16 v33, v0

    .line 110
    .local v33, "work":[D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    add-int/lit8 v50, v50, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v51, v0

    invoke-static/range {v50 .. v51}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v27

    .line 111
    .local v27, "nct":I
    const/16 v50, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v51, v0

    add-int/lit8 v51, v51, -0x2

    invoke-static/range {v50 .. v51}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v30

    .line 112
    .local v30, "nrt":I
    const/16 v24, 0x0

    .local v24, "k":I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v30

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v50

    move/from16 v0, v24

    move/from16 v1, v50

    if-ge v0, v1, :cond_14

    .line 113
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    const-wide/16 v52, 0x0

    aput-wide v52, v50, v24

    .line 118
    move/from16 v22, v24

    .local v22, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_1

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v51, v0

    aget-wide v52, v51, v24

    aget-object v51, v4, v22

    aget-wide v54, v51, v24

    invoke-static/range {v52 .. v55}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v52

    aput-wide v52, v50, v24

    .line 118
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 97
    .end local v4    # "A":[[D
    .end local v5    # "U":[[D
    .end local v6    # "V":[[D
    .end local v7    # "e":[D
    .end local v22    # "i":I
    .end local v24    # "k":I
    .end local v27    # "nct":I
    .end local v30    # "nrt":I
    .end local v33    # "work":[D
    :cond_0
    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->transposed:Z

    .line 98
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v4

    .line 99
    .restart local v4    # "A":[[D
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v50

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    .line 100
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v50

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    goto/16 :goto_0

    .line 121
    .restart local v5    # "U":[[D
    .restart local v6    # "V":[[D
    .restart local v7    # "e":[D
    .restart local v22    # "i":I
    .restart local v24    # "k":I
    .restart local v27    # "nct":I
    .restart local v30    # "nrt":I
    .restart local v33    # "work":[D
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aget-wide v50, v50, v24

    const-wide/16 v52, 0x0

    cmpl-double v50, v50, v52

    if-eqz v50, :cond_4

    .line 122
    aget-object v50, v4, v24

    aget-wide v50, v50, v24

    const-wide/16 v52, 0x0

    cmpg-double v50, v50, v52

    if-gez v50, :cond_2

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v51, v0

    aget-wide v52, v51, v24

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    aput-wide v52, v50, v24

    .line 125
    :cond_2
    move/from16 v22, v24

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_3

    .line 126
    aget-object v50, v4, v22

    aget-wide v52, v50, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v51, v0

    aget-wide v54, v51, v24

    div-double v52, v52, v54

    aput-wide v52, v50, v24

    .line 125
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 128
    :cond_3
    aget-object v50, v4, v24

    aget-wide v52, v50, v24

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    add-double v52, v52, v54

    aput-wide v52, v50, v24

    .line 130
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v51, v0

    aget-wide v52, v51, v24

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    aput-wide v52, v50, v24

    .line 132
    .end local v22    # "i":I
    :cond_5
    add-int/lit8 v23, v24, 0x1

    .local v23, "j":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v23

    move/from16 v1, v50

    if-ge v0, v1, :cond_8

    .line 133
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aget-wide v50, v50, v24

    const-wide/16 v52, 0x0

    cmpl-double v50, v50, v52

    if-eqz v50, :cond_7

    .line 136
    const-wide/16 v46, 0x0

    .line 137
    .local v46, "t":D
    move/from16 v22, v24

    .restart local v22    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_6

    .line 138
    aget-object v50, v4, v22

    aget-wide v50, v50, v24

    aget-object v52, v4, v22

    aget-wide v52, v52, v23

    mul-double v50, v50, v52

    add-double v46, v46, v50

    .line 137
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 140
    :cond_6
    move-wide/from16 v0, v46

    neg-double v0, v0

    move-wide/from16 v50, v0

    aget-object v52, v4, v24

    aget-wide v52, v52, v24

    div-double v46, v50, v52

    .line 141
    move/from16 v22, v24

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_7

    .line 142
    aget-object v50, v4, v22

    aget-wide v52, v50, v23

    aget-object v51, v4, v22

    aget-wide v54, v51, v24

    mul-double v54, v54, v46

    add-double v52, v52, v54

    aput-wide v52, v50, v23

    .line 141
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 147
    .end local v22    # "i":I
    .end local v46    # "t":D
    :cond_7
    aget-object v50, v4, v24

    aget-wide v50, v50, v23

    aput-wide v50, v7, v23

    .line 132
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 149
    :cond_8
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 152
    move/from16 v22, v24

    .restart local v22    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_9

    .line 153
    aget-object v50, v5, v22

    aget-object v51, v4, v22

    aget-wide v52, v51, v24

    aput-wide v52, v50, v24

    .line 152
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 156
    .end local v22    # "i":I
    :cond_9
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_13

    .line 160
    const-wide/16 v50, 0x0

    aput-wide v50, v7, v24

    .line 161
    add-int/lit8 v22, v24, 0x1

    .restart local v22    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_a

    .line 162
    aget-wide v50, v7, v24

    aget-wide v52, v7, v22

    invoke-static/range {v50 .. v53}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v50

    aput-wide v50, v7, v24

    .line 161
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 164
    :cond_a
    aget-wide v50, v7, v24

    const-wide/16 v52, 0x0

    cmpl-double v50, v50, v52

    if-eqz v50, :cond_d

    .line 165
    add-int/lit8 v50, v24, 0x1

    aget-wide v50, v7, v50

    const-wide/16 v52, 0x0

    cmpg-double v50, v50, v52

    if-gez v50, :cond_b

    .line 166
    aget-wide v50, v7, v24

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    aput-wide v50, v7, v24

    .line 168
    :cond_b
    add-int/lit8 v22, v24, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_c

    .line 169
    aget-wide v50, v7, v22

    aget-wide v52, v7, v24

    div-double v50, v50, v52

    aput-wide v50, v7, v22

    .line 168
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 171
    :cond_c
    add-int/lit8 v50, v24, 0x1

    aget-wide v52, v7, v50

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    add-double v52, v52, v54

    aput-wide v52, v7, v50

    .line 173
    :cond_d
    aget-wide v50, v7, v24

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    aput-wide v50, v7, v24

    .line 174
    add-int/lit8 v50, v24, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v51, v0

    move/from16 v0, v50

    move/from16 v1, v51

    if-ge v0, v1, :cond_12

    aget-wide v50, v7, v24

    const-wide/16 v52, 0x0

    cmpl-double v50, v50, v52

    if-eqz v50, :cond_12

    .line 177
    add-int/lit8 v22, v24, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_e

    .line 178
    const-wide/16 v50, 0x0

    aput-wide v50, v33, v22

    .line 177
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 180
    :cond_e
    add-int/lit8 v23, v24, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v23

    move/from16 v1, v50

    if-ge v0, v1, :cond_10

    .line 181
    add-int/lit8 v22, v24, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_f

    .line 182
    aget-wide v50, v33, v22

    aget-wide v52, v7, v23

    aget-object v54, v4, v22

    aget-wide v54, v54, v23

    mul-double v52, v52, v54

    add-double v50, v50, v52

    aput-wide v50, v33, v22

    .line 181
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 180
    :cond_f
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 185
    :cond_10
    add-int/lit8 v23, v24, 0x1

    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v23

    move/from16 v1, v50

    if-ge v0, v1, :cond_12

    .line 186
    aget-wide v50, v7, v23

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    add-int/lit8 v52, v24, 0x1

    aget-wide v52, v7, v52

    div-double v46, v50, v52

    .line 187
    .restart local v46    # "t":D
    add-int/lit8 v22, v24, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_11

    .line 188
    aget-object v50, v4, v22

    aget-wide v52, v50, v23

    aget-wide v54, v33, v22

    mul-double v54, v54, v46

    add-double v52, v52, v54

    aput-wide v52, v50, v23

    .line 187
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 185
    :cond_11
    add-int/lit8 v23, v23, 0x1

    goto :goto_d

    .line 195
    .end local v46    # "t":D
    :cond_12
    add-int/lit8 v22, v24, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_13

    .line 196
    aget-object v50, v6, v22

    aget-wide v52, v7, v22

    aput-wide v52, v50, v24

    .line 195
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    .line 112
    .end local v22    # "i":I
    :cond_13
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 201
    .end local v23    # "j":I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v31, v0

    .line 202
    .local v31, "p":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v27

    move/from16 v1, v50

    if-ge v0, v1, :cond_15

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aget-object v51, v4, v27

    aget-wide v52, v51, v27

    aput-wide v52, v50, v27

    .line 205
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v31

    if-ge v0, v1, :cond_16

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    add-int/lit8 v51, v31, -0x1

    const-wide/16 v52, 0x0

    aput-wide v52, v50, v51

    .line 208
    :cond_16
    add-int/lit8 v50, v30, 0x1

    move/from16 v0, v50

    move/from16 v1, v31

    if-ge v0, v1, :cond_17

    .line 209
    aget-object v50, v4, v30

    add-int/lit8 v51, v31, -0x1

    aget-wide v50, v50, v51

    aput-wide v50, v7, v30

    .line 211
    :cond_17
    add-int/lit8 v50, v31, -0x1

    const-wide/16 v52, 0x0

    aput-wide v52, v7, v50

    .line 214
    move/from16 v23, v27

    .restart local v23    # "j":I
    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v23

    move/from16 v1, v50

    if-ge v0, v1, :cond_19

    .line 215
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_18

    .line 216
    aget-object v50, v5, v22

    const-wide/16 v52, 0x0

    aput-wide v52, v50, v23

    .line 215
    add-int/lit8 v22, v22, 0x1

    goto :goto_11

    .line 218
    :cond_18
    aget-object v50, v5, v23

    const-wide/high16 v52, 0x3ff0000000000000L    # 1.0

    aput-wide v52, v50, v23

    .line 214
    add-int/lit8 v23, v23, 0x1

    goto :goto_10

    .line 220
    .end local v22    # "i":I
    :cond_19
    add-int/lit8 v24, v27, -0x1

    :goto_12
    if-ltz v24, :cond_21

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aget-wide v50, v50, v24

    const-wide/16 v52, 0x0

    cmpl-double v50, v50, v52

    if-eqz v50, :cond_1e

    .line 222
    add-int/lit8 v23, v24, 0x1

    :goto_13
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v23

    move/from16 v1, v50

    if-ge v0, v1, :cond_1c

    .line 223
    const-wide/16 v46, 0x0

    .line 224
    .restart local v46    # "t":D
    move/from16 v22, v24

    .restart local v22    # "i":I
    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_1a

    .line 225
    aget-object v50, v5, v22

    aget-wide v50, v50, v24

    aget-object v52, v5, v22

    aget-wide v52, v52, v23

    mul-double v50, v50, v52

    add-double v46, v46, v50

    .line 224
    add-int/lit8 v22, v22, 0x1

    goto :goto_14

    .line 227
    :cond_1a
    move-wide/from16 v0, v46

    neg-double v0, v0

    move-wide/from16 v50, v0

    aget-object v52, v5, v24

    aget-wide v52, v52, v24

    div-double v46, v50, v52

    .line 228
    move/from16 v22, v24

    :goto_15
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_1b

    .line 229
    aget-object v50, v5, v22

    aget-wide v52, v50, v23

    aget-object v51, v5, v22

    aget-wide v54, v51, v24

    mul-double v54, v54, v46

    add-double v52, v52, v54

    aput-wide v52, v50, v23

    .line 228
    add-int/lit8 v22, v22, 0x1

    goto :goto_15

    .line 222
    :cond_1b
    add-int/lit8 v23, v23, 0x1

    goto :goto_13

    .line 232
    .end local v22    # "i":I
    .end local v46    # "t":D
    :cond_1c
    move/from16 v22, v24

    .restart local v22    # "i":I
    :goto_16
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_1d

    .line 233
    aget-object v50, v5, v22

    aget-object v51, v5, v22

    aget-wide v52, v51, v24

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    aput-wide v52, v50, v24

    .line 232
    add-int/lit8 v22, v22, 0x1

    goto :goto_16

    .line 235
    :cond_1d
    aget-object v50, v5, v24

    const-wide/high16 v52, 0x3ff0000000000000L    # 1.0

    aget-object v51, v5, v24

    aget-wide v54, v51, v24

    add-double v52, v52, v54

    aput-wide v52, v50, v24

    .line 236
    const/16 v22, 0x0

    :goto_17
    add-int/lit8 v50, v24, -0x1

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_20

    .line 237
    aget-object v50, v5, v22

    const-wide/16 v52, 0x0

    aput-wide v52, v50, v24

    .line 236
    add-int/lit8 v22, v22, 0x1

    goto :goto_17

    .line 240
    .end local v22    # "i":I
    :cond_1e
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_18
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_1f

    .line 241
    aget-object v50, v5, v22

    const-wide/16 v52, 0x0

    aput-wide v52, v50, v24

    .line 240
    add-int/lit8 v22, v22, 0x1

    goto :goto_18

    .line 243
    :cond_1f
    aget-object v50, v5, v24

    const-wide/high16 v52, 0x3ff0000000000000L    # 1.0

    aput-wide v52, v50, v24

    .line 220
    :cond_20
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_12

    .line 248
    .end local v22    # "i":I
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    add-int/lit8 v24, v50, -0x1

    :goto_19
    if-ltz v24, :cond_26

    .line 249
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_24

    aget-wide v50, v7, v24

    const-wide/16 v52, 0x0

    cmpl-double v50, v50, v52

    if-eqz v50, :cond_24

    .line 251
    add-int/lit8 v23, v24, 0x1

    :goto_1a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v23

    move/from16 v1, v50

    if-ge v0, v1, :cond_24

    .line 252
    const-wide/16 v46, 0x0

    .line 253
    .restart local v46    # "t":D
    add-int/lit8 v22, v24, 0x1

    .restart local v22    # "i":I
    :goto_1b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_22

    .line 254
    aget-object v50, v6, v22

    aget-wide v50, v50, v24

    aget-object v52, v6, v22

    aget-wide v52, v52, v23

    mul-double v50, v50, v52

    add-double v46, v46, v50

    .line 253
    add-int/lit8 v22, v22, 0x1

    goto :goto_1b

    .line 256
    :cond_22
    move-wide/from16 v0, v46

    neg-double v0, v0

    move-wide/from16 v50, v0

    add-int/lit8 v52, v24, 0x1

    aget-object v52, v6, v52

    aget-wide v52, v52, v24

    div-double v46, v50, v52

    .line 257
    add-int/lit8 v22, v24, 0x1

    :goto_1c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_23

    .line 258
    aget-object v50, v6, v22

    aget-wide v52, v50, v23

    aget-object v51, v6, v22

    aget-wide v54, v51, v24

    mul-double v54, v54, v46

    add-double v52, v52, v54

    aput-wide v52, v50, v23

    .line 257
    add-int/lit8 v22, v22, 0x1

    goto :goto_1c

    .line 251
    :cond_23
    add-int/lit8 v23, v23, 0x1

    goto :goto_1a

    .line 262
    .end local v22    # "i":I
    .end local v46    # "t":D
    :cond_24
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_1d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_25

    .line 263
    aget-object v50, v6, v22

    const-wide/16 v52, 0x0

    aput-wide v52, v50, v24

    .line 262
    add-int/lit8 v22, v22, 0x1

    goto :goto_1d

    .line 265
    :cond_25
    aget-object v50, v6, v24

    const-wide/high16 v52, 0x3ff0000000000000L    # 1.0

    aput-wide v52, v50, v24

    .line 248
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_19

    .line 269
    .end local v22    # "i":I
    :cond_26
    add-int/lit8 v32, v31, -0x1

    .line 270
    .local v32, "pp":I
    :cond_27
    :goto_1e
    if-lez v31, :cond_42

    .line 282
    add-int/lit8 v24, v31, -0x2

    :goto_1f
    if-ltz v24, :cond_28

    .line 283
    const-wide/high16 v50, 0x390000000000000L

    const-wide/high16 v52, 0x3cb0000000000000L    # 2.220446049250313E-16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v54, v0

    aget-wide v54, v54, v24

    invoke-static/range {v54 .. v55}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v54

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v56, v0

    add-int/lit8 v57, v24, 0x1

    aget-wide v56, v56, v57

    invoke-static/range {v56 .. v57}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v56

    add-double v54, v54, v56

    mul-double v52, v52, v54

    add-double v48, v50, v52

    .line 293
    .local v48, "threshold":D
    aget-wide v50, v7, v24

    invoke-static/range {v50 .. v51}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    cmpl-double v50, v50, v48

    if-gtz v50, :cond_29

    .line 294
    const-wide/16 v50, 0x0

    aput-wide v50, v7, v24

    .line 300
    .end local v48    # "threshold":D
    :cond_28
    add-int/lit8 v50, v31, -0x2

    move/from16 v0, v24

    move/from16 v1, v50

    if-ne v0, v1, :cond_2a

    .line 301
    const/16 v25, 0x4

    .line 324
    .local v25, "kase":I
    :goto_20
    add-int/lit8 v24, v24, 0x1

    .line 326
    packed-switch v25, :pswitch_data_0

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aget-wide v50, v50, v24

    const-wide/16 v52, 0x0

    cmpg-double v50, v50, v52

    if-gtz v50, :cond_3e

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aget-wide v50, v50, v24

    const-wide/16 v54, 0x0

    cmpg-double v50, v50, v54

    if-gez v50, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aget-wide v50, v50, v24

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    :goto_21
    aput-wide v50, v52, v24

    .line 439
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_22
    move/from16 v0, v22

    move/from16 v1, v32

    if-gt v0, v1, :cond_3e

    .line 440
    aget-object v50, v6, v22

    aget-object v51, v6, v22

    aget-wide v52, v51, v24

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    aput-wide v52, v50, v24

    .line 439
    add-int/lit8 v22, v22, 0x1

    goto :goto_22

    .line 282
    .end local v22    # "i":I
    .end local v25    # "kase":I
    .restart local v48    # "threshold":D
    :cond_29
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_1f

    .line 304
    .end local v48    # "threshold":D
    :cond_2a
    add-int/lit8 v26, v31, -0x1

    .local v26, "ks":I
    :goto_23
    move/from16 v0, v26

    move/from16 v1, v24

    if-lt v0, v1, :cond_2b

    .line 305
    move/from16 v0, v26

    move/from16 v1, v24

    if-ne v0, v1, :cond_2c

    .line 315
    :cond_2b
    :goto_24
    move/from16 v0, v26

    move/from16 v1, v24

    if-ne v0, v1, :cond_30

    .line 316
    const/16 v25, 0x3

    .restart local v25    # "kase":I
    goto :goto_20

    .line 308
    .end local v25    # "kase":I
    :cond_2c
    move/from16 v0, v26

    move/from16 v1, v31

    if-eq v0, v1, :cond_2d

    aget-wide v50, v7, v26

    invoke-static/range {v50 .. v51}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    move-wide/from16 v52, v50

    :goto_25
    add-int/lit8 v50, v24, 0x1

    move/from16 v0, v26

    move/from16 v1, v50

    if-eq v0, v1, :cond_2e

    add-int/lit8 v50, v26, -0x1

    aget-wide v50, v7, v50

    invoke-static/range {v50 .. v51}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    :goto_26
    add-double v46, v52, v50

    .line 310
    .restart local v46    # "t":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aget-wide v50, v50, v26

    invoke-static/range {v50 .. v51}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    const-wide/high16 v52, 0x390000000000000L

    const-wide/high16 v54, 0x3cb0000000000000L    # 2.220446049250313E-16

    mul-double v54, v54, v46

    add-double v52, v52, v54

    cmpg-double v50, v50, v52

    if-gtz v50, :cond_2f

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    const-wide/16 v52, 0x0

    aput-wide v52, v50, v26

    goto :goto_24

    .line 308
    .end local v46    # "t":D
    :cond_2d
    const-wide/16 v50, 0x0

    move-wide/from16 v52, v50

    goto :goto_25

    :cond_2e
    const-wide/16 v50, 0x0

    goto :goto_26

    .line 304
    .restart local v46    # "t":D
    :cond_2f
    add-int/lit8 v26, v26, -0x1

    goto :goto_23

    .line 317
    .end local v46    # "t":D
    :cond_30
    add-int/lit8 v50, v31, -0x1

    move/from16 v0, v26

    move/from16 v1, v50

    if-ne v0, v1, :cond_31

    .line 318
    const/16 v25, 0x1

    .restart local v25    # "kase":I
    goto/16 :goto_20

    .line 320
    .end local v25    # "kase":I
    :cond_31
    const/16 v25, 0x2

    .line 321
    .restart local v25    # "kase":I
    move/from16 v24, v26

    goto/16 :goto_20

    .line 329
    .end local v26    # "ks":I
    :pswitch_0
    add-int/lit8 v50, v31, -0x2

    aget-wide v18, v7, v50

    .line 330
    .local v18, "f":D
    add-int/lit8 v50, v31, -0x2

    const-wide/16 v52, 0x0

    aput-wide v52, v7, v50

    .line 331
    add-int/lit8 v23, v31, -0x2

    :goto_27
    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_27

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aget-wide v50, v50, v23

    move-wide/from16 v0, v50

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v46

    .line 333
    .restart local v46    # "t":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aget-wide v50, v50, v23

    div-double v12, v50, v46

    .line 334
    .local v12, "cs":D
    div-double v40, v18, v46

    .line 335
    .local v40, "sn":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aput-wide v46, v50, v23

    .line 336
    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_32

    .line 337
    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v50, v0

    add-int/lit8 v52, v23, -0x1

    aget-wide v52, v7, v52

    mul-double v18, v50, v52

    .line 338
    add-int/lit8 v50, v23, -0x1

    add-int/lit8 v51, v23, -0x1

    aget-wide v52, v7, v51

    mul-double v52, v52, v12

    aput-wide v52, v7, v50

    .line 341
    :cond_32
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_28
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_33

    .line 342
    aget-object v50, v6, v22

    aget-wide v50, v50, v23

    mul-double v50, v50, v12

    aget-object v52, v6, v22

    add-int/lit8 v53, v31, -0x1

    aget-wide v52, v52, v53

    mul-double v52, v52, v40

    add-double v46, v50, v52

    .line 343
    aget-object v50, v6, v22

    add-int/lit8 v51, v31, -0x1

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v52, v0

    aget-object v54, v6, v22

    aget-wide v54, v54, v23

    mul-double v52, v52, v54

    aget-object v54, v6, v22

    add-int/lit8 v55, v31, -0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v12

    add-double v52, v52, v54

    aput-wide v52, v50, v51

    .line 344
    aget-object v50, v6, v22

    aput-wide v46, v50, v23

    .line 341
    add-int/lit8 v22, v22, 0x1

    goto :goto_28

    .line 331
    :cond_33
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_27

    .line 351
    .end local v12    # "cs":D
    .end local v18    # "f":D
    .end local v22    # "i":I
    .end local v40    # "sn":D
    .end local v46    # "t":D
    :pswitch_1
    add-int/lit8 v50, v24, -0x1

    aget-wide v18, v7, v50

    .line 352
    .restart local v18    # "f":D
    add-int/lit8 v50, v24, -0x1

    const-wide/16 v52, 0x0

    aput-wide v52, v7, v50

    .line 353
    move/from16 v23, v24

    :goto_29
    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_27

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aget-wide v50, v50, v23

    move-wide/from16 v0, v50

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v46

    .line 355
    .restart local v46    # "t":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aget-wide v50, v50, v23

    div-double v12, v50, v46

    .line 356
    .restart local v12    # "cs":D
    div-double v40, v18, v46

    .line 357
    .restart local v40    # "sn":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aput-wide v46, v50, v23

    .line 358
    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v50, v0

    aget-wide v52, v7, v23

    mul-double v18, v50, v52

    .line 359
    aget-wide v50, v7, v23

    mul-double v50, v50, v12

    aput-wide v50, v7, v23

    .line 361
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_2a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_34

    .line 362
    aget-object v50, v5, v22

    aget-wide v50, v50, v23

    mul-double v50, v50, v12

    aget-object v52, v5, v22

    add-int/lit8 v53, v24, -0x1

    aget-wide v52, v52, v53

    mul-double v52, v52, v40

    add-double v46, v50, v52

    .line 363
    aget-object v50, v5, v22

    add-int/lit8 v51, v24, -0x1

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v52, v0

    aget-object v54, v5, v22

    aget-wide v54, v54, v23

    mul-double v52, v52, v54

    aget-object v54, v5, v22

    add-int/lit8 v55, v24, -0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v12

    add-double v52, v52, v54

    aput-wide v52, v50, v51

    .line 364
    aget-object v50, v5, v22

    aput-wide v46, v50, v23

    .line 361
    add-int/lit8 v22, v22, 0x1

    goto :goto_2a

    .line 353
    :cond_34
    add-int/lit8 v23, v23, 0x1

    goto :goto_29

    .line 372
    .end local v12    # "cs":D
    .end local v18    # "f":D
    .end local v22    # "i":I
    .end local v40    # "sn":D
    .end local v46    # "t":D
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    add-int/lit8 v51, v31, -0x1

    aget-wide v50, v50, v51

    invoke-static/range {v50 .. v51}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x2

    aget-wide v52, v52, v53

    invoke-static/range {v52 .. v53}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v52

    invoke-static/range {v50 .. v53}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v28

    .line 374
    .local v28, "maxPm1Pm2":D
    add-int/lit8 v50, v31, -0x2

    aget-wide v50, v7, v50

    invoke-static/range {v50 .. v51}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    move-wide/from16 v0, v28

    move-wide/from16 v2, v50

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    invoke-static/range {v52 .. v53}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v52

    invoke-static/range {v50 .. v53}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v50

    aget-wide v52, v7, v24

    invoke-static/range {v52 .. v53}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v52

    invoke-static/range {v50 .. v53}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v34

    .line 378
    .local v34, "scale":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    add-int/lit8 v51, v31, -0x1

    aget-wide v50, v50, v51

    div-double v42, v50, v34

    .line 379
    .local v42, "sp":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    add-int/lit8 v51, v31, -0x2

    aget-wide v50, v50, v51

    div-double v44, v50, v34

    .line 380
    .local v44, "spm1":D
    add-int/lit8 v50, v31, -0x2

    aget-wide v50, v7, v50

    div-double v16, v50, v34

    .line 381
    .local v16, "epm1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aget-wide v50, v50, v24

    div-double v38, v50, v34

    .line 382
    .local v38, "sk":D
    aget-wide v50, v7, v24

    div-double v14, v50, v34

    .line 383
    .local v14, "ek":D
    add-double v50, v44, v42

    sub-double v52, v44, v42

    mul-double v50, v50, v52

    mul-double v52, v16, v16

    add-double v50, v50, v52

    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    div-double v8, v50, v52

    .line 384
    .local v8, "b":D
    mul-double v50, v42, v16

    mul-double v52, v42, v16

    mul-double v10, v50, v52

    .line 385
    .local v10, "c":D
    const-wide/16 v36, 0x0

    .line 386
    .local v36, "shift":D
    const-wide/16 v50, 0x0

    cmpl-double v50, v8, v50

    if-nez v50, :cond_35

    const-wide/16 v50, 0x0

    cmpl-double v50, v10, v50

    if-eqz v50, :cond_37

    .line 388
    :cond_35
    mul-double v50, v8, v8

    add-double v50, v50, v10

    invoke-static/range {v50 .. v51}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v36

    .line 389
    const-wide/16 v50, 0x0

    cmpg-double v50, v8, v50

    if-gez v50, :cond_36

    .line 390
    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v36, v0

    .line 392
    :cond_36
    add-double v50, v8, v36

    div-double v36, v10, v50

    .line 394
    :cond_37
    add-double v50, v38, v42

    sub-double v52, v38, v42

    mul-double v50, v50, v52

    add-double v18, v50, v36

    .line 395
    .restart local v18    # "f":D
    mul-double v20, v38, v14

    .line 397
    .local v20, "g":D
    move/from16 v23, v24

    :goto_2b
    add-int/lit8 v50, v31, -0x1

    move/from16 v0, v23

    move/from16 v1, v50

    if-ge v0, v1, :cond_3b

    .line 398
    invoke-static/range {v18 .. v21}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v46

    .line 399
    .restart local v46    # "t":D
    div-double v12, v18, v46

    .line 400
    .restart local v12    # "cs":D
    div-double v40, v20, v46

    .line 401
    .restart local v40    # "sn":D
    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_38

    .line 402
    add-int/lit8 v50, v23, -0x1

    aput-wide v46, v7, v50

    .line 404
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aget-wide v50, v50, v23

    mul-double v50, v50, v12

    aget-wide v52, v7, v23

    mul-double v52, v52, v40

    add-double v18, v50, v52

    .line 405
    aget-wide v50, v7, v23

    mul-double v50, v50, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v23

    mul-double v52, v52, v40

    sub-double v50, v50, v52

    aput-wide v50, v7, v23

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    add-int/lit8 v51, v23, 0x1

    aget-wide v50, v50, v51

    mul-double v20, v40, v50

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    add-int/lit8 v51, v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v23, 0x1

    aget-wide v52, v52, v53

    mul-double v52, v52, v12

    aput-wide v52, v50, v51

    .line 409
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_2c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_39

    .line 410
    aget-object v50, v6, v22

    aget-wide v50, v50, v23

    mul-double v50, v50, v12

    aget-object v52, v6, v22

    add-int/lit8 v53, v23, 0x1

    aget-wide v52, v52, v53

    mul-double v52, v52, v40

    add-double v46, v50, v52

    .line 411
    aget-object v50, v6, v22

    add-int/lit8 v51, v23, 0x1

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v52, v0

    aget-object v54, v6, v22

    aget-wide v54, v54, v23

    mul-double v52, v52, v54

    aget-object v54, v6, v22

    add-int/lit8 v55, v23, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v12

    add-double v52, v52, v54

    aput-wide v52, v50, v51

    .line 412
    aget-object v50, v6, v22

    aput-wide v46, v50, v23

    .line 409
    add-int/lit8 v22, v22, 0x1

    goto :goto_2c

    .line 414
    :cond_39
    invoke-static/range {v18 .. v21}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v46

    .line 415
    div-double v12, v18, v46

    .line 416
    div-double v40, v20, v46

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aput-wide v46, v50, v23

    .line 418
    aget-wide v50, v7, v23

    mul-double v50, v50, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v23, 0x1

    aget-wide v52, v52, v53

    mul-double v52, v52, v40

    add-double v18, v50, v52

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    add-int/lit8 v51, v23, 0x1

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v52, v0

    aget-wide v54, v7, v23

    mul-double v52, v52, v54

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v23, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v12

    add-double v52, v52, v54

    aput-wide v52, v50, v51

    .line 420
    add-int/lit8 v50, v23, 0x1

    aget-wide v50, v7, v50

    mul-double v20, v40, v50

    .line 421
    add-int/lit8 v50, v23, 0x1

    add-int/lit8 v51, v23, 0x1

    aget-wide v52, v7, v51

    mul-double v52, v52, v12

    aput-wide v52, v7, v50

    .line 422
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    add-int/lit8 v50, v50, -0x1

    move/from16 v0, v23

    move/from16 v1, v50

    if-ge v0, v1, :cond_3a

    .line 423
    const/16 v22, 0x0

    :goto_2d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_3a

    .line 424
    aget-object v50, v5, v22

    aget-wide v50, v50, v23

    mul-double v50, v50, v12

    aget-object v52, v5, v22

    add-int/lit8 v53, v23, 0x1

    aget-wide v52, v52, v53

    mul-double v52, v52, v40

    add-double v46, v50, v52

    .line 425
    aget-object v50, v5, v22

    add-int/lit8 v51, v23, 0x1

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v52, v0

    aget-object v54, v5, v22

    aget-wide v54, v54, v23

    mul-double v52, v52, v54

    aget-object v54, v5, v22

    add-int/lit8 v55, v23, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v12

    add-double v52, v52, v54

    aput-wide v52, v50, v51

    .line 426
    aget-object v50, v5, v22

    aput-wide v46, v50, v23

    .line 423
    add-int/lit8 v22, v22, 0x1

    goto :goto_2d

    .line 397
    :cond_3a
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2b

    .line 430
    .end local v12    # "cs":D
    .end local v22    # "i":I
    .end local v40    # "sn":D
    .end local v46    # "t":D
    :cond_3b
    add-int/lit8 v50, v31, -0x2

    aput-wide v18, v7, v50

    goto/16 :goto_1e

    .line 437
    .end local v8    # "b":D
    .end local v10    # "c":D
    .end local v14    # "ek":D
    .end local v16    # "epm1":D
    .end local v18    # "f":D
    .end local v20    # "g":D
    .end local v28    # "maxPm1Pm2":D
    .end local v34    # "scale":D
    .end local v36    # "shift":D
    .end local v38    # "sk":D
    .end local v42    # "sp":D
    .end local v44    # "spm1":D
    :cond_3c
    const-wide/16 v50, 0x0

    goto/16 :goto_21

    .line 465
    .restart local v46    # "t":D
    :cond_3d
    add-int/lit8 v24, v24, 0x1

    .line 444
    .end local v46    # "t":D
    :cond_3e
    move/from16 v0, v24

    move/from16 v1, v32

    if-ge v0, v1, :cond_3f

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aget-wide v50, v50, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v24, 0x1

    aget-wide v52, v52, v53

    cmpl-double v50, v50, v52

    if-ltz v50, :cond_40

    .line 467
    :cond_3f
    add-int/lit8 v31, v31, -0x1

    goto/16 :goto_1e

    .line 448
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    aget-wide v46, v50, v24

    .line 449
    .restart local v46    # "t":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v51, v0

    add-int/lit8 v52, v24, 0x1

    aget-wide v52, v51, v52

    aput-wide v52, v50, v24

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v50, v0

    add-int/lit8 v51, v24, 0x1

    aput-wide v46, v50, v51

    .line 451
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    add-int/lit8 v50, v50, -0x1

    move/from16 v0, v24

    move/from16 v1, v50

    if-ge v0, v1, :cond_41

    .line 452
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_2e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_41

    .line 453
    aget-object v50, v6, v22

    add-int/lit8 v51, v24, 0x1

    aget-wide v46, v50, v51

    .line 454
    aget-object v50, v6, v22

    add-int/lit8 v51, v24, 0x1

    aget-object v52, v6, v22

    aget-wide v52, v52, v24

    aput-wide v52, v50, v51

    .line 455
    aget-object v50, v6, v22

    aput-wide v46, v50, v24

    .line 452
    add-int/lit8 v22, v22, 0x1

    goto :goto_2e

    .line 458
    .end local v22    # "i":I
    :cond_41
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    add-int/lit8 v50, v50, -0x1

    move/from16 v0, v24

    move/from16 v1, v50

    if-ge v0, v1, :cond_3d

    .line 459
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_2f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_3d

    .line 460
    aget-object v50, v5, v22

    add-int/lit8 v51, v24, 0x1

    aget-wide v46, v50, v51

    .line 461
    aget-object v50, v5, v22

    add-int/lit8 v51, v24, 0x1

    aget-object v52, v5, v22

    aget-wide v52, v52, v24

    aput-wide v52, v50, v51

    .line 462
    aget-object v50, v5, v22

    aput-wide v46, v50, v24

    .line 459
    add-int/lit8 v22, v22, 0x1

    goto :goto_2f

    .line 474
    .end local v22    # "i":I
    .end local v25    # "kase":I
    .end local v46    # "t":D
    :cond_42
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    move/from16 v50, v0

    move/from16 v0, v50

    int-to-double v0, v0

    move-wide/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 v52, v0

    const/16 v53, 0x0

    aget-wide v52, v52, v53

    mul-double v50, v50, v52

    const-wide/high16 v52, 0x3cb0000000000000L    # 2.220446049250313E-16

    mul-double v50, v50, v52

    sget-wide v52, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    invoke-static/range {v52 .. v53}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v52

    invoke-static/range {v50 .. v53}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v50

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->tol:D

    .line 477
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->transposed:Z

    move/from16 v50, v0

    if-nez v50, :cond_43

    .line 478
    invoke-static {v5}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 479
    invoke-static {v6}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 484
    :goto_30
    return-void

    .line 481
    :cond_43
    invoke-static {v6}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 482
    invoke-static {v5}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_30

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/linear/SingularValueDecomposition;)[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    return-object v0
.end method


# virtual methods
.method public getConditionNumber()D
    .locals 4

    .prologue
    .line 616
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    iget v3, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getCovariance(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 11
    .param p1, "minSingularValue"    # D

    .prologue
    const/4 v2, 0x0

    .line 574
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    array-length v9, v0

    .line 575
    .local v9, "p":I
    const/4 v7, 0x0

    .line 576
    .local v7, "dimension":I
    :goto_0
    if-ge v7, v9, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v0, v0, v7

    cmpl-double v0, v0, p1

    if-ltz v0, :cond_0

    .line 578
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 581
    :cond_0
    if-nez v7, :cond_1

    .line 582
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_LARGE_CUTOFF_SINGULAR_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v4, v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 586
    :cond_1
    filled-new-array {v7, v9}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 587
    .local v6, "data":[[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getVT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/math3/linear/SingularValueDecomposition$1;

    invoke-direct {v1, p0, v6}, Lorg/apache/commons/math3/linear/SingularValueDecomposition$1;-><init>(Lorg/apache/commons/math3/linear/SingularValueDecomposition;[[D)V

    add-int/lit8 v3, v7, -0x1

    add-int/lit8 v5, v9, -0x1

    move v4, v2

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/linear/RealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D

    .line 596
    new-instance v8, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v8, v6, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    .line 597
    .local v8, "jv":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v8}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getInverseConditionNumber()D
    .locals 4

    .prologue
    .line 627
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    iget v1, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getNorm()D
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getRank()I
    .locals 6

    .prologue
    .line 639
    const/4 v1, 0x0

    .line 640
    .local v1, "r":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 641
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v2, v2, v0

    iget-wide v4, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->tol:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 642
    add-int/lit8 v1, v1, 0x1

    .line 640
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    :cond_1
    return v1
.end method

.method public getS()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedS:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedS:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 523
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedS:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getSingularValues()[D
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 9

    .prologue
    .line 653
    new-instance v1, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getUT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getRank()I

    move-result v0

    iget v5, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ne v0, v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iget-wide v6, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->tol:D

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;-><init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZDLorg/apache/commons/math3/linear/SingularValueDecomposition$1;)V

    return-object v1

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getU()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getUT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedUt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getU()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedUt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 509
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedUt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getV()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getVT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 558
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
