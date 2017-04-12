.class public Lorg/apache/commons/math3/genetics/FixedGenerationCount;
.super Ljava/lang/Object;
.source "FixedGenerationCount.java"

# interfaces
.implements Lorg/apache/commons/math3/genetics/StoppingCondition;


# instance fields
.field private final maxGenerations:I

.field private numGenerations:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "maxGenerations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->numGenerations:I

    .line 42
    if-gtz p1, :cond_0

    .line 43
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 45
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->maxGenerations:I

    .line 46
    return-void
.end method


# virtual methods
.method public getNumGenerations()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->numGenerations:I

    return v0
.end method

.method public isSatisfied(Lorg/apache/commons/math3/genetics/Population;)Z
    .locals 2
    .param p1, "population"    # Lorg/apache/commons/math3/genetics/Population;

    .prologue
    .line 56
    iget v0, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->numGenerations:I

    iget v1, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->maxGenerations:I

    if-ge v0, v1, :cond_0

    .line 57
    iget v0, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->numGenerations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->numGenerations:I

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
