.class public Lorg/apache/commons/math3/complex/ComplexField;
.super Ljava/lang/Object;
.source "ComplexField.java"

# interfaces
.implements Lorg/apache/commons/math3/Field;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/complex/ComplexField$1;,
        Lorg/apache/commons/math3/complex/ComplexField$LazyHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/Field",
        "<",
        "Lorg/apache/commons/math3/complex/Complex;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x55136c62a451b03eL


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/complex/ComplexField$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/complex/ComplexField$1;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/commons/math3/complex/ComplexField;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/math3/complex/ComplexField;
    .locals 1

    .prologue
    .line 47
    # getter for: Lorg/apache/commons/math3/complex/ComplexField$LazyHolder;->INSTANCE:Lorg/apache/commons/math3/complex/ComplexField;
    invoke-static {}, Lorg/apache/commons/math3/complex/ComplexField$LazyHolder;->access$000()Lorg/apache/commons/math3/complex/ComplexField;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    # getter for: Lorg/apache/commons/math3/complex/ComplexField$LazyHolder;->INSTANCE:Lorg/apache/commons/math3/complex/ComplexField;
    invoke-static {}, Lorg/apache/commons/math3/complex/ComplexField$LazyHolder;->access$000()Lorg/apache/commons/math3/complex/ComplexField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getOne()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexField;->getOne()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public getOne()Lorg/apache/commons/math3/complex/Complex;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->ONE:Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method

.method public getRuntimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/commons/math3/FieldElement",
            "<",
            "Lorg/apache/commons/math3/complex/Complex;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 62
    const-class v0, Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method

.method public bridge synthetic getZero()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexField;->getZero()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/complex/Complex;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method
