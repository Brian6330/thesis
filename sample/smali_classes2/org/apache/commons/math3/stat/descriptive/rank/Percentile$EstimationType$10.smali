.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$10;
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
    .line 951
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;)V

    return-void
.end method


# virtual methods
.method protected index(DI)D
    .locals 15
    .param p1, "p"    # D
    .param p3, "length"    # I

    .prologue
    const-wide/high16 v12, 0x3fd8000000000000L    # 0.375

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    .line 954
    const-wide/high16 v6, 0x3fe4000000000000L    # 0.625

    move/from16 v0, p3

    int-to-double v8, v0

    add-double/2addr v8, v10

    div-double v4, v6, v8

    .line 955
    .local v4, "minLimit":D
    move/from16 v0, p3

    int-to-double v6, v0

    sub-double/2addr v6, v12

    move/from16 v0, p3

    int-to-double v8, v0

    add-double/2addr v8, v10

    div-double v2, v6, v8

    .line 956
    .local v2, "maxLimit":D
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-gez v6, :cond_0

    const-wide/16 v6, 0x0

    :goto_0
    return-wide v6

    :cond_0
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-ltz v6, :cond_1

    move/from16 v0, p3

    int-to-double v6, v0

    goto :goto_0

    :cond_1
    move/from16 v0, p3

    int-to-double v6, v0

    add-double/2addr v6, v10

    mul-double v6, v6, p1

    add-double/2addr v6, v12

    goto :goto_0
.end method
