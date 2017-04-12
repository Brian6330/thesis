.class public Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
.super Lorg/apache/commons/math3/exception/MathIllegalNumberException;
.source "NumberIsTooSmallException.java"


# static fields
.field private static final serialVersionUID:J = -0x54ab1889d01291a2L


# instance fields
.field private final boundIsAllowed:Z

.field private final min:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Z)V
    .locals 1
    .param p1, "wrong"    # Ljava/lang/Number;
    .param p2, "min"    # Ljava/lang/Number;
    .param p3, "boundIsAllowed"    # Z

    .prologue
    .line 49
    if-eqz p3, :cond_0

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    :goto_0
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 53
    return-void

    .line 49
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL_BOUND_EXCLUDED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V
    .locals 2
    .param p1, "specific"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "wrong"    # Ljava/lang/Number;
    .param p3, "min"    # Ljava/lang/Number;
    .param p4, "boundIsAllowed"    # Z

    .prologue
    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/exception/MathIllegalNumberException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 69
    iput-object p3, p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;->min:Ljava/lang/Number;

    .line 70
    iput-boolean p4, p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;->boundIsAllowed:Z

    .line 71
    return-void
.end method


# virtual methods
.method public getBoundIsAllowed()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;->boundIsAllowed:Z

    return v0
.end method

.method public getMin()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;->min:Ljava/lang/Number;

    return-object v0
.end method
