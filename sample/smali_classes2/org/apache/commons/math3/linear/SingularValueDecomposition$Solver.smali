.class Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;
.super Ljava/lang/Object;
.source "SingularValueDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/SingularValueDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private nonSingular:Z

.field private final pseudoInverse:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method private constructor <init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZD)V
    .locals 11
    .param p1, "singularValues"    # [D
    .param p2, "uT"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p3, "v"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p4, "nonSingular"    # Z
    .param p5, "tol"    # D

    .prologue
    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v4

    .line 675
    .local v4, "suT":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_2

    .line 677
    aget-wide v6, p1, v2

    cmpl-double v6, v6, p5

    if-lez v6, :cond_0

    .line 678
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aget-wide v8, p1, v2

    div-double v0, v6, v8

    .line 682
    .local v0, "a":D
    :goto_1
    aget-object v5, v4, v2

    .line 683
    .local v5, "suTi":[D
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v6, v5

    if-ge v3, v6, :cond_1

    .line 684
    aget-wide v6, v5, v3

    mul-double/2addr v6, v0

    aput-wide v6, v5, v3

    .line 683
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 680
    .end local v0    # "a":D
    .end local v3    # "j":I
    .end local v5    # "suTi":[D
    :cond_0
    const-wide/16 v0, 0x0

    .restart local v0    # "a":D
    goto :goto_1

    .line 675
    .restart local v3    # "j":I
    .restart local v5    # "suTi":[D
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 687
    .end local v0    # "a":D
    .end local v3    # "j":I
    .end local v5    # "suTi":[D
    :cond_2
    new-instance v6, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    invoke-interface {p3, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->pseudoInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 688
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->nonSingular:Z

    .line 689
    return-void
.end method

.method synthetic constructor <init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZDLorg/apache/commons/math3/linear/SingularValueDecomposition$1;)V
    .locals 1
    .param p1, "x0"    # [D
    .param p2, "x1"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p3, "x2"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p4, "x3"    # Z
    .param p5, "x4"    # D
    .param p7, "x5"    # Lorg/apache/commons/math3/linear/SingularValueDecomposition$1;

    .prologue
    .line 657
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;-><init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZD)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->pseudoInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public isNonSingular()Z
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->nonSingular:Z

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 719
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->pseudoInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 703
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->pseudoInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method
