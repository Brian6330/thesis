.class Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;
.super Ljava/lang/Object;
.source "ParameterJacobianWrapper.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/ParameterJacobianProvider;


# instance fields
.field private final fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

.field private final hParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final pode:Lorg/apache/commons/math3/ode/ParameterizedODE;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;Lorg/apache/commons/math3/ode/ParameterizedODE;[Lorg/apache/commons/math3/ode/ParameterConfiguration;)V
    .locals 8
    .param p1, "fode"    # Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    .param p2, "pode"    # Lorg/apache/commons/math3/ode/ParameterizedODE;
    .param p3, "paramsAndSteps"    # [Lorg/apache/commons/math3/ode/ParameterConfiguration;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    .line 53
    iput-object p2, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    .line 54
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->hParam:Ljava/util/Map;

    .line 57
    move-object v0, p3

    .local v0, "arr$":[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 58
    .local v4, "param":Lorg/apache/commons/math3/ode/ParameterConfiguration;
    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p2, v3}, Lorg/apache/commons/math3/ode/ParameterizedODE;->isSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    iget-object v5, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->hParam:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getHP()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "param":Lorg/apache/commons/math3/ode/ParameterConfiguration;
    :cond_1
    return-void
.end method


# virtual methods
.method public computeParameterJacobian(D[D[DLjava/lang/String;[D)V
    .locals 17
    .param p1, "t"    # D
    .param p3, "y"    # [D
    .param p4, "yDot"    # [D
    .param p5, "paramName"    # Ljava/lang/String;
    .param p6, "dFdP"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 80
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v11}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v7

    .line 81
    .local v7, "n":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    move-object/from16 v0, p5

    invoke-interface {v11, v0}, Lorg/apache/commons/math3/ode/ParameterizedODE;->isSupported(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 82
    new-array v10, v7, [D

    .line 85
    .local v10, "tmpDot":[D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    move-object/from16 v0, p5

    invoke-interface {v11, v0}, Lorg/apache/commons/math3/ode/ParameterizedODE;->getParameter(Ljava/lang/String;)D

    move-result-wide v8

    .line 86
    .local v8, "p":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->hParam:Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 87
    .local v4, "hP":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    add-double v12, v8, v4

    move-object/from16 v0, p5

    invoke-interface {v11, v0, v12, v13}, Lorg/apache/commons/math3/ode/ParameterizedODE;->setParameter(Ljava/lang/String;D)V

    .line 88
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-interface {v11, v0, v1, v2, v10}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    .line 89
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 90
    aget-wide v12, v10, v6

    aget-wide v14, p4, v6

    sub-double/2addr v12, v14

    div-double/2addr v12, v4

    aput-wide v12, p6, v6

    .line 89
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 92
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    move-object/from16 v0, p5

    invoke-interface {v11, v0, v8, v9}, Lorg/apache/commons/math3/ode/ParameterizedODE;->setParameter(Ljava/lang/String;D)V

    .line 97
    .end local v4    # "hP":D
    .end local v6    # "i":I
    .end local v8    # "p":D
    .end local v10    # "tmpDot":[D
    :goto_1
    return-void

    .line 94
    :cond_1
    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p6

    invoke-static {v0, v11, v7, v12, v13}, Ljava/util/Arrays;->fill([DIID)V

    goto :goto_1
.end method

.method public getParametersNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/ParameterizedODE;->getParametersNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/ode/ParameterizedODE;->isSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
