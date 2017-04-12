.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$6;
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
    .line 850
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;)V

    return-void
.end method


# virtual methods
.method protected index(DI)D
    .locals 11
    .param p1, "p"    # D
    .param p3, "length"    # I

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 854
    int-to-double v4, p3

    div-double v2, v8, v4

    .line 855
    .local v2, "minLimit":D
    int-to-double v4, p3

    sub-double/2addr v4, v8

    int-to-double v6, p3

    div-double v0, v4, v6

    .line 856
    .local v0, "maxLimit":D
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    return-wide v4

    :cond_0
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-ltz v4, :cond_1

    int-to-double v4, p3

    goto :goto_0

    :cond_1
    int-to-double v4, p3

    mul-double/2addr v4, p1

    add-double/2addr v4, v8

    goto :goto_0
.end method
