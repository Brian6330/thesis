.class Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$1;
.super Ljava/lang/Object;
.source "UnivariatePeriodicInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;

.field final synthetic val$f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field final synthetic val$offset:D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;Lorg/apache/commons/math3/analysis/UnivariateFunction;D)V
    .locals 1

    .prologue
    .line 117
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$1;->this$0:Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$1;->val$f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$1;->val$offset:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 7
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$1;->val$f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$1;->this$0:Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;

    # getter for: Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D
    invoke-static {v0}, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->access$000(Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$1;->val$offset:D

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide v0

    invoke-interface {v6, v0, v1}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    return-wide v0
.end method
