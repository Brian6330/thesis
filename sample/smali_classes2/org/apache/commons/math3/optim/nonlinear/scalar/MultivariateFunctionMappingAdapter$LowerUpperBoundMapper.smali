.class Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$LowerUpperBoundMapper;
.super Ljava/lang/Object;
.source "MultivariateFunctionMappingAdapter.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LowerUpperBoundMapper"
.end annotation


# instance fields
.field private final boundingFunction:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field private final unboundingFunction:Lorg/apache/commons/math3/analysis/UnivariateFunction;


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "lower"    # D
    .param p3, "upper"    # D

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/function/Sigmoid;-><init>(DD)V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$LowerUpperBoundMapper;->boundingFunction:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .line 281
    new-instance v0, Lorg/apache/commons/math3/analysis/function/Logit;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/function/Logit;-><init>(DD)V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$LowerUpperBoundMapper;->unboundingFunction:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .line 282
    return-void
.end method


# virtual methods
.method public boundedToUnbounded(D)D
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$LowerUpperBoundMapper;->unboundingFunction:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public unboundedToBounded(D)D
    .locals 3
    .param p1, "y"    # D

    .prologue
    .line 286
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$LowerUpperBoundMapper;->boundingFunction:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    return-wide v0
.end method
