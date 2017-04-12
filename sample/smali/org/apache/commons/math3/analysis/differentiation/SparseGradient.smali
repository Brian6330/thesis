.class public Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
.super Ljava/lang/Object;
.source "SparseGradient.java"

# interfaces
.implements Lorg/apache/commons/math3/RealFieldElement;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<",
        "Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1332cd1L


# instance fields
.field private final derivatives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private value:D


# direct methods
.method private constructor <init>(DDLjava/util/Map;)V
    .locals 9
    .param p1, "value"    # D
    .param p3, "scale"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p5, "derivatives":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 80
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    .line 81
    if-eqz p5, :cond_0

    .line 82
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 83
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, p3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private constructor <init>(DLjava/util/Map;)V
    .locals 1
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p3, "derivatives":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    .line 65
    if-eqz p3, :cond_0

    .line 66
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static atan2(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 1
    .param p0, "y"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p1, "x"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->atan2(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public static createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 93
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    return-object v0
.end method

.method public static createVariable(ID)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 5
    .param p0, "idx"    # I
    .param p1, "value"    # D

    .prologue
    .line 102
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    return-object v0
.end method

.method public static hypot(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 1
    .param p0, "x"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p1, "y"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 448
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->hypot(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public static pow(DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8
    .param p0, "a"    # D
    .param p2, "x"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    const-wide/16 v4, 0x0

    .line 506
    cmpl-double v0, p0, v4

    if-nez v0, :cond_2

    .line 507
    iget-wide v0, p2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    .line 508
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {p2, v0, v1, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->compose(DD)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    .line 509
    :cond_0
    iget-wide v0, p2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    .line 510
    invoke-virtual {p2, v6, v7, v6, v7}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->compose(DD)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    goto :goto_0

    .line 512
    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    goto :goto_0

    .line 515
    :cond_2
    iget-wide v0, p2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    .line 516
    .local v2, "ax":D
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    iget-object v6, p2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic abs()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->abs()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public abs()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 4

    .prologue
    .line 334
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->negate()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p0

    .line 338
    .end local p0    # "this":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic acos()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->acos()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public acos()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 12

    .prologue
    .line 566
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-wide v8, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v10, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic acosh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->acosh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public acosh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 633
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acosh(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double/2addr v4, v6

    sub-double/2addr v4, v8

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    div-double v4, v8, v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic add(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 45
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public add(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 5
    .param p1, "c"    # D

    .prologue
    .line 180
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    add-double/2addr v2, p1

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    .line 181
    .local v0, "out":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 12
    .param p1, "a"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 139
    new-instance v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v8, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    add-double/2addr v6, v8

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct {v4, v6, v7, v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    .line 140
    .local v4, "out":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    iget-object v5, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 142
    .local v2, "id":I
    iget-object v5, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 143
    .local v3, "old":Ljava/lang/Double;
    if-nez v3, :cond_0

    .line 144
    iget-object v5, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_0
    iget-object v6, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 150
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v2    # "id":I
    .end local v3    # "old":Ljava/lang/Double;
    :cond_1
    return-object v4
.end method

.method public addInPlace(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)V
    .locals 12
    .param p1, "a"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 166
    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v6, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    add-double/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 167
    iget-object v4, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 168
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 169
    .local v2, "id":I
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 170
    .local v3, "old":Ljava/lang/Double;
    if-nez v3, :cond_0

    .line 171
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 173
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 176
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v2    # "id":I
    .end local v3    # "old":Ljava/lang/Double;
    :cond_1
    return-void
.end method

.method public bridge synthetic asin()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->asin()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public asin()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 571
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double/2addr v4, v6

    sub-double v4, v8, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    div-double v4, v8, v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic asinh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->asinh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public asinh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 638
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asinh(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    div-double v4, v8, v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic atan()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->atan()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public atan()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 576
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    div-double v4, v8, v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic atan2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 45
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->atan2(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public atan2(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8
    .param p1, "x"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    const-wide/16 v6, 0x0

    .line 583
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->sqrt()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v1

    .line 586
    .local v1, "r":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    iget-wide v4, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_0

    .line 589
    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->divide(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->atan()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    .line 600
    .local v0, "a":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    :goto_0
    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v6, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 602
    return-object v0

    .line 594
    .end local v0    # "a":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    :cond_0
    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->subtract(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->divide(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->atan()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v2

    .line 595
    .local v2, "tmp":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    iget-wide v4, v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_1

    const-wide v4, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_1
    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    .restart local v0    # "a":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    goto :goto_0

    .end local v0    # "a":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    :cond_1
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    goto :goto_1
.end method

.method public bridge synthetic atanh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->atanh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public atanh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 643
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atanh(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double/2addr v4, v6

    sub-double v4, v8, v4

    div-double v4, v8, v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic cbrt()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->cbrt()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public cbrt()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8

    .prologue
    .line 464
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cbrt(D)D

    move-result-wide v2

    .line 465
    .local v2, "cbrt":D
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v2

    mul-double/2addr v6, v2

    div-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic ceil()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->ceil()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public ceil()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 2

    .prologue
    .line 344
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public compose(DD)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7
    .param p1, "f0"    # D
    .param p3, "f1"    # D

    .prologue
    .line 679
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic copySign(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->copySign(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copySign(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->copySign(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public copySign(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 9
    .param p1, "sign"    # D

    .prologue
    const-wide/16 v6, 0x0

    .line 379
    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 380
    .local v0, "m":J
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 381
    .local v2, "s":J
    cmp-long v4, v0, v6

    if-ltz v4, :cond_0

    cmp-long v4, v2, v6

    if-gez v4, :cond_1

    :cond_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_2

    cmp-long v4, v2, v6

    if-gez v4, :cond_2

    .line 384
    .end local p0    # "this":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    :cond_1
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->negate()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p0

    goto :goto_0
.end method

.method public copySign(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8
    .param p1, "sign"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    const-wide/16 v6, 0x0

    .line 369
    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 370
    .local v0, "m":J
    iget-wide v4, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 371
    .local v2, "s":J
    cmp-long v4, v0, v6

    if-ltz v4, :cond_0

    cmp-long v4, v2, v6

    if-gez v4, :cond_1

    :cond_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_2

    cmp-long v4, v2, v6

    if-gez v4, :cond_2

    .line 374
    .end local p0    # "this":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    :cond_1
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->negate()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic cos()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->cos()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public cos()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .prologue
    .line 550
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic cosh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->cosh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public cosh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .prologue
    .line 617
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic divide(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->divide(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 45
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->divide(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public divide(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7
    .param p1, "c"    # D

    .prologue
    .line 286
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    div-double/2addr v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, p1

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public divide(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 14
    .param p1, "a"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 266
    new-instance v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v8, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    div-double/2addr v6, v8

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v6, v7, v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    .line 269
    .local v4, "out":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 270
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    iget-object v6, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-wide v10, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 272
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_0
    iget-object v5, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 273
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 274
    .local v2, "id":I
    iget-object v5, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 275
    .local v3, "old":Ljava/lang/Double;
    if-nez v3, :cond_1

    .line 276
    iget-object v6, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    neg-double v8, v8

    iget-wide v10, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    div-double/2addr v8, v10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 278
    :cond_1
    iget-object v6, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-wide v10, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v12, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    div-double/2addr v10, v12

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 281
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v2    # "id":I
    .end local v3    # "old":Ljava/lang/Double;
    :cond_2
    return-object v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 840
    if-ne p0, p1, :cond_0

    move v3, v4

    .line 863
    :goto_0
    return v3

    .line 844
    :cond_0
    instance-of v3, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    if-eqz v3, :cond_6

    move-object v2, p1

    .line 845
    check-cast v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .line 846
    .local v2, "rhs":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v8, v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v6, v7, v8, v9, v4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    .line 847
    goto :goto_0

    .line 849
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iget-object v6, v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-eq v3, v6, :cond_2

    move v3, v5

    .line 850
    goto :goto_0

    .line 852
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 853
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    iget-object v3, v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v5

    .line 854
    goto :goto_0

    .line 856
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v3, v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9, v4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    .line 857
    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_5
    move v3, v4

    .line 860
    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "rhs":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    :cond_6
    move v3, v5

    .line 863
    goto :goto_0
.end method

.method public bridge synthetic exp()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->exp()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public exp()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .prologue
    .line 522
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    .line 523
    .local v2, "e":D
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    move-wide v4, v2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic expm1()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->expm1()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public expm1()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .prologue
    .line 528
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic floor()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->floor()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public floor()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 2

    .prologue
    .line 349
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public getDerivative(I)D
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 120
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 121
    .local v0, "out":Ljava/lang/Double;
    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field",
            "<",
            "Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient$1;-><init>(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)V

    return-object v0
.end method

.method public getReal()D
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    return-wide v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 874
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    mul-int/lit16 v0, v0, 0x329

    add-int/lit16 v0, v0, 0x2e7

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit16 v1, v1, 0xa7

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic hypot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 45
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->hypot(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public hypot(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8
    .param p1, "y"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 398
    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-nez v6, :cond_0

    iget-wide v6, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 399
    :cond_0
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v6, v7}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v6

    .line 426
    :goto_0
    return-object v6

    .line 400
    :cond_1
    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_2

    iget-wide v6, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 401
    :cond_2
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-static {v6, v7}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v6

    goto :goto_0

    .line 404
    :cond_3
    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->getExponent(D)I

    move-result v0

    .line 405
    .local v0, "expX":I
    iget-wide v6, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->getExponent(D)I

    move-result v1

    .line 406
    .local v1, "expY":I
    add-int/lit8 v6, v1, 0x1b

    if-le v0, v6, :cond_4

    .line 408
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->abs()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v6

    goto :goto_0

    .line 409
    :cond_4
    add-int/lit8 v6, v0, 0x1b

    if-le v1, v6, :cond_5

    .line 411
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->abs()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v6

    goto :goto_0

    .line 415
    :cond_5
    add-int v6, v0, v1

    div-int/lit8 v2, v6, 0x2

    .line 418
    .local v2, "middleExp":I
    neg-int v6, v2

    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->scalb(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v4

    .line 419
    .local v4, "scaledX":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    neg-int v6, v2

    invoke-virtual {p1, v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->scalb(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v5

    .line 422
    .local v5, "scaledY":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    invoke-virtual {v4, v4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v6

    invoke-virtual {v5, v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->sqrt()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    .line 426
    .local v3, "scaledH":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->scalb(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v6

    goto :goto_0
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "x0"    # D
    .param p3, "x1"    # Ljava/lang/Object;
    .param p4, "x2"    # D
    .param p6, "x3"    # Ljava/lang/Object;

    .prologue
    .line 45
    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object v6, p6

    check-cast v6, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->linearCombination(DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "x0"    # D
    .param p3, "x1"    # Ljava/lang/Object;
    .param p4, "x2"    # D
    .param p6, "x3"    # Ljava/lang/Object;
    .param p7, "x4"    # D
    .param p9, "x5"    # Ljava/lang/Object;

    .prologue
    .line 45
    move-object v4, p3

    check-cast v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object/from16 v7, p6

    check-cast v7, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object/from16 v10, p9

    check-cast v10, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object v1, p0

    move-wide v2, p1

    move-wide v5, p4

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->linearCombination(DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "x0"    # D
    .param p3, "x1"    # Ljava/lang/Object;
    .param p4, "x2"    # D
    .param p6, "x3"    # Ljava/lang/Object;
    .param p7, "x4"    # D
    .param p9, "x5"    # Ljava/lang/Object;
    .param p10, "x6"    # D
    .param p12, "x7"    # Ljava/lang/Object;

    .prologue
    .line 45
    move-object/from16 v3, p3

    check-cast v3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object/from16 v6, p6

    check-cast v6, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object/from16 v9, p9

    check-cast v9, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object/from16 v12, p12

    check-cast v12, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v4, p4

    move-wide/from16 v7, p7

    move-wide/from16 v10, p10

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->linearCombination(DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .end local p3    # "x2":Ljava/lang/Object;
    check-cast p4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->linearCombination(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # Ljava/lang/Object;

    .prologue
    .line 45
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object v2, p2

    check-cast v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object v4, p4

    check-cast v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object v5, p5

    check-cast v5, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object v6, p6

    check-cast v6, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->linearCombination(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # Ljava/lang/Object;
    .param p7, "x6"    # Ljava/lang/Object;
    .param p8, "x7"    # Ljava/lang/Object;

    .prologue
    .line 45
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object v2, p2

    check-cast v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object v4, p4

    check-cast v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object v5, p5

    check-cast v5, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object v6, p6

    check-cast v6, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object/from16 v7, p7

    check-cast v7, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object/from16 v8, p8

    check-cast v8, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->linearCombination(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic linearCombination([D[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [D
    .param p2, "x1"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 45
    check-cast p2, [Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .end local p2    # "x1":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->linearCombination([D[Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic linearCombination([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;
    .param p2, "x1"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 45
    check-cast p1, [Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .end local p1    # "x0":[Ljava/lang/Object;
    check-cast p2, [Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .end local p2    # "x1":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->linearCombination([Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;[Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public linearCombination(DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 9
    .param p1, "a1"    # D
    .param p3, "b1"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p4, "a2"    # D
    .param p6, "b2"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 747
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v8

    .line 750
    .local v8, "out":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    iget-wide v2, p3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v6, p6, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-wide v0, p1

    move-wide v4, p4

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    iput-wide v0, v8, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 752
    return-object v8
.end method

.method public linearCombination(DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 17
    .param p1, "a1"    # D
    .param p3, "b1"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p4, "a2"    # D
    .param p6, "b2"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p7, "a3"    # D
    .param p9, "b3"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 779
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v4

    move-object/from16 v0, p6

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v4

    move-object/from16 v0, p9

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v16

    .line 782
    .local v16, "out":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    move-object/from16 v0, p3

    iget-wide v6, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p6

    iget-wide v10, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p9

    iget-wide v14, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-wide/from16 v4, p1

    move-wide/from16 v8, p4

    move-wide/from16 v12, p7

    invoke-static/range {v4 .. v15}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v4

    move-object/from16 v0, v16

    iput-wide v4, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 786
    return-object v16
.end method

.method public linearCombination(DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 21
    .param p1, "a1"    # D
    .param p3, "b1"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p4, "a2"    # D
    .param p6, "b2"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p7, "a3"    # D
    .param p9, "b3"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p10, "a4"    # D
    .param p12, "b4"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 816
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v4

    move-object/from16 v0, p6

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v4

    move-object/from16 v0, p9

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v4

    move-object/from16 v0, p12

    move-wide/from16 v1, p10

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v20

    .line 819
    .local v20, "out":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    move-object/from16 v0, p3

    iget-wide v6, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p6

    iget-wide v10, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p9

    iget-wide v14, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p12

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-wide/from16 v18, v0

    move-wide/from16 v4, p1

    move-wide/from16 v8, p4

    move-wide/from16 v12, p7

    move-wide/from16 v16, p10

    invoke-static/range {v4 .. v19}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v4

    move-object/from16 v0, v20

    iput-wide v4, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 824
    return-object v20
.end method

.method public linearCombination(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 9
    .param p1, "a1"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p2, "b1"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p3, "a2"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p4, "b2"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 733
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v8

    .line 736
    .local v8, "out":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    iget-wide v0, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v2, p2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v4, p3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v6, p4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    iput-wide v0, v8, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 738
    return-object v8
.end method

.method public linearCombination(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 15
    .param p1, "a1"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p2, "b1"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p3, "a2"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p4, "b2"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p5, "a3"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p6, "b3"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 762
    invoke-virtual/range {p1 .. p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v2

    invoke-virtual/range {p3 .. p4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v2

    invoke-virtual/range {p5 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v14

    .line 765
    .local v14, "out":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p3

    iget-wide v6, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p5

    iget-wide v10, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p6

    iget-wide v12, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    iput-wide v2, v14, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 769
    return-object v14
.end method

.method public linearCombination(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 19
    .param p1, "a1"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p2, "b1"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p3, "a2"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p4, "b2"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p5, "a3"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p6, "b3"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p7, "a4"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p8, "b4"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 797
    invoke-virtual/range {p1 .. p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v2

    invoke-virtual/range {p3 .. p4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v2

    invoke-virtual/range {p5 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v2

    invoke-virtual/range {p7 .. p8}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v18

    .line 800
    .local v18, "out":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p3

    iget-wide v6, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p5

    iget-wide v10, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p6

    iget-wide v12, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p7

    iget-wide v14, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-wide/from16 v16, v0

    invoke-static/range {v2 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v2

    move-object/from16 v0, v18

    iput-wide v2, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 805
    return-object v18
.end method

.method public linearCombination([D[Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6
    .param p1, "a"    # [D
    .param p2, "b"    # [Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 712
    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .line 713
    .local v2, "out":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 714
    aget-object v3, p2, v1

    aget-wide v4, p1, v1

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v2

    .line 713
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    :cond_0
    array-length v3, p2

    new-array v0, v3, [D

    .line 719
    .local v0, "bDouble":[D
    const/4 v1, 0x0

    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 720
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getValue()D

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 722
    :cond_1
    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide v4

    iput-wide v4, v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 724
    return-object v2
.end method

.method public linearCombination([Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;[Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6
    .param p1, "a"    # [Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .param p2, "b"    # [Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 688
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .line 689
    .local v3, "out":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 690
    aget-object v4, p1, v2

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    .line 689
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 694
    :cond_0
    array-length v4, p1

    new-array v0, v4, [D

    .line 695
    .local v0, "aDouble":[D
    const/4 v2, 0x0

    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 696
    aget-object v4, p1, v2

    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getValue()D

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 695
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 698
    :cond_1
    array-length v4, p2

    new-array v1, v4, [D

    .line 699
    .local v1, "bDouble":[D
    const/4 v2, 0x0

    :goto_2
    array-length v4, p2

    if-ge v2, v4, :cond_2

    .line 700
    aget-object v4, p2, v2

    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getValue()D

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 699
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 702
    :cond_2
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide v4

    iput-wide v4, v3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 704
    return-object v3
.end method

.method public bridge synthetic log()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->log()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public log()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8

    .prologue
    .line 533
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    div-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public log10()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 10

    .prologue
    .line 540
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    iget-wide v8, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic log1p()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->log1p()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public log1p()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 545
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    add-double/2addr v4, v6

    div-double v4, v6, v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic multiply(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 45
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7
    .param p1, "c"    # D

    .prologue
    .line 256
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double/2addr v2, p1

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public multiply(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7
    .param p1, "n"    # I

    .prologue
    .line 261
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    int-to-double v4, p1

    mul-double/2addr v2, v4

    int-to-double v4, p1

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 14
    .param p1, "a"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 206
    new-instance v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v8, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double/2addr v6, v8

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v6, v7, v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    .line 210
    .local v4, "out":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    iget-object v6, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    iget-wide v8, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 213
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_0
    iget-object v5, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 215
    .local v2, "id":I
    iget-object v5, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 216
    .local v3, "old":Ljava/lang/Double;
    if-nez v3, :cond_1

    .line 217
    iget-object v6, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 219
    :cond_1
    iget-object v6, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-wide v10, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 222
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v2    # "id":I
    .end local v3    # "old":Ljava/lang/Double;
    :cond_2
    return-object v4
.end method

.method public multiplyInPlace(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)V
    .locals 14
    .param p1, "a"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 239
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    iget-wide v8, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 242
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_0
    iget-object v4, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 244
    .local v2, "id":I
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 245
    .local v3, "old":Ljava/lang/Double;
    if-nez v3, :cond_1

    .line 246
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v8, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 248
    :cond_1
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-wide v10, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 251
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v2    # "id":I
    .end local v3    # "old":Ljava/lang/Double;
    :cond_2
    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v6, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 252
    return-void
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->negate()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .prologue
    .line 291
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    neg-double v2, v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public numVars()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic pow(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->pow(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pow(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->pow(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 45
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->pow(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public pow(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 9
    .param p1, "p"    # D

    .prologue
    .line 482
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, p1, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, p1

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public pow(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 10
    .param p1, "n"    # I

    .prologue
    .line 487
    if-nez p1, :cond_0

    .line 488
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .line 491
    :goto_0
    return-object v0

    .line 490
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    add-int/lit8 v2, p1, -0x1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v8

    .line 491
    .local v8, "valueNm1":D
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double/2addr v2, v8

    int-to-double v4, p1

    mul-double/2addr v4, v8

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public pow(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 1
    .param p1, "e"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 497
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->log()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->exp()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->reciprocal()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 10

    .prologue
    .line 453
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    div-double/2addr v2, v4

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v8, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic remainder(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->remainder(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remainder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 45
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->remainder(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public remainder(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 5
    .param p1, "a"    # D

    .prologue
    .line 318
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->IEEEremainder(DD)D

    move-result-wide v2

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    return-object v0
.end method

.method public remainder(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 325
    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v6, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->IEEEremainder(DD)D

    move-result-wide v2

    .line 326
    .local v2, "rem":D
    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    sub-double/2addr v4, v2

    iget-wide v6, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v0

    .line 328
    .local v0, "k":D
    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->subtract(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic rint()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->rint()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public rint()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rootN(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->rootN(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public rootN(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 10
    .param p1, "n"    # I

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 470
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 471
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->sqrt()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v1

    .line 476
    :goto_0
    return-object v1

    .line 472
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 473
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->cbrt()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v1

    goto :goto_0

    .line 475
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    int-to-double v4, p1

    div-double v4, v8, v4

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    .line 476
    .local v2, "root":D
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    int-to-double v4, p1

    add-int/lit8 v0, p1, -0x1

    invoke-static {v2, v3, v0}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v6

    mul-double/2addr v4, v6

    div-double v4, v8, v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    goto :goto_0
.end method

.method public round()J
    .locals 2

    .prologue
    .line 359
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic scalb(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->scalb(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public scalb(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8
    .param p1, "n"    # I

    .prologue
    .line 389
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v4, v5, p1}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide v4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v4, v5, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    .line 390
    .local v2, "out":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 391
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    iget-object v4, v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7, p1}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 393
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_0
    return-object v2
.end method

.method public bridge synthetic signum()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->signum()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public signum()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 2

    .prologue
    .line 364
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sin()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->sin()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public sin()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .prologue
    .line 555
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic sinh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->sinh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public sinh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .prologue
    .line 622
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic sqrt()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->sqrt()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public sqrt()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .prologue
    .line 458
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    .line 459
    .local v2, "sqrt":D
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    div-double/2addr v4, v2

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic subtract(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->subtract(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 45
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->subtract(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public subtract(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 5
    .param p1, "c"    # D

    .prologue
    .line 201
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    sub-double/2addr v2, p1

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 12
    .param p1, "a"    # Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .prologue
    .line 186
    new-instance v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v8, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    sub-double/2addr v6, v8

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct {v4, v6, v7, v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    .line 187
    .local v4, "out":Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    iget-object v5, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 188
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 189
    .local v2, "id":I
    iget-object v5, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 190
    .local v3, "old":Ljava/lang/Double;
    if-nez v3, :cond_0

    .line 191
    iget-object v6, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    neg-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 193
    :cond_0
    iget-object v6, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 196
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v2    # "id":I
    .end local v3    # "old":Ljava/lang/Double;
    :cond_1
    return-object v4
.end method

.method public bridge synthetic tan()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->tan()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public tan()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8

    .prologue
    .line 560
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v2

    .line 561
    .local v2, "t":D
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic tanh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->tanh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public tanh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8

    .prologue
    .line 627
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->tanh(D)D

    move-result-wide v2

    .line 628
    .local v2, "t":D
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v6, v2, v2

    sub-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public varargs taylor([D)D
    .locals 8
    .param p1, "delta"    # [D

    .prologue
    .line 665
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 666
    .local v2, "y":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 667
    aget-wide v4, p1, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getDerivative(I)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    :cond_0
    return-wide v2
.end method

.method public toDegrees()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .prologue
    .line 650
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->toDegrees(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->toDegrees(D)D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method

.method public toRadians()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .prologue
    .line 657
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->toRadians(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->toRadians(D)D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v1
.end method
