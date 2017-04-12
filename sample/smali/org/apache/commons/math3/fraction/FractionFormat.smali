.class public Lorg/apache/commons/math3/fraction/FractionFormat;
.super Lorg/apache/commons/math3/fraction/AbstractFormat;
.source "FractionFormat.java"


# static fields
.field private static final serialVersionUID:J = 0x29c0e46fb61745c3L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/commons/math3/fraction/AbstractFormat;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fraction/AbstractFormat;-><init>(Ljava/text/NumberFormat;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "numeratorFormat"    # Ljava/text/NumberFormat;
    .param p2, "denominatorFormat"    # Ljava/text/NumberFormat;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/fraction/AbstractFormat;-><init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V

    .line 66
    return-void
.end method

.method public static formatFraction(Lorg/apache/commons/math3/fraction/Fraction;)Ljava/lang/String;
    .locals 1
    .param p0, "f"    # Lorg/apache/commons/math3/fraction/Fraction;

    .prologue
    .line 85
    invoke-static {}, Lorg/apache/commons/math3/fraction/FractionFormat;->getImproperInstance()Lorg/apache/commons/math3/fraction/FractionFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/fraction/FractionFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Ljava/text/NumberFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method protected static getDefaultNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/fraction/FractionFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getImproperInstance()Lorg/apache/commons/math3/fraction/FractionFormat;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/fraction/FractionFormat;->getImproperInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/fraction/FractionFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getImproperInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/fraction/FractionFormat;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 102
    new-instance v0, Lorg/apache/commons/math3/fraction/FractionFormat;

    invoke-static {p0}, Lorg/apache/commons/math3/fraction/FractionFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/fraction/FractionFormat;-><init>(Ljava/text/NumberFormat;)V

    return-object v0
.end method

.method public static getProperInstance()Lorg/apache/commons/math3/fraction/FractionFormat;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/fraction/FractionFormat;->getProperInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/fraction/FractionFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getProperInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/fraction/FractionFormat;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 119
    new-instance v0, Lorg/apache/commons/math3/fraction/ProperFractionFormat;

    invoke-static {p0}, Lorg/apache/commons/math3/fraction/FractionFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;-><init>(Ljava/text/NumberFormat;)V

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, "ret":Ljava/lang/StringBuffer;
    instance-of v1, p1, Lorg/apache/commons/math3/fraction/Fraction;

    if-eqz v1, :cond_0

    .line 177
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/fraction/FractionFormat;->format(Lorg/apache/commons/math3/fraction/Fraction;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 178
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 179
    new-instance v1, Lorg/apache/commons/math3/fraction/Fraction;

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(D)V

    invoke-virtual {p0, v1, p2, p3}, Lorg/apache/commons/math3/fraction/FractionFormat;->format(Lorg/apache/commons/math3/fraction/Fraction;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 181
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_FORMAT_OBJECT_TO_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public format(Lorg/apache/commons/math3/fraction/Fraction;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/Fraction;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 146
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 148
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/FractionFormat;->getNumeratorFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/Fraction;->getNumerator()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 149
    const-string v0, " / "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/FractionFormat;->getDenominatorFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/Fraction;->getDenominator()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 153
    return-object p2
.end method

.method public bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/FractionFormat;->parse(Ljava/lang/String;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/text/ParsePosition;

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fraction/FractionFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathParseException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 197
    .local v0, "parsePosition":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/fraction/FractionFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v1

    .line 198
    .local v1, "result":Lorg/apache/commons/math3/fraction/Fraction;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_0

    .line 199
    new-instance v2, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    const-class v4, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v2, p1, v3, v4}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    throw v2

    .line 201
    :cond_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 8
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/4 v5, 0x0

    .line 213
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 216
    .local v2, "initialIndex":I
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/FractionFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 219
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/FractionFormat;->getNumeratorFormat()Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v3

    .line 220
    .local v3, "num":Ljava/lang/Number;
    if-nez v3, :cond_0

    .line 224
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 261
    :goto_0
    return-object v5

    .line 229
    :cond_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 230
    .local v4, "startIndex":I
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/FractionFormat;->parseNextCharacter(Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result v0

    .line 231
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 243
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 244
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_0

    .line 235
    :sswitch_0
    new-instance v5, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    goto :goto_0

    .line 249
    :sswitch_1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/FractionFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 252
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/FractionFormat;->getDenominatorFormat()Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 253
    .local v1, "den":Ljava/lang/Number;
    if-nez v1, :cond_1

    .line 257
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0

    .line 261
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    goto :goto_0

    .line 231
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method
