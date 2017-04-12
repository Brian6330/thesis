.class Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;
.super Ljava/lang/RuntimeException;
.source "EventState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/events/EventState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalMaxCountExceededException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1330545L


# instance fields
.field private final wrapped:Lorg/apache/commons/math3/exception/MaxCountExceededException;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/exception/MaxCountExceededException;)V
    .locals 0
    .param p1, "exception"    # Lorg/apache/commons/math3/exception/MaxCountExceededException;

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 407
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;->wrapped:Lorg/apache/commons/math3/exception/MaxCountExceededException;

    .line 408
    return-void
.end method


# virtual methods
.method public getException()Lorg/apache/commons/math3/exception/MaxCountExceededException;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;->wrapped:Lorg/apache/commons/math3/exception/MaxCountExceededException;

    return-object v0
.end method
