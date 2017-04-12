.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$PopulationSize;
.super Ljava/lang/Object;
.source "CMAESOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopulationSize"
.end annotation


# instance fields
.field private final lambda:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    if-gtz p1, :cond_0

    .line 331
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 333
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$PopulationSize;->lambda:I

    .line 334
    return-void
.end method


# virtual methods
.method public getPopulationSize()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$PopulationSize;->lambda:I

    return v0
.end method
