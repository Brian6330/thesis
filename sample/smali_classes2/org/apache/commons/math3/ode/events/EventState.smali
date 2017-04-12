.class public Lorg/apache/commons/math3/ode/events/EventState;
.super Ljava/lang/Object;
.source "EventState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;
    }
.end annotation


# instance fields
.field private final convergence:D

.field private expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

.field private forward:Z

.field private g0:D

.field private g0Positive:Z

.field private final handler:Lorg/apache/commons/math3/ode/events/EventHandler;

.field private increasing:Z

.field private final maxCheckInterval:D

.field private final maxIterationCount:I

.field private nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

.field private pendingEvent:Z

.field private pendingEventTime:D

.field private previousEventTime:D

.field private final solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

.field private t0:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 6
    .param p1, "handler"    # Lorg/apache/commons/math3/ode/events/EventHandler;
    .param p2, "maxCheckInterval"    # D
    .param p4, "convergence"    # D
    .param p6, "maxIterationCount"    # I
    .param p7, "solver"    # Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    .prologue
    const/4 v4, 0x1

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    .line 108
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    .line 109
    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    .line 110
    iput p6, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    .line 111
    iput-object p7, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    .line 115
    iput-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 116
    iput-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    .line 117
    iput-boolean v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    .line 119
    iput-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    .line 120
    iput-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    .line 121
    iput-boolean v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    .line 122
    sget-object v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/ode/events/EventState;
    .param p1, "x1"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/ode/events/EventState;)Lorg/apache/commons/math3/ode/events/EventHandler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/ode/events/EventState;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    return-object v0
.end method

