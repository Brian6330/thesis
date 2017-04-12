.class public final enum Lorg/apache/commons/math3/optim/linear/Relationship;
.super Ljava/lang/Enum;
.source "Relationship.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/linear/Relationship$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/optim/linear/Relationship;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/optim/linear/Relationship;

.field public static final enum EQ:Lorg/apache/commons/math3/optim/linear/Relationship;

.field public static final enum GEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

.field public static final enum LEQ:Lorg/apache/commons/math3/optim/linear/Relationship;


# instance fields
.field private final stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lorg/apache/commons/math3/optim/linear/Relationship;

    const-string v1, "EQ"

    const-string v2, "="

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/math3/optim/linear/Relationship;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/optim/linear/Relationship;->EQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    .line 28
    new-instance v0, Lorg/apache/commons/math3/optim/linear/Relationship;

    const-string v1, "LEQ"

    const-string v2, "<="

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/commons/math3/optim/linear/Relationship;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/optim/linear/Relationship;->LEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    .line 30
    new-instance v0, Lorg/apache/commons/math3/optim/linear/Relationship;

    const-string v1, "GEQ"

    const-string v2, ">="

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/math3/optim/linear/Relationship;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/optim/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/math3/optim/linear/Relationship;

    sget-object v1, Lorg/apache/commons/math3/optim/linear/Relationship;->EQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/math3/optim/linear/Relationship;->LEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/math3/optim/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/commons/math3/optim/linear/Relationship;->$VALUES:[Lorg/apache/commons/math3/optim/linear/Relationship;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "stringValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lorg/apache/commons/math3/optim/linear/Relationship;->stringValue:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/optim/linear/Relationship;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lorg/apache/commons/math3/optim/linear/Relationship;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/optim/linear/Relationship;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/optim/linear/Relationship;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/apache/commons/math3/optim/linear/Relationship;->$VALUES:[Lorg/apache/commons/math3/optim/linear/Relationship;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/optim/linear/Relationship;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optim/linear/Relationship;

    return-object v0
.end method


# virtual methods
.method public oppositeRelationship()Lorg/apache/commons/math3/optim/linear/Relationship;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lorg/apache/commons/math3/optim/linear/Relationship$1;->$SwitchMap$org$apache$commons$math3$optim$linear$Relationship:[I

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/Relationship;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 61
    sget-object v0, Lorg/apache/commons/math3/optim/linear/Relationship;->EQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    :goto_0
    return-object v0

    .line 57
    :pswitch_0
    sget-object v0, Lorg/apache/commons/math3/optim/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    goto :goto_0

    .line 59
    :pswitch_1
    sget-object v0, Lorg/apache/commons/math3/optim/linear/Relationship;->LEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/Relationship;->stringValue:Ljava/lang/String;

    return-object v0
.end method
