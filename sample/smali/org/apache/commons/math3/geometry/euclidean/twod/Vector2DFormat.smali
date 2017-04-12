.class public Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;
.super Lorg/apache/commons/math3/geometry/VectorFormat;
.source "Vector2DFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/VectorFormat",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 54
    const-string v0, "{"

    const-string v1, "}"

    const-string v2, "; "

    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/VectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "separator"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/geometry/VectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "separator"    # Ljava/lang/String;
    .param p4, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/VectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 3
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 63
    const-string v0, "{"

    const-string v1, "}"

    const-string v2, "; "

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/apache/commons/math3/geometry/VectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 64
    return-void
.end method

.method public static getInstance()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;->getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 104
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;

    invoke-static {p0}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;-><init>(Ljava/text/NumberFormat;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/commons/math3/geometry/Vector;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            ")",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "vector":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 112
    .local v0, "p2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    aput-wide v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    aput-wide v4, v1, v2

    invoke-virtual {p0, p2, p3, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;->format(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;[D)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic parse(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathParseException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;->parse(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/text/ParsePosition;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathParseException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 119
    .local v0, "parsePosition":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    .line 120
    .local v1, "result":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_0

    .line 121
    new-instance v2, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    const-class v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v2, p1, v3, v4}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    throw v2

    .line 125
    :cond_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 131
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;->parseCoordinates(ILjava/lang/String;Ljava/text/ParsePosition;)[D

    move-result-object v0

    .line 132
    .local v0, "coordinates":[D
    if-nez v0, :cond_0

    .line 133
    const/4 v1, 0x0

    .line 135
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    goto :goto_0
.end method
