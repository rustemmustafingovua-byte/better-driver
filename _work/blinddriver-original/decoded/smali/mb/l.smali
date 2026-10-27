.class public final Lmb/l;
.super Lmb/m;
.source "SourceFile"


# instance fields
.field public final a:Lmb/g;

.field public final b:Lmb/k;

.field public final c:Lmb/k;

.field public final synthetic d:Lmb/n;


# direct methods
.method public constructor <init>(Lmb/n;Lmb/g;Lmb/k;Lmb/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/l;->d:Lmb/n;

    iput-object p2, p0, Lmb/l;->a:Lmb/g;

    iput-object p3, p0, Lmb/l;->b:Lmb/k;

    iput-object p4, p0, Lmb/l;->c:Lmb/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, Lmb/l;->b:Lmb/k;

    iget v0, v0, Lmb/k;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lmb/l;->c:Lmb/k;

    iget v2, v2, Lmb/k;->a:I

    if-eq v2, v1, :cond_0

    sub-int/2addr v2, v0

    shr-int/lit8 v0, v2, 0x18

    int-to-byte v0, v0

    shr-int/lit8 v1, v2, 0x10

    int-to-byte v1, v1

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    int-to-byte v2, v2

    const/4 v4, 0x4

    new-array v5, v4, [B

    const/4 v6, 0x0

    aput-byte v0, v5, v6

    const/4 v0, 0x1

    aput-byte v1, v5, v0

    const/4 v0, 0x2

    aput-byte v3, v5, v0

    const/4 v0, 0x3

    aput-byte v2, v5, v0

    iget-object v0, p0, Lmb/l;->d:Lmb/n;

    iget-object v0, v0, Lmb/n;->d:[B

    iget-object p0, p0, Lmb/l;->a:Lmb/g;

    iget p0, p0, Lmb/k;->a:I

    invoke-static {v5, v6, v0, p0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p0, Lhb/b;

    const-string v0, "Cannot relocate offset branch to unset destination offset"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
