.class public abstract Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;
.super Ljava/lang/Object;
.source "AbstractLinearOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/linear/LinearOptimizer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_MAX_ITERATIONS:I = 0x64


# instance fields
.field private function:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

.field private goal:Lorg/apache/commons/math3/optimization/GoalType;

.field private iterations:I

.field private linearConstraints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;"
        }
    .end annotation
.end field

.field private maxIterations:I

.field private nonNegative:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->setMaxIterations(I)V

    .line 79
    return-void
.end method


# virtual methods
.method protected abstract doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation
.end method

.method protected getConstraints()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->linearConstraints:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getFunction()Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->function:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    return-object v0
.end method

.method protected getGoalType()Lorg/apache/commons/math3/optimization/GoalType;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->goal:Lorg/apache/commons/math3/optimization/GoalType;

    return-object v0
.end method

.method public getIterations()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->iterations:I

    return v0
.end method

.method public getMaxIterations()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->maxIterations:I

    return v0
.end method

.method protected incrementIterationsCounter()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 130
    iget v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->iterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->iterations:I

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->maxIterations:I

    if-le v0, v1, :cond_0

    .line 131
    new-instance v0, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->maxIterations:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 133
    :cond_0
    return-void
.end method

.method public optimize(Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optimization/GoalType;Z)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 1
    .param p1, "f"    # Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "restrictToNonNegative"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "Z)",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "constraints":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/optimization/linear/LinearConstraint;>;"
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->function:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    .line 143
    iput-object p2, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->linearConstraints:Ljava/util/Collection;

    .line 144
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->goal:Lorg/apache/commons/math3/optimization/GoalType;

    .line 145
    iput-boolean p4, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->nonNegative:Z

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->iterations:I

    .line 150
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected restrictToNonNegative()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->nonNegative:Z

    return v0
.end method

.method public setMaxIterations(I)V
    .locals 0
    .param p1, "maxIterations"    # I

    .prologue
    .line 111
    iput p1, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->maxIterations:I

    .line 112
    return-void
.end method
