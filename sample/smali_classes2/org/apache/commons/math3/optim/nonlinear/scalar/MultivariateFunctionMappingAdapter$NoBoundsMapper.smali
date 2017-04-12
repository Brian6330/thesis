.class Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$NoBoundsMapper;
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
    name = "NoBoundsMapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$1;

    .prologue
    .line 203
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$NoBoundsMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public boundedToUnbounded(D)D
    .locals 1
    .param p1, "x"    # D

    .prologue
    .line 211
    return-wide p1
.end method

.method public unboundedToBounded(D)D
    .locals 1
    .param p1, "y"    # D

    .prologue
    .line 206
    return-wide p1
.end method
