.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$4;
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
    .line 809
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;)V

    return-void
.end method


# virtual methods
.method protected index(DI)D
    .locals 7
    .param p1, "p"    # D
    .param p3, "length"    # I

    .prologue
    .line 812
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    int-to-double v4, p3

    div-double v0, v2, v4

    .line 813
    .local v0, "minLimit":D
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    int-to-double v2, p3

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v2

    goto :goto_0
.end method
