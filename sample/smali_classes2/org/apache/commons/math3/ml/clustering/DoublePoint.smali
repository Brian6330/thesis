.class public Lorg/apache/commons/math3/ml/clustering/DoublePoint;
.super Ljava/lang/Object;
.source "DoublePoint.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/clustering/Clusterable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x36c318a06b8caaf9L


# instance fields
.field private final point:[D


# direct methods
.method public constructor <init>([D)V
    .locals 0
    .param p1, "point"    # [D

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/commons/math3/ml/clustering/DoublePoint;->point:[D

    .line 44
    return-void
.end method

.method public constructor <init>([I)V
    .locals 4
    .param p1, "point"    # [I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    array-length v1, p1

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ml/clustering/DoublePoint;->point:[D

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lorg/apache/commons/math3/ml/clustering/DoublePoint;->point:[D

    aget v2, p1, v0

    int-to-double v2, v2

    aput-wide v2, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 68
    instance-of v0, p1, Lorg/apache/commons/math3/ml/clustering/DoublePoint;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/DoublePoint;->point:[D

    check-cast p1, Lorg/apache/commons/math3/ml/clustering/DoublePoint;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/commons/math3/ml/clustering/DoublePoint;->point:[D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto :goto_0
.end method

.method public getPoint()[D
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/DoublePoint;->point:[D

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/DoublePoint;->point:[D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/DoublePoint;->point:[D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
