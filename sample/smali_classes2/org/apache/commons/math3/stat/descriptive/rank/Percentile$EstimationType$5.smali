.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$5;
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
    .line 829
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;)V

    return-void
.end method


# virtual methods
.method protected index(DI)D
    .locals 9
    .param p1, "p"    # D
    .param p3, "length"    # I

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 832
    int-to-double v4, p3

    div-double v2, v6, v4

    .line 833
    .local v2, "minLimit":D
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 834
    .local v0, "maxLimit":D
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    return-wide v4

    :cond_0
    invoke-static {p1, p2, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-nez v4, :cond_1

    int-to-double v4, p3

    goto :goto_0

    :cond_1
    int-to-double v4, p3

    mul-double/2addr v4, p1

    goto :goto_0
.end method
