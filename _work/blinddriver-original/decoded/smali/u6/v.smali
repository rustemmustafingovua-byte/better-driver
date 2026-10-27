.class public final Lu6/v;
.super Lj6/v;
.source "SourceFile"


# static fields
.field public static final synthetic r:I


# instance fields
.field public final m:Lb6/d;

.field public final n:Lj6/h;

.field public final o:Lb6/h0;

.field public final p:Lb6/i0;

.field public final q:Lr5/a0;


# direct methods
.method public constructor <init>(Lb6/d;Lj6/h;Lb6/i0;Lb6/h0;Lr5/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu6/v;->m:Lb6/d;

    iput-object p2, p0, Lu6/v;->n:Lj6/h;

    iput-object p3, p0, Lu6/v;->p:Lb6/i0;

    if-nez p4, :cond_0

    sget-object p4, Lb6/h0;->t:Lb6/h0;

    :cond_0
    iput-object p4, p0, Lu6/v;->o:Lb6/h0;

    iput-object p5, p0, Lu6/v;->q:Lr5/a0;

    return-void
.end method


# virtual methods
.method public final b()Lb6/i0;
    .locals 0

    iget-object p0, p0, Lu6/v;->p:Lb6/i0;

    return-object p0
.end method

.method public final c()Lb6/h0;
    .locals 0

    iget-object p0, p0, Lu6/v;->o:Lb6/h0;

    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lu6/v;->n:Lj6/h;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lu6/v;->m:Lb6/d;

    invoke-virtual {p0, v0}, Lb6/d;->J(Lj6/a;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu6/v;->p:Lb6/i0;

    iget-object p0, p0, Lb6/i0;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Lr5/a0;
    .locals 0

    iget-object p0, p0, Lu6/v;->q:Lr5/a0;

    return-object p0
.end method

.method public final m()Lj6/m;
    .locals 1

    iget-object p0, p0, Lu6/v;->n:Lj6/h;

    instance-of v0, p0, Lj6/m;

    if-eqz v0, :cond_0

    check-cast p0, Lj6/m;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final n()Lj6/f;
    .locals 1

    iget-object p0, p0, Lu6/v;->n:Lj6/h;

    instance-of v0, p0, Lj6/f;

    if-eqz v0, :cond_0

    check-cast p0, Lj6/f;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final o()Lj6/i;
    .locals 1

    iget-object p0, p0, Lu6/v;->n:Lj6/h;

    instance-of v0, p0, Lj6/i;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lj6/i;

    iget-object v0, v0, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Lj6/i;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final p()Lj6/h;
    .locals 0

    iget-object p0, p0, Lu6/v;->n:Lj6/h;

    return-object p0
.end method

.method public final q()Lb6/l;
    .locals 0

    iget-object p0, p0, Lu6/v;->n:Lj6/h;

    if-nez p0, :cond_0

    sget-object p0, Lt6/p;->E:Lt6/k;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lj6/a;->h()Lb6/l;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lu6/v;->n:Lj6/h;

    if-nez p0, :cond_0

    const-class p0, Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lj6/a;->f()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final s()Lj6/i;
    .locals 2

    iget-object p0, p0, Lu6/v;->n:Lj6/h;

    instance-of v0, p0, Lj6/i;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lj6/i;

    iget-object v0, v0, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    check-cast p0, Lj6/i;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final t()Lb6/i0;
    .locals 1

    iget-object v0, p0, Lu6/v;->m:Lb6/d;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lu6/v;->n:Lj6/h;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lb6/d;->j0(Lj6/a;)Lb6/i0;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final u()Z
    .locals 0

    iget-object p0, p0, Lu6/v;->n:Lj6/h;

    instance-of p0, p0, Lj6/m;

    return p0
.end method

.method public final v()Z
    .locals 0

    iget-object p0, p0, Lu6/v;->n:Lj6/h;

    instance-of p0, p0, Lj6/f;

    return p0
.end method

.method public final w()Z
    .locals 0

    invoke-virtual {p0}, Lu6/v;->s()Lj6/i;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final x()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final z(Ljava/lang/String;)Lj6/v;
    .locals 7

    iget-object v0, p0, Lu6/v;->p:Lb6/i0;

    iget-object v1, v0, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lb6/i0;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    new-instance v1, Lu6/v;

    new-instance v4, Lb6/i0;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lb6/i0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lu6/v;->o:Lb6/h0;

    iget-object v6, p0, Lu6/v;->q:Lr5/a0;

    iget-object v2, p0, Lu6/v;->m:Lb6/d;

    iget-object v3, p0, Lu6/v;->n:Lj6/h;

    invoke-direct/range {v1 .. v6}, Lu6/v;-><init>(Lb6/d;Lj6/h;Lb6/i0;Lb6/h0;Lr5/a0;)V

    return-object v1
.end method
