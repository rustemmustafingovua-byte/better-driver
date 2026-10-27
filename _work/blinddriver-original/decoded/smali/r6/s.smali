.class public final Lr6/s;
.super Lq6/c;
.source "SourceFile"


# instance fields
.field public final D:Lu6/r;


# direct methods
.method public constructor <init>(Lq6/c;Lu6/r;)V
    .locals 1

    .line 3
    iget-object v0, p1, Lq6/c;->n:Lw5/k;

    invoke-direct {p0, p1, v0}, Lq6/c;-><init>(Lq6/c;Lw5/k;)V

    .line 4
    iput-object p2, p0, Lr6/s;->D:Lu6/r;

    return-void
.end method

.method public constructor <init>(Lr6/s;Lu6/p;Lw5/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lq6/c;-><init>(Lq6/c;Lw5/k;)V

    .line 2
    iput-object p2, p0, Lr6/s;->D:Lu6/r;

    return-void
.end method


# virtual methods
.method public final h(Lpc/h;Ljava/lang/Class;Lb6/r0;)Lb6/u;
    .locals 2

    iget-object p1, p0, Lq6/c;->r:Lb6/l;

    if-eqz p1, :cond_0

    invoke-virtual {p3, p1, p2}, Lb6/r0;->S(Lb6/l;Ljava/lang/Class;)Lb6/l;

    move-result-object p1

    invoke-virtual {p3, p1, p0}, Lb6/r0;->c0(Lb6/l;Lb6/f;)Lb6/u;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p2, p0}, Lb6/r0;->d0(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lb6/u;->isUnwrappingSerializer()Z

    move-result p3

    iget-object v0, p0, Lr6/s;->D:Lu6/r;

    if-eqz p3, :cond_1

    instance-of p3, p1, Lr6/t;

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Lr6/t;

    iget-object p3, p3, Lr6/t;->v:Lu6/r;

    new-instance v1, Lu6/p;

    invoke-direct {v1, v0, p3}, Lu6/p;-><init>(Lu6/r;Lu6/r;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Lb6/u;->unwrappingSerializer(Lu6/r;)Lb6/u;

    move-result-object p1

    iget-object p3, p0, Lq6/c;->y:Lpc/h;

    invoke-virtual {p3, p2, p1}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object p2

    iput-object p2, p0, Lq6/c;->y:Lpc/h;

    return-object p1
.end method

.method public final k(Lb6/u;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lb6/u;->isUnwrappingSerializer()Z

    move-result v0

    iget-object v1, p0, Lr6/s;->D:Lu6/r;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lr6/t;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lr6/t;

    iget-object v0, v0, Lr6/t;->v:Lu6/r;

    new-instance v2, Lu6/p;

    invoke-direct {v2, v1, v0}, Lu6/p;-><init>(Lu6/r;Lu6/r;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {p1, v1}, Lb6/u;->unwrappingSerializer(Lu6/r;)Lb6/u;

    move-result-object p1

    :cond_1
    invoke-super {p0, p1}, Lq6/c;->k(Lb6/u;)V

    return-void
.end method

.method public final m(Lu6/r;)Lq6/c;
    .locals 3

    iget-object v0, p0, Lq6/c;->n:Lw5/k;

    iget-object v0, v0, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu6/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lu6/p;

    iget-object v2, p0, Lr6/s;->D:Lu6/r;

    invoke-direct {v1, p1, v2}, Lu6/p;-><init>(Lu6/r;Lu6/r;)V

    new-instance p1, Lw5/k;

    invoke-direct {p1, v0}, Lw5/k;-><init>(Ljava/lang/String;)V

    new-instance v0, Lr6/s;

    invoke-direct {v0, p0, v1, p1}, Lr6/s;-><init>(Lr6/s;Lu6/p;Lw5/k;)V

    return-object v0
.end method

.method public final o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 4

    iget-object v0, p0, Lq6/c;->t:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq6/c;->u:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lq6/c;->v:Lb6/u;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lq6/c;->y:Lpc/h;

    invoke-virtual {v2, v1}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v2, v1, p3}, Lr6/s;->h(Lpc/h;Ljava/lang/Class;Lb6/r0;)Lb6/u;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    :cond_3
    :goto_1
    iget-object v2, p0, Lq6/c;->A:Ljava/lang/Object;

    if-eqz v2, :cond_5

    sget-object v3, Lr5/z;->n:Lr5/z;

    if-ne v3, v2, :cond_4

    invoke-virtual {v1, p3, v0}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    if-ne v0, p1, :cond_6

    invoke-virtual {p0, p2, p3, v1}, Lq6/c;->i(Ls5/g;Lb6/r0;Lb6/u;)Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_2
    return-void

    :cond_6
    invoke-virtual {v1}, Lb6/u;->isUnwrappingSerializer()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lq6/c;->n:Lw5/k;

    invoke-virtual {p2, p1}, Ls5/g;->T(Ls5/q;)V

    :cond_7
    iget-object p0, p0, Lq6/c;->x:Ln6/e;

    if-nez p0, :cond_8

    invoke-virtual {v1, v0, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_8
    invoke-virtual {v1, v0, p2, p3, p0}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    return-void
.end method
