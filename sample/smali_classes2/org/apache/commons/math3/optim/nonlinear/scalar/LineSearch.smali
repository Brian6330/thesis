.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;
.super Ljava/lang/Object;
.source "LineSearch.java"


# static fields
.field private static final ABS_TOL_UNUSED:D = 4.9E-324

.field private static final REL_TOL_UNUSED:D = 1.0E-15


# instance fields
.field private final bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

.field private final initialBracketingRange:D

.field private final lineOptimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

.field private final mainOptimizer:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;DDD)V
    .locals 8
    .param p1, "optimizer"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
    .param p2, "relativeTolerance"    # D
    .param p4, "absoluteTolerance"    # D
    .param p6, "initialBracketingRange"    # D

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    invoke-direct {v0}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    .line 93
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->mainOptimizer:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    .line 94
    new-instance v1, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;

    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    const-wide/16 v4, 0x1

    new-instance v6, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;

    invoke-direct {v6, p2, p3, p4, p5}, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;-><init>(DD)V

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;-><init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    iput-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->lineOptimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    .line 98
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->initialBracketingRange:D

    .line 99
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;)Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->mainOptimizer:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    return-object v0
.end method


# virtual methods
.method public search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 13
    .param p1, "startPoint"    # [D
    .param p2, "direction"    # [D

    .prologue
    .line 113
    array-length v0, p1

    .line 114
    .local v0, "n":I
    new-instance v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$1;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;I[D[D)V

    .line 125
    .local v2, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->mainOptimizer:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v3

    .line 126
    .local v3, "goal":Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->initialBracketingRange:D

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->search(Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;DD)V

    .line 130
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->lineOptimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    const/4 v4, 0x4

    new-array v4, v4, [Lorg/apache/commons/math3/optim/OptimizationData;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/commons/math3/optim/MaxEval;

    const v7, 0x7fffffff

    invoke-direct {v6, v7}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;

    invoke-direct {v6, v2}, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;-><init>(Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const/4 v12, 0x3

    new-instance v5, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    invoke-virtual {v6}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->getLo()D

    move-result-wide v6

    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    invoke-virtual {v8}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->getHi()D

    move-result-wide v8

    iget-object v10, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    invoke-virtual {v10}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->getMid()D

    move-result-wide v10

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;-><init>(DDD)V

    aput-object v5, v4, v12

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v1

    return-object v1
.end method
