.class Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
.super Ljava/lang/Object;
.source "CMAESOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValuePenaltyPair"
.end annotation


# instance fields
.field private penalty:D

.field private value:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "value"    # D
    .param p3, "penalty"    # D

    .prologue
    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->value:D

    .line 916
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->penalty:D

    .line 917
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    .prologue
    .line 904
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->value:D

    return-wide v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    .prologue
    .line 904
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->penalty:D

    return-wide v0
.end method
