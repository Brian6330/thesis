.class public Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;
.super Ljava/lang/Object;
.source "ModelFunctionJacobian.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final jacobian:Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)V
    .locals 0
    .param p1, "j"    # Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;->jacobian:Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    .line 41
    return-void
.end method


# virtual methods
.method public getModelFunctionJacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;->jacobian:Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    return-object v0
.end method