.method private getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D
    .locals 9
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .prologue
    .line 202
    iget-object v7, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result v7

    new-array v1, v7, [D

    .line 204
    .local v1, "complete":[D
    iget-object v7, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 206
    const/4 v3, 0x0

    .line 207
    .local v3, "index":I
    iget-object v7, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v4, v3

    .end local v3    # "index":I
    .local v4, "index":I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v0, v2

    .line 208
    .local v6, "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    invoke-interface {p1, v4}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 207
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    .line 212
    .end local v6    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z
    .locals 38
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 228
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->isForward()Z

    move-result v6

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    .line 229
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v36

    .line 230
    .local v36, "t1":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    sub-double v24, v36, v14

    .line 231
    .local v24, "dt":D
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    move-wide/from16 v18, v0

    cmpg-double v6, v14, v18

    if-gez v6, :cond_0

    .line 233
    const/4 v6, 0x0

    .line 322
    :goto_0
    return v6

    .line 235
    :cond_0
    const/4 v6, 0x1

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    move-wide/from16 v18, v0

    div-double v14, v14, v18

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v14

    double-to-int v12, v14

    invoke-static {v6, v12}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v32

    .line 236
    .local v32, "n":I
    move/from16 v0, v32

    int-to-double v14, v0

    div-double v30, v24, v14

    .line 238
    .local v30, "h":D
    new-instance v7, Lorg/apache/commons/math3/ode/events/EventState$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v1}, Lorg/apache/commons/math3/ode/events/EventState$1;-><init>(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V

    .line 249
    .local v7, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 250
    .local v8, "ta":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    move-wide/from16 v26, v0

    .line 251
    .local v26, "ga":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move/from16 v0, v32

    if-ge v4, v0, :cond_10

    .line 254
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    add-int/lit8 v6, v4, 0x1

    int-to-double v0, v6

    move-wide/from16 v18, v0

    mul-double v18, v18, v30

    add-double v10, v14, v18

    .line 255
    .local v10, "tb":D
    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 256
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v28

    .line 259
    .local v28, "gb":D
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    const-wide/16 v14, 0x0

    cmpl-double v6, v28, v14

    if-ltz v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    xor-int/2addr v6, v12

    if-eqz v6, :cond_f

    .line 263
    cmpl-double v6, v28, v26

    if-ltz v6, :cond_4

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    .line 267
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    instance-of v6, v6, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;

    if-eqz v6, :cond_6

    .line 269
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    check-cast v5, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;

    .line 271
    .local v5, "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    sget-object v12, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-interface/range {v5 .. v12}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v34

    .line 288
    .local v34, "root":D
    :goto_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_c

    sub-double v14, v34, v8

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    move-wide/from16 v18, v0

    cmpg-double v6, v14, v18

    if-gtz v6, :cond_c

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    sub-double v14, v34, v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    move-wide/from16 v18, v0

    cmpg-double v6, v14, v18

    if-gtz v6, :cond_c

    .line 296
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    add-double/2addr v8, v14

    .line 297
    :goto_5
    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v26

    .line 298
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    const-wide/16 v14, 0x0

    cmpl-double v6, v26, v14

    if-ltz v6, :cond_a

    const/4 v6, 0x1

    :goto_6
    xor-int/2addr v6, v12

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    cmpl-double v6, v8, v10

    if-ltz v6, :cond_b

    const/4 v6, 0x1

    :goto_7
    xor-int/2addr v6, v12

    if-nez v6, :cond_1

    .line 299
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 251
    .end local v5    # "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    .end local v34    # "root":D
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 259
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 263
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 271
    .restart local v5    # "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    sget-object v20, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object v13, v5

    move-object v15, v7

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    invoke-interface/range {v13 .. v20}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v34

    goto :goto_4

    .line 275
    .end local v5    # "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    move-object v15, v7

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-interface/range {v13 .. v19}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v16

    .line 278
    .local v16, "baseRoot":D
    :goto_9
    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v12}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getEvaluations()I

    move-result v12

    sub-int v13, v6, v12

    .line 279
    .local v13, "remainingEval":I
    new-instance v5, Lorg/apache/commons/math3/analysis/solvers/PegasusSolver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v5, v14, v15, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/PegasusSolver;-><init>(DD)V

    .line 281
    .restart local v5    # "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v6, :cond_8

    sget-object v22, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object v14, v7

    move-object v15, v5

    move-wide/from16 v18, v8

    move-wide/from16 v20, v10

    invoke-static/range {v13 .. v22}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v34

    .restart local v34    # "root":D
    :goto_a
    goto/16 :goto_4

    .line 275
    .end local v5    # "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    .end local v13    # "remainingEval":I
    .end local v16    # "baseRoot":D
    .end local v34    # "root":D
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    move-object v15, v7

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    invoke-interface/range {v13 .. v19}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v16

    goto :goto_9

    .line 281
    .restart local v5    # "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    .restart local v13    # "remainingEval":I
    .restart local v16    # "baseRoot":D
    :cond_8
    sget-object v22, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object v14, v7

    move-object v15, v5

    move-wide/from16 v18, v10

    move-wide/from16 v20, v8

    invoke-static/range {v13 .. v22}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v34

    goto :goto_a

    .line 296
    .end local v13    # "remainingEval":I
    .end local v16    # "baseRoot":D
    .restart local v34    # "root":D
    :cond_9
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    sub-double/2addr v8, v14

    goto/16 :goto_5

    .line 298
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 300
    :cond_c
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_d

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    sub-double v14, v14, v34

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    move-wide/from16 v18, v0

    cmpl-double v6, v14, v18

    if-lez v6, :cond_e

    .line 302
    :cond_d
    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    .line 303
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    .line 304
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 307
    :cond_e
    move-wide v8, v10

    .line 308
    move-wide/from16 v26, v28

    goto/16 :goto_8

    .line 313
    .end local v5    # "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    .end local v34    # "root":D
    :cond_f
    move-wide v8, v10

    .line 314
    move-wide/from16 v26, v28

    goto/16 :goto_8

    .line 320
    .end local v10    # "tb":D
    .end local v28    # "gb":D
    :cond_10
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    .line 321
    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D
    :try_end_0
    .catch Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 324
    .end local v4    # "i":I
    .end local v7    # "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .end local v8    # "ta":D
    .end local v24    # "dt":D
    .end local v26    # "ga":D
    .end local v30    # "h":D
    .end local v32    # "n":I
    .end local v36    # "t1":D
    :catch_0
    move-exception v23

    .line 325
    .local v23, "lmcee":Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;->getException()Lorg/apache/commons/math3/exception/MaxCountExceededException;

    move-result-object v6

    throw v6
.end method

.method public getConvergence()D
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    return-wide v0
.end method

.method public getEventHandler()Lorg/apache/commons/math3/ode/events/EventHandler;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    return-object v0
.end method

.method public getEventTime()D
    .locals 2

    .prologue
    .line 335
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0
.end method

.method public getMaxCheckInterval()D
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    return-wide v0
.end method

.method public getMaxIterationCount()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    return v0
.end method

.method public reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V
    .locals 12
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 169
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 170
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 171
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v5

    invoke-interface {v4, v6, v7, v5}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    .line 172
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    cmpl-double v4, v4, v10

    if-nez v4, :cond_0

    .line 186
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v6

    iget-wide v8, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 188
    .local v0, "epsilon":D
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v0

    add-double v2, v4, v6

    .line 189
    .local v2, "tStart":D
    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 190
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v5

    invoke-interface {v4, v2, v3, v5}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    .line 192
    .end local v0    # "epsilon":D
    .end local v2    # "tStart":D
    :cond_0
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    cmpl-double v4, v4, v10

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    .line 194
    return-void

    .line 192
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public reset(D[D)Z
    .locals 7
    .param p1, "t"    # D
    .param p3, "y"    # [D

    .prologue
    const/4 v0, 0x0

    .line 379
    iget-boolean v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v1, v2, v4

    if-lez v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v0

    .line 383
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne v1, v2, :cond_2

    .line 384
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->resetState(D[D)V

    .line 386
    :cond_2
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    .line 387
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    .line 389
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_DERIVATIVES:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne v1, v2, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setExpandable(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V
    .locals 0
    .param p1, "expandable"    # Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    .line 138
    return-void
.end method

.method public stepAccepted(D[D)V
    .locals 7
    .param p1, "t"    # D
    .param p3, "y"    # [D

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 348
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 349
    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v2, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    .line 351
    iget-boolean v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 353
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    .line 354
    iget-boolean v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    iput-boolean v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    .line 355
    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-boolean v3, p0, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    iget-boolean v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    xor-int/2addr v3, v4

    if-nez v3, :cond_0

    :goto_0
    invoke-interface {v2, p1, p2, p3, v0}, Lorg/apache/commons/math3/ode/events/EventHandler;->eventOccurred(D[DZ)Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    .line 360
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 355
    goto :goto_0

    .line 357
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    :goto_2
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    .line 358
    sget-object v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    goto :goto_1

    :cond_2
    move v0, v1

    .line 357
    goto :goto_2
.end method

.method public stop()Z
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->STOP:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
