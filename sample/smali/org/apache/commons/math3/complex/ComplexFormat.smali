.class public Lorg/apache/commons/math3/complex/ComplexFormat;
.super Ljava/lang/Object;
.source "ComplexFormat.java"


# static fields
.field private static final DEFAULT_IMAGINARY_CHARACTER:Ljava/lang/String; = "i"


# instance fields
.field private final imaginaryCharacter:Ljava/lang/String;

.field private final imaginaryFormat:Ljava/text/NumberFormat;

.field private final realFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "i"

    iput-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryCharacter:Ljava/lang/String;

    .line 55
    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryFormat:Ljava/text/NumberFormat;

    .line 56
    iget-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryFormat:Ljava/text/NumberFormat;

    iput-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->realFormat:Ljava/text/NumberFormat;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "imaginaryCharacter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/complex/ComplexFormat;-><init>(Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "imaginaryCharacter"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/text/NumberFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p2}, Lorg/apache/commons/math3/complex/ComplexFormat;-><init>(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 3
    .param p1, "imaginaryCharacter"    # Ljava/lang/String;
    .param p2, "realFormat"    # Ljava/text/NumberFormat;
    .param p3, "imaginaryFormat"    # Ljava/text/NumberFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    if-nez p1, :cond_0

    .line 146
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0

    .line 151
    :cond_1
    if-nez p3, :cond_2

    .line 152
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->IMAGINARY_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 154
    :cond_2
    if-nez p2, :cond_3

    .line 155
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->REAL_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 158
    :cond_3
    iput-object p1, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryCharacter:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryFormat:Ljava/text/NumberFormat;

    .line 160
    iput-object p2, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->realFormat:Ljava/text/NumberFormat;

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 3
    .param p1, "format"    # Ljava/text/NumberFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->IMAGINARY_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 69
    :cond_0
    const-string v0, "i"

    iput-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryCharacter:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryFormat:Ljava/text/NumberFormat;

    .line 71
    iput-object p1, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->realFormat:Ljava/text/NumberFormat;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 3
    .param p1, "realFormat"    # Ljava/text/NumberFormat;
    .param p2, "imaginaryFormat"    # Ljava/text/NumberFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-nez p2, :cond_0

    .line 85
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->IMAGINARY_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 87
    :cond_0
    if-nez p1, :cond_1

    .line 88
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->REAL_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 91
    :cond_1
    const-string v0, "i"

    iput-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryCharacter:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryFormat:Ljava/text/NumberFormat;

    .line 93
    iput-object p1, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->realFormat:Ljava/text/NumberFormat;

    .line 94
    return-void
.end method

