.class public abstract Lorg/apache/commons/math3/ode/AbstractIntegrator;
.super Ljava/lang/Object;
.source "AbstractIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/FirstOrderIntegrator;


# instance fields
.field private evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field private eventsStates:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ode/events/EventState;",
            ">;"
        }
    .end annotation
.end field

.field private transient expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

.field protected isLastStep:Z

.field private final name:Ljava/lang/String;

.field protected resetOccurred:Z

.field private statesInitialized:Z

.field protected stepHandlers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ode/sampling/StepHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected stepSize:D

.field protected stepStart:D


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->name:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    .line 86
    iput-wide v2, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    .line 87
    iput-wide v2, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->statesInitialized:Z

    .line 90
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    .line 91
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->setMaxEvaluations(I)V

    .line 92
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 93
    return-void
.end method


# virtual methods
.method protected acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D
    .locals 28
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .param p2, "y"    # [D
    .param p3, "yDot"    # [D
    .param p4, "tEnd"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getGlobalPreviousTime()D

    move-result-wide v22

    .line 317
    .local v22, "previousT":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getGlobalCurrentTime()D

    move-result-wide v6

    .line 320
    .local v6, "currentT":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->statesInitialized:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/ode/events/EventState;

    .line 322
    .local v24, "state":Lorg/apache/commons/math3/ode/events/EventState;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/events/EventState;->reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V

    goto :goto_0

    .line 324
    .end local v24    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    :cond_0
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractIntegrator;->statesInitialized:Z

    .line 328
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->isForward()Z

    move-result v25

    if-eqz v25, :cond_3

    const/16 v20, 0x1

    .line 329
    .local v20, "orderingSign":I
    :goto_1
    new-instance v19, Ljava/util/TreeSet;

    new-instance v25, Lorg/apache/commons/math3/ode/AbstractIntegrator$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/AbstractIntegrator$1;-><init>(Lorg/apache/commons/math3/ode/AbstractIntegrator;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 338
    .local v19, "occurringEvents":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/apache/commons/math3/ode/events/EventState;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/ode/events/EventState;

    .line 339
    .restart local v24    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/events/EventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 341
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 328
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v19    # "occurringEvents":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/apache/commons/math3/ode/events/EventState;>;"
    .end local v20    # "orderingSign":I
    .end local v24    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    :cond_3
    const/16 v20, -0x1

    goto :goto_1

    .line 400
    .local v4, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .local v5, "currentEvent":Lorg/apache/commons/math3/ode/events/EventState;
    .local v9, "eventYComplete":[D
    .local v10, "eventT":D
    .restart local v13    # "i$":Ljava/util/Iterator;
    .local v15, "index":I
    .local v16, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/EventState;>;"
    .local v17, "len$":I
    .local v18, "needReset":Z
    .restart local v19    # "occurringEvents":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/apache/commons/math3/ode/events/EventState;>;"
    .restart local v20    # "orderingSign":I
    :cond_4
    move-wide/from16 v22, v10

    .line 401
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setSoftPreviousTime(D)V

    .line 402
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setSoftCurrentTime(D)V

    .line 405
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/ode/events/EventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 407
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v4    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v5    # "currentEvent":Lorg/apache/commons/math3/ode/events/EventState;
    .end local v9    # "eventYComplete":[D
    .end local v10    # "eventT":D
    .end local v15    # "index":I
    .end local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/EventState;>;"
    .end local v17    # "len$":I
    .end local v18    # "needReset":Z
    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_f

    .line 348
    invoke-interface/range {v19 .. v19}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 349
    .restart local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/EventState;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ode/events/EventState;

    .line 350
    .restart local v5    # "currentEvent":Lorg/apache/commons/math3/ode/events/EventState;
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 353
    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/events/EventState;->getEventTime()D

    move-result-wide v10

    .line 354
    .restart local v10    # "eventT":D
    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setSoftPreviousTime(D)V

    .line 355
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setSoftCurrentTime(D)V

    .line 358
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    .line 359
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v9, v0, [D

    .line 360
    .restart local v9    # "eventYComplete":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedState()[D

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v9}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 362
    const/4 v14, 0x0

    .line 363
    .local v14, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v4

    .restart local v4    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    array-length v0, v4

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    move v15, v14

    .end local v14    # "index":I
    .restart local v15    # "index":I
    :goto_3
    move/from16 v0, v17

    if-ge v13, v0, :cond_6

    aget-object v21, v4, v13

    .line 364
    .local v21, "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index":I
    .restart local v14    # "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 363
    add-int/lit8 v13, v13, 0x1

    move v15, v14

    .end local v14    # "index":I
    .restart local v15    # "index":I
    goto :goto_3

    .line 369
    .end local v21    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/ode/events/EventState;

    .line 370
    .restart local v24    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11, v9}, Lorg/apache/commons/math3/ode/events/EventState;->stepAccepted(D[D)V

    .line 371
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    move/from16 v25, v0

    if-nez v25, :cond_7

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/ode/events/EventState;->stop()Z

    move-result v25

    if-eqz v25, :cond_8

    :cond_7
    const/16 v25, 0x1

    :goto_5
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    goto :goto_4

    :cond_8
    const/16 v25, 0x0

    goto :goto_5

    .line 375
    .end local v24    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/ode/sampling/StepHandler;

    .line 376
    .local v12, "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v12, v0, v1}, Lorg/apache/commons/math3/ode/sampling/StepHandler;->handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V

    goto :goto_6

    .line 379
    .end local v12    # "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 381
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v25

    move-object/from16 v1, p2

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    .end local v5    # "currentEvent":Lorg/apache/commons/math3/ode/events/EventState;
    .end local v9    # "eventYComplete":[D
    .end local v10    # "eventT":D
    .end local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/EventState;>;"
    :goto_7
    return-wide v10

    .line 385
    .restart local v5    # "currentEvent":Lorg/apache/commons/math3/ode/events/EventState;
    .restart local v9    # "eventYComplete":[D
    .restart local v10    # "eventT":D
    .restart local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/EventState;>;"
    :cond_b
    const/16 v18, 0x0

    .line 386
    .restart local v18    # "needReset":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/ode/events/EventState;

    .line 387
    .restart local v24    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    if-nez v18, :cond_c

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11, v9}, Lorg/apache/commons/math3/ode/events/EventState;->reset(D[D)Z

    move-result v25

    if-eqz v25, :cond_d

    :cond_c
    const/16 v18, 0x1

    :goto_9
    goto :goto_8

    :cond_d
    const/16 v18, 0x0

    goto :goto_9

    .line 389
    .end local v24    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    :cond_e
    if-eqz v18, :cond_4

    .line 392
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    .line 393
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v25

    move-object/from16 v1, p2

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v10, v11, v1, v2}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 395
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractIntegrator;->resetOccurred:Z

    goto :goto_7

    .line 413
    .end local v4    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v5    # "currentEvent":Lorg/apache/commons/math3/ode/events/EventState;
    .end local v9    # "eventYComplete":[D
    .end local v10    # "eventT":D
    .end local v15    # "index":I
    .end local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/ode/events/EventState;>;"
    .end local v17    # "len$":I
    .end local v18    # "needReset":Z
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    .line 414
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v8, v0, [D

    .line 415
    .local v8, "currentY":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedState()[D

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 417
    const/4 v14, 0x0

    .line 418
    .restart local v14    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v4

    .restart local v4    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    array-length v0, v4

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    move v15, v14

    .end local v14    # "index":I
    .restart local v15    # "index":I
    :goto_a
    move/from16 v0, v17

    if-ge v13, v0, :cond_10

    aget-object v21, v4, v13

    .line 419
    .restart local v21    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index":I
    .restart local v14    # "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 418
    add-int/lit8 v13, v13, 0x1

    move v15, v14

    .end local v14    # "index":I
    .restart local v15    # "index":I
    goto :goto_a

    .line 422
    .end local v21    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/math3/ode/events/EventState;

    .line 423
    .restart local v24    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7, v8}, Lorg/apache/commons/math3/ode/events/EventState;->stepAccepted(D[D)V

    .line 424
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    move/from16 v25, v0

    if-nez v25, :cond_11

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/ode/events/EventState;->stop()Z

    move-result v25

    if-eqz v25, :cond_12

    :cond_11
    const/16 v25, 0x1

    :goto_c
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    goto :goto_b

    :cond_12
    const/16 v25, 0x0

    goto :goto_c

    .line 426
    .end local v24    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    move/from16 v25, v0

    if-nez v25, :cond_14

    const/16 v25, 0x1

    move-wide/from16 v0, p4

    move/from16 v2, v25

    invoke-static {v6, v7, v0, v1, v2}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v25

    if-eqz v25, :cond_15

    :cond_14
    const/16 v25, 0x1

    :goto_d
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_16

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/ode/sampling/StepHandler;

    .line 430
    .restart local v12    # "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v12, v0, v1}, Lorg/apache/commons/math3/ode/sampling/StepHandler;->handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V

    goto :goto_e

    .line 426
    .end local v12    # "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    :cond_15
    const/16 v25, 0x0

    goto :goto_d

    :cond_16
    move-wide v10, v6

    .line 433
    goto/16 :goto_7
.end method

.method public addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDI)V
    .locals 8
    .param p1, "handler"    # Lorg/apache/commons/math3/ode/events/EventHandler;
    .param p2, "maxCheckInterval"    # D
    .param p4, "convergence"    # D
    .param p6, "maxIterationCount"    # I

    .prologue
    .line 126
    new-instance v7, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;

    const/4 v0, 0x5

    invoke-direct {v7, p4, p5, v0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;-><init>(DI)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V

    .line 129
    return-void
.end method

.method public addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 10
    .param p1, "handler"    # Lorg/apache/commons/math3/ode/events/EventHandler;
    .param p2, "maxCheckInterval"    # D
    .param p4, "convergence"    # D
    .param p6, "maxIterationCount"    # I
    .param p7, "solver"    # Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    .prologue
    .line 137
    iget-object v8, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    new-instance v0, Lorg/apache/commons/math3/ode/events/EventState;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/events/EventState;-><init>(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V

    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/apache/commons/math3/ode/sampling/StepHandler;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public clearEventHandlers()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 153
    return-void
.end method

.method public clearStepHandlers()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 119
    return-void
.end method

.method public computeDerivatives(D[D[D)V
    .locals 1
    .param p1, "t"    # D
    .param p3, "y"    # [D
    .param p4, "yDot"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 285
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->computeDerivatives(D[D[D)V

    .line 286
    return-void
.end method

.method public getCurrentSignedStepsize()D
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    return-wide v0
.end method

.method public getCurrentStepStart()D
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    return-wide v0
.end method

.method public getEvaluations()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method protected getEvaluationsCounter()Lorg/apache/commons/math3/util/Incrementor;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    return-object v0
.end method

.method public getEventHandlers()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ode/events/EventHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/ode/events/EventHandler;>;"
    iget-object v3, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/events/EventState;

    .line 145
    .local v2, "state":Lorg/apache/commons/math3/ode/events/EventState;
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/events/EventState;->getEventHandler()Lorg/apache/commons/math3/ode/events/EventHandler;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v2    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    return-object v3
.end method

.method protected getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    return-object v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStepHandlers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/ode/sampling/StepHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected initIntegration(D[DD)V
    .locals 8
    .param p1, "t0"    # D
    .param p3, "y0"    # [D
    .param p4, "t"    # D

    .prologue
    .line 187
    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 189
    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/ode/events/EventState;

    .line 190
    .local v7, "state":Lorg/apache/commons/math3/ode/events/EventState;
    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/ode/events/EventState;->setExpandable(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 191
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/events/EventState;->getEventHandler()Lorg/apache/commons/math3/ode/events/EventHandler;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/ode/events/EventHandler;->init(D[DD)V

    goto :goto_0

    .line 194
    .end local v7    # "state":Lorg/apache/commons/math3/ode/events/EventState;
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepHandler;

    .local v0, "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    .line 195
    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/StepHandler;->init(D[DD)V

    goto :goto_1

    .line 198
    .end local v0    # "handler":Lorg/apache/commons/math3/ode/sampling/StepHandler;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->setStateInitialized(Z)V

    .line 200
    return-void
.end method

.method public integrate(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;D[DD[D)D
    .locals 4
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    .param p2, "t0"    # D
    .param p4, "y0"    # [D
    .param p5, "t"    # D
    .param p7, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 231
    array-length v1, p4

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 232
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p4

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 234
    :cond_0
    array-length v1, p7

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 235
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p7

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 239
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;-><init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;)V

    .line 240
    .local v0, "expandableODE":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    invoke-virtual {v0, p2, p3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 241
    invoke-virtual {v0, p4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setPrimaryState([D)V

    .line 244
    invoke-virtual {p0, v0, p5, p6}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 247
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryState()[D

    move-result-object v1

    array-length v2, p7

    invoke-static {v1, v3, p7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v2

    return-wide v2
.end method

.method public abstract integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation
.end method

.method protected sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 10
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .param p2, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 447
    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v6

    mul-double v2, v4, v6

    .line 449
    .local v2, "threshold":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v4

    sub-double/2addr v4, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 450
    .local v0, "dt":D
    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 451
    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_INTEGRATION_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4

    .line 455
    :cond_0
    return-void
.end method

.method protected setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V
    .locals 0
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    .prologue
    .line 206
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    .line 207
    return-void
.end method

.method public setMaxEvaluations(I)V
    .locals 1
    .param p1, "maxEvaluations"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    if-gez p1, :cond_0

    const p1, 0x7fffffff

    .end local p1    # "maxEvaluations":I
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 168
    return-void
.end method

.method protected setStateInitialized(Z)V
    .locals 0
    .param p1, "stateInitialized"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->statesInitialized:Z

    .line 297
    return-void
.end method
