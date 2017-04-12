.class public Lorg/apache/commons/math3/linear/RealVectorFormat;
.super Ljava/lang/Object;
.source "RealVectorFormat.java"


# static fields
.field private static final DEFAULT_PREFIX:Ljava/lang/String; = "{"

.field private static final DEFAULT_SEPARATOR:Ljava/lang/String; = "; "

.field private static final DEFAULT_SUFFIX:Ljava/lang/String; = "}"


# instance fields
.field private final format:Ljava/text/NumberFormat;

.field private final prefix:Ljava/lang/String;

.field private final separator:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;

.field private final trimmedPrefix:Ljava/lang/String;

.field private final trimmedSeparator:Ljava/lang/String;

.field private final trimmedSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 72
    const-string v0, "{"

    const-string v1, "}"

    const-string v2, "; "

    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "separator"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/linear/RealVectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "separator"    # Ljava/lang/String;
    .param p4, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->prefix:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->suffix:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->separator:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->trimmedPrefix:Ljava/lang/String;

    .line 110
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->trimmedSuffix:Ljava/lang/String;

    .line 111
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->trimmedSeparator:Ljava/lang/String;

    .line 112
    iput-object p4, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->format:Ljava/text/NumberFormat;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 3
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 81
    const-string v0, "{"

    const-string v1, "}"

    const-string v2, "; "

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/apache/commons/math3/linear/RealVectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 82
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Ljava/text/NumberFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/apache/commons/math3/linear/RealVectorFormat;
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/RealVectorFormat;->getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/linear/RealVectorFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/linear/RealVectorFormat;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 170
    new-instance v0, Lorg/apache/commons/math3/linear/RealVectorFormat;

    invoke-static {p0}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/RealVectorFormat;-><init>(Ljava/text/NumberFormat;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/commons/math3/linear/RealVector;)Ljava/lang/String;
    .locals 3
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/RealVectorFormat;->format(Lorg/apache/commons/math3/linear/RealVector;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Lorg/apache/commons/math3/linear/RealVector;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "vector"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 195
    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 198
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 202
    if-lez v0, :cond_0

    .line 203
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->separator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->format:Ljava/text/NumberFormat;

    invoke-static {v2, v3, v1, p2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->formatDouble(DLjava/text/NumberFormat;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->suffix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    return-object p2
.end method

.method public getFormat()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->format:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->separator:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 224
    .local v0, "parsePosition":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/RealVectorFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v1

    .line 225
    .local v1, "result":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_0

    .line 226
    new-instance v2, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    const-class v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, p1, v3, v4}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    throw v2

    .line 230
    :cond_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 8
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/4 v6, 0x0

    .line 241
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 244
    .local v4, "initialIndex":I
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 245
    iget-object v7, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->trimmedPrefix:Ljava/lang/String;

    invoke-static {p1, v7, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-object v6

    .line 250
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    const/4 v5, 0x1

    .local v5, "loop":Z
    :cond_2
    :goto_1
    if-eqz v5, :cond_5

    .line 253
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 254
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 255
    iget-object v7, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->trimmedSeparator:Ljava/lang/String;

    invoke-static {p1, v7, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 256
    const/4 v5, 0x0

    .line 260
    :cond_3
    if-eqz v5, :cond_2

    .line 261
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 262
    iget-object v7, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->format:Ljava/text/NumberFormat;

    invoke-static {p1, v7, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNumber(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    .line 263
    .local v0, "component":Ljava/lang/Number;
    if-eqz v0, :cond_4

    .line 264
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 268
    :cond_4
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0

    .line 276
    .end local v0    # "component":Ljava/lang/Number;
    :cond_5
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 277
    iget-object v7, p0, Lorg/apache/commons/math3/linear/RealVectorFormat;->trimmedSuffix:Ljava/lang/String;

    invoke-static {p1, v7, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 282
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v2, v6, [D

    .line 283
    .local v2, "data":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v6, v2

    if-ge v3, v6, :cond_6

    .line 284
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v2, v3

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 286
    :cond_6
    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    goto :goto_0
.end method
