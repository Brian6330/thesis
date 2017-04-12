.class public final enum Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;
.super Ljava/lang/Enum;
.source "AlternativeHypothesis.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

.field public static final enum GREATER_THAN:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

.field public static final enum LESS_THAN:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

.field public static final enum TWO_SIDED:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    const-string v1, "TWO_SIDED"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->TWO_SIDED:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    .line 34
    new-instance v0, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    const-string v1, "GREATER_THAN"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->GREATER_THAN:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    .line 39
    new-instance v0, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    const-string v1, "LESS_THAN"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->LESS_THAN:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    sget-object v1, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->TWO_SIDED:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->GREATER_THAN:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->LESS_THAN:Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->$VALUES:[Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->$VALUES:[Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/inference/AlternativeHypothesis;

    return-object v0
.end method
