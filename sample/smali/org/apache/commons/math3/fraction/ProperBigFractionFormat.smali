.class public Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;
.super Lorg/apache/commons/math3/fraction/BigFractionFormat;
.source "ProperBigFractionFormat.java"


# static fields
.field private static final serialVersionUID:J = -0x57f2c751bf2b47f3L


# instance fields
.field private wholeFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;-><init>(Ljava/text/NumberFormat;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 2
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    invoke-virtual {p1}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/NumberFormat;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;-><init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "wholeFormat"    # Ljava/text/NumberFormat;
    .param p2, "numeratorFormat"    # Ljava/text/NumberFormat;
    .param p3, "denominatorFormat"    # Ljava/text/NumberFormat;

    .prologue
    .line 73
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/fraction/BigFractionFormat;-><init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V

    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;->setWholeFormat(Ljava/text/NumberFormat;)V

    .line 75
    return-void
.end method


# virtual methods
.method public format(Lorg/apache/commons/math3/fraction/BigFraction;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/BigFraction;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 92
    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 94
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/BigFraction;->getNumerator()Ljava/math/BigInteger;

    move-result-object v1

    .line 95
    .local v1, "num":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/BigFraction;->getDenominator()Ljava/math/BigInteger;

    move-result-object v0

    .line 96
    .local v0, "den":Ljava/math/BigInteger;
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 97
    .local v2, "whole":Ljava/math/BigInteger;
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 99
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;->getWholeFormat()Ljava/text/NumberFormat;

    move-result-object v3

    invoke-virtual {v3, v2, p2, p3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 101
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_0

    .line 103
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    .line 106
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;->getNumeratorFormat()Ljava/text/NumberFormat;

    move-result-object v3

    invoke-virtual {v3, v1, p2, p3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 107
    const-string v3, " / "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;->getDenominatorFormat()Ljava/text/NumberFormat;

    move-result-object v3

    invoke-virtual {v3, v0, p2, p3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 110
    return-object p2
.end method

.method public getWholeFormat()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;->wholeFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/text/ParsePosition;

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 10
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/4 v8, 0x0

    .line 136
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/fraction/BigFractionFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    .line 137
    .local v4, "ret":Lorg/apache/commons/math3/fraction/BigFraction;
    if-eqz v4, :cond_0

    .line 223
    .end local v4    # "ret":Lorg/apache/commons/math3/fraction/BigFraction;
    :goto_0
    return-object v4

    .line 141
    .restart local v4    # "ret":Lorg/apache/commons/math3/fraction/BigFraction;
    :cond_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 144
    .local v2, "initialIndex":I
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 147
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;->parseNextBigInteger(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/math/BigInteger;

    move-result-object v6

    .line 148
    .local v6, "whole":Ljava/math/BigInteger;
    if-nez v6, :cond_1

    .line 152
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v4, v8

    .line 153
    goto :goto_0

    .line 157
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 160
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;->parseNextBigInteger(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/math/BigInteger;

    move-result-object v3

    .line 161
    .local v3, "num":Ljava/math/BigInteger;
    if-nez v3, :cond_2

    .line 165
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v4, v8

    .line 166
    goto :goto_0

    .line 169
    :cond_2
    sget-object v9, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-gez v9, :cond_3

    .line 171
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v4, v8

    .line 172
    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    .line 177
    .local v5, "startIndex":I
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;->parseNextCharacter(Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result v0

    .line 178
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 190
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 191
    invoke-virtual {p2, v5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v4, v8

    .line 192
    goto :goto_0

    .line 182
    :sswitch_0
    new-instance v4, Lorg/apache/commons/math3/fraction/BigFraction;

    .end local v4    # "ret":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-direct {v4, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 196
    .restart local v4    # "ret":Lorg/apache/commons/math3/fraction/BigFraction;
    :sswitch_1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 199
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;->parseNextBigInteger(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/math/BigInteger;

    move-result-object v1

    .line 200
    .local v1, "den":Ljava/math/BigInteger;
    if-nez v1, :cond_4

    .line 204
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v4, v8

    .line 205
    goto :goto_0

    .line 208
    :cond_4
    sget-object v9, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-gez v9, :cond_5

    .line 210
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v4, v8

    .line 211
    goto :goto_0

    .line 214
    :cond_5
    sget-object v8, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_8

    const/4 v7, 0x1

    .line 215
    .local v7, "wholeIsNeg":Z
    :goto_1
    if-eqz v7, :cond_6

    .line 216
    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    .line 218
    :cond_6
    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 219
    if-eqz v7, :cond_7

    .line 220
    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    .line 223
    :cond_7
    new-instance v4, Lorg/apache/commons/math3/fraction/BigFraction;

    .end local v4    # "ret":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-direct {v4, v3, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    .line 214
    .end local v7    # "wholeIsNeg":Z
    .restart local v4    # "ret":Lorg/apache/commons/math3/fraction/BigFraction;
    :cond_8
    const/4 v7, 0x0

    goto :goto_1

    .line 178
    nop

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
    .line 233
    if-nez p1, :cond_0

    .line 234
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->WHOLE_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 236
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/fraction/ProperBigFractionFormat;->wholeFormat:Ljava/text/NumberFormat;

    .line 237
    return-void
.end method
