.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
.super Ljava/lang/Object;
.source "BicubicSplineInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AINV:[[D

.field private static final NUM_COEFF:I = 0x10


# instance fields
.field private final partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

.field private final xval:[D

.field private final yval:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 46
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

    sput-object v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->AINV:[[D

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
    .locals 8
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
    .line 107
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;-><init>([D[D[[D[[D[[D[[DZ)V

    .line 108
    return-void
.end method

.method public constructor <init>([D[D[[D[[D[[D[[DZ)V
    .locals 16
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "f"    # [[D
    .param p4, "dFdX"    # [[D
    .param p5, "dFdY"    # [[D
    .param p6, "d2FdXdY"    # [[D
    .param p7, "initializeDerivatives"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    move-object/from16 v0, p1

    array-length v10, v0

    .line 146
    .local v10, "xLen":I
    move-object/from16 v0, p2

    array-length v11, v0

    .line 148
    .local v11, "yLen":I
    if-eqz v10, :cond_0

    if-eqz v11, :cond_0

    move-object/from16 v0, p3

    array-length v12, v0

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    aget-object v12, p3, v12

    array-length v12, v12

    if-nez v12, :cond_1

    .line 149
    :cond_0
    new-instance v12, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v12}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v12

    .line 151
    :cond_1
    move-object/from16 v0, p3

    array-length v12, v0

    if-eq v10, v12, :cond_2

    .line 152
    new-instance v12, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p3

    array-length v13, v0

    invoke-direct {v12, v10, v13}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v12

    .line 154
    :cond_2
    move-object/from16 v0, p4

    array-length v12, v0

    if-eq v10, v12, :cond_3

    .line 155
    new-instance v12, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p4

    array-length v13, v0

    invoke-direct {v12, v10, v13}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v12

    .line 157
    :cond_3
    move-object/from16 v0, p5

    array-length v12, v0

    if-eq v10, v12, :cond_4

    .line 158
    new-instance v12, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p5

    array-length v13, v0

    invoke-direct {v12, v10, v13}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v12

    .line 160
    :cond_4
    move-object/from16 v0, p6

    array-length v12, v0

    if-eq v10, v12, :cond_5

    .line 161
    new-instance v12, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v0, p6

    array-length v13, v0

    invoke-direct {v12, v10, v13}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v12

    .line 164
    :cond_5
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 165
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 167
    invoke-virtual/range {p1 .. p1}, [D->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [D

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    .line 168
    invoke-virtual/range {p2 .. p2}, [D->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [D

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    .line 170
    add-int/lit8 v8, v10, -0x1

    .line 171
    .local v8, "lastI":I
    add-int/lit8 v9, v11, -0x1

    .line 172
    .local v9, "lastJ":I
    filled-new-array {v8, v9}, [I

    move-result-object v12

    const-class v13, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    .line 174
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_b

    .line 175
    aget-object v12, p3, v4

    array-length v12, v12

    if-eq v12, v11, :cond_6

    .line 176
    new-instance v12, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v13, p3, v4

    array-length v13, v13

    invoke-direct {v12, v13, v11}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v12

    .line 178
    :cond_6
    aget-object v12, p4, v4

    array-length v12, v12

    if-eq v12, v11, :cond_7

    .line 179
    new-instance v12, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v13, p4, v4

    array-length v13, v13

    invoke-direct {v12, v13, v11}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v12

    .line 181
    :cond_7
    aget-object v12, p5, v4

    array-length v12, v12

    if-eq v12, v11, :cond_8

    .line 182
    new-instance v12, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v13, p5, v4

    array-length v13, v13

    invoke-direct {v12, v13, v11}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v12

    .line 184
    :cond_8
    aget-object v12, p6, v4

    array-length v12, v12

    if-eq v12, v11, :cond_9

    .line 185
    new-instance v12, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v13, p6, v4

    array-length v13, v13

    invoke-direct {v12, v13, v11}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v12

    .line 187
    :cond_9
    add-int/lit8 v5, v4, 0x1

    .line 188
    .local v5, "ip1":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v9, :cond_a

    .line 189
    add-int/lit8 v7, v6, 0x1

    .line 190
    .local v7, "jp1":I
    const/16 v12, 0x10

    new-array v3, v12, [D

    const/4 v12, 0x0

    aget-object v13, p3, v4

    aget-wide v14, v13, v6

    aput-wide v14, v3, v12

    const/4 v12, 0x1

    aget-object v13, p3, v5

    aget-wide v14, v13, v6

    aput-wide v14, v3, v12

    const/4 v12, 0x2

    aget-object v13, p3, v4

    aget-wide v14, v13, v7

    aput-wide v14, v3, v12

    const/4 v12, 0x3

    aget-object v13, p3, v5

    aget-wide v14, v13, v7

    aput-wide v14, v3, v12

    const/4 v12, 0x4

    aget-object v13, p4, v4

    aget-wide v14, v13, v6

    aput-wide v14, v3, v12

    const/4 v12, 0x5

    aget-object v13, p4, v5

    aget-wide v14, v13, v6

    aput-wide v14, v3, v12

    const/4 v12, 0x6

    aget-object v13, p4, v4

    aget-wide v14, v13, v7

    aput-wide v14, v3, v12

    const/4 v12, 0x7

    aget-object v13, p4, v5

    aget-wide v14, v13, v7

    aput-wide v14, v3, v12

    const/16 v12, 0x8

    aget-object v13, p5, v4

    aget-wide v14, v13, v6

    aput-wide v14, v3, v12

    const/16 v12, 0x9

    aget-object v13, p5, v5

    aget-wide v14, v13, v6

    aput-wide v14, v3, v12

    const/16 v12, 0xa

    aget-object v13, p5, v4

    aget-wide v14, v13, v7

    aput-wide v14, v3, v12

    const/16 v12, 0xb

    aget-object v13, p5, v5

    aget-wide v14, v13, v7

    aput-wide v14, v3, v12

    const/16 v12, 0xc

    aget-object v13, p6, v4

    aget-wide v14, v13, v6

    aput-wide v14, v3, v12

    const/16 v12, 0xd

    aget-object v13, p6, v5

    aget-wide v14, v13, v6

    aput-wide v14, v3, v12

    const/16 v12, 0xe

    aget-object v13, p6, v4

    aget-wide v14, v13, v7

    aput-wide v14, v3, v12

    const/16 v12, 0xf

    aget-object v13, p6, v5

    aget-wide v14, v13, v7

    aput-wide v14, v3, v12

    .line 197
    .local v3, "beta":[D
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    aget-object v12, v12, v4

    new-instance v13, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->computeSplineCoefficients([D)[D

    move-result-object v14

    move/from16 v0, p7

    invoke-direct {v13, v14, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;-><init>([DZ)V

    aput-object v13, v12, v6

    .line 188
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 174
    .end local v3    # "beta":[D
    .end local v7    # "jp1":I
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 202
    .end local v5    # "ip1":I
    .end local v6    # "j":I
    :cond_b
    if-eqz p7, :cond_d

    .line 204
    const/4 v12, 0x5

    filled-new-array {v12, v8, v9}, [I

    move-result-object v12

    const-class v13, Lorg/apache/commons/math3/analysis/BivariateFunction;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 206
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_e

    .line 207
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_3
    if-ge v6, v9, :cond_c

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    aget-object v12, v12, v4

    aget-object v2, v12, v6

    .line 209
    .local v2, "bcs":Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    aget-object v12, v12, v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v13

    aput-object v13, v12, v6

    .line 210
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aget-object v12, v12, v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v13

    aput-object v13, v12, v6

    .line 211
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    aget-object v12, v12, v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v13

    aput-object v13, v12, v6

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    const/4 v13, 0x3

    aget-object v12, v12, v13

    aget-object v12, v12, v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v13

    aput-object v13, v12, v6

    .line 213
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    const/4 v13, 0x4

    aget-object v12, v12, v13

    aget-object v12, v12, v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v13

    aput-object v13, v12, v6

    .line 207
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 206
    .end local v2    # "bcs":Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 218
    .end local v6    # "j":I
    :cond_d
    const/4 v12, 0x0

    check-cast v12, [[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 220
    :cond_e
    return-void
.end method

.method private computeSplineCoefficients([D)[D
    .locals 11
    .param p1, "beta"    # [D

    .prologue
    const/16 v10, 0x10

    .line 420
    new-array v0, v10, [D

    .line 422
    .local v0, "a":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_1

    .line 423
    const-wide/16 v4, 0x0

    .line 424
    .local v4, "result":D
    sget-object v6, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->AINV:[[D

    aget-object v3, v6, v1

    .line 425
    .local v3, "row":[D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v10, :cond_0

    .line 426
    aget-wide v6, v3, v2

    aget-wide v8, p1, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 428
    :cond_0
    aput-wide v4, v0, v1

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    .end local v2    # "j":I
    .end local v3    # "row":[D
    .end local v4    # "result":D
    :cond_1
    return-object v0
.end method

.method private partialDerivative(IDD)D
    .locals 14
    .param p1, "which"    # I
    .param p2, "x"    # D
    .param p4, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    move-wide/from16 v0, p2

    invoke-direct {p0, v0, v1, v8}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v2

    .line 350
    .local v2, "i":I
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    move-wide/from16 v0, p4

    invoke-direct {p0, v0, v1, v8}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v3

    .line 352
    .local v3, "j":I
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    aget-wide v8, v8, v2

    sub-double v8, p2, v8

    iget-object v10, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    add-int/lit8 v11, v2, 0x1

    aget-wide v10, v10, v11

    iget-object v12, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    aget-wide v12, v12, v2

    sub-double/2addr v10, v12

    div-double v4, v8, v10

    .line 353
    .local v4, "xN":D
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    aget-wide v8, v8, v3

    sub-double v8, p4, v8

    iget-object v10, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    add-int/lit8 v11, v3, 0x1

    aget-wide v10, v10, v11

    iget-object v12, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    aget-wide v12, v12, v3

    sub-double/2addr v10, v12

    div-double v6, v8, v10

    .line 355
    .local v6, "yN":D
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    aget-object v8, v8, p1

    aget-object v8, v8, v2

    aget-object v8, v8, v3

    invoke-interface {v8, v4, v5, v6, v7}, Lorg/apache/commons/math3/analysis/BivariateFunction;->value(DD)D

    move-result-wide v8

    return-wide v8
.end method

.method private searchIndex(D[D)I
    .locals 9
    .param p1, "c"    # D
    .param p3, "val"    # [D

    .prologue
    .line 367
    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v1

    .line 369
    .local v1, "r":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    array-length v2, p3

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 371
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

    .line 374
    :cond_1
    if-gez v1, :cond_3

    .line 377
    neg-int v2, v1

    add-int/lit8 v1, v2, -0x2

    .line 387
    .end local v1    # "r":I
    :cond_2
    :goto_0
    return v1

    .line 379
    .restart local v1    # "r":I
    :cond_3
    array-length v2, p3

    add-int/lit8 v0, v2, -0x1

    .line 380
    .local v0, "last":I
    if-ne v1, v0, :cond_2

    .line 383
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

    .line 245
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    cmpl-double v1, p1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p3, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    cmpl-double v1, p3, v2

    if-lez v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public partialDerivativeX(DD)D
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivative(IDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public partialDerivativeXX(DD)D
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivative(IDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public partialDerivativeXY(DD)D
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 332
    const/4 v1, 0x4

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivative(IDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public partialDerivativeY(DD)D
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivative(IDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public partialDerivativeYY(DD)D
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 317
    const/4 v1, 0x3

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivative(IDD)D

    move-result-wide v0

    return-wide v0
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
    .line 227
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    move-wide/from16 v0, p1

    invoke-direct {p0, v0, v1, v8}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v2

    .line 228
    .local v2, "i":I
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v8}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v3

    .line 230
    .local v3, "j":I
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    aget-wide v8, v8, v2

    sub-double v8, p1, v8

    iget-object v10, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    add-int/lit8 v11, v2, 0x1

    aget-wide v10, v10, v11

    iget-object v12, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    aget-wide v12, v12, v2

    sub-double/2addr v10, v12

    div-double v4, v8, v10

    .line 231
    .local v4, "xN":D
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    aget-wide v8, v8, v3

    sub-double v8, p3, v8

    iget-object v10, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    add-int/lit8 v11, v3, 0x1

    aget-wide v10, v10, v11

    iget-object v12, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    aget-wide v12, v12, v3

    sub-double/2addr v10, v12

    div-double v6, v8, v10

    .line 233
    .local v6, "yN":D
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    aget-object v8, v8, v2

    aget-object v8, v8, v3

    invoke-virtual {v8, v4, v5, v6, v7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->value(DD)D

    move-result-wide v8

    return-wide v8
.end method
