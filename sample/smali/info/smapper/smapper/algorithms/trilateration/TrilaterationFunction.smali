.class public Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;
.super Ljava/lang/Object;
.source "TrilaterationFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;


# static fields
.field protected static final epsilon:D = 1.0E-7


# instance fields
.field protected final distances:[D

.field protected final positions:[[D


# direct methods
.method public constructor <init>([[D[D)V
    .locals 6
    .param p1, "positions"    # [[D
    .param p2, "distances"    # [D

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    array-length v2, p1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 34
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Need at least two positions."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_0
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_1

    .line 38
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The number of positions you provided, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", does not match the number of distances, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 43
    aget-wide v2, p2, v0

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    aput-wide v2, p2, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_2
    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v1, v2

    .line 47
    .local v1, "positionDimension":I
    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 48
    aget-object v2, p1, v0

    array-length v2, v2

    if-eq v1, v2, :cond_3

    .line 49
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The dimension of all positions should be the same."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    :cond_4
    iput-object p1, p0, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->positions:[[D

    .line 54
    iput-object p2, p0, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->distances:[D

    .line 55
    return-void
.end method


# virtual methods
.method public final getDistances()[D
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->distances:[D

    return-object v0
.end method

.method public final getPositions()[[D
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->positions:[[D

    return-object v0
.end method

.method public jacobian(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 12
    .param p1, "point"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 76
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v3

    .line 78
    .local v3, "pointArray":[D
    iget-object v4, p0, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->distances:[D

    array-length v4, v4

    array-length v5, v3

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 79
    .local v2, "jacobian":[[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 80
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 81
    aget-object v4, v2, v0

    aget-wide v6, v3, v1

    mul-double/2addr v6, v10

    iget-object v5, p0, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->positions:[[D

    aget-object v5, v5, v0

    aget-wide v8, v5, v1

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v4, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "j":I
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v4, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    return-object v4
.end method

.method public value(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;
    .locals 14
    .param p1, "point"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/RealVector;",
            ")",
            "Lorg/apache/commons/math3/util/Pair",
            "<",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v3

    .line 95
    .local v3, "pointArray":[D
    iget-object v5, p0, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->distances:[D

    array-length v5, v5

    new-array v4, v5, [D

    .line 98
    .local v4, "resultPoint":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 99
    const-wide/16 v6, 0x0

    aput-wide v6, v4, v0

    .line 101
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 102
    aget-wide v6, v4, v0

    aget-wide v8, v3, v1

    invoke-virtual {p0}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getPositions()[[D

    move-result-object v5

    aget-object v5, v5, v0

    aget-wide v10, v5, v1

    sub-double/2addr v8, v10

    aget-wide v10, v3, v1

    invoke-virtual {p0}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getPositions()[[D

    move-result-object v5

    aget-object v5, v5, v0

    aget-wide v12, v5, v1

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v4, v0

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    :cond_0
    aget-wide v6, v4, v0

    invoke-virtual {p0}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getDistances()[D

    move-result-object v5

    aget-wide v8, v5, v0

    invoke-virtual {p0}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getDistances()[D

    move-result-object v5

    aget-wide v10, v5, v0

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v4, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "j":I
    :cond_1
    invoke-virtual {p0, p1}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->jacobian(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 108
    .local v2, "jacobian":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v5, Lorg/apache/commons/math3/util/Pair;

    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v6, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    invoke-direct {v5, v6, v2}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method
