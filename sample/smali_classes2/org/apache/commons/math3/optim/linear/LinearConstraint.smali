.class public Lorg/apache/commons/math3/optim/linear/LinearConstraint;
.super Ljava/lang/Object;
.source "LinearConstraint.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xa9c857997f4136cL


# instance fields
.field private final transient coefficients:Lorg/apache/commons/math3/linear/RealVector;

.field private final relationship:Lorg/apache/commons/math3/optim/linear/Relationship;

.field private final value:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;DLorg/apache/commons/math3/optim/linear/Relationship;Lorg/apache/commons/math3/linear/RealVector;D)V
    .locals 2
    .param p1, "lhsCoefficients"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p2, "lhsConstant"    # D
    .param p4, "relationship"    # Lorg/apache/commons/math3/optim/linear/Relationship;
    .param p5, "rhsCoefficients"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p6, "rhsConstant"    # D

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-virtual {p1, p5}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    .line 154
    iput-object p4, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->relationship:Lorg/apache/commons/math3/optim/linear/Relationship;

    .line 155
    sub-double v0, p6, p2

    iput-wide v0, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->value:D

    .line 156
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optim/linear/Relationship;D)V
    .locals 1
    .param p1, "coefficients"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p2, "relationship"    # Lorg/apache/commons/math3/optim/linear/Relationship;
    .param p3, "value"    # D

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    .line 96
    iput-object p2, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->relationship:Lorg/apache/commons/math3/optim/linear/Relationship;

    .line 97
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->value:D

    .line 98
    return-void
.end method

.method public constructor <init>([DDLorg/apache/commons/math3/optim/linear/Relationship;[DD)V
    .locals 6
    .param p1, "lhsCoefficients"    # [D
    .param p2, "lhsConstant"    # D
    .param p4, "relationship"    # Lorg/apache/commons/math3/optim/linear/Relationship;
    .param p5, "rhsCoefficients"    # [D
    .param p6, "rhsConstant"    # D

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    array-length v2, p1

    new-array v1, v2, [D

    .line 123
    .local v1, "sub":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 124
    aget-wide v2, p1, v0

    aget-wide v4, p5, v0

    sub-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    iput-object v2, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    .line 127
    iput-object p4, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->relationship:Lorg/apache/commons/math3/optim/linear/Relationship;

    .line 128
    sub-double v2, p6, p2

    iput-wide v2, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->value:D

    .line 129
    return-void
.end method

.method public constructor <init>([DLorg/apache/commons/math3/optim/linear/Relationship;D)V
    .locals 1
    .param p1, "coefficients"    # [D
    .param p2, "relationship"    # Lorg/apache/commons/math3/optim/linear/Relationship;
    .param p3, "value"    # D

    .prologue
    .line 75
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/math3/optim/linear/LinearConstraint;-><init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optim/linear/Relationship;D)V

    .line 76
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
    .line 225
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 226
    const-string v0, "coefficients"

    invoke-static {p0, v0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->deserializeRealVector(Ljava/lang/Object;Ljava/lang/String;Ljava/io/ObjectInputStream;)V

    .line 227
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
    .line 213
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 214
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->serializeRealVector(Lorg/apache/commons/math3/linear/RealVector;Ljava/io/ObjectOutputStream;)V

    .line 215
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    if-ne p0, p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 190
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/optim/linear/LinearConstraint;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 191
    check-cast v0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;

    .line 192
    .local v0, "rhs":Lorg/apache/commons/math3/optim/linear/LinearConstraint;
    iget-object v3, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->relationship:Lorg/apache/commons/math3/optim/linear/Relationship;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->relationship:Lorg/apache/commons/math3/optim/linear/Relationship;

    if-ne v3, v4, :cond_2

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->value:D

    iget-wide v6, v0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->value:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/RealVector;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "rhs":Lorg/apache/commons/math3/optim/linear/LinearConstraint;
    :cond_3
    move v1, v2

    .line 196
    goto :goto_0
.end method

.method public getCoefficients()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    return-object v0
.end method

.method public getRelationship()Lorg/apache/commons/math3/optim/linear/Relationship;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->relationship:Lorg/apache/commons/math3/optim/linear/Relationship;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->relationship:Lorg/apache/commons/math3/optim/linear/Relationship;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/Relationship;->hashCode()I

    move-result v0

    iget-wide v2, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraint;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
