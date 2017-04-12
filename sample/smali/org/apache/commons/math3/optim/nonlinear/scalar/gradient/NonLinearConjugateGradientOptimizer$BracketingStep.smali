.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$BracketingStep;
.super Ljava/lang/Object;
.source "NonLinearConjugateGradientOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BracketingStep"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final initialStep:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "step"    # D

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$BracketingStep;->initialStep:D

    .line 102
    return-void
.end method


# virtual methods
.method public getBracketingStep()D
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$BracketingStep;->initialStep:D

    return-wide v0
.end method
