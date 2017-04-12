.class public Lorg/apache/commons/math3/linear/ConjugateGradient;
.super Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;
.source "ConjugateGradient.java"


# static fields
.field public static final OPERATOR:Ljava/lang/String; = "operator"

.field public static final VECTOR:Ljava/lang/String; = "vector"


# instance fields
.field private check:Z

.field private final delta:D


# direct methods
.method public constructor <init>(IDZ)V
    .locals 0
    .param p1, "maxIterations"    # I
    .param p2, "delta"    # D
    .param p4, "check"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(I)V

    .line 108
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->delta:D

    .line 109
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->check:Z

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/IterationManager;DZ)V
    .locals 0
    .param p1, "manager"    # Lorg/apache/commons/math3/util/IterationManager;
    .param p2, "delta"    # D
    .param p4, "check"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(Lorg/apache/commons/math3/util/IterationManager;)V

    .line 126
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->delta:D

    .line 127
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->check:Z

    .line 128
    return-void
.end method


# virtual methods
.method public final getCheck()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->check:Z

    return v0
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 40
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p3, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "x0"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/linear/ConjugateGradient;->checkParameters(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/ConjugateGradient;->getIterationManager()Lorg/apache/commons/math3/util/IterationManager;

    move-result-object v18

    .line 157
    .local v18, "manager":Lorg/apache/commons/math3/util/IterationManager;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/util/IterationManager;->resetIterationCount()V

    .line 158
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/linear/ConjugateGradient;->delta:D

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v6

    mul-double v38, v4, v6

    .line 159
    .local v38, "rmax":D
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/linear/RealVector;->unmodifiableRealVector(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v14

    .line 162
    .local v14, "bro":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    .line 166
    move-object/from16 v25, p4

    .line 167
    .local v25, "x":Lorg/apache/commons/math3/linear/RealVector;
    invoke-static/range {v25 .. v25}, Lorg/apache/commons/math3/linear/RealVector;->unmodifiableRealVector(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v13

    .line 168
    .local v13, "xro":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v19

    .line 169
    .local v19, "p":Lorg/apache/commons/math3/linear/RealVector;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v8

    .line 171
    .local v8, "q":Lorg/apache/commons/math3/linear/RealVector;
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-object/from16 v3, p3

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/math3/linear/RealVector;->combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    .line 172
    .local v3, "r":Lorg/apache/commons/math3/linear/RealVector;
    invoke-static {v3}, Lorg/apache/commons/math3/linear/RealVector;->unmodifiableRealVector(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v15

    .line 173
    .local v15, "rro":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v16

    .line 175
    .local v16, "rnorm":D
    if-nez p2, :cond_0

    .line 176
    move-object/from16 v24, v3

    .line 181
    .local v24, "z":Lorg/apache/commons/math3/linear/RealVector;
    :goto_0
    new-instance v10, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v12

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v17}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 183
    .local v10, "evt":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireInitializationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 184
    cmpg-double v4, v16, v38

    if-gtz v4, :cond_1

    .line 185
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 231
    :goto_1
    return-object v25

    .line 178
    .end local v10    # "evt":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    .end local v24    # "z":Lorg/apache/commons/math3/linear/RealVector;
    :cond_0
    const/16 v24, 0x0

    .restart local v24    # "z":Lorg/apache/commons/math3/linear/RealVector;
    goto :goto_0

    .line 188
    .restart local v10    # "evt":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    :cond_1
    const-wide/16 v36, 0x0

    .line 190
    .local v36, "rhoPrev":D
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    .line 191
    new-instance v10, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    .end local v10    # "evt":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v12

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v17}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 193
    .restart local v10    # "evt":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationStartedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 194
    if-eqz p2, :cond_3

    .line 195
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v24

    .line 197
    :cond_3
    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v34

    .line 198
    .local v34, "rhoNext":D
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/commons/math3/linear/ConjugateGradient;->check:Z

    if-eqz v4, :cond_4

    const-wide/16 v4, 0x0

    cmpg-double v4, v34, v4

    if-gtz v4, :cond_4

    .line 200
    new-instance v9, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;

    invoke-direct {v9}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;-><init>()V

    .line 201
    .local v9, "e":Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;
    invoke-virtual {v9}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v2

    .line 202
    .local v2, "context":Lorg/apache/commons/math3/exception/util/ExceptionContext;
    const-string v4, "operator"

    move-object/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    const-string v4, "vector"

    invoke-virtual {v2, v4, v3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    throw v9

    .line 206
    .end local v2    # "context":Lorg/apache/commons/math3/exception/util/ExceptionContext;
    .end local v9    # "e":Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 207
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Lorg/apache/commons/math3/linear/RealVector;->setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V

    .line 211
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v8

    .line 212
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v32

    .line 213
    .local v32, "pq":D
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/commons/math3/linear/ConjugateGradient;->check:Z

    if-eqz v4, :cond_6

    const-wide/16 v4, 0x0

    cmpg-double v4, v32, v4

    if-gtz v4, :cond_6

    .line 215
    new-instance v9, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;

    invoke-direct {v9}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;-><init>()V

    .line 216
    .restart local v9    # "e":Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;
    invoke-virtual {v9}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v2

    .line 217
    .restart local v2    # "context":Lorg/apache/commons/math3/exception/util/ExceptionContext;
    const-string v4, "operator"

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    const-string v4, "vector"

    move-object/from16 v0, v19

    invoke-virtual {v2, v4, v0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    throw v9

    .line 209
    .end local v2    # "context":Lorg/apache/commons/math3/exception/util/ExceptionContext;
    .end local v9    # "e":Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;
    .end local v32    # "pq":D
    :cond_5
    div-double v20, v34, v36

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v19 .. v24}, Lorg/apache/commons/math3/linear/RealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    goto :goto_2

    .line 221
    .restart local v32    # "pq":D
    :cond_6
    div-double v28, v34, v32

    .line 222
    .local v28, "alpha":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-object/from16 v30, v19

    invoke-virtual/range {v25 .. v30}, Lorg/apache/commons/math3/linear/RealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    .line 223
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v28

    neg-double v6, v0

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/math3/linear/RealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    .line 224
    move-wide/from16 v36, v34

    .line 225
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v16

    .line 226
    new-instance v10, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    .end local v10    # "evt":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v12

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v17}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 228
    .restart local v10    # "evt":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationPerformedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 229
    cmpg-double v4, v16, v38

    if-gtz v4, :cond_2

    .line 230
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    goto/16 :goto_1
.end method
