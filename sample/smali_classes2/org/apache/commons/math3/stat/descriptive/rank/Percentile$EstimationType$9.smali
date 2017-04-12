.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$9;
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
    .line 928
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
    const-wide v8, 0x3fd5555555555555L    # 0.3333333333333333

    .line 931
    const-wide v4, 0x3fe5555555555555L    # 0.6666666666666666

    int-to-double v6, p3

    add-double/2addr v6, v8

    div-double v2, v4, v6

    .line 932
    .local v2, "minLimit":D
    int-to-double v4, p3

    sub-double/2addr v4, v8

    int-to-double v6, p3

    add-double/2addr v6, v8

    div-double v0, v4, v6

    .line 934
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

    add-double/2addr v4, v8

    mul-double/2addr v4, p1

    add-double/2addr v4, v8

    goto :goto_0
.end method
