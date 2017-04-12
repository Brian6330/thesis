.class public Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;
.super Ljava/lang/Object;
.source "MultivariateFunctionMappingAdapter.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$LowerUpperBoundMapper;,
        Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$UpperBoundMapper;,
        Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$LowerBoundMapper;,
        Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$NoBoundsMapper;,
        Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

.field private final mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateFunction;[D[D)V
    .locals 8
    .param p1, "bounded"    # Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .param p2, "lower"    # [D
    .param p3, "upper"    # [D

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 104
    array-length v1, p2

    array-length v2, p3

    if-eq v1, v2, :cond_0

    .line 105
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p2

    array-length v3, p3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 107
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 109
    aget-wide v2, p3, v0

    aget-wide v4, p2, v0

    cmpl-double v1, v2, v4

    if-gez v1, :cond_1

    .line 110
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

    .line 107
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_2
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    .line 115
    array-length v1, p2

    new-array v1, v1, [Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    .line 116
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 117
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 118
    aget-wide v2, p3, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    new-instance v2, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$NoBoundsMapper;

    invoke-direct {v2}, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$NoBoundsMapper;-><init>()V

    aput-object v2, v1, v0

    .line 116
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    new-instance v2, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$UpperBoundMapper;

    aget-wide v4, p3, v0

    invoke-direct {v2, v4, v5}, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$UpperBoundMapper;-><init>(D)V

    aput-object v2, v1, v0

    goto :goto_2

    .line 126
    :cond_4
    aget-wide v2, p3, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    new-instance v2, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$LowerBoundMapper;

    aget-wide v4, p2, v0

    invoke-direct {v2, v4, v5}, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$LowerBoundMapper;-><init>(D)V

    aput-object v2, v1, v0

    goto :goto_2

    .line 131
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    new-instance v2, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$LowerUpperBoundMapper;

    aget-wide v4, p2, v0

    aget-wide v6, p3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$LowerUpperBoundMapper;-><init>(DD)V

    aput-object v2, v1, v0

    goto :goto_2

    .line 136
    :cond_6
    return-void
.end method


# virtual methods
.method public boundedToUnbounded([D)[D
    .locals 6
    .param p1, "point"    # [D

    .prologue
    .line 161
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    array-length v2, v2

    new-array v1, v2, [D

    .line 162
    .local v1, "mapped":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 163
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    aget-object v2, v2, v0

    aget-wide v4, p1, v0

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;->boundedToUnbounded(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-object v1
.end method

.method public unboundedToBounded([D)[D
    .locals 6
    .param p1, "point"    # [D

    .prologue
    .line 145
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    array-length v2, v2

    new-array v1, v2, [D

    .line 146
    .local v1, "mapped":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 147
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    aget-object v2, v2, v0

    aget-wide v4, p1, v0

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;->unboundedToBounded(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-object v1
.end method

.method public value([D)D
    .locals 2
    .param p1, "point"    # [D

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->unboundedToBounded([D)[D

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v0

    return-wide v0
.end method
