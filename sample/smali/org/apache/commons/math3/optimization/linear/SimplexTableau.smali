.class Lorg/apache/commons/math3/optimization/linear/SimplexTableau;
.super Ljava/lang/Object;
.source "SimplexTableau.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CUTOFF_THRESHOLD:D = 1.0E-12

.field private static final DEFAULT_ULPS:I = 0xa

.field private static final NEGATIVE_VAR_COLUMN_LABEL:Ljava/lang/String; = "x-"

.field private static final serialVersionUID:J = -0x130202931f9dd83dL


# instance fields
.field private final columnLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final constraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;"
        }
    .end annotation
.end field

.field private final epsilon:D

.field private final f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

.field private final maxUlps:I

.field private numArtificialVariables:I

.field private final numDecisionVariables:I

.field private final numSlackVariables:I

.field private final restrictToNonNegative:Z

.field private transient tableau:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optimization/GoalType;ZD)V
    .locals 9
    .param p1, "f"    # Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "restrictToNonNegative"    # Z
    .param p5, "epsilon"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "ZD)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, "constraints":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/optimization/linear/LinearConstraint;>;"
    const/16 v8, 0xa

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;-><init>(Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optimization/GoalType;ZDI)V

    .line 123
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optimization/GoalType;ZDI)V
    .locals 5
    .param p1, "f"    # Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "restrictToNonNegative"    # Z
    .param p5, "epsilon"    # D
    .param p7, "maxUlps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "ZDI)V"
        }
    .end annotation

    .prologue
    .local p2, "constraints":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/optimization/linear/LinearConstraint;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    .line 139
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    .line 140
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->normalizeConstraints(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->constraints:Ljava/util/List;

    .line 141
    iput-boolean p4, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    .line 142
    iput-wide p5, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->epsilon:D

    .line 143
    iput p7, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->maxUlps:I

    .line 144
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v3

    if-eqz p4, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numDecisionVariables:I

    .line 146
    sget-object v0, Lorg/apache/commons/math3/optimization/linear/Relationship;->LEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getConstraintTypeCounts(Lorg/apache/commons/math3/optimization/linear/Relationship;)I

    move-result v0

    sget-object v3, Lorg/apache/commons/math3/optimization/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getConstraintTypeCounts(Lorg/apache/commons/math3/optimization/linear/Relationship;)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numSlackVariables:I

    .line 148
    sget-object v0, Lorg/apache/commons/math3/optimization/linear/Relationship;->EQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getConstraintTypeCounts(Lorg/apache/commons/math3/optimization/linear/Relationship;)I

    move-result v0

    sget-object v3, Lorg/apache/commons/math3/optimization/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getConstraintTypeCounts(Lorg/apache/commons/math3/optimization/linear/Relationship;)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numArtificialVariables:I

    .line 150
    sget-object v0, Lorg/apache/commons/math3/optimization/GoalType;->MAXIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne p3, v0, :cond_1

    :goto_1
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->createTableau(Z)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->initializeColumnLabels()V

    .line 152
    return-void

    :cond_0
    move v0, v2

    .line 144
    goto :goto_0

    :cond_1
    move v2, v1

    .line 150
    goto :goto_1
.end method

.method private copyArray([D[D)V
    .locals 3
    .param p1, "src"    # [D
    .param p2, "dest"    # [D

    .prologue
    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v1

    array-length v2, p1

    invoke-static {p1, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    return-void
.end method

.method private getConstraintTypeCounts(Lorg/apache/commons/math3/optimization/linear/Relationship;)I
    .locals 4
    .param p1, "relationship"    # Lorg/apache/commons/math3/optimization/linear/Relationship;

    .prologue
    .line 287
    const/4 v1, 0x0

    .line 288
    .local v1, "count":I
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;

    .line 289
    .local v0, "constraint":Lorg/apache/commons/math3/optimization/linear/LinearConstraint;
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    .end local v0    # "constraint":Lorg/apache/commons/math3/optimization/linear/LinearConstraint;
    :cond_1
    return v1
.end method

.method protected static getInvertedCoefficientSum(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .param p0, "coefficients"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 302
    const-wide/16 v6, 0x0

    .line 303
    .local v6, "sum":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v0

    .local v0, "arr$":[D
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, v0, v1

    .line 304
    .local v2, "coefficient":D
    sub-double/2addr v6, v2

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v2    # "coefficient":D
    :cond_0
    return-wide v6
.end method

.method private normalize(Lorg/apache/commons/math3/optimization/linear/LinearConstraint;)Lorg/apache/commons/math3/optimization/linear/LinearConstraint;
    .locals 8
    .param p1, "constraint"    # Lorg/apache/commons/math3/optimization/linear/LinearConstraint;

    .prologue
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 264
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 265
    new-instance v0, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/linear/Relationship;->oppositeRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getValue()D

    move-result-wide v4

    mul-double/2addr v4, v6

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;-><init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optimization/linear/Relationship;D)V

    .line 269
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getValue()D

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;-><init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optimization/linear/Relationship;D)V

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 633
    const-string v0, "tableau"

    invoke-static {p0, v0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->deserializeRealMatrix(Ljava/lang/Object;Ljava/lang/String;Ljava/io/ObjectInputStream;)V

    .line 634
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 620
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 621
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->serializeRealMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Ljava/io/ObjectOutputStream;)V

    .line 622
    return-void
.end method


# virtual methods
.method protected createTableau(Z)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 20
    .param p1, "maximize"    # Z

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numDecisionVariables:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numSlackVariables:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numArtificialVariables:I

    add-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v12, v14, 0x1

    .line 187
    .local v12, "width":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v15

    add-int v5, v14, v15

    .line 188
    .local v5, "height":I
    new-instance v7, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v7, v5, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    .line 191
    .local v7, "matrix":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 192
    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v14, v15, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 194
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    const/4 v13, 0x0

    .line 195
    .local v13, "zIndex":I
    :goto_0
    if-eqz p1, :cond_7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    :goto_1
    invoke-virtual {v7, v13, v13, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 196
    if-eqz p1, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    invoke-virtual {v14}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v14

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v8

    .line 198
    .local v8, "objectiveCoefficients":Lorg/apache/commons/math3/linear/RealVector;
    :goto_2
    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v14

    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v15

    aget-object v15, v15, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->copyArray([D[D)V

    .line 199
    add-int/lit8 v16, v12, -0x1

    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    invoke-virtual {v14}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->getConstantTerm()D

    move-result-wide v14

    :goto_3
    move/from16 v0, v16

    invoke-virtual {v7, v13, v0, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 202
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    if-nez v14, :cond_1

    .line 203
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getSlackVariableOffset()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-static {v8}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getInvertedCoefficientSum(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v7, v13, v14, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 208
    :cond_1
    const/4 v10, 0x0

    .line 209
    .local v10, "slackVar":I
    const/4 v2, 0x0

    .line 210
    .local v2, "artificialVar":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_b

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;

    .line 212
    .local v4, "constraint":Lorg/apache/commons/math3/optimization/linear/LinearConstraint;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v14

    add-int v9, v14, v6

    .line 215
    .local v9, "row":I
    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v14

    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v15

    aget-object v15, v15, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->copyArray([D[D)V

    .line 218
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    if-nez v14, :cond_2

    .line 219
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getSlackVariableOffset()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getInvertedCoefficientSum(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v7, v9, v14, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 224
    :cond_2
    add-int/lit8 v14, v12, -0x1

    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getValue()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v7, v9, v14, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 227
    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v14

    sget-object v15, Lorg/apache/commons/math3/optimization/linear/Relationship;->LEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    if-ne v14, v15, :cond_a

    .line 228
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getSlackVariableOffset()I

    move-result v14

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "slackVar":I
    .local v11, "slackVar":I
    add-int/2addr v14, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v9, v14, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move v10, v11

    .line 234
    .end local v11    # "slackVar":I
    .restart local v10    # "slackVar":I
    :cond_3
    :goto_5
    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v14

    sget-object v15, Lorg/apache/commons/math3/optimization/linear/Relationship;->EQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    if-eq v14, v15, :cond_4

    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v14

    sget-object v15, Lorg/apache/commons/math3/optimization/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    if-ne v14, v15, :cond_5

    .line 236
    :cond_4
    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v15

    add-int/2addr v15, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v14, v15, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v14

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "artificialVar":I
    .local v3, "artificialVar":I
    add-int/2addr v14, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v9, v14, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 238
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowVector(I)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v15

    invoke-virtual {v7, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowVector(I)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V

    move v2, v3

    .line 210
    .end local v3    # "artificialVar":I
    .restart local v2    # "artificialVar":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 194
    .end local v2    # "artificialVar":I
    .end local v4    # "constraint":Lorg/apache/commons/math3/optimization/linear/LinearConstraint;
    .end local v6    # "i":I
    .end local v8    # "objectiveCoefficients":Lorg/apache/commons/math3/linear/RealVector;
    .end local v9    # "row":I
    .end local v10    # "slackVar":I
    .end local v13    # "zIndex":I
    :cond_6
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 195
    .restart local v13    # "zIndex":I
    :cond_7
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    goto/16 :goto_1

    .line 196
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    invoke-virtual {v14}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v8

    goto/16 :goto_2

    .line 199
    .restart local v8    # "objectiveCoefficients":Lorg/apache/commons/math3/linear/RealVector;
    :cond_9
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->getConstantTerm()D

    move-result-wide v18

    mul-double v14, v14, v18

    goto/16 :goto_3

    .line 229
    .restart local v2    # "artificialVar":I
    .restart local v4    # "constraint":Lorg/apache/commons/math3/optimization/linear/LinearConstraint;
    .restart local v6    # "i":I
    .restart local v9    # "row":I
    .restart local v10    # "slackVar":I
    :cond_a
    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;->getRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v14

    sget-object v15, Lorg/apache/commons/math3/optimization/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    if-ne v14, v15, :cond_3

    .line 230
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getSlackVariableOffset()I

    move-result v14

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "slackVar":I
    .restart local v11    # "slackVar":I
    add-int/2addr v14, v10

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v9, v14, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move v10, v11

    .end local v11    # "slackVar":I
    .restart local v10    # "slackVar":I
    goto :goto_5

    .line 242
    .end local v4    # "constraint":Lorg/apache/commons/math3/optimization/linear/LinearConstraint;
    .end local v9    # "row":I
    :cond_b
    return-object v7
.end method

.method protected divideRow(ID)V
    .locals 4
    .param p1, "dividendRow"    # I
    .param p2, "divisor"    # D

    .prologue
    .line 444
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 445
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    div-double/2addr v2, p2

    invoke-interface {v1, p1, v0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_0
    return-void
.end method

.method protected dropPhase1Objective()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 332
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 373
    :goto_0
    return-void

    .line 336
    :cond_0
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 337
    .local v8, "columnsToDrop":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v10

    .local v10, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v2

    if-ge v10, v2, :cond_2

    .line 341
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v13, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v0

    .line 342
    .local v0, "entry":D
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->epsilon:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v2

    if-lez v2, :cond_1

    .line 343
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 348
    .end local v0    # "entry":D
    :cond_2
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v2

    if-ge v10, v2, :cond_4

    .line 349
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v2

    add-int v6, v10, v2

    .line 350
    .local v6, "col":I
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    .line 351
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 355
    .end local v6    # "col":I
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v3

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v4

    sub-int/2addr v3, v4

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[D

    .line 356
    .local v12, "matrix":[[D
    const/4 v10, 0x1

    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getHeight()I

    move-result v2

    if-ge v10, v2, :cond_7

    .line 357
    const/4 v6, 0x0

    .line 358
    .restart local v6    # "col":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v2

    if-ge v11, v2, :cond_6

    .line 359
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 360
    add-int/lit8 v2, v10, -0x1

    aget-object v2, v12, v2

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "col":I
    .local v7, "col":I
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v10, v11}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v2, v6

    move v6, v7

    .line 358
    .end local v7    # "col":I
    .restart local v6    # "col":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 356
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 366
    .end local v6    # "col":I
    .end local v11    # "j":I
    :cond_7
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-interface {v8, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Integer;

    .line 367
    .local v9, "drop":[Ljava/lang/Integer;
    array-length v2, v9

    add-int/lit8 v10, v2, -0x1

    :goto_5
    if-ltz v10, :cond_8

    .line 368
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    aget-object v3, v9, v10

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 367
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 371
    :cond_8
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 372
    iput v13, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numArtificialVariables:I

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 581
    if-ne p0, p1, :cond_1

    .line 597
    :cond_0
    :goto_0
    return v1

    .line 585
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 586
    check-cast v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;

    .line 587
    .local v0, "rhs":Lorg/apache/commons/math3/optimization/linear/SimplexTableau;
    iget-boolean v3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    iget-boolean v4, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numDecisionVariables:I

    iget v4, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numDecisionVariables:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numSlackVariables:I

    iget v4, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numSlackVariables:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numArtificialVariables:I

    iget v4, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numArtificialVariables:I

    if-ne v3, v4, :cond_2

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->epsilon:D

    iget-wide v6, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->epsilon:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_2

    iget v3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->maxUlps:I

    iget v4, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->maxUlps:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->constraints:Ljava/util/List;

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "rhs":Lorg/apache/commons/math3/optimization/linear/SimplexTableau;
    :cond_3
    move v1, v2

    .line 597
    goto :goto_0
.end method

.method protected final getArtificialVariableOffset()I
    .locals 2

    .prologue
    .line 521
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numDecisionVariables:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numSlackVariables:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getBasicRow(I)Ljava/lang/Integer;
    .locals 7
    .param p1, "col"    # I

    .prologue
    .line 315
    const/4 v3, 0x0

    .line 316
    .local v3, "row":Ljava/lang/Integer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getHeight()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 317
    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v0

    .line 318
    .local v0, "entry":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget v6, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->maxUlps:I

    invoke-static {v0, v1, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    .line 319
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 316
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_1
    const-wide/16 v4, 0x0

    iget v6, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->maxUlps:I

    invoke-static {v0, v1, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v4

    if-nez v4, :cond_0

    .line 321
    const/4 v3, 0x0

    .line 324
    .end local v0    # "entry":D
    .end local v3    # "row":Ljava/lang/Integer;
    :cond_2
    return-object v3
.end method

.method protected final getData()[[D
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v0

    return-object v0
.end method

.method protected final getEntry(II)D
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 494
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v0

    return-wide v0
.end method

.method protected final getHeight()I
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    return v0
.end method

.method protected final getNumArtificialVariables()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numArtificialVariables:I

    return v0
.end method

.method protected final getNumDecisionVariables()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numDecisionVariables:I

    return v0
.end method

.method protected final getNumObjectiveFunctions()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numArtificialVariables:I

    if-lez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final getNumSlackVariables()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numSlackVariables:I

    return v0
.end method

.method protected final getOriginalNumDecisionVariables()I
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->getCoefficients()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method protected final getRhsOffset()I
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected final getSlackVariableOffset()I
    .locals 2

    .prologue
    .line 513
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numDecisionVariables:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getSolution()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 14

    .prologue
    .line 402
    iget-object v9, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    const-string v10, "x-"

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 403
    .local v8, "negativeVarColumn":I
    if-lez v8, :cond_0

    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v5

    .line 404
    .local v5, "negativeVarBasicRow":Ljava/lang/Integer;
    :goto_0
    if-nez v5, :cond_1

    const-wide/16 v6, 0x0

    .line 406
    .local v6, "mostNegative":D
    :goto_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 407
    .local v1, "basicRows":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getOriginalNumDecisionVariables()I

    move-result v9

    new-array v2, v9, [D

    .line 408
    .local v2, "coefficients":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v9, v2

    if-ge v4, v9, :cond_8

    .line 409
    iget-object v9, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 410
    .local v3, "colIndex":I
    if-gez v3, :cond_2

    .line 411
    const-wide/16 v10, 0x0

    aput-wide v10, v2, v4

    .line 408
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 403
    .end local v1    # "basicRows":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "coefficients":[D
    .end local v3    # "colIndex":I
    .end local v4    # "i":I
    .end local v5    # "negativeVarBasicRow":Ljava/lang/Integer;
    .end local v6    # "mostNegative":D
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 404
    .restart local v5    # "negativeVarBasicRow":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getRhsOffset()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v6

    goto :goto_1

    .line 414
    .restart local v1    # "basicRows":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v2    # "coefficients":[D
    .restart local v3    # "colIndex":I
    .restart local v4    # "i":I
    .restart local v6    # "mostNegative":D
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v0

    .line 415
    .local v0, "basicRow":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_3

    .line 419
    const-wide/16 v10, 0x0

    aput-wide v10, v2, v4

    goto :goto_3

    .line 420
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 423
    const-wide/16 v12, 0x0

    iget-boolean v9, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    if-eqz v9, :cond_4

    const-wide/16 v10, 0x0

    :goto_4
    sub-double v10, v12, v10

    aput-wide v10, v2, v4

    goto :goto_3

    :cond_4
    move-wide v10, v6

    goto :goto_4

    .line 425
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 426
    if-nez v0, :cond_6

    const-wide/16 v10, 0x0

    :goto_5
    iget-boolean v9, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    if-eqz v9, :cond_7

    const-wide/16 v12, 0x0

    :goto_6
    sub-double/2addr v10, v12

    aput-wide v10, v2, v4

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getRhsOffset()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v10

    goto :goto_5

    :cond_7
    move-wide v12, v6

    goto :goto_6

    .line 431
    .end local v0    # "basicRow":Ljava/lang/Integer;
    .end local v3    # "colIndex":I
    :cond_8
    new-instance v9, Lorg/apache/commons/math3/optimization/PointValuePair;

    iget-object v10, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    invoke-virtual {v10, v2}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->getValue([D)D

    move-result-wide v10

    invoke-direct {v9, v2, v10, v11}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    return-object v9
.end method

.method protected final getWidth()I
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 602
    iget-boolean v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numDecisionVariables:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numSlackVariables:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->numArtificialVariables:I

    xor-int/2addr v0, v1

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->epsilon:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->maxUlps:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->f:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->constraints:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method protected initializeColumnLabels()V
    .locals 4

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 159
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    const-string v2, "W"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    const-string v2, "Z"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getOriginalNumDecisionVariables()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 163
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    iget-boolean v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->restrictToNonNegative:Z

    if-nez v1, :cond_2

    .line 166
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    const-string v2, "x-"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumSlackVariables()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 169
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 172
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 174
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->columnLabels:Ljava/util/List;

    const-string v2, "RHS"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method isOptimal()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 388
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v6

    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v6, v2, :cond_1

    .line 389
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v7, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v0

    .line 390
    .local v0, "entry":D
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->epsilon:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v2

    if-gez v2, :cond_0

    move v2, v7

    .line 394
    .end local v0    # "entry":D
    :goto_1
    return v2

    .line 388
    .restart local v0    # "entry":D
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 394
    .end local v0    # "entry":D
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public normalizeConstraints(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "originalConstraints":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/optimization/linear/LinearConstraint;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 252
    .local v2, "normalized":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/optimization/linear/LinearConstraint;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/optimization/linear/LinearConstraint;

    .line 253
    .local v0, "constraint":Lorg/apache/commons/math3/optimization/linear/LinearConstraint;
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->normalize(Lorg/apache/commons/math3/optimization/linear/LinearConstraint;)Lorg/apache/commons/math3/optimization/linear/LinearConstraint;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    .end local v0    # "constraint":Lorg/apache/commons/math3/optimization/linear/LinearConstraint;
    :cond_0
    return-object v2
.end method

.method protected final setEntry(IID)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # D

    .prologue
    .line 505
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 506
    return-void
.end method

.method protected subtractRow(IID)V
    .locals 9
    .param p1, "minuendRow"    # I
    .param p2, "subtrahendRow"    # I
    .param p3, "multiple"    # D

    .prologue
    .line 461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 462
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, p2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    mul-double/2addr v6, p3

    sub-double v2, v4, v6

    .line 464
    .local v2, "result":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v1, v4, v6

    if-gez v1, :cond_0

    .line 465
    const-wide/16 v2, 0x0

    .line 467
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->tableau:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, p1, v0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    .end local v2    # "result":D
    :cond_1
    return-void
.end method
