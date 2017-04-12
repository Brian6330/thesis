.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;
.super Ljava/lang/Object;
.source "NonLinearConjugateGradientOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdentityPreconditioner"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public precondition([D[D)[D
    .locals 1
    .param p1, "variables"    # [D
    .param p2, "r"    # [D

    .prologue
    .line 351
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method
