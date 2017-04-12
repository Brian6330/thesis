.class public Lorg/apache/commons/math3/geometry/spherical/oned/Arc;
.super Ljava/lang/Object;
.source "Arc.java"


# instance fields
.field private final lower:D

.field private final middle:D

.field private final tolerance:D

.field private final upper:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 7
    .param p1, "lower"    # D
    .param p3, "upper"    # D
    .param p5, "tolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p5, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->tolerance:D

    .line 64
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-nez v0, :cond_0

    sub-double v0, p3, p1

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_1

    .line 66
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->lower:D

    .line 67
    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->upper:D

    .line 68
    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->middle:D

    .line 77
    :goto_0
    return-void

    .line 69
    :cond_1
    cmpg-double v0, p1, p3

    if-gtz v0, :cond_2

    .line 70
    invoke-static {p1, p2, v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->lower:D

    .line 71
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->lower:D

    sub-double v2, p3, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->upper:D

    .line 72
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->lower:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->upper:D

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->middle:D

    goto :goto_0

    .line 74
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ENDPOINTS_NOT_AN_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method


# virtual methods
.method public checkPoint(D)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    .locals 9
    .param p1, "point"    # D

    .prologue
    .line 122
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->middle:D

    invoke-static {p1, p2, v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v0

    .line 123
    .local v0, "normalizedPoint":D
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->lower:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->tolerance:D

    sub-double/2addr v2, v4

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->upper:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->tolerance:D

    add-double/2addr v2, v4

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    .line 124
    :cond_0
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    .line 128
    :goto_0
    return-object v2

    .line 125
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->lower:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->tolerance:D

    add-double/2addr v2, v4

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->upper:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->tolerance:D

    sub-double/2addr v2, v4

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    .line 126
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSize()D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->tolerance:D

    sub-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_3

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    goto :goto_0

    :cond_3
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->BOUNDARY:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    goto :goto_0
.end method

.method public getBarycenter()D
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->middle:D

    return-wide v0
.end method

.method public getInf()D
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->lower:D

    return-wide v0
.end method

.method public getSize()D
    .locals 4

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->upper:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->lower:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getSup()D
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->upper:D

    return-wide v0
.end method

.method public getTolerance()D
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->tolerance:D

    return-wide v0
.end method
