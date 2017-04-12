.class final Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$1;
.super Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;
.source "LeastSquaresFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->weightMatrix(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$weightSquareRoot:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    .prologue
    .line 194
    iput-object p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$1;->val$weightSquareRoot:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .locals 3
    .param p1, "point"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 197
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/DenseWeightedEvaluation;

    invoke-super {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$1;->val$weightSquareRoot:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fitting/leastsquares/DenseWeightedEvaluation;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-object v0
.end method
