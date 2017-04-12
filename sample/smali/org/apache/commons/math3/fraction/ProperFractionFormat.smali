.class public Lorg/apache/commons/math3/fraction/ProperFractionFormat;
.super Lorg/apache/commons/math3/fraction/FractionFormat;
.source "ProperFractionFormat.java"


# static fields
.field private static final serialVersionUID:J = 0xa8f621a0a61f4ddL


# instance fields
.field private wholeFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;-><init>(Ljava/text/NumberFormat;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 2
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 61
    invoke-virtual {p1}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    invoke-virtual {p1}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/NumberFormat;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;-><init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "wholeFormat"    # Ljava/text/NumberFormat;
    .param p2, "numeratorFormat"    # Ljava/text/NumberFormat;
    .param p3, "denominatorFormat"    # Ljava/text/NumberFormat;

    .prologue
    .line 75
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/fraction/FractionFormat;-><init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V

    .line 76
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->setWholeFormat(Ljava/text/NumberFormat;)V

    .line 77
    return-void
.end method


# virtual methods
.method public format(Lorg/apache/commons/math3/fraction/Fraction;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/Fraction;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 94
    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 96
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/Fraction;->getNumerator()I

    move-result v1

    .line 97
    .local v1, "num":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/Fraction;->getDenominator()I

    move-result v0

    .line 98
    .local v0, "den":I
    div-int v2, v1, v0

    .line 99
    .local v2, "whole":I
    rem-int/2addr v1, v0

    .line 101
    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getWholeFormat()Ljava/text/NumberFormat;

    move-result-object v3

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 103
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    invoke-static {v1}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v1

    .line 106
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getNumeratorFormat()Ljava/text/NumberFormat;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 107
    const-string v3, " / "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getDenominatorFormat()Ljava/text/NumberFormat;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 110
    return-object p2
.end method

.method public getWholeFormat()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->wholeFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/text/ParsePosition;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 13
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 136
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/fraction/FractionFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v6

    .line 137
    .local v6, "ret":Lorg/apache/commons/math3/fraction/Fraction;
    if-eqz v6, :cond_0

    .line 217
    .end local v6    # "ret":Lorg/apache/commons/math3/fraction/Fraction;
    :goto_0
    return-object v6

    .line 141
    .restart local v6    # "ret":Lorg/apache/commons/math3/fraction/Fraction;
    :cond_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 144
    .local v3, "initialIndex":I
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 147
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getWholeFormat()Ljava/text/NumberFormat;

    move-result-object v11

    invoke-virtual {v11, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v9

    .line 148
    .local v9, "whole":Ljava/lang/Number;
    if-nez v9, :cond_1

    .line 152
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v6, v10

    .line 153
    goto :goto_0

    .line 157
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 160
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getNumeratorFormat()Ljava/text/NumberFormat;

    move-result-object v11

    invoke-virtual {v11, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v5

    .line 161
    .local v5, "num":Ljava/lang/Number;
    if-nez v5, :cond_2

    .line 165
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v6, v10

    .line 166
    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-gez v11, :cond_3

    .line 171
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v6, v10

    .line 172
    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 177
    .local v7, "startIndex":I
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->parseNextCharacter(Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result v0

    .line 178
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 190
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 191
    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v6, v10

    .line 192
    goto :goto_0

    .line 182
    :sswitch_0
    new-instance v6, Lorg/apache/commons/math3/fraction/Fraction;

    .end local v6    # "ret":Lorg/apache/commons/math3/fraction/Fraction;
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-direct {v6, v10, v12}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    goto :goto_0

    .line 196
    .restart local v6    # "ret":Lorg/apache/commons/math3/fraction/Fraction;
    :sswitch_1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 199
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getDenominatorFormat()Ljava/text/NumberFormat;

    move-result-object v11

    invoke-virtual {v11, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    .line 200
    .local v2, "den":Ljava/lang/Number;
    if-nez v2, :cond_4

    .line 204
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v6, v10

    .line 205
    goto :goto_0

    .line 208
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-gez v11, :cond_5

    .line 210
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v6, v10

    .line 211
    goto :goto_0

    .line 214
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 215
    .local v8, "w":I
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 216
    .local v4, "n":I
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 217
    .local v1, "d":I
    new-instance v6, Lorg/apache/commons/math3/fraction/Fraction;

    .end local v6    # "ret":Lorg/apache/commons/math3/fraction/Fraction;
    invoke-static {v8}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v10

    mul-int/2addr v10, v1

    add-int/2addr v10, v4

    invoke-static {v12, v8}, Lorg/apache/commons/math3/util/MathUtils;->copySign(II)I

    move-result v11

    mul-int/2addr v10, v11

    invoke-direct {v6, v10, v1}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    goto/16 :goto_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method public setWholeFormat(Ljava/text/NumberFormat;)V
    .locals 3
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->WHOLE_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 229
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->wholeFormat:Ljava/text/NumberFormat;

    .line 230
    return-void
.end method
