.class public Lorg/apache/commons/math3/ode/UnknownParameterException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "UnknownParameterException.java"


# static fields
.field private static final serialVersionUID:J = 0x1330546L


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNKNOWN_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 42
    iput-object p1, p0, Lorg/apache/commons/math3/ode/UnknownParameterException;->name:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/commons/math3/ode/UnknownParameterException;->name:Ljava/lang/String;

    return-object v0
.end method
