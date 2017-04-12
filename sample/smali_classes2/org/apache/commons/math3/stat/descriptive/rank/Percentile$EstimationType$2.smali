.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$2;
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
    .line 746
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;)V

    return-void
.end method


# virtual methods
.method protected estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D
    .locals 9
    .param p1, "values"    # [D
    .param p2, "pivotsHeap"    # [I
    .param p3, "pos"    # D
    .param p5, "length"    # I
    .param p6, "kthSelector"    # Lorg/apache/commons/math3/util/KthSelector;

    .prologue
    .line 761
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v0, p3, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    move-object v7, p6

    invoke-super/range {v1 .. v7}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide v0

    return-wide v0
.end method

.method protected index(DI)D
    .locals 7
    .param p1, "p"    # D
    .param p3, "length"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 750
    const-wide/16 v0, 0x0

    .line 751
    .local v0, "minLimit":D
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    int-to-double v2, p3

    mul-double/2addr v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    goto :goto_0
.end method
