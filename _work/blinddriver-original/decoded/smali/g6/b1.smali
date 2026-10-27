.class public abstract Lg6/b1;
.super Lg6/f1;
.source "SourceFile"

# interfaces
.implements Le6/k;


# static fields
.field public static final synthetic r:I


# instance fields
.field public final o:Ljava/lang/Boolean;

.field public transient p:Ljava/lang/Object;

.field public final q:Le6/r;


# direct methods
.method public constructor <init>(Lg6/b1;Le6/r;Ljava/lang/Boolean;)V
    .locals 0

    .line 4
    iget-object p1, p1, Lg6/f1;->l:Ljava/lang/Class;

    invoke-direct {p0, p1}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    .line 5
    iput-object p3, p0, Lg6/b1;->o:Ljava/lang/Boolean;

    .line 6
    iput-object p2, p0, Lg6/b1;->q:Le6/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lg6/b1;->o:Ljava/lang/Boolean;

    .line 3
    iput-object p1, p0, Lg6/b1;->q:Le6/r;

    return-void
.end method


# virtual methods
.method public abstract Z(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 5

    iget-object v0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Lg6/f1;->T(Lb6/i;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lr5/n;->l:Lr5/n;

    invoke-virtual {v1, v3}, Lr5/q;->b(Lr5/n;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lb6/f;->c()Lb6/h0;

    move-result-object v3

    iget-object v3, v3, Lb6/h0;->r:Lr5/b1;

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lb6/i;->q:Lb6/h;

    iget-object v3, v3, Ld6/n;->r:La6/n;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lr5/b1;->o:Lr5/b1;

    :goto_1
    sget-object v4, Lr5/b1;->l:Lr5/b1;

    if-ne v3, v4, :cond_2

    sget-object v2, Lf6/q;->n:Lf6/q;

    goto :goto_2

    :cond_2
    sget-object v4, Lr5/b1;->m:Lr5/b1;

    if-ne v3, v4, :cond_4

    if-nez p2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p1

    new-instance p2, Lf6/q;

    invoke-direct {p2, v2, p1}, Lf6/q;-><init>(Lb6/i0;Lb6/l;)V

    move-object v2, p2

    goto :goto_2

    :cond_3
    invoke-interface {p2}, Lb6/f;->getType()Lb6/l;

    move-result-object p1

    invoke-virtual {p1}, Lb6/l;->Q()Lb6/l;

    move-result-object p1

    new-instance v2, Lf6/q;

    invoke-interface {p2}, Lb6/f;->b()Lb6/i0;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Lf6/q;-><init>(Lb6/i0;Lb6/l;)V

    :cond_4
    :goto_2
    iget-object p1, p0, Lg6/b1;->o:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lg6/b1;->q:Le6/r;

    if-ne v2, p1, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {p0, v2, v1}, Lg6/b1;->d0(Le6/r;Ljava/lang/Boolean;)Lg6/b1;

    move-result-object p0

    return-object p0
.end method

.method public abstract a0()Ljava/lang/Object;
.end method

.method public final b0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lg6/b1;->o:Ljava/lang/Boolean;

    if-eq v1, v0, :cond_1

    if-nez v1, :cond_0

    sget-object v0, Lb6/j;->E:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sget-object v1, Ls5/n;->A:Ls5/n;

    invoke-virtual {p1, v1}, Ls5/k;->q0(Ls5/n;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg6/f1;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0, p1, p2}, Lg6/f1;->s(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lg6/b1;->c0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p2, p0, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract c0(Ls5/k;Lb6/i;)Ljava/lang/Object;
.end method

.method public abstract d0(Le6/r;Ljava/lang/Boolean;)Lg6/b1;
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0, p3, p1}, Lg6/b1;->Z(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1, p2}, Ln6/d;->c(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getEmptyAccessPattern()Lu6/a;
    .locals 0

    sget-object p0, Lu6/a;->m:Lu6/a;

    return-object p0
.end method

.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lg6/b1;->p:Ljava/lang/Object;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lg6/b1;->a0()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lg6/b1;->p:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->l:Lt6/f;

    return-object p0
.end method

.method public final supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