.method private formatImaginary(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "absIm"    # D
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v2, 0x0

    .line 240
    invoke-virtual {p4, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 241
    invoke-virtual {p4, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 243
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getImaginaryFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-static {p1, p2, v0, p3, p4}, Lorg/apache/commons/math3/util/CompositeFormat;->formatDouble(DLjava/text/NumberFormat;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 244
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 249
    :cond_0
    return-object p3
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Ljava/text/NumberFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/apache/commons/math3/complex/ComplexFormat;
    .locals 1

    .prologue
    .line 305
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/complex/ComplexFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/commons/math3/complex/ComplexFormat;
    .locals 2
    .param p0, "imaginaryCharacter"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-static {p1}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 331
    .local v0, "f":Ljava/text/NumberFormat;
    new-instance v1, Lorg/apache/commons/math3/complex/ComplexFormat;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/complex/ComplexFormat;-><init>(Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-object v1
.end method

.method public static getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/complex/ComplexFormat;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 314
    invoke-static {p0}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 315
    .local v0, "f":Ljava/text/NumberFormat;
    new-instance v1, Lorg/apache/commons/math3/complex/ComplexFormat;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/complex/ComplexFormat;-><init>(Ljava/text/NumberFormat;)V

    return-object v1
.end method


# virtual methods
.method public format(Ljava/lang/Double;)Ljava/lang/String;
    .locals 6
    .param p1, "c"    # Ljava/lang/Double;

    .prologue
    .line 189
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/text/FieldPosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/math3/complex/ComplexFormat;->format(Lorg/apache/commons/math3/complex/Complex;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Lorg/apache/commons/math3/complex/Complex;)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # Lorg/apache/commons/math3/complex/Complex;

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/complex/ComplexFormat;->format(Lorg/apache/commons/math3/complex/Complex;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 271
    .local v0, "ret":Ljava/lang/StringBuffer;
    instance-of v1, p1, Lorg/apache/commons/math3/complex/Complex;

    if-eqz v1, :cond_0

    .line 272
    check-cast p1, Lorg/apache/commons/math3/complex/Complex;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/complex/ComplexFormat;->format(Lorg/apache/commons/math3/complex/Complex;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    .line 273
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 274
    new-instance v1, Lorg/apache/commons/math3/complex/Complex;

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {p0, v1, p2, p3}, Lorg/apache/commons/math3/complex/ComplexFormat;->format(Lorg/apache/commons/math3/complex/Complex;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 277
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_FORMAT_INSTANCE_AS_COMPLEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public format(Lorg/apache/commons/math3/complex/Complex;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 8
    .param p1, "complex"    # Lorg/apache/commons/math3/complex/Complex;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    .line 203
    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 204
    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 207
    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v4

    .line 208
    .local v4, "re":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getRealFormat()Ljava/text/NumberFormat;

    move-result-object v3

    invoke-static {v4, v5, v3, p2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->formatDouble(DLjava/text/NumberFormat;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v0

    .line 213
    .local v0, "im":D
    cmpg-double v3, v0, v6

    if-gez v3, :cond_1

    .line 214
    const-string v3, " - "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    neg-double v6, v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v6, v7, v3, p3}, Lorg/apache/commons/math3/complex/ComplexFormat;->formatImaginary(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 216
    .local v2, "imAppendTo":Ljava/lang/StringBuffer;
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getImaginaryCharacter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    .end local v2    # "imAppendTo":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-object p2

    .line 218
    :cond_1
    cmpl-double v3, v0, v6

    if-gtz v3, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    :cond_2
    const-string v3, " + "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0, v1, v3, p3}, Lorg/apache/commons/math3/complex/ComplexFormat;->formatImaginary(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 221
    .restart local v2    # "imAppendTo":Ljava/lang/StringBuffer;
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getImaginaryCharacter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getImaginaryCharacter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryCharacter:Ljava/lang/String;

    return-object v0
.end method

.method public getImaginaryFormat()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getRealFormat()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->realFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/commons/math3/complex/Complex;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathParseException;
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 352
    .local v0, "parsePosition":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/complex/ComplexFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 353
    .local v1, "result":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_0

    .line 354
    new-instance v2, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    const-class v4, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v2, p1, v3, v4}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    throw v2

    .line 358
    :cond_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/complex/Complex;
    .locals 16
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 369
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 372
    .local v4, "initialIndex":I
    invoke-static/range {p1 .. p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getRealFormat()Ljava/text/NumberFormat;

    move-result-object v8

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v8, v1}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNumber(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v5

    .line 376
    .local v5, "re":Ljava/lang/Number;
    if-nez v5, :cond_0

    .line 379
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 380
    const/4 v8, 0x0

    .line 424
    :goto_0
    return-object v8

    .line 384
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 385
    .local v7, "startIndex":I
    invoke-static/range {p1 .. p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNextCharacter(Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result v2

    .line 386
    .local v2, "c":C
    const/4 v6, 0x0

    .line 387
    .local v6, "sign":I
    sparse-switch v2, :sswitch_data_0

    .line 402
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 403
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 404
    const/4 v8, 0x0

    goto :goto_0

    .line 391
    :sswitch_0
    new-instance v8, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    invoke-direct {v8, v10, v11, v12, v13}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    goto :goto_0

    .line 393
    :sswitch_1
    const/4 v6, -0x1

    .line 408
    :goto_1
    invoke-static/range {p1 .. p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getRealFormat()Ljava/text/NumberFormat;

    move-result-object v8

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v8, v1}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNumber(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v3

    .line 412
    .local v3, "im":Ljava/lang/Number;
    if-nez v3, :cond_1

    .line 415
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 416
    const/4 v8, 0x0

    goto :goto_0

    .line 396
    .end local v3    # "im":Ljava/lang/Number;
    :sswitch_2
    const/4 v6, 0x1

    .line 397
    goto :goto_1

    .line 420
    .restart local v3    # "im":Ljava/lang/Number;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getImaginaryCharacter()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v8, v1}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 421
    const/4 v8, 0x0

    goto :goto_0

    .line 424
    :cond_2
    new-instance v8, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    int-to-double v14, v6

    mul-double/2addr v12, v14

    invoke-direct {v8, v10, v11, v12, v13}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    goto :goto_0

    .line 387
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2b -> :sswitch_2
        0x2d -> :sswitch_1
    .end sparse-switch
.end method
