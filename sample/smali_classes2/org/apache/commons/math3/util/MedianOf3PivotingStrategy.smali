.class public Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;
.super Ljava/lang/Object;
.source "MedianOf3PivotingStrategy.java"

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
    .locals 9
    .param p1, "work"    # [D
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 41
    sub-int v8, p3, p2

    invoke-static {p1, p2, v8}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DII)Z

    .line 42
    add-int/lit8 v0, p3, -0x1

    .line 43
    .local v0, "inclusiveEnd":I
    sub-int v8, v0, p2

    div-int/lit8 v8, v8, 0x2

    add-int v1, p2, v8

    .line 44
    .local v1, "middle":I
    aget-wide v2, p1, p2

    .line 45
    .local v2, "wBegin":D
    aget-wide v6, p1, v1

    .line 46
    .local v6, "wMiddle":D
    aget-wide v4, p1, v0

    .line 48
    .local v4, "wEnd":D
    cmpg-double v8, v2, v6

    if-gez v8, :cond_2

    .line 49
    cmpg-double v8, v6, v4

    if-gez v8, :cond_1

    move v0, v1

    .line 58
    .end local v0    # "inclusiveEnd":I
    :cond_0
    :goto_0
    return v0

    .line 52
    .restart local v0    # "inclusiveEnd":I
    :cond_1
    cmpg-double v8, v2, v4

    if-ltz v8, :cond_0

    move v0, p2

    goto :goto_0

    .line 55
    :cond_2
    cmpg-double v8, v2, v4

    if-gez v8, :cond_3

    move v0, p2

    .line 56
    goto :goto_0

    .line 58
    :cond_3
    cmpg-double v8, v6, v4

    if-ltz v8, :cond_0

    move v0, v1

    goto :goto_0
.end method
