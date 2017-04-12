.class public Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;
.source "LaguerreSolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;,
        Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;
    }
.end annotation


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# instance fields
.field private final complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;-><init>(D)V

    .line 55
    return-void
.end method

.method public constructor <init>(D)V
    .locals 3
    .param p1, "absoluteAccuracy"    # D

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;-><init>(D)V

    .line 48
    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    .line 63
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;-><init>(DD)V

    .line 48
    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    .line 73
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 3
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "functionValueAccuracy"    # D

    .prologue
    .line 84
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;-><init>(DDD)V

    .line 48
    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    .line 85
    return-void
.end method


# virtual methods
.method public doSolve()D
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getMin()D

    move-result-wide v4

    .line 96
    .local v4, "min":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getMax()D

    move-result-wide v8

    .line 97
    .local v8, "max":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getStartValue()D

    move-result-wide v6

    .line 98
    .local v6, "initial":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getFunctionValueAccuracy()D

    move-result-wide v30

    .local v30, "functionValueAccuracy":D
    move-object/from16 v3, p0

    .line 100
    invoke-virtual/range {v3 .. v9}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->verifySequence(DDD)V

    .line 103
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->computeObjectiveValue(D)D

    move-result-wide v18

    .line 104
    .local v18, "yInitial":D
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v30

    if-gtz v2, :cond_0

    .line 127
    .end local v6    # "initial":D
    :goto_0
    return-wide v6

    .line 109
    .restart local v6    # "initial":D
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->computeObjectiveValue(D)D

    move-result-wide v16

    .line 110
    .local v16, "yMin":D
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v30

    if-gtz v2, :cond_1

    move-wide v6, v4

    .line 111
    goto :goto_0

    .line 115
    :cond_1
    mul-double v2, v18, v16

    const-wide/16 v10, 0x0

    cmpg-double v2, v2, v10

    if-gez v2, :cond_2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide v14, v6

    .line 116
    invoke-virtual/range {v11 .. v19}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->laguerre(DDDD)D

    move-result-wide v6

    goto :goto_0

    .line 120
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->computeObjectiveValue(D)D

    move-result-wide v28

    .line 121
    .local v28, "yMax":D
    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v30

    if-gtz v2, :cond_3

    move-wide v6, v8

    .line 122
    goto :goto_0

    .line 126
    :cond_3
    mul-double v2, v18, v28

    const-wide/16 v10, 0x0

    cmpg-double v2, v2, v10

    if-gez v2, :cond_4

    move-object/from16 v21, p0

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v18

    .line 127
    invoke-virtual/range {v21 .. v29}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->laguerre(DDDD)D

    move-result-wide v6

    goto :goto_0

    .line 130
    :cond_4
    new-instance v21, Lorg/apache/commons/math3/exception/NoBracketingException;

    move-wide/from16 v22, v4

    move-wide/from16 v24, v8

    move-wide/from16 v26, v16

    invoke-direct/range {v21 .. v29}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v21
.end method

.method public laguerre(DDDD)D
    .locals 21
    .param p1, "lo"    # D
    .param p3, "hi"    # D
    .param p5, "fLo"    # D
    .param p7, "fHi"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getCoefficients()[D

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/math3/complex/ComplexUtils;->convertToComplex([D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    .line 158
    .local v2, "c":[Lorg/apache/commons/math3/complex/Complex;
    new-instance v16, Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double v6, p1, p3

    mul-double/2addr v4, v6

    const-wide/16 v6, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    .line 159
    .local v16, "initial":Lorg/apache/commons/math3/complex/Complex;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solve([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v8

    .line 160
    .local v8, "z":Lorg/apache/commons/math3/complex/Complex;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->isRoot(DDLorg/apache/commons/math3/complex/Complex;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    invoke-virtual {v8}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v18

    .line 172
    :cond_0
    :goto_0
    return-wide v18

    .line 163
    :cond_1
    const-wide/high16 v18, 0x7ff8000000000000L    # NaN

    .line 165
    .local v18, "r":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solveAll([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v17

    .line 166
    .local v17, "root":[Lorg/apache/commons/math3/complex/Complex;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, v17

    array-length v3, v0

    if-ge v15, v3, :cond_0

    .line 167
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    aget-object v14, v17, v15

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-virtual/range {v9 .. v14}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->isRoot(DDLorg/apache/commons/math3/complex/Complex;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    aget-object v3, v17, v15

    invoke-virtual {v3}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v18

    .line 169
    goto :goto_0

    .line 166
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1
.end method

.method public solveAllComplex([DD)[Lorg/apache/commons/math3/complex/Complex;
    .locals 2
    .param p1, "coefficients"    # [D
    .param p2, "initial"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 197
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->solveAllComplex([DDI)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public solveAllComplex([DDI)[Lorg/apache/commons/math3/complex/Complex;
    .locals 10
    .param p1, "coefficients"    # [D
    .param p2, "initial"    # D
    .param p4, "maxEval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v3, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v3, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v1, p0

    move v2, p4

    move-wide v8, p2

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->setup(ILorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;DDD)V

    .line 227
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    invoke-static {p1}, Lorg/apache/commons/math3/complex/ComplexUtils;->convertToComplex([D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/math3/complex/Complex;

    const-wide/16 v4, 0x0

    invoke-direct {v2, p2, p3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solveAll([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public solveComplex([DD)Lorg/apache/commons/math3/complex/Complex;
    .locals 2
    .param p1, "coefficients"    # [D
    .param p2, "initial"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 252
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->solveComplex([DDI)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public solveComplex([DDI)Lorg/apache/commons/math3/complex/Complex;
    .locals 10
    .param p1, "coefficients"    # [D
    .param p2, "initial"    # D
    .param p4, "maxEval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v3, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v3, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v1, p0

    move v2, p4

    move-wide v8, p2

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->setup(ILorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;DDD)V

    .line 282
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    invoke-static {p1}, Lorg/apache/commons/math3/complex/ComplexUtils;->convertToComplex([D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/math3/complex/Complex;

    const-wide/16 v4, 0x0

    invoke-direct {v2, p2, p3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solve([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method
