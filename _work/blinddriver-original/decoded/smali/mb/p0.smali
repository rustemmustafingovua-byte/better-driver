.class public final Lmb/p0;
.super Lmb/n3;
.source "SourceFile"


# instance fields
.field public final f:[Ljava/lang/String;

.field public final g:I

.field public h:Lmb/v4;

.field public i:Lmb/c1;


# direct methods
.method public constructor <init>(Lhb/c;[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/y4;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/p0;->f:[Ljava/lang/String;

    iput p3, p0, Lmb/p0;->g:I

    return-void
.end method


# virtual methods
.method public final A()Lmb/y4;
    .locals 1

    iget-object v0, p0, Lmb/p0;->i:Lmb/c1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmb/c1;->A()Lmb/y4;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final C()Lmb/s5;
    .locals 5

    iget-object v0, p0, Lmb/p0;->h:Lmb/v4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lmb/p0;->g:I

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Lmb/p0;->f:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lmb/v4;

    new-array v2, v3, [Lmb/r0;

    const/4 v3, 0x0

    iget-object v4, p0, Lmb/m3;->a:Lhb/c;

    invoke-direct {v0, v4, v2, v1, v3}, Lmb/v4;-><init>(Lhb/c;[Lmb/r0;[Ljava/lang/String;[Lmb/t5;)V

    iget-object v1, p0, Lmb/y4;->c:Lmb/a5;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lmb/v4;->a(Lmb/a5;)V

    :cond_1
    iput-object v0, p0, Lmb/p0;->h:Lmb/v4;

    return-object v0
.end method

.method public final F(Lmb/n7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/n7;->A0(Lmb/p0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "."

    iget v1, p0, Lmb/p0;->g:I

    iget-object p0, p0, Lmb/p0;->f:[Ljava/lang/String;

    invoke-static {v1, v0, p0}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final y()Lmb/n3;
    .locals 1

    iget-object v0, p0, Lmb/p0;->i:Lmb/c1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmb/c1;->y()Lmb/n3;

    move-result-object p0

    :cond_0
    return-object p0
.end method
