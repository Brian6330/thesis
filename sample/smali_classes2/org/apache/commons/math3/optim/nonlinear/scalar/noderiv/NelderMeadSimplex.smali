.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;
.source "NelderMeadSimplex.java"


# static fields
.field private static final DEFAULT_GAMMA:D = 0.5

.field private static final DEFAULT_KHI:D = 2.0

.field private static final DEFAULT_RHO:D = 1.0

.field private static final DEFAULT_SIGMA:D = 0.5


# instance fields
.field private final gamma:D

.field private final khi:D

.field private final rho:D

.field private final sigma:D


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 55
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;-><init>(ID)V

    .line 56
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 12
    .param p1, "n"    # I
    .param p2, "sideLength"    # D

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 68
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v10, v8

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;-><init>(IDDDDD)V

    .line 70
    return-void
.end method

.method public constructor <init>(IDDDD)V
    .locals 12
    .param p1, "n"    # I
    .param p2, "rho"    # D
    .param p4, "khi"    # D
    .param p6, "gamma"    # D
    .param p8, "sigma"    # D

    .prologue
    .line 108
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;-><init>(IDDDDD)V

    .line 109
    return-void
.end method

.method public constructor <init>(IDDDDD)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "sideLength"    # D
    .param p4, "rho"    # D
    .param p6, "khi"    # D
    .param p8, "gamma"    # D
    .param p10, "sigma"    # D

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>(ID)V

    .line 89
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->rho:D

    .line 90
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->khi:D

    .line 91
    iput-wide p8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->gamma:D

    .line 92
    iput-wide p10, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->sigma:D

    .line 93
    return-void
.end method

