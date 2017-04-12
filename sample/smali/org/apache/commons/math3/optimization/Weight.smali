.class public Lorg/apache/commons/math3/optimization/Weight;
.super Ljava/lang/Object;
.source "Weight.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/OptimizationData;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 3
    .param p1, "weight"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 53
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0

    .line 57
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/Weight;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 58
    return-void
.end method

.method public constructor <init>([D)V
    .locals 1
    .param p1, "weight"    # [D

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/Weight;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 44
    return-void
.end method


# virtual methods
.method public getWeight()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/Weight;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method
