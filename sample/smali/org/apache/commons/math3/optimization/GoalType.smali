.class public final enum Lorg/apache/commons/math3/optimization/GoalType;
.super Ljava/lang/Enum;
.source "GoalType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/optimization/GoalType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/optimization/GoalType;

.field public static final enum MAXIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

.field public static final enum MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lorg/apache/commons/math3/optimization/GoalType;

    const-string v1, "MAXIMIZE"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/optimization/GoalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/optimization/GoalType;->MAXIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    .line 35
    new-instance v0, Lorg/apache/commons/math3/optimization/GoalType;

    const-string v1, "MINIMIZE"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/optimization/GoalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/GoalType;

    sget-object v1, Lorg/apache/commons/math3/optimization/GoalType;->MAXIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/math3/optimization/GoalType;->$VALUES:[Lorg/apache/commons/math3/optimization/GoalType;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/optimization/GoalType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lorg/apache/commons/math3/optimization/GoalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/optimization/GoalType;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/optimization/GoalType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/apache/commons/math3/optimization/GoalType;->$VALUES:[Lorg/apache/commons/math3/optimization/GoalType;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/optimization/GoalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optimization/GoalType;

    return-object v0
.end method
