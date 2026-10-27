.class public abstract Ls6/x;
.super Ls6/n0;
.source "SourceFile"

# interfaces
.implements Lq6/i;


# instance fields
.field public final n:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Ls6/n0;-><init>(ILjava/lang/Class;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ls6/x;->n:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ls6/x;Ljava/lang/Boolean;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ls6/n0;-><init>(Ls6/n0;)V

    .line 4
    iput-object p2, p0, Ls6/x;->n:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Lb6/r0;Lb6/f;)Lb6/u;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p1, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v1}, Ld6/m;->d()Lb6/d;

    move-result-object v1

    invoke-interface {p2}, Lb6/f;->d()Lj6/h;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lb6/d;->e(Lj6/a;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2, v1}, Lb6/r0;->m0(Lj6/a;Ljava/lang/Object;)Lb6/u;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-static {p1, p2, v2}, Ls6/n0;->d(Lb6/r0;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lr5/n;->p:Lr5/n;

    invoke-virtual {v2, v3}, Lr5/q;->b(Lr5/n;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-static {p1, p2, v1}, Ls6/n0;->c(Lb6/r0;Lb6/f;Lb6/u;)Lb6/u;

    move-result-object v1

    const-class v3, Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {p1, v3, p2}, Lb6/r0;->W(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Lu6/h;->v(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object p1, p0, Ls6/x;->n:Ljava/lang/Boolean;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0, p2, v2}, Ls6/x;->i(Lb6/f;Ljava/lang/Boolean;)Lb6/u;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ls6/h;

    invoke-virtual {p1}, Lb6/r0;->u()Lt6/p;

    move-result-object p1

    invoke-virtual {p1, v3}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Ls6/h;-><init>(Lb6/l;ZLo6/r;Lb6/u;)V

    return-object p0
.end method

.method public abstract i(Lb6/f;Ljava/lang/Boolean;)Lb6/u;
.end method

.method public final isEmpty(Lb6/r0;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
