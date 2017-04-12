.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$3;
.super Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
.source "Percentile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "x0"    # Ljava/lang/String;

    .prologue
    .line 775
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;)V

    return-void
.end method


# virtual methods
.method protected estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D
    .locals 13
    .param p1, "values"    # [D
    .param p2, "pivotsHeap"    # [I
    .param p3, "pos"    # D
    .param p5, "length"    # I
    .param p6, "kthSelector"    # Lorg/apache/commons/math3/util/KthSelector;

    .prologue
    .line 793
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v0, p3, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-super/range {v1 .. v7}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide v10

    .line 795
    .local v10, "low":D
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double v0, v0, p3

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-super/range {v1 .. v7}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide v8

    .line 797
    .local v8, "high":D
    add-double v0, v10, v8

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method protected index(DI)D
    .locals 9
    .param p1, "p"    # D
    .param p3, "length"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 779
    const-wide/16 v2, 0x0

    .line 780
    .local v2, "minLimit":D
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 781
    .local v0, "maxLimit":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-nez v6, :cond_1

    int-to-double v4, p3

    :cond_0
    :goto_0
    return-wide v4

    :cond_1
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-eqz v6, :cond_0

    int-to-double v4, p3

    mul-double/2addr v4, p1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    goto :goto_0
.end method
