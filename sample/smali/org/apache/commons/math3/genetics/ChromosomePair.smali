.class public Lorg/apache/commons/math3/genetics/ChromosomePair;
.super Ljava/lang/Object;
.source "ChromosomePair.java"


# instance fields
.field private final first:Lorg/apache/commons/math3/genetics/Chromosome;

.field private final second:Lorg/apache/commons/math3/genetics/Chromosome;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)V
    .locals 0
    .param p1, "c1"    # Lorg/apache/commons/math3/genetics/Chromosome;
    .param p2, "c2"    # Lorg/apache/commons/math3/genetics/Chromosome;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/commons/math3/genetics/ChromosomePair;->first:Lorg/apache/commons/math3/genetics/Chromosome;

    .line 40
    iput-object p2, p0, Lorg/apache/commons/math3/genetics/ChromosomePair;->second:Lorg/apache/commons/math3/genetics/Chromosome;

    .line 41
    return-void
.end method


# virtual methods
.method public getFirst()Lorg/apache/commons/math3/genetics/Chromosome;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/ChromosomePair;->first:Lorg/apache/commons/math3/genetics/Chromosome;

    return-object v0
.end method

.method public getSecond()Lorg/apache/commons/math3/genetics/Chromosome;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/ChromosomePair;->second:Lorg/apache/commons/math3/genetics/Chromosome;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    const-string v0, "(%s,%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getFirst()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getSecond()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
