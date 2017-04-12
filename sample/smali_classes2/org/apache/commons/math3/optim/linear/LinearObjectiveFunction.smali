.class public Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;
.super Ljava/lang/Object;
.source "LinearObjectiveFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;
.implements Lorg/apache/commons/math3/optim/OptimizationData;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3ee43e318c38873aL


# instance fields
.field private final transient coefficients:Lorg/apache/commons/math3/linear/RealVector;

.field private final constantTerm:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;D)V
    .locals 0
    .param p1, "coefficients"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p2, "constantTerm"    # D

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    .line 67
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->constantTerm:D

    .line 68
    return-void
.end method

.method public constructor <init>([DD)V
    .locals 2
    .param p1, "coefficients"    # [D
    .param p2, "constantTerm"    # D

    .prologue
    .line 58
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;-><init>(Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 59
    return-void
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
    .line 145
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 146
    const-string v0, "coefficients"

    invoke-static {p0, v0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->deserializeRealVector(Ljava/lang/Object;Ljava/lang/String;Ljava/io/ObjectInputStream;)V

    .line 147
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
    .line 133
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 134
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->serializeRealVector(Lorg/apache/commons/math3/linear/RealVector;Ljava/io/ObjectOutputStream;)V

    .line 135
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    if-ne p0, p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 114
    check-cast v0, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    .line 115
    .local v0, "rhs":Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;
    iget-wide v4, p0, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->constantTerm:D

    iget-wide v6, v0, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->constantTerm:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/RealVector;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "rhs":Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;
    :cond_3
    move v1, v2

    .line 118
    goto :goto_0
.end method

.method public getCoefficients()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    return-object v0
.end method

.method public getConstantTerm()D
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->constantTerm:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->constantTerm:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public value(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 4
    .param p1, "point"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->constantTerm:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public value([D)D
    .locals 2
    .param p1, "point"    # [D

    .prologue
    .line 95
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;->value(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method
