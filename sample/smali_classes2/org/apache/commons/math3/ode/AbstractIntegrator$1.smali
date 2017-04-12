.class Lorg/apache/commons/math3/ode/AbstractIntegrator$1;
.super Ljava/lang/Object;
.source "AbstractIntegrator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ode/AbstractIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/commons/math3/ode/events/EventState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/ode/AbstractIntegrator;

.field final synthetic val$orderingSign:I


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ode/AbstractIntegrator;I)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator$1;->this$0:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    iput p2, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator$1;->val$orderingSign:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 329
    check-cast p1, Lorg/apache/commons/math3/ode/events/EventState;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/commons/math3/ode/events/EventState;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/AbstractIntegrator$1;->compare(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/events/EventState;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/events/EventState;)I
    .locals 6
    .param p1, "es0"    # Lorg/apache/commons/math3/ode/events/EventState;
    .param p2, "es1"    # Lorg/apache/commons/math3/ode/events/EventState;

    .prologue
    .line 333
    iget v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator$1;->val$orderingSign:I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/events/EventState;->getEventTime()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/events/EventState;->getEventTime()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
