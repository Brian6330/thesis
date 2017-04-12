.class public Lorg/apache/commons/math3/util/DefaultTransformer;
.super Ljava/lang/Object;
.source "DefaultTransformer.java"

# interfaces
.implements Lorg/apache/commons/math3/util/NumberTransformer;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x37c9b055d20f3a87L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 68
    if-ne p0, p1, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/apache/commons/math3/util/DefaultTransformer;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 78
    const v0, 0x17f5ed57

    return v0
.end method

.method public transform(Ljava/lang/Object;)D
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OBJECT_TRANSFORMATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 53
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 54
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 58
    :goto_0
    return-wide v2

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_TRANSFORM_TO_DOUBLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method
