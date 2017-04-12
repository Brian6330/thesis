.class Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator$1;
.super Ljava/lang/Object;
.source "IterativeLegendreGaussIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->stage(I)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator$1;->this$0:Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 3
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator$1;->this$0:Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->computeObjectiveValue(D)D

    move-result-wide v0

    return-wide v0
.end method
