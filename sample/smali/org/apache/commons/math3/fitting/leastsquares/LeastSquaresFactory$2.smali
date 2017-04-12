.class final Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$2;
.super Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;
.source "LeastSquaresFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->countEvaluations(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/util/Incrementor;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$counter:Lorg/apache/commons/math3/util/Incrementor;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/util/Incrementor;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    .prologue
    .line 227
    iput-object p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$2;->val$counter:Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .locals 1
    .param p1, "point"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$2;->val$counter:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 231
    invoke-super {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    move-result-object v0

    return-object v0
.end method
