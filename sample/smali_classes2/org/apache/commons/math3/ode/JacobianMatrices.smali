.class public Lorg/apache/commons/math3/ode/JacobianMatrices;
.super Ljava/lang/Object;
.source "JacobianMatrices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/JacobianMatrices$1;,
        Lorg/apache/commons/math3/ode/JacobianMatrices$MismatchedEquations;,
        Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;,
        Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;
    }
.end annotation


# instance fields
.field private dirtyParameter:Z

.field private efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

.field private index:I

.field private jacobianProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/ode/ParameterJacobianProvider;",
            ">;"
        }
    .end annotation
.end field

.field private jode:Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

.field private matricesData:[D

.field private paramDim:I

.field private pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

.field private selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

.field private stateDim:I


# direct methods
.method public varargs constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;[D[Ljava/lang/String;)V
    .locals 1
    .param p1, "fode"    # Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    .param p2, "hY"    # [D
    .param p3, "parameters"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;-><init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;[D)V

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/math3/ode/JacobianMatrices;-><init>(Lorg/apache/commons/math3/ode/MainStateJacobianProvider;[Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/ode/MainStateJacobianProvider;[Ljava/lang/String;)V
    .locals 7
    .param p1, "jode"    # Lorg/apache/commons/math3/ode/MainStateJacobianProvider;
    .param p2, "parameters"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object v2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    .line 125
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->index:I

    .line 127
    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->jode:Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    .line 128
    iput-object v2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    .line 130
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/MainStateJacobianProvider;->getDimension()I

    move-result v1

    iput v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    .line 132
    if-nez p2, :cond_0

    .line 133
    iput-object v2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    .line 134
    iput v6, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->paramDim:I

    .line 142
    :goto_0
    iput-boolean v6, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->dirtyParameter:Z

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->jacobianProviders:Ljava/util/List;

    .line 148
    iget v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    iget v2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->paramDim:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    mul-int/2addr v1, v2

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->matricesData:[D

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    if-ge v0, v1, :cond_2

    .line 150
    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->matricesData:[D

    iget v2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v1, v2

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    .end local v0    # "i":I
    :cond_0
    array-length v1, p2

    new-array v1, v1, [Lorg/apache/commons/math3/ode/ParameterConfiguration;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    .line 137
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 138
    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    new-instance v2, Lorg/apache/commons/math3/ode/ParameterConfiguration;

    aget-object v3, p2, v0

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/ode/ParameterConfiguration;-><init>(Ljava/lang/String;D)V

    aput-object v2, v1, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 140
    :cond_1
    array-length v1, p2

    iput v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->paramDim:I

    goto :goto_0

    .line 153
    :cond_2
    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/ode/JacobianMatrices;

    .prologue
    .line 56
    iget v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/ode/JacobianMatrices;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/ode/JacobianMatrices;

    .prologue
    .line 56
    iget v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->paramDim:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/ode/JacobianMatrices;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/ode/JacobianMatrices;

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->dirtyParameter:Z

    return v0
.end method

.method static synthetic access$402(Lorg/apache/commons/math3/ode/JacobianMatrices;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/ode/JacobianMatrices;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->dirtyParameter:Z

    return p1
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/MainStateJacobianProvider;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/ode/JacobianMatrices;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->jode:Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/ParameterizedODE;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/ode/JacobianMatrices;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/commons/math3/ode/JacobianMatrices;)[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/ode/JacobianMatrices;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/ode/JacobianMatrices;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->jacobianProviders:Ljava/util/List;

    return-object v0
.end method

.method private checkDimension(ILjava/lang/Object;)V
    .locals 2
    .param p1, "expected"    # I
    .param p2, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 331
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 332
    .local v0, "arrayDimension":I
    :goto_0
    if-eq v0, p1, :cond_1

    .line 333
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v1, v0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 331
    .end local v0    # "arrayDimension":I
    :cond_0
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 335
    .restart local v0    # "arrayDimension":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addParameterJacobianProvider(Lorg/apache/commons/math3/ode/ParameterJacobianProvider;)V
    .locals 1
    .param p1, "provider"    # Lorg/apache/commons/math3/ode/ParameterJacobianProvider;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->jacobianProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public getCurrentMainSetJacobian([[D)V
    .locals 6
    .param p1, "dYdY0"    # [[D

    .prologue
    .line 294
    iget-object v3, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    iget v4, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->index:I

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryState(I)[D

    move-result-object v2

    .line 296
    .local v2, "p":[D
    const/4 v1, 0x0

    .line 297
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    if-ge v0, v3, :cond_0

    .line 298
    aget-object v3, p1, v0

    const/4 v4, 0x0

    iget v5, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    iget v3, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    add-int/2addr v1, v3

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method

.method public getCurrentParameterJacobian(Ljava/lang/String;[D)V
    .locals 8
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "dYdP"    # [D

    .prologue
    .line 311
    iget-object v6, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    iget v7, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->index:I

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryState(I)[D

    move-result-object v4

    .line 313
    .local v4, "p":[D
    iget v6, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    iget v7, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    mul-int v1, v6, v7

    .line 314
    .local v1, "i":I
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    .local v0, "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 315
    .local v5, "param":Lorg/apache/commons/math3/ode/ParameterConfiguration;
    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 316
    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    invoke-static {v4, v1, p2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    .end local v5    # "param":Lorg/apache/commons/math3/ode/ParameterConfiguration;
    :cond_0
    return-void

    .line 319
    .restart local v5    # "param":Lorg/apache/commons/math3/ode/ParameterConfiguration;
    :cond_1
    iget v6, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    add-int/2addr v1, v6

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public registerVariationalEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V
    .locals 4
    .param p1, "expandable"    # Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/ode/JacobianMatrices$MismatchedEquations;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->jode:Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    instance-of v1, v1, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->jode:Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    check-cast v1, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;

    # getter for: Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    invoke-static {v1}, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->access$000(Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;)Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    move-result-object v0

    .line 170
    .local v0, "ode":Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimary()Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 171
    new-instance v1, Lorg/apache/commons/math3/ode/JacobianMatrices$MismatchedEquations;

    invoke-direct {v1}, Lorg/apache/commons/math3/ode/JacobianMatrices$MismatchedEquations;-><init>()V

    throw v1

    .line 167
    .end local v0    # "ode":Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->jode:Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    goto :goto_0

    .line 174
    .restart local v0    # "ode":Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    .line 175
    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    new-instance v2, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;-><init>(Lorg/apache/commons/math3/ode/JacobianMatrices;Lorg/apache/commons/math3/ode/JacobianMatrices$1;)V

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->addSecondaryEquations(Lorg/apache/commons/math3/ode/SecondaryEquations;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->index:I

    .line 176
    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    iget v2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->index:I

    iget-object v3, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->matricesData:[D

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setSecondaryState(I[D)V

    .line 178
    return-void
.end method

.method public setInitialMainStateJacobian([[D)V
    .locals 8
    .param p1, "dYdY0"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 239
    iget v5, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    invoke-direct {p0, v5, p1}, Lorg/apache/commons/math3/ode/JacobianMatrices;->checkDimension(ILjava/lang/Object;)V

    .line 240
    iget v5, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    aget-object v6, p1, v7

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/math3/ode/JacobianMatrices;->checkDimension(ILjava/lang/Object;)V

    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, "i":I
    move-object v0, p1

    .local v0, "arr$":[[D
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 245
    .local v4, "row":[D
    iget-object v5, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->matricesData:[D

    iget v6, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    invoke-static {v4, v7, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    iget v5, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    add-int/2addr v1, v5

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v4    # "row":[D
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    if-eqz v5, :cond_1

    .line 250
    iget-object v5, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    iget v6, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->index:I

    iget-object v7, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->matricesData:[D

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setSecondaryState(I[D)V

    .line 253
    :cond_1
    return-void
.end method

.method public setInitialParameterJacobian(Ljava/lang/String;[D)V
    .locals 8
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "dYdP"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/ode/UnknownParameterException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 269
    iget v5, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    invoke-direct {p0, v5, p2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->checkDimension(ILjava/lang/Object;)V

    .line 272
    iget v5, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    iget v6, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    mul-int v1, v5, v6

    .line 273
    .local v1, "i":I
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    .local v0, "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 274
    .local v4, "param":Lorg/apache/commons/math3/ode/ParameterConfiguration;
    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->matricesData:[D

    iget v7, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    invoke-static {p2, v5, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iget-object v5, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    if-eqz v5, :cond_0

    .line 277
    iget-object v5, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    iget v6, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->index:I

    iget-object v7, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->matricesData:[D

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setSecondaryState(I[D)V

    .line 279
    :cond_0
    return-void

    .line 281
    :cond_1
    iget v5, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    add-int/2addr v1, v5

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .end local v4    # "param":Lorg/apache/commons/math3/ode/ParameterConfiguration;
    :cond_2
    new-instance v5, Lorg/apache/commons/math3/ode/UnknownParameterException;

    invoke-direct {v5, p1}, Lorg/apache/commons/math3/ode/UnknownParameterException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public setParameterStep(Ljava/lang/String;D)V
    .locals 6
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "hP"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/ode/UnknownParameterException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    .local v0, "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 216
    .local v3, "param":Lorg/apache/commons/math3/ode/ParameterConfiguration;
    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    invoke-virtual {v3, p2, p3}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->setHP(D)V

    .line 218
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->dirtyParameter:Z

    .line 219
    return-void

    .line 215
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v3    # "param":Lorg/apache/commons/math3/ode/ParameterConfiguration;
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/ode/UnknownParameterException;

    invoke-direct {v4, p1}, Lorg/apache/commons/math3/ode/UnknownParameterException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setParameterizedODE(Lorg/apache/commons/math3/ode/ParameterizedODE;)V
    .locals 1
    .param p1, "parameterizedOde"    # Lorg/apache/commons/math3/ode/ParameterizedODE;

    .prologue
    .line 191
    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->dirtyParameter:Z

    .line 193
    return-void
.end method
