.class public Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;
.super Ljava/lang/Object;
.source "VectorialMean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x721dff326082812cL


# instance fields
.field private final means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "dimension"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-array v1, p1, [Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 42
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    aput-object v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;

    if-nez v3, :cond_2

    move v1, v2

    .line 96
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 98
    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;

    .line 99
    .local v0, "other":Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;
    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iget-object v4, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 100
    goto :goto_0
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    array-length v0, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->getN()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getResult()[D
    .locals 4

    .prologue
    .line 65
    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    array-length v2, v2

    new-array v1, v2, [D

    .line 66
    .local v1, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 67
    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->getResult()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 83
    const/16 v0, 0x1f

    .line 84
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 85
    .local v1, "result":I
    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 86
    return v1
.end method

.method public increment([D)V
    .locals 4
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 52
    array-length v1, p1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 53
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p1

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    array-length v3, v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 55
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 56
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialMean;->means:[Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    aget-object v1, v1, v0

    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->increment(D)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method
