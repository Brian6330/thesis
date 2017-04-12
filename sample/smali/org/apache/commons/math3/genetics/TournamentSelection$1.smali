.class Lorg/apache/commons/math3/genetics/TournamentSelection$1;
.super Lorg/apache/commons/math3/genetics/ListPopulation;
.source "TournamentSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/genetics/TournamentSelection;->tournament(Lorg/apache/commons/math3/genetics/ListPopulation;)Lorg/apache/commons/math3/genetics/Chromosome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/genetics/TournamentSelection;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/genetics/TournamentSelection;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 76
    iput-object p1, p0, Lorg/apache/commons/math3/genetics/TournamentSelection$1;->this$0:Lorg/apache/commons/math3/genetics/TournamentSelection;

    invoke-direct {p0, p2}, Lorg/apache/commons/math3/genetics/ListPopulation;-><init>(I)V

    return-void
.end method


# virtual methods
.method public nextGeneration()Lorg/apache/commons/math3/genetics/Population;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method
