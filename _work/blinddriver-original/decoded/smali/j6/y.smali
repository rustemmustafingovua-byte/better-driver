.class public abstract Lj6/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb6/f;
.implements Ljava/io/Serializable;


# instance fields
.field public final l:Lb6/h0;

.field public transient m:Ljava/util/List;


# direct methods
.method public constructor <init>(Lb6/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lb6/h0;->u:Lb6/h0;

    :cond_0
    iput-object p1, p0, Lj6/y;->l:Lb6/h0;

    return-void
.end method

.method public constructor <init>(Lj6/y;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object p1, p1, Lj6/y;->l:Lb6/h0;

    iput-object p1, p0, Lj6/y;->l:Lb6/h0;

    return-void
.end method


# virtual methods
.method public final a(Ld6/m;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lj6/y;->m:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lb6/f;->d()Lj6/h;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Lb6/d;->J(Lj6/a;)Ljava/util/List;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_1
    iput-object v0, p0, Lj6/y;->m:Ljava/util/List;

    :cond_2
    return-object v0
.end method

.method public c()Lb6/h0;
    .locals 0

    iget-object p0, p0, Lj6/y;->l:Lb6/h0;

    return-object p0
.end method

.method public final e(Ld6/m;Ljava/lang/Class;)Lr5/a0;
    .locals 2

    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object v0

    invoke-interface {p0}, Lb6/f;->d()Lj6/h;

    move-result-object p0

    if-nez p0, :cond_0

    check-cast p1, Ld6/n;

    invoke-virtual {p1, p2}, Ld6/n;->e(Ljava/lang/Class;)Ld6/d;

    iget-object p0, p1, Ld6/n;->r:La6/n;

    iget-object p0, p0, La6/n;->m:Ljava/lang/Object;

    check-cast p0, Lr5/a0;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lj6/a;->f()Ljava/lang/Class;

    move-result-object v1

    check-cast p1, Ld6/n;

    invoke-virtual {p1, v1}, Ld6/n;->e(Ljava/lang/Class;)Ld6/d;

    invoke-virtual {p1, p2}, Ld6/n;->e(Ljava/lang/Class;)Ld6/d;

    iget-object p1, p1, Ld6/n;->r:La6/n;

    iget-object p1, p1, La6/n;->m:Ljava/lang/Object;

    check-cast p1, Lr5/a0;

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {v0, p0}, Lb6/d;->P(Lj6/a;)Lr5/a0;

    move-result-object p0

    invoke-virtual {p1, p0}, Lr5/a0;->a(Lr5/a0;)Lr5/a0;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ld6/m;Ljava/lang/Class;)Lr5/q;
    .locals 0

    invoke-virtual {p1, p2}, Ld6/m;->h(Ljava/lang/Class;)Lr5/q;

    move-result-object p2

    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lb6/f;->d()Lj6/h;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lb6/d;->s(Lj6/a;)Lr5/q;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p2, :cond_2

    if-nez p0, :cond_1

    sget-object p0, Lb6/f;->a:Lr5/q;

    :cond_1
    return-object p0

    :cond_2
    if-nez p0, :cond_3

    return-object p2

    :cond_3
    invoke-virtual {p2, p0}, Lr5/q;->e(Lr5/q;)Lr5/q;

    move-result-object p0

    return-object p0
.end method
