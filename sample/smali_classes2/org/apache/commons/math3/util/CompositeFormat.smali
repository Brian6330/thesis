.class public Lorg/apache/commons/math3/util/CompositeFormat;
.super Ljava/lang/Object;
.source "CompositeFormat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDouble(DLjava/text/NumberFormat;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p0, "value"    # D
    .param p2, "format"    # Ljava/text/NumberFormat;
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;

    .prologue
    .line 209
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    const/16 v0, 0x28

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 212
    const/16 v0, 0x29

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 216
    :goto_0
    return-object p3

    .line 214
    :cond_1
    invoke-virtual {p2, p0, p1, p3, p4}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getDefaultNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 53
    invoke-static {p0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 54
    .local v0, "nf":Ljava/text/NumberFormat;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 55
    return-object v0
.end method

.method public static parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNextCharacter(Ljava/lang/String;Ljava/text/ParsePosition;)C

    .line 68
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 69
    return-void
.end method

.method public static parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z
    .locals 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 173
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 174
    .local v1, "startIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 175
    .local v0, "endIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    :cond_0
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 180
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 181
    const/4 v2, 0x0

    .line 186
    :goto_0
    return v2

    .line 185
    :cond_1
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 186
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static parseNextCharacter(Ljava/lang/String;Ljava/text/ParsePosition;)C
    .locals 6
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 81
    .local v1, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 82
    .local v3, "n":I
    const/4 v4, 0x0

    .line 84
    .local v4, "ret":C
    if-ge v1, v3, :cond_1

    .line 87
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 88
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    if-lt v2, v3, :cond_3

    .line 89
    :cond_0
    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 91
    if-ge v2, v3, :cond_2

    .line 92
    move v4, v0

    move v1, v2

    .line 96
    .end local v0    # "c":C
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_1
    :goto_1
    return v4

    .end local v1    # "index":I
    .restart local v0    # "c":C
    .restart local v2    # "index":I
    :cond_2
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_3
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0
.end method

.method private static parseNumber(Ljava/lang/String;DLjava/text/ParsePosition;)Ljava/lang/Number;
    .locals 7
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "value"    # D
    .param p3, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 110
    const/4 v2, 0x0

    .line 112
    .local v2, "ret":Ljava/lang/Number;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0x28

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 115
    const/16 v5, 0x29

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 118
    .local v1, "n":I
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 119
    .local v4, "startIndex":I
    add-int v0, v4, v1

    .line 120
    .local v0, "endIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 122
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 123
    invoke-virtual {p3, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 126
    :cond_0
    return-object v2
.end method

.method public static parseNumber(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 8
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/NumberFormat;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 141
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 142
    .local v4, "startIndex":I
    invoke-virtual {p1, p0, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    .line 143
    .local v2, "number":Ljava/lang/Number;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 146
    .local v0, "endIndex":I
    if-ne v4, v0, :cond_0

    .line 148
    const/4 v5, 0x3

    new-array v3, v5, [D

    fill-array-data v3, :array_0

    .line 151
    .local v3, "special":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 152
    aget-wide v6, v3, v1

    invoke-static {p0, v6, v7, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNumber(Ljava/lang/String;DLjava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    .line 153
    if-eqz v2, :cond_1

    .line 159
    .end local v1    # "i":I
    .end local v3    # "special":[D
    :cond_0
    return-object v2

    .line 151
    .restart local v1    # "i":I
    .restart local v3    # "special":[D
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :array_0
    .array-data 8
        0x7ff8000000000000L    # NaN
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
        -0x10000000000000L    # Double.NEGATIVE_INFINITY
    .end array-data
.end method
