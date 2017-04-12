.class Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;
.super Ljava/lang/Object;
.source "RRQRDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/RRQRDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private p:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final upper:Lorg/apache/commons/math3/linear/DecompositionSolver;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/linear/DecompositionSolver;Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 0
    .param p1, "upper"    # Lorg/apache/commons/math3/linear/DecompositionSolver;
    .param p2, "p"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;->upper:Lorg/apache/commons/math3/linear/DecompositionSolver;

    .line 218
    iput-object p2, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;->p:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 219
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/linear/DecompositionSolver;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RRQRDecomposition$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/linear/DecompositionSolver;
    .param p2, "x1"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p3, "x2"    # Lorg/apache/commons/math3/linear/RRQRDecomposition$1;

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;-><init>(Lorg/apache/commons/math3/linear/DecompositionSolver;Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;->p:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public isNonSingular()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;->upper:Lorg/apache/commons/math3/linear/DecompositionSolver;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/DecompositionSolver;->isNonSingular()Z

    move-result v0

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;->p:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;->upper:Lorg/apache/commons/math3/linear/DecompositionSolver;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 2
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;->p:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;->upper:Lorg/apache/commons/math3/linear/DecompositionSolver;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method
