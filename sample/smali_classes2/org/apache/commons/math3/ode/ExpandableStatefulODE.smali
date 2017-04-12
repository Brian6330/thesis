.class public Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
.super Ljava/lang/Object;
.source "ExpandableStatefulODE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;
    }
.end annotation


# instance fields
.field private components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final primary:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

.field private final primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

.field private final primaryState:[D

.field private final primaryStateDot:[D

.field private time:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;)V
    .locals 4
    .param p1, "primary"    # Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v0

    .line 74
    .local v0, "n":I
    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primary:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    .line 75
    new-instance v1, Lorg/apache/commons/math3/ode/EquationsMapper;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;-><init>(II)V

    iput-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 76
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->time:D

    .line 77
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    .line 78
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryStateDot:[D

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    .line 80
    return-void
.end method


# virtual methods
.method public addSecondaryEquations(Lorg/apache/commons/math3/ode/SecondaryEquations;)I
    .locals 4
    .param p1, "secondary"    # Lorg/apache/commons/math3/ode/SecondaryEquations;

    .prologue
    .line 139
    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    .line 142
    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primary:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v2}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v0

    .line 148
    .local v0, "firstIndex":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    invoke-direct {v3, p1, v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;-><init>(Lorg/apache/commons/math3/ode/SecondaryEquations;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 144
    .end local v0    # "firstIndex":I
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    .line 145
    .local v1, "last":Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;
    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->mapper:Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->getFirstIndex()I

    move-result v2

    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->mapper:Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v3

    add-int v0, v2, v3

    .restart local v0    # "firstIndex":I
    goto :goto_0
.end method

.method public computeDerivatives(D[D[D)V
    .locals 9
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
    .line 117
    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    invoke-virtual {v1, p3, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 118
    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primary:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    iget-object v3, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryStateDot:[D

    invoke-interface {v1, p1, p2, v2, v3}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    .line 121
    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    .line 122
    .local v0, "component":Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;
    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->mapper:Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->state:[D
    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$100(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 123
    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->equation:Lorg/apache/commons/math3/ode/SecondaryEquations;
    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$300(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/SecondaryEquations;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    iget-object v5, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryStateDot:[D

    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->state:[D
    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$100(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object v6

    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->stateDot:[D
    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$200(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object v7

    move-wide v2, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/ode/SecondaryEquations;->computeDerivatives(D[D[D[D[D)V

    .line 125
    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->mapper:Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->stateDot:[D
    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$200(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    goto :goto_0

    .line 128
    .end local v0    # "component":Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryStateDot:[D

    invoke-virtual {v1, v2, p4}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 130
    return-void
.end method

.method public getCompleteState()[D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result v3

    new-array v0, v3, [D

    .line 292
    .local v0, "completeState":[D
    iget-object v3, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object v4, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    invoke-virtual {v3, v4, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 293
    iget-object v3, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    .line 294
    .local v1, "component":Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;
    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->mapper:Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v3

    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->state:[D
    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$100(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    goto :goto_0

    .line 297
    .end local v1    # "component":Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;
    :cond_0
    return-object v0
.end method

.method public getPrimary()Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primary:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    return-object v0
.end method

.method public getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    return-object v0
.end method

.method public getPrimaryState()[D
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getPrimaryStateDot()[D
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryStateDot:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;
    .locals 3

    .prologue
    .line 167
    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 168
    .local v1, "mappers":[Lorg/apache/commons/math3/ode/EquationsMapper;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 169
    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->mapper:Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-static {v2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v2

    aput-object v2, v1, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return-object v1
.end method

.method public getSecondaryState(I)[D
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->state:[D
    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$100(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object v0

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getSecondaryStateDot(I)[D
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->stateDot:[D
    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$200(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object v0

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getTime()D
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->time:D

    return-wide v0
.end method

.method public getTotalDimension()I
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v1

    .line 102
    :goto_0
    return v1

    .line 101
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->mapper:Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    .line 102
    .local v0, "lastMapper":Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->getFirstIndex()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public setCompleteState([D)V
    .locals 5
    .param p1, "completeState"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 269
    array-length v2, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 270
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 274
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 275
    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    .line 276
    .local v0, "component":Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;
    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->mapper:Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v2

    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->state:[D
    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$100(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    goto :goto_0

    .line 279
    .end local v0    # "component":Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;
    :cond_1
    return-void
.end method

.method public setPrimaryState([D)V
    .locals 3
    .param p1, "primaryState"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 196
    array-length v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 197
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    return-void
.end method

.method public setSecondaryState(I[D)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "secondaryState"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 230
    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    # getter for: Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->state:[D
    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$100(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object v0

    .line 233
    .local v0, "localArray":[D
    array-length v1, p2

    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 234
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p2

    array-length v3, v0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 238
    :cond_0
    array-length v1, p2

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    return-void
.end method

.method public setTime(D)V
    .locals 1
    .param p1, "time"    # D

    .prologue
    .line 178
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->time:D

    .line 179
    return-void
.end method
