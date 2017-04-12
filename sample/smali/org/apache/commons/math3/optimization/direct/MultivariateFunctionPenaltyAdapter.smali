.class public Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;
.super Ljava/lang/Object;
.source "MultivariateFunctionPenaltyAdapter.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

.field private final lower:[D

.field private final offset:D

.field private final scale:[D

.field private final upper:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateFunction;[D[DD[D)V
    .locals 6
    .param p1, "bounded"    # Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .param p2, "lower"    # [D
    .param p3, "upper"    # [D
    .param p4, "offset"    # D
    .param p6, "scale"    # [D

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 130
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 131
    invoke-static {p6}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 132
    array-length v1, p2

    array-length v2, p3

    if-eq v1, v2, :cond_0

    .line 133
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p2

    array-length v3, p3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 135
    :cond_0
    array-length v1, p2

    array-length v2, p6

    if-eq v1, v2, :cond_1

    .line 136
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p2

    array-length v3, p6

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 138
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 140
    aget-wide v2, p3, v0

    aget-wide v4, p2, v0

    cmpl-double v1, v2, v4

    if-gez v1, :cond_2

    .line 141
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    aget-wide v2, p3, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aget-wide v4, p2, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 138
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_3
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    .line 146
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->lower:[D

    .line 147
    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->upper:[D

    .line 148
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->offset:D

    .line 149
    invoke-virtual {p6}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->scale:[D

    .line 151
    return-void
.end method


# virtual methods
.method public value([D)D
    .locals 12
    .param p1, "point"    # [D

    .prologue
    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->scale:[D

    array-length v6, v6

    if-ge v0, v6, :cond_5

    .line 166
    aget-wide v6, p1, v0

    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->lower:[D

    aget-wide v8, v8, v0

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_0

    aget-wide v6, p1, v0

    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->upper:[D

    aget-wide v8, v8, v0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_4

    .line 168
    :cond_0
    const-wide/16 v4, 0x0

    .line 169
    .local v4, "sum":D
    move v1, v0

    .local v1, "j":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->scale:[D

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 171
    aget-wide v6, p1, v1

    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->lower:[D

    aget-wide v8, v8, v1

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 172
    iget-object v6, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->scale:[D

    aget-wide v6, v6, v1

    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->lower:[D

    aget-wide v8, v8, v1

    aget-wide v10, p1, v1

    sub-double/2addr v8, v10

    mul-double v2, v6, v8

    .line 178
    .local v2, "overshoot":D
    :goto_2
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    .end local v2    # "overshoot":D
    :cond_1
    aget-wide v6, p1, v1

    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->upper:[D

    aget-wide v8, v8, v1

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    .line 174
    iget-object v6, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->scale:[D

    aget-wide v6, v6, v1

    aget-wide v8, p1, v1

    iget-object v10, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->upper:[D

    aget-wide v10, v10, v1

    sub-double/2addr v8, v10

    mul-double v2, v6, v8

    .restart local v2    # "overshoot":D
    goto :goto_2

    .line 176
    .end local v2    # "overshoot":D
    :cond_2
    const-wide/16 v2, 0x0

    .restart local v2    # "overshoot":D
    goto :goto_2

    .line 180
    .end local v2    # "overshoot":D
    :cond_3
    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->offset:D

    add-double/2addr v6, v4

    .line 186
    .end local v1    # "j":I
    .end local v4    # "sum":D
    :goto_3
    return-wide v6

    .line 165
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_5
    iget-object v6, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    invoke-interface {v6, p1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v6

    goto :goto_3
.end method
