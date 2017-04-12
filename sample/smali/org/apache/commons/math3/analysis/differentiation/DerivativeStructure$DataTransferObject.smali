.class Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;
.super Ljava/lang/Object;
.source "DerivativeStructure.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataTransferObject"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133049aL


# instance fields
.field private final data:[D

.field private final order:I

.field private final variables:I


# direct methods
.method public constructor <init>(II[D)V
    .locals 0
    .param p1, "variables"    # I
    .param p2, "order"    # I
    .param p3, "data"    # [D

    .prologue
    .line 1180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1181
    iput p1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;->variables:I

    .line 1182
    iput p2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;->order:I

    .line 1183
    iput-object p3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;->data:[D

    .line 1184
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1190
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;->variables:I

    iget v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;->order:I

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;->data:[D

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v0
.end method
