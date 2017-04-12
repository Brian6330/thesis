.class public Lorg/apache/commons/math3/util/CentralPivotingStrategy;
.super Ljava/lang/Object;
.source "CentralPivotingStrategy.java"

# interfaces
.implements Lorg/apache/commons/math3/util/PivotingStrategyInterface;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x13352a9L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pivotIndex([DII)I
    .locals 1
    .param p1, "work"    # [D
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 42
    sub-int v0, p3, p2

    invoke-static {p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DII)Z

    .line 43
    sub-int v0, p3, p2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    return v0
.end method
