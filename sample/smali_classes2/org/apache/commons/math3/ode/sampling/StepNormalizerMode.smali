.class public final enum Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;
.super Ljava/lang/Enum;
.source "StepNormalizerMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

.field public static final enum INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

.field public static final enum MULTIPLES:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    const-string v1, "INCREMENT"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    .line 68
    new-instance v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    const-string v1, "MULTIPLES"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->MULTIPLES:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v1, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->MULTIPLES:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->$VALUES:[Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->$VALUES:[Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    return-object v0
.end method
