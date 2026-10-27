.class public abstract Ls6/r;
.super Ls6/o0;
.source "SourceFile"

# interfaces
.implements Lq6/i;


# instance fields
.field public final o:Z


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 1

    invoke-direct {p0, p2}, Ls6/o0;-><init>(Ljava/lang/Class;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    iput-boolean p2, p0, Ls6/r;->o:Z

    return-void
.end method


# virtual methods
.method public final acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 0

    iget-boolean p0, p0, Ls6/r;->o:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Lb6/r0;Lb6/f;)Lb6/u;
    .locals 1

    iget-object v0, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Ls6/n0;->d(Lb6/r0;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lr5/q;->m:Lr5/p;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-class p0, Ljava/math/BigDecimal;

    if-ne v0, p0, :cond_1

    sget-object p0, Ls6/q;->p:Ls6/q;

    sget-object p0, Ls6/p;->p:Ls6/p;

    return-object p0

    :cond_1
    sget-object p0, Ls6/p;->q:Ls6/p;

    :cond_2
    :goto_0
    return-object p0
.end method
