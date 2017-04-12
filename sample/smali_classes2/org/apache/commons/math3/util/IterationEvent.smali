.class public Lorg/apache/commons/math3/util/IterationEvent;
.super Ljava/util/EventObject;
.source "IterationEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x1330240L


# instance fields
.field private final iterations:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "iterations"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 43
    iput p2, p0, Lorg/apache/commons/math3/util/IterationEvent;->iterations:I

    .line 44
    return-void
.end method


# virtual methods
.method public getIterations()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/apache/commons/math3/util/IterationEvent;->iterations:I

    return v0
.end method