.method public constructor <init>([D)V
    .locals 10
    .param p1, "steps"    # [D

    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 120
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move-object v0, p0

    move-object v1, p1

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;-><init>([DDDDD)V

    .line 121
    return-void
.end method

.method public constructor <init>([DDDDD)V
    .locals 0
    .param p1, "steps"    # [D
    .param p2, "rho"    # D
    .param p4, "khi"    # D
    .param p6, "gamma"    # D
    .param p8, "sigma"    # D

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>([D)V

    .line 140
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->rho:D

    .line 141
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->khi:D

    .line 142
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->gamma:D

    .line 143
    iput-wide p8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->sigma:D

    .line 144
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 10
    .param p1, "referenceSimplex"    # [[D

    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 155
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move-object v0, p0

    move-object v1, p1

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;-><init>([[DDDDD)V

    .line 156
    return-void
.end method

.method public constructor <init>([[DDDDD)V
    .locals 0
    .param p1, "referenceSimplex"    # [[D
    .param p2, "rho"    # D
    .param p4, "khi"    # D
    .param p6, "gamma"    # D
    .param p8, "sigma"    # D

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>([[D)V

    .line 177
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->rho:D

    .line 178
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->khi:D

    .line 179
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->gamma:D

    .line 180
    iput-wide p8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->sigma:D

    .line 181
    return-void
.end method


# virtual methods
.method public iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V
    .locals 34
    .param p1, "evaluationFunction"    # Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getDimension()I

    move-result v12

    .line 191
    .local v12, "n":I
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v6

    .line 192
    .local v6, "best":Lorg/apache/commons/math3/optim/PointValuePair;
    add-int/lit8 v25, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v15

    .line 193
    .local v15, "secondBest":Lorg/apache/commons/math3/optim/PointValuePair;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v18

    .line 194
    .local v18, "worst":Lorg/apache/commons/math3/optim/PointValuePair;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v24

    .line 198
    .local v24, "xWorst":[D
    new-array v7, v12, [D

    .line 199
    .local v7, "centroid":[D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_1

    .line 200
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v19

    .line 201
    .local v19, "x":[D
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v12, :cond_0

    .line 202
    aget-wide v26, v7, v11

    aget-wide v28, v19, v11

    add-double v26, v26, v28

    aput-wide v26, v7, v11

    .line 201
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 199
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 205
    .end local v11    # "j":I
    .end local v19    # "x":[D
    :cond_1
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v12

    move-wide/from16 v28, v0

    div-double v16, v26, v28

    .line 206
    .local v16, "scaling":D
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_2
    if-ge v11, v12, :cond_2

    .line 207
    aget-wide v26, v7, v11

    mul-double v26, v26, v16

    aput-wide v26, v7, v11

    .line 206
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 211
    :cond_2
    new-array v0, v12, [D

    move-object/from16 v22, v0

    .line 212
    .local v22, "xR":[D
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v12, :cond_3

    .line 213
    aget-wide v26, v7, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->rho:D

    move-wide/from16 v28, v0

    aget-wide v30, v7, v11

    aget-wide v32, v24, v11

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    add-double v26, v26, v28

    aput-wide v26, v22, v11

    .line 212
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 215
    :cond_3
    new-instance v14, Lorg/apache/commons/math3/optim/PointValuePair;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v26

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    move/from16 v3, v25

    invoke-direct {v14, v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    .line 218
    .local v14, "reflected":Lorg/apache/commons/math3/optim/PointValuePair;
    move-object/from16 v0, p2

    invoke-interface {v0, v6, v14}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v25

    if-gtz v25, :cond_4

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v25

    if-gez v25, :cond_4

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V

    .line 279
    :goto_4
    return-void

    .line 222
    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v14, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v25

    if-gez v25, :cond_7

    .line 224
    new-array v0, v12, [D

    move-object/from16 v21, v0

    .line 225
    .local v21, "xE":[D
    const/4 v11, 0x0

    :goto_5
    if-ge v11, v12, :cond_5

    .line 226
    aget-wide v26, v7, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->khi:D

    move-wide/from16 v28, v0

    aget-wide v30, v22, v11

    aget-wide v32, v7, v11

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    add-double v26, v26, v28

    aput-wide v26, v21, v11

    .line 225
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 228
    :cond_5
    new-instance v8, Lorg/apache/commons/math3/optim/PointValuePair;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v26

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    move/from16 v3, v25

    invoke-direct {v8, v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    .line 231
    .local v8, "expanded":Lorg/apache/commons/math3/optim/PointValuePair;
    move-object/from16 v0, p2

    invoke-interface {v0, v8, v14}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v25

    if-gez v25, :cond_6

    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V

    goto :goto_4

    .line 236
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V

    goto :goto_4

    .line 239
    .end local v8    # "expanded":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v21    # "xE":[D
    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v14, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v25

    if-gez v25, :cond_9

    .line 241
    new-array v0, v12, [D

    move-object/from16 v20, v0

    .line 242
    .local v20, "xC":[D
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v12, :cond_8

    .line 243
    aget-wide v26, v7, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->gamma:D

    move-wide/from16 v28, v0

    aget-wide v30, v22, v11

    aget-wide v32, v7, v11

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    add-double v26, v26, v28

    aput-wide v26, v20, v11

    .line 242
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 245
    :cond_8
    new-instance v13, Lorg/apache/commons/math3/optim/PointValuePair;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v26

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    move/from16 v3, v25

    invoke-direct {v13, v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    .line 247
    .local v13, "outContracted":Lorg/apache/commons/math3/optim/PointValuePair;
    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v25

    if-gtz v25, :cond_b

    .line 249
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V

    goto/16 :goto_4

    .line 254
    .end local v13    # "outContracted":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v20    # "xC":[D
    :cond_9
    new-array v0, v12, [D

    move-object/from16 v20, v0

    .line 255
    .restart local v20    # "xC":[D
    const/4 v11, 0x0

    :goto_7
    if-ge v11, v12, :cond_a

    .line 256
    aget-wide v26, v7, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->gamma:D

    move-wide/from16 v28, v0

    aget-wide v30, v7, v11

    aget-wide v32, v24, v11

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    aput-wide v26, v20, v11

    .line 255
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 258
    :cond_a
    new-instance v10, Lorg/apache/commons/math3/optim/PointValuePair;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v26

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    move/from16 v3, v25

    invoke-direct {v10, v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    .line 261
    .local v10, "inContracted":Lorg/apache/commons/math3/optim/PointValuePair;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v10, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v25

    if-gez v25, :cond_b

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V

    goto/16 :goto_4

    .line 269
    .end local v10    # "inContracted":Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_b
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v23

    .line 270
    .local v23, "xSmallest":[D
    const/4 v9, 0x1

    :goto_8
    if-gt v9, v12, :cond_d

    .line 271
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/optim/PointValuePair;->getPoint()[D

    move-result-object v19

    .line 272
    .restart local v19    # "x":[D
    const/4 v11, 0x0

    :goto_9
    if-ge v11, v12, :cond_c

    .line 273
    aget-wide v26, v23, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->sigma:D

    move-wide/from16 v28, v0

    aget-wide v30, v19, v11

    aget-wide v32, v23, v11

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    add-double v26, v26, v28

    aput-wide v26, v19, v11

    .line 272
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 275
    :cond_c
    new-instance v25, Lorg/apache/commons/math3/optim/PointValuePair;

    const-wide/high16 v26, 0x7ff8000000000000L    # NaN

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move-wide/from16 v2, v26

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v9, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->setPoint(ILorg/apache/commons/math3/optim/PointValuePair;)V

    .line 270
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 277
    .end local v19    # "x":[D
    :cond_d
    invoke-virtual/range {p0 .. p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/NelderMeadSimplex;->evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    goto/16 :goto_4
.end method
