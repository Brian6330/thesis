.class Lorg/apache/commons/math3/ode/MultistepIntegrator$1;
.super Ljava/lang/Object;
.source "MultistepIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ode/MultistepIntegrator;->start(D[DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ode/MultistepIntegrator;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$1;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeDerivatives(D[D[D)V
    .locals 1
    .param p1, "t"    # D
    .param p3, "y"    # [D
    .param p4, "yDot"    # [D

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$1;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->computeDerivatives(D[D[D)V

    .line 244
    return-void
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$1;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result v0

    return v0
.end method
