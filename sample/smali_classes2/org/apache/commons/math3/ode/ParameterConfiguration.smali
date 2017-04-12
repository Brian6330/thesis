.class Lorg/apache/commons/math3/ode/ParameterConfiguration;
.super Ljava/lang/Object;
.source "ParameterConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1f30ca7c420ea6a3L


# instance fields
.field private hP:D

.field private parameterName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "hP"    # D

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/commons/math3/ode/ParameterConfiguration;->parameterName:Ljava/lang/String;

    .line 43
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/ParameterConfiguration;->hP:D

    .line 44
    return-void
.end method


# virtual methods
.method public getHP()D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/ParameterConfiguration;->hP:D

    return-wide v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ParameterConfiguration;->parameterName:Ljava/lang/String;

    return-object v0
.end method

.method public setHP(D)V
    .locals 1
    .param p1, "hParam"    # D

    .prologue
    .line 64
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/ParameterConfiguration;->hP:D

    .line 65
    return-void
.end method
