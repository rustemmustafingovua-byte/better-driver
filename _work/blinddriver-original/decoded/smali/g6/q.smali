.class public final Lg6/q;
.super Lg6/f1;
.source "SourceFile"

# interfaces
.implements Le6/k;


# instance fields
.field public final o:Lb6/l;

.field public final p:Lb6/n;

.field public final q:Le6/r;

.field public final r:Z

.field public final s:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lb6/l;)V
    .locals 2

    .line 1
    const-class v0, Ljava/util/EnumSet;

    invoke-direct {p0, v0}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Lg6/q;->o:Lb6/l;

    .line 3
    invoke-virtual {p1}, Lb6/l;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lg6/q;->p:Lb6/n;

    .line 5
    iput-object p1, p0, Lg6/q;->s:Ljava/lang/Boolean;

    .line 6
    iput-object p1, p0, Lg6/q;->q:Le6/r;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lg6/q;->r:Z

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not Java Enum type"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lg6/q;Lb6/n;Le6/r;Ljava/lang/Boolean;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lg6/f1;-><init>(Lg6/f1;)V

    .line 10
    iget-object p1, p1, Lg6/q;->o:Lb6/l;

    iput-object p1, p0, Lg6/q;->o:Lb6/l;

    .line 11
    iput-object p2, p0, Lg6/q;->p:Lb6/n;

    .line 12
    iput-object p3, p0, Lg6/q;->q:Le6/r;

    .line 13
    invoke-static {p3}, Lf6/q;->a(Le6/r;)Z

    move-result p1

    iput-boolean p1, p0, Lg6/q;->r:Z

    .line 14
    iput-object p4, p0, Lg6/q;->s:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final Z(Ls5/k;Lb6/i;Ljava/util/EnumSet;)V
    .locals 2

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->x:Ls5/n;

    if-eq v0, v1, :cond_3

    sget-object v1, Ls5/n;->F:Ls5/n;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lg6/q;->r:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg6/q;->q:Le6/r;

    invoke-interface {v0, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lg6/q;->p:Lb6/n;

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p3, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-void

    :goto_2
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    invoke-static {p0, p3, p1}, Lb6/p;->j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;

    move-result-object p0

    throw p0
.end method

.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 3

    const-class v0, Ljava/util/EnumSet;

    invoke-static {p1, p2, v0}, Lg6/f1;->T(Lb6/i;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lr5/n;->l:Lr5/n;

    invoke-virtual {v0, v1}, Lr5/q;->b(Lr5/n;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg6/q;->o:Lb6/l;

    iget-object v2, p0, Lg6/q;->p:Lb6/n;

    if-nez v2, :cond_1

    invoke-virtual {p1, v1, p2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2, p2, v1}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object v1

    :goto_1
    invoke-static {p1, p2, v1}, Lg6/f1;->R(Lb6/i;Lb6/f;Lb6/n;)Le6/r;

    move-result-object p1

    iget-object p2, p0, Lg6/q;->s:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-ne v2, v1, :cond_2

    iget-object p2, p0, Lg6/q;->q:Le6/r;

    if-ne p2, v1, :cond_2

    return-object p0

    :cond_2
    new-instance p2, Lg6/q;

    invoke-direct {p2, p0, v1, p1, v0}, Lg6/q;-><init>(Lg6/q;Lb6/n;Le6/r;Ljava/lang/Boolean;)V

    return-object p2
.end method

.method public final a0(Ls5/k;Lb6/i;Ljava/util/EnumSet;)V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iget-object v2, p0, Lg6/q;->s:Ljava/lang/Boolean;

    if-eq v2, v0, :cond_1

    if-nez v2, :cond_0

    sget-object v0, Lb6/j;->E:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class p0, Ljava/util/EnumSet;

    invoke-virtual {p2, p0, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Ls5/n;->F:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    iget-object p0, p0, Lg6/q;->p:Lb6/n;

    invoke-virtual {p0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    if-eqz p0, :cond_2

    invoke-virtual {p3, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    return-void

    :goto_1
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    invoke-static {p0, p3, p1}, Lb6/p;->j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;

    move-result-object p0

    throw p0

    :cond_3
    iget-object p0, p0, Lg6/q;->o:Lb6/l;

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v1
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 2

    .line 5
    iget-object v0, p0, Lg6/q;->o:Lb6/l;

    .line 6
    iget-object v0, v0, Lb6/l;->o:Ljava/lang/Class;

    .line 7
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lg6/q;->a0(Ls5/k;Lb6/i;Ljava/util/EnumSet;)V

    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lg6/q;->Z(Ls5/k;Lb6/i;Ljava/util/EnumSet;)V

    return-object v0
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p3, Ljava/util/EnumSet;

    .line 2
    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lg6/q;->a0(Ls5/k;Lb6/i;Ljava/util/EnumSet;)V

    return-object p3

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lg6/q;->Z(Ls5/k;Lb6/i;Ljava/util/EnumSet;)V

    return-object p3
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1, p2}, Ln6/d;->c(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getEmptyAccessPattern()Lu6/a;
    .locals 0

    sget-object p0, Lu6/a;->n:Lu6/a;

    return-object p0
.end method

.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg6/q;->o:Lb6/l;

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public final isCachable()Z
    .locals 0

    iget-object p0, p0, Lg6/q;->o:Lb6/l;

    iget-object p0, p0, Lb6/l;->q:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->m:Lt6/f;

    return-object p0
.end method

.method public final supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
