.class public abstract Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;
.super Ljava/lang/Object;
.source "AbstractOptimizationProblem.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationProblem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$1;,
        Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$MaxIterCallback;,
        Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$MaxEvalCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optim/OptimizationProblem",
        "<TPAIR;>;"
    }
.end annotation


# static fields
.field private static final MAX_EVAL_CALLBACK:Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$MaxEvalCallback;

.field private static final MAX_ITER_CALLBACK:Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$MaxIterCallback;


# instance fields
.field private final checker:Lorg/apache/commons/math3/optim/ConvergenceChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<TPAIR;>;"
        }
    .end annotation
.end field

.field private final maxEvaluations:I

.field private final maxIterations:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    new-instance v0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$MaxEvalCallback;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$MaxEvalCallback;-><init>(Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$1;)V

    sput-object v0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->MAX_EVAL_CALLBACK:Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$MaxEvalCallback;

    .line 37
    new-instance v0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$MaxIterCallback;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$MaxIterCallback;-><init>(Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$1;)V

    sput-object v0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->MAX_ITER_CALLBACK:Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$MaxIterCallback;

    return-void
.end method

.method protected constructor <init>(IILorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .param p1, "maxEvaluations"    # I
    .param p2, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<TPAIR;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;, "Lorg/apache/commons/math3/optim/AbstractOptimizationProblem<TPAIR;>;"
    .local p3, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<TPAIR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->maxEvaluations:I

    .line 57
    iput p2, p0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->maxIterations:I

    .line 58
    iput-object p3, p0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->checker:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    .line 59
    return-void
.end method


# virtual methods
.method public getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<TPAIR;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;, "Lorg/apache/commons/math3/optim/AbstractOptimizationProblem<TPAIR;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->checker:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    return-object v0
.end method

.method public getEvaluationCounter()Lorg/apache/commons/math3/util/Incrementor;
    .locals 3

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;, "Lorg/apache/commons/math3/optim/AbstractOptimizationProblem<TPAIR;>;"
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    iget v1, p0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->maxEvaluations:I

    sget-object v2, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->MAX_EVAL_CALLBACK:Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$MaxEvalCallback;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Incrementor;-><init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V

    return-object v0
.end method

.method public getIterationCounter()Lorg/apache/commons/math3/util/Incrementor;
    .locals 3

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;, "Lorg/apache/commons/math3/optim/AbstractOptimizationProblem<TPAIR;>;"
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    iget v1, p0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->maxIterations:I

    sget-object v2, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->MAX_ITER_CALLBACK:Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$MaxIterCallback;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Incrementor;-><init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V

    return-object v0
.end method
