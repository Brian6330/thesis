.class Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$NoBoundsMapper;
.super Ljava/lang/Object;
.source "MultivariateFunctionMappingAdapter.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoBoundsMapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    return-void
.end method


# virtual methods
.method public boundedToUnbounded(D)D
    .locals 1
    .param p1, "x"    # D

    .prologue
    .line 216
    return-wide p1
.end method

.method public unboundedToBounded(D)D
    .locals 1
    .param p1, "y"    # D

    .prologue
    .line 211
    return-wide p1
.end method
