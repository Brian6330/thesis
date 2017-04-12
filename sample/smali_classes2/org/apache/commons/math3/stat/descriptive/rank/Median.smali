.class public Lorg/apache/commons/math3/stat/descriptive/rank/Median;
.super Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
.source "Median.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FIXED_QUANTILE_50:D = 50.0

.field private static final serialVersionUID:J = -0x36f9fe615802af67L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(D)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/rank/Median;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/rank/Median;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V
    .locals 7
    .param p1, "estimationType"    # Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    .param p2, "nanStrategy"    # Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .param p3, "kthSelector"    # Lorg/apache/commons/math3/util/KthSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 76
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    .line 77
    return-void
.end method


# virtual methods
.method public withEstimationType(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;)Lorg/apache/commons/math3/stat/descriptive/rank/Median;
    .locals 3
    .param p1, "newEstimationType"    # Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .prologue
    .line 82
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Median;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;->getNaNStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;->getKthSelector()Lorg/apache/commons/math3/util/KthSelector;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;-><init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v0
.end method

.method public bridge synthetic withEstimationType(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;->withEstimationType(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;)Lorg/apache/commons/math3/stat/descriptive/rank/Median;

    move-result-object v0

    return-object v0
.end method

.method public withKthSelector(Lorg/apache/commons/math3/util/KthSelector;)Lorg/apache/commons/math3/stat/descriptive/rank/Median;
    .locals 3
    .param p1, "newKthSelector"    # Lorg/apache/commons/math3/util/KthSelector;

    .prologue
    .line 94
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Median;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;->getEstimationType()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;->getNaNStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;-><init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v0
.end method

.method public bridge synthetic withKthSelector(Lorg/apache/commons/math3/util/KthSelector;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/util/KthSelector;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;->withKthSelector(Lorg/apache/commons/math3/util/KthSelector;)Lorg/apache/commons/math3/stat/descriptive/rank/Median;

    move-result-object v0

    return-object v0
.end method

.method public withNaNStrategy(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;)Lorg/apache/commons/math3/stat/descriptive/rank/Median;
    .locals 3
    .param p1, "newNaNStrategy"    # Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .prologue
    .line 88
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Median;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;->getEstimationType()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;->getKthSelector()Lorg/apache/commons/math3/util/KthSelector;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;-><init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v0
.end method

.method public bridge synthetic withNaNStrategy(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Median;->withNaNStrategy(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;)Lorg/apache/commons/math3/stat/descriptive/rank/Median;

    move-result-object v0

    return-object v0
.end method
