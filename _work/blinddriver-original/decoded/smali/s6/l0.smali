.class public final Ls6/l0;
.super Ls6/n0;
.source "SourceFile"


# instance fields
.field public transient n:Lpc/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ls6/n0;-><init>(ILjava/lang/Class;)V

    sget-object v0, Lr6/j;->n:Lr6/j;

    iput-object v0, p0, Ls6/l0;->n:Lpc/h;

    return-void
.end method


# virtual methods
.method public final acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ls6/l0;->n:Lpc/h;

    invoke-virtual {v1, v0}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v2

    if-nez v2, :cond_1

    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    new-instance v2, Ls6/k0;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v0}, Ls6/k0;-><init>(ILjava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object v0

    iput-object v0, p0, Ls6/l0;->n:Lpc/h;

    goto :goto_0

    :cond_0
    iget-object v2, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v2, v0}, Ld6/m;->c(Ljava/lang/Class;)Lb6/l;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Lb6/r0;->X(Lb6/l;Lb6/f;)Lb6/u;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object v0

    if-eq v1, v0, :cond_1

    iput-object v0, p0, Ls6/l0;->n:Lpc/h;

    :cond_1
    :goto_0
    invoke-virtual {v2, p1, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void
.end method
