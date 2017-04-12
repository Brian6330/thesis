.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;
.source "MultiDirectionalSimplex.java"


# static fields
.field private static final DEFAULT_GAMMA:D = 0.5

.field private static final DEFAULT_KHI:D = 2.0


# instance fields
.field private final gamma:D

.field private final khi:D


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 46
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;-><init>(ID)V

    .line 47
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "sideLength"    # D

    .prologue
    .line 58
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;-><init>(IDDD)V

    .line 59
    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "khi"    # D
    .param p4, "gamma"    # D

    .prologue
    .line 71
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;-><init>(IDDD)V

    .line 72
    return-void
.end method

.method public constructor <init>(IDDD)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "sideLength"    # D
    .param p4, "khi"    # D
    .param p6, "gamma"    # D

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>(ID)V

    .line 88
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->khi:D

    .line 89
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->gamma:D

    .line 90
    return-void
.end method

.method public constructor <init>([D)V
    .locals 6
    .param p1, "steps"    # [D

    .prologue
    .line 100
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;-><init>([DDD)V

    .line 101
    return-void
.end method

.method public constructor <init>([DDD)V
    .locals 0
    .param p1, "steps"    # [D
    .param p2, "khi"    # D
    .param p4, "gamma"    # D

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>([D)V

    .line 116
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->khi:D

    .line 117
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->gamma:D

    .line 118
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 6
    .param p1, "referenceSimplex"    # [[D

    .prologue
    .line 128
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;-><init>([[DDD)V

    .line 129
    return-void
.end method

.method public constructor <init>([[DDD)V
    .locals 0
    .param p1, "referenceSimplex"    # [[D
    .param p2, "khi"    # D
    .param p4, "gamma"    # D

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>([[D)V

    .line 147
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->khi:D

    .line 148
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->gamma:D

    .line 149
    return-void
.end method

.method private evaluateNewSimplex(Lorg/apache/commons/math3/analysis/MultivariateFunction;[Lorg/apache/commons/math3/optim/PointValuePair;DLjava/util/Comparator;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 15
    .param p1, "evaluationFunction"    # Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .param p2, "original"    # [Lorg/apache/commons/math3/optim/PointValuePair;
    .param p3, "coeff"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
            "[",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            "D",
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)",
            "Lorg/apache/commons/math3/optim/PointValuePair;"
        }
    .end annotation

    .prologue
    .line 196
    .local p5, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    const/4 v8, 0x0

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v6

    .line 199
    .local v6, "xSmallest":[D
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, p2, v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->setPoint(ILorg/apache/commons/math3/optim/PointValuePair;)V

    .line 200
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->getDimension()I

    move-result v2

    .line 201
    .local v2, "dim":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->getSize()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 202
    aget-object v8, p2, v3

    invoke-virtual {v8}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v5

    .line 203
    .local v5, "xOriginal":[D
    new-array v7, v2, [D

    .line 204
    .local v7, "xTransformed":[D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 205
    aget-wide v8, v6, v4

    aget-wide v10, v6, v4

    aget-wide v12, v5, v4

    sub-double/2addr v10, v12

    mul-double v10, v10, p3

    add-double/2addr v8, v10

    aput-wide v8, v7, v4

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 207
    :cond_0
    new-instance v8, Lorg/apache/commons/math3/optim/PointValuePair;

    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    const/4 v9, 0x0

    invoke-direct {v8, v7, v10, v11, v9}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    invoke-virtual {p0, v3, v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->setPoint(ILorg/apache/commons/math3/optim/PointValuePair;)V

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    .end local v4    # "j":I
    .end local v5    # "xOriginal":[D
    .end local v7    # "xTransformed":[D
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 213
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V
    .locals 10
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
    .line 156
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->getPoints()[Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v3

    .line 157
    .local v3, "original":[Lorg/apache/commons/math3/optim/PointValuePair;
    const/4 v1, 0x0

    aget-object v0, v3, v1

    .line 160
    .local v0, "best":Lorg/apache/commons/math3/optim/PointValuePair;
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->evaluateNewSimplex(Lorg/apache/commons/math3/analysis/MultivariateFunction;[Lorg/apache/commons/math3/optim/PointValuePair;DLjava/util/Comparator;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v8

    .line 162
    .local v8, "reflected":Lorg/apache/commons/math3/optim/PointValuePair;
    invoke-interface {p2, v8, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->getPoints()[Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v9

    .line 165
    .local v9, "reflectedSimplex":[Lorg/apache/commons/math3/optim/PointValuePair;
    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->khi:D

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->evaluateNewSimplex(Lorg/apache/commons/math3/analysis/MultivariateFunction;[Lorg/apache/commons/math3/optim/PointValuePair;DLjava/util/Comparator;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v7

    .line 167
    .local v7, "expanded":Lorg/apache/commons/math3/optim/PointValuePair;
    invoke-interface {p2, v8, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 169
    invoke-virtual {p0, v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->setPoints([Lorg/apache/commons/math3/optim/PointValuePair;)V

    .line 178
    .end local v7    # "expanded":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v9    # "reflectedSimplex":[Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->gamma:D

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/MultiDirectionalSimplex;->evaluateNewSimplex(Lorg/apache/commons/math3/analysis/MultivariateFunction;[Lorg/apache/commons/math3/optim/PointValuePair;DLjava/util/Comparator;)Lorg/apache/commons/math3/optim/PointValuePair;

    goto :goto_0
.end method
