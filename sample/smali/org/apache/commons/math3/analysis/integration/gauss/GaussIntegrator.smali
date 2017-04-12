.class public Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
.super Ljava/lang/Object;
.source "GaussIntegrator.java"


# instance fields
.field private final points:[D

.field private final weights:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/Pair",
            "<[D[D>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "pointsAndWeights":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<[D[D>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;-><init>([D[D)V

    .line 76
    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 3
    .param p1, "points"    # [D
    .param p2, "weights"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 53
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    array-length v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 57
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    invoke-static {p1, v0, v2, v2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z

    .line 59
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->points:[D

    .line 60
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->weights:[D

    .line 61
    return-void
.end method


# virtual methods
.method public getNumberOfPoints()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->points:[D

    array-length v0, v0

    return v0
.end method

.method public getPoint(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->points:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getWeight(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->weights:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public integrate(Lorg/apache/commons/math3/analysis/UnivariateFunction;)D
    .locals 18
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .prologue
    .line 89
    const-wide/16 v6, 0x0

    .line 90
    .local v6, "s":D
    const-wide/16 v2, 0x0

    .line 91
    .local v2, "c":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->points:[D

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 92
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->points:[D

    aget-wide v12, v5, v4

    .line 93
    .local v12, "x":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;->weights:[D

    aget-wide v10, v5, v4

    .line 94
    .local v10, "w":D
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v16

    mul-double v16, v16, v10

    sub-double v14, v16, v2

    .line 95
    .local v14, "y":D
    add-double v8, v6, v14

    .line 96
    .local v8, "t":D
    sub-double v16, v8, v6

    sub-double v2, v16, v14

    .line 97
    move-wide v6, v8

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    .end local v8    # "t":D
    .end local v10    # "w":D
    .end local v12    # "x":D
    .end local v14    # "y":D
    :cond_0
    return-wide v6
.end method
