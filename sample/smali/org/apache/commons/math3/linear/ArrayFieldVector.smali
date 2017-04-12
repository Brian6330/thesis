.class public Lorg/apache/commons/math3/linear/ArrayFieldVector;
.super Ljava/lang/Object;
.source "ArrayFieldVector.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/FieldVector;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/linear/FieldVector",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6a23d1792027468aL


# instance fields
.field private data:[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p2, "preset":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-interface {p2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;I)V

    .line 84
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-static {v0, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;I)V
    .locals 1
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 73
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "d":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 122
    invoke-virtual {p2}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 123
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;II)V
    .locals 4
    .param p3, "pos"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;[TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "d":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 213
    array-length v0, p2

    add-int v1, p3, p4

    if-ge v0, v1, :cond_0

    .line 214
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    add-int v1, p3, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 216
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 217
    invoke-static {p1, p4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 218
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V
    .locals 1
    .param p3, "copyArray"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;[TT;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "d":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 174
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 175
    if-eqz p3, :cond_0

    invoke-virtual {p2}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 176
    return-void

    :cond_0
    move-object v0, p2

    .line 175
    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;[TT;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "v1":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .local p3, "v2":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v3, 0x0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 417
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 418
    array-length v0, p2

    array-length v1, p3

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 421
    :cond_0
    array-length v0, p2

    array-length v1, p3

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 422
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, p2

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, p2

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 425
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 247
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 248
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;Lorg/apache/commons/math3/linear/ArrayFieldVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v1":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p2, "v2":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/FieldVector;Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 278
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;Z)V
    .locals 1
    .param p2, "deep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 261
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 262
    if-eqz p2, :cond_0

    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 263
    return-void

    .line 262
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v1":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p2, "v2":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/FieldVector;[Lorg/apache/commons/math3/FieldElement;)V

    .line 316
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/FieldVector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 230
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 231
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 233
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    aput-object v2, v1, v0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/FieldVector;Lorg/apache/commons/math3/linear/FieldVector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v1":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    .local p2, "v2":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    const/4 v5, 0x0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 292
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 293
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 294
    instance-of v2, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    if-eqz v2, :cond_0

    check-cast p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    .end local p1    # "v1":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 296
    .local v0, "v1Data":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :goto_0
    instance-of v2, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    if-eqz v2, :cond_1

    check-cast p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    .end local p2    # "v2":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    iget-object v1, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 298
    .local v1, "v2Data":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 299
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v0

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    return-void

    .line 294
    .end local v0    # "v1Data":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v1    # "v2Data":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local p1    # "v1":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    .restart local p2    # "v2":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    goto :goto_0

    .line 296
    .end local p1    # "v1":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    .restart local v0    # "v1Data":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_1
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    goto :goto_1
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/FieldVector;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v1":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    .local p2, "v2":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v4, 0x0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 330
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 331
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 332
    instance-of v1, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    .end local p1    # "v1":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 334
    .local v0, "v1Data":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    array-length v2, v0

    array-length v3, p2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 335
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v0

    array-length v3, p2

    invoke-static {p2, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    return-void

    .line 332
    .end local v0    # "v1Data":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local p1    # "v1":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v3, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-interface {v1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 104
    invoke-virtual {p1}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;II)V
    .locals 4
    .param p2, "pos"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v2, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 191
    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 192
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    add-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 194
    :cond_0
    aget-object v0, p1, v2

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 195
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v0, p3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 196
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;Lorg/apache/commons/math3/linear/ArrayFieldVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v1":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .local p2, "v2":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>([Lorg/apache/commons/math3/FieldElement;Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 352
    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;Lorg/apache/commons/math3/linear/FieldVector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v1":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .local p2, "v2":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    const/4 v4, 0x0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 366
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 367
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 368
    instance-of v1, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    if-eqz v1, :cond_0

    check-cast p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    .end local p2    # "v2":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    iget-object v0, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 370
    .local v0, "v2Data":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    array-length v2, p1

    array-length v3, v0

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 371
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, p1

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, p1

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    return-void

    .line 368
    .end local v0    # "v2Data":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .restart local p2    # "v2":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :cond_0
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;Z)V
    .locals 3
    .param p2, "copyArray"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 149
    array-length v0, p1

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 152
    :cond_0
    aget-object v0, p1, v2

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 153
    if-eqz p2, :cond_1

    invoke-virtual {p1}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 154
    return-void

    :cond_1
    move-object v0, p1

    .line 153
    goto :goto_0
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v1":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .local p2, "v2":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v3, 0x0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 393
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 394
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 397
    :cond_0
    aget-object v0, p1, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 398
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 401
    return-void
.end method

.method private checkIndex(I)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 1115
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1116
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 1119
    :cond_1
    return-void
.end method

.method private checkIndices(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    const/4 v5, 0x0

    .line 1132
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v0

    .line 1133
    .local v0, "dim":I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 1134
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 1137
    :cond_1
    if-ltz p2, :cond_2

    if-lt p2, v0, :cond_3

    .line 1138
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 1141
    :cond_3
    if-ge p2, p1, :cond_4

    .line 1142
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_ROW_AFTER_FINAL_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 1145
    :cond_4
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v2, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 462
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 463
    .local v1, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 464
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v1, v0

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v2
.end method

.method public add(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-object v4, v0

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->add(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 448
    :goto_0
    return-object v4

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 444
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v5, v5

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/FieldElement;

    .line 445
    .local v3, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 446
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    aput-object v4, v3, v2

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 448
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v6}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    goto :goto_0
.end method

.method public append(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 796
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;Lorg/apache/commons/math3/linear/ArrayFieldVector;)V

    return-object v0
.end method

.method public append(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "in":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v3, 0x0

    .line 801
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 802
    .local v0, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    aput-object p1, v0, v1

    .line 804
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v1
.end method

.method public append(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 784
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->append(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 786
    :goto_0
    return-object v2

    .line 785
    :catch_0
    move-exception v1

    .line 786
    .local v1, "cce":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    new-instance v3, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-direct {v3, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/FieldVector;)V

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;Lorg/apache/commons/math3/linear/ArrayFieldVector;)V

    goto :goto_0
.end method

.method protected checkVectorDimensions(I)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 894
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    if-eq v0, p1, :cond_0

    .line 895
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 897
    :cond_0
    return-void
.end method

.method protected checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 882
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 883
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/FieldVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;Z)V

    return-object v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 711
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v2, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 712
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    .line 713
    .local v0, "dot":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 714
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dot":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    .line 713
    .restart local v0    # "dot":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 716
    :cond_0
    return-object v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/FieldElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 691
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-object v4, v0

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->dotProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/FieldElement;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 698
    :cond_0
    return-object v2

    .line 692
    :catch_0
    move-exception v1

    .line 693
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 694
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    .line 695
    .local v2, "dot":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 696
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v3

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "dot":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    .line 695
    .restart local v2    # "dot":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    const/4 v7, 0x0

    .line 661
    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 662
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    .line 663
    .local v2, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 665
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    iget-object v4, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v2, v1
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Lorg/apache/commons/math3/exception/MathArithmeticException;
    new-instance v3, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 670
    .end local v0    # "e":Lorg/apache/commons/math3/exception/MathArithmeticException;
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v3, v4, v2, v7}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v3
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    const/4 v9, 0x0

    .line 636
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-object v5, v0

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->ebeDivide(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 647
    :goto_0
    return-object v5

    .line 637
    :catch_0
    move-exception v1

    .line 638
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 639
    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v6, v6

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/FieldElement;

    .line 640
    .local v4, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v5, v5

    if-ge v3, v5, :cond_0

    .line 642
    :try_start_1
    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v3

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    aput-object v5, v4, v3
    :try_end_1
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    .line 640
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 643
    :catch_1
    move-exception v2

    .line 644
    .local v2, "e":Lorg/apache/commons/math3/exception/MathArithmeticException;
    new-instance v5, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 647
    .end local v2    # "e":Lorg/apache/commons/math3/exception/MathArithmeticException;
    :cond_0
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v5, v6, v4, v9}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    goto :goto_0
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 624
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v2, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 625
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 626
    .local v1, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 627
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v1, v0

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 629
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v2
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 604
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-object v4, v0

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->ebeMultiply(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 611
    :goto_0
    return-object v4

    .line 605
    :catch_0
    move-exception v1

    .line 606
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 607
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v5, v5

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/FieldElement;

    .line 608
    .local v3, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 609
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    aput-object v4, v3, v2

    .line 608
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 611
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v6}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1068
    if-ne p0, p1, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return v4

    .line 1071
    :cond_1
    if-nez p1, :cond_2

    move v4, v5

    .line 1072
    goto :goto_0

    .line 1077
    :cond_2
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/FieldVector;

    move-object v3, v0

    .line 1078
    .local v3, "rhs":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v6, v6

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v7

    if-eq v6, v7, :cond_3

    move v4, v5

    .line 1079
    goto :goto_0

    .line 1082
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 1083
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v2

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    .line 1084
    goto :goto_0

    .line 1082
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1088
    .end local v2    # "i":I
    .end local v3    # "rhs":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/ClassCastException;
    move v4, v5

    .line 1090
    goto :goto_0
.end method

.method public getData()[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 675
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method public getDataRef()[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 684
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 778
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    return v0
.end method

.method public getEntry(I)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    return-object v0
.end method

.method public getSubVector(II)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .param p1, "index"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 810
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    if-gez p2, :cond_0

    .line 811
    new-instance v2, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v2

    .line 813
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v1, v2, p2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;I)V

    .line 815
    .local v1, "out":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v3, v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    :goto_0
    return-object v1

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    .line 818
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 1101
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    const/16 v2, 0xdd6

    .line 1102
    .local v2, "h":I
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .local v1, "arr$":[Lorg/apache/commons/math3/FieldElement;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 1103
    .local v0, "a":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v2, v5

    .line 1102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1105
    .end local v0    # "a":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_0
    return v2
.end method

.method public mapAdd(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 504
    .local v1, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 505
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v1, v0

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v2
.end method

.method public mapAddToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 513
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    aput-object v1, v2, v0

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_0
    return-object p0
.end method

.method public mapDivide(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 555
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 556
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 557
    .local v1, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 558
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v1, v0

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v2
.end method

.method public mapDivideToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 566
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 567
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 568
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    aput-object v1, v2, v0

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    :cond_0
    return-object p0
.end method

.method public mapInv()Lorg/apache/commons/math3/linear/FieldVector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    const/4 v8, 0x0

    .line 575
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v5, v5

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/FieldElement;

    .line 576
    .local v3, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    .line 577
    .local v2, "one":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 579
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v1

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    aput-object v4, v3, v1
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Lorg/apache/commons/math3/exception/MathArithmeticException;
    new-instance v4, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 584
    .end local v0    # "e":Lorg/apache/commons/math3/exception/MathArithmeticException;
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v4, v5, v3, v8}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v4
.end method

.method public mapInvToSelf()Lorg/apache/commons/math3/linear/FieldVector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 589
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    .line 590
    .local v2, "one":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 592
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v4, v1
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Lorg/apache/commons/math3/exception/MathArithmeticException;
    new-instance v3, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 597
    .end local v0    # "e":Lorg/apache/commons/math3/exception/MathArithmeticException;
    :cond_0
    return-object p0
.end method

.method public mapMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 537
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 538
    .local v1, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 539
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v1, v0

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v2
.end method

.method public mapMultiplyToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 546
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 547
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    aput-object v1, v2, v0

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_0
    return-object p0
.end method

.method public mapSubtract(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 520
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 521
    .local v1, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 522
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v1, v0

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v2
.end method

.method public mapSubtractToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 530
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    aput-object v1, v2, v0

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    :cond_0
    return-object p0
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 760
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v5

    .line 761
    .local v2, "m":I
    iget-object v5, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v5

    .line 762
    .local v3, "n":I
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v4, v5, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 763
    .local v4, "out":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 764
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 765
    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v0

    iget-object v6, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v1

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v4, v0, v1, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 764
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 763
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    .end local v1    # "j":I
    :cond_1
    return-object v4
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 740
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-object v7, v0

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->outerProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/FieldMatrix;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 750
    :cond_0
    return-object v6

    .line 741
    :catch_0
    move-exception v1

    .line 742
    .local v1, "cce":Ljava/lang/ClassCastException;
    iget-object v7, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v7

    .line 743
    .local v4, "m":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v5

    .line 744
    .local v5, "n":I
    new-instance v6, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v7, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v6, v7, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 745
    .local v6, "out":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 746
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 747
    iget-object v7, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v2

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v6, v2, v3, v7}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 746
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 745
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public projection(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 734
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->dotProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->dotProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->mapMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    return-object v0
.end method

.method public projection(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 722
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->dotProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-interface {p1, p1}, Lorg/apache/commons/math3/linear/FieldVector;->dotProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/FieldVector;->mapMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    return-object v0
.end method

.method public set(ILorg/apache/commons/math3/linear/ArrayFieldVector;)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 857
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p2, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    :try_start_0
    iget-object v1, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v4, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v4

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    :goto_0
    return-void

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    .line 860
    iget-object v1, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    goto :goto_0
.end method

.method public set(Lorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 866
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 867
    return-void
.end method

.method public setEntry(ILorg/apache/commons/math3/FieldElement;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 826
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p2, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aput-object p2, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_0
    return-void

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    goto :goto_0
.end method

.method public setSubVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 836
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p2, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-object v4, v0

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->set(ILorg/apache/commons/math3/linear/ArrayFieldVector;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v1

    .line 838
    .local v1, "cce":Ljava/lang/ClassCastException;
    move v3, p1

    .local v3, "i":I
    :goto_1
    :try_start_1
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v4

    add-int/2addr v4, p1

    if-ge v3, v4, :cond_0

    .line 839
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    sub-int v5, v3, p1

    invoke-interface {p2, v5}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    aput-object v5, v4, v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 838
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 842
    .end local v1    # "cce":Ljava/lang/ClassCastException;
    .end local v3    # "i":I
    :catch_1
    move-exception v2

    .line 843
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    .line 844
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v4

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    goto :goto_0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v2, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 494
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 495
    .local v1, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 496
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v1, v0

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v2
.end method

.method public subtract(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-object v4, v0

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->subtract(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 480
    :goto_0
    return-object v4

    .line 474
    :catch_0
    move-exception v1

    .line 475
    .local v1, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 476
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v5, v5

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/FieldElement;

    .line 477
    .local v3, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 478
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    aput-object v4, v3, v2

    .line 477
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 480
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v6}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    goto :goto_0
.end method

.method public toArray()[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 871
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 990
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v0

    .line 991
    .local v0, "dim":I
    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1, v0, v2, v3}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->start(III)V

    .line 992
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 993
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    .line 992
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 995
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    return-object v2
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 2
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor",
            "<TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 1014
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<TT;>;"
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndices(II)V

    .line 1015
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v1

    invoke-interface {p1, v1, p2, p3}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->start(III)V

    .line 1016
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 1017
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    .line 1016
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1019
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    return-object v1
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 910
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v0

    .line 911
    .local v0, "dim":I
    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1, v0, v2, v3}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->start(III)V

    .line 912
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 913
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)V

    .line 912
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 915
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    return-object v2
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 2
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor",
            "<TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 934
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<TT;>;"
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndices(II)V

    .line 935
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v1

    invoke-interface {p1, v1, p2, p3}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->start(III)V

    .line 936
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 937
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)V

    .line 936
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 939
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    return-object v1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1035
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor",
            "<TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 1056
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 955
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor",
            "<TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 976
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method
