.class Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$UpperBoundMapper;
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
    name = "UpperBoundMapper"
.end annotation


# instance fields
.field private final upper:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "upper"    # D

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$UpperBoundMapper;->upper:D

    .line 252
    return-void
.end method


# virtual methods
.method public boundedToUnbounded(D)D
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 261
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$UpperBoundMapper;->upper:D

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0
.end method

.method public unboundedToBounded(D)D
    .locals 5
    .param p1, "y"    # D

    .prologue
    .line 256
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$UpperBoundMapper;->upper:D

    neg-double v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method
