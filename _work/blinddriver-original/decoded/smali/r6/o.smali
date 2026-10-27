.class public final Lr6/o;
.super Ls6/a;
.source "SourceFile"


# static fields
.field public static final q:Lr6/o;


# instance fields
.field public final p:Lb6/u;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lt6/p;->o:Lt6/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lt6/p;->p:Lt6/o;

    invoke-virtual {v0}, Lt6/o;->f()Z

    move-result v1

    const-class v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v2}, Lt6/p;->a(Ljava/lang/Class;)Lt6/k;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lt6/k;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Lt6/k;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;)V

    :goto_0
    new-instance v0, Lr6/o;

    invoke-direct {v0}, Lr6/o;-><init>()V

    sput-object v0, Lr6/o;->q:Lr6/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Ls6/a;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lr6/o;->p:Lb6/u;

    return-void
.end method

.method public constructor <init>(Lr6/o;Lb6/f;Lb6/u;Ljava/lang/Boolean;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p4}, Ls6/a;-><init>(Ls6/a;Lb6/f;Ljava/lang/Boolean;)V

    .line 4
    iput-object p3, p0, Lr6/o;->p:Lb6/u;

    return-void
.end method


# virtual methods
.method public final acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 0

    sget-object p0, Lm6/a;->l:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Lb6/r0;Lb6/f;)Lb6/u;
    .locals 4

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
    const-class v2, [Ljava/lang/String;

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
    iget-object v3, p0, Lr6/o;->p:Lb6/u;

    if-nez v1, :cond_2

    move-object v1, v3

    :cond_2
    invoke-static {p1, p2, v1}, Ls6/n0;->c(Lb6/r0;Lb6/f;Lb6/u;)Lb6/u;

    move-result-object v1

    if-nez v1, :cond_3

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lb6/r0;->W(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object v1

    :cond_3
    invoke-static {v1}, Lu6/h;->v(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    if-ne v0, v3, :cond_5

    iget-object p1, p0, Ls6/a;->o:Ljava/lang/Boolean;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object p0

    :cond_5
    new-instance p1, Lr6/o;

    invoke-direct {p1, p0, p2, v0, v2}, Lr6/o;-><init>(Lr6/o;Lb6/f;Lb6/u;Ljava/lang/Boolean;)V

    return-object p1
.end method

.method public final i(Ln6/e;)Lq6/h;
    .locals 0

    return-object p0
.end method

.method public final isEmpty(Lb6/r0;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, [Ljava/lang/String;

    array-length p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k(Lb6/f;Ljava/lang/Boolean;)Lb6/u;
    .locals 2

    new-instance v0, Lr6/o;

    iget-object v1, p0, Lr6/o;->p:Lb6/u;

    invoke-direct {v0, p0, p1, v1, p2}, Lr6/o;-><init>(Lr6/o;Lb6/f;Lb6/u;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final bridge synthetic l(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lr6/o;->m([Ljava/lang/String;Ls5/g;Lb6/r0;)V

    return-void
.end method

.method public final m([Ljava/lang/String;Ls5/g;Lb6/r0;)V
    .locals 3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    iget-object p0, p0, Lr6/o;->p:Lb6/u;

    if-eqz p0, :cond_2

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v1, v0, :cond_4

    aget-object p0, p1, v1

    if-nez p0, :cond_3

    invoke-virtual {p2}, Ls5/g;->U()V

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p0}, Ls5/g;->q0(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    return-void
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 3

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ls6/a;->o:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v1, Lb6/q0;->E:Lb6/q0;

    iget-object v2, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v2, v1}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lr6/o;->m([Ljava/lang/String;Ls5/g;Lb6/r0;)V

    return-void

    :cond_2
    invoke-virtual {p2, p1}, Ls5/g;->m0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lr6/o;->m([Ljava/lang/String;Ls5/g;Lb6/r0;)V

    invoke-virtual {p2}, Ls5/g;->P()V

    return-void
.end method
