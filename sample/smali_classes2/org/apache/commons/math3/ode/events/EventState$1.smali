.class Lorg/apache/commons/math3/ode/events/EventState$1;
.super Ljava/lang/Object;
.source "EventState.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ode/events/EventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/ode/events/EventState;

.field final synthetic val$interpolator:Lorg/apache/commons/math3/ode/sampling/StepInterpolator;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState$1;->this$0:Lorg/apache/commons/math3/ode/events/EventState;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/events/EventState$1;->val$interpolator:Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 5
    .param p1, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState$1;->val$interpolator:Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 242
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState$1;->this$0:Lorg/apache/commons/math3/ode/events/EventState;

    # getter for: Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;
    invoke-static {v1}, Lorg/apache/commons/math3/ode/events/EventState;->access$100(Lorg/apache/commons/math3/ode/events/EventState;)Lorg/apache/commons/math3/ode/events/EventHandler;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventState$1;->this$0:Lorg/apache/commons/math3/ode/events/EventState;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/events/EventState$1;->val$interpolator:Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    # invokes: Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/ode/events/EventState;->access$000(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "mcee":Lorg/apache/commons/math3/exception/MaxCountExceededException;
    new-instance v1, Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/MaxCountExceededException;)V

    throw v1
.end method
