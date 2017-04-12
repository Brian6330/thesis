.class public Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "NotARotationMatrixException.java"


# static fields
.field private static final serialVersionUID:J = 0x4e5ecee803b2632aL


# direct methods
.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "specifier"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "parts"    # [Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 45
    return-void
.end method
