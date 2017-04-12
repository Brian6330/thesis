.class public Lorg/apache/commons/math3/exception/MaxCountExceededException;
.super Lorg/apache/commons/math3/exception/MathIllegalStateException;
.source "MaxCountExceededException.java"


# static fields
.field private static final serialVersionUID:J = 0x3c1742cdad69f2e7L


# instance fields
.field private final max:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2
    .param p1, "max"    # Ljava/lang/Number;

    .prologue
    .line 41
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MAX_COUNT_EXCEEDED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "specific"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "max"    # Ljava/lang/Number;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    .line 53
    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 54
    iput-object p2, p0, Lorg/apache/commons/math3/exception/MaxCountExceededException;->max:Ljava/lang/Number;

    .line 55
    return-void
.end method


# virtual methods
.method public getMax()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MaxCountExceededException;->max:Ljava/lang/Number;

    return-object v0
.end method
