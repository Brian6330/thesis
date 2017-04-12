.class public final enum Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;
.super Ljava/lang/Enum;
.source "StepNormalizerBounds.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

.field public static final enum BOTH:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

.field public static final enum FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

.field public static final enum LAST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

.field public static final enum NEITHER:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;


# instance fields
.field private final first:Z

.field private final last:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    const-string v1, "NEITHER"

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->NEITHER:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    .line 34
    new-instance v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    const-string v1, "FIRST"

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    .line 37
    new-instance v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    const-string v1, "LAST"

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->LAST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    .line 40
    new-instance v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v5, v3, v3}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->BOTH:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    sget-object v1, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->NEITHER:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->LAST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->BOTH:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->$VALUES:[Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .param p3, "first"    # Z
    .param p4, "last"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-boolean p3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->first:Z

    .line 61
    iput-boolean p4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->last:Z

    .line 62
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->$VALUES:[Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    return-object v0
.end method


# virtual methods
.method public firstIncluded()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->first:Z

    return v0
.end method

.method public lastIncluded()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->last:Z

    return v0
.end method
