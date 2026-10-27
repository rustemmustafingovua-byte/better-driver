.class public final Lr6/a;
.super Lq6/c;
.source "SourceFile"


# instance fields
.field public final D:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lu6/v;Lu6/b;Lb6/l;)V
    .locals 11

    iget-object v0, p2, Lu6/v;->q:Lr5/a0;

    iget-object v2, p2, Lu6/v;->n:Lj6/h;

    sget-object v3, Lr5/z;->p:Lr5/z;

    sget-object v4, Lr5/z;->l:Lr5/z;

    const/4 v5, 0x0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move v8, v5

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lr5/a0;->l:Lr5/z;

    if-eq v6, v4, :cond_0

    if-eq v6, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :goto_1
    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    move-object v9, v0

    goto :goto_4

    :cond_2
    iget-object v0, v0, Lr5/a0;->l:Lr5/z;

    if-eq v0, v4, :cond_4

    sget-object v4, Lr5/z;->m:Lr5/z;

    if-eq v0, v4, :cond_4

    if-ne v0, v3, :cond_3

    goto :goto_3

    :cond_3
    sget-object v0, Lr5/z;->n:Lr5/z;

    goto :goto_2

    :cond_4
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    :goto_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v10}, Lq6/c;-><init>(Lj6/v;Lj6/h;Lu6/b;Lb6/l;Lb6/u;Lo6/r;Lb6/l;ZLjava/lang/Object;[Ljava/lang/Class;)V

    iput-object p1, p0, Lr6/a;->D:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 4

    iget-object v0, p0, Lr6/a;->D:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lb6/r0;->e0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lq6/c;->w:Lb6/u;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ls5/g;->U()V

    return-void

    :cond_1
    iget-object v1, p0, Lq6/c;->v:Lb6/u;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lq6/c;->y:Lpc/h;

    invoke-virtual {v2, v1}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v2, v1, p3}, Lq6/c;->h(Lpc/h;Ljava/lang/Class;Lb6/r0;)Lb6/u;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :cond_3
    :goto_0
    iget-object v2, p0, Lq6/c;->A:Ljava/lang/Object;

    if-eqz v2, :cond_5

    sget-object v3, Lr5/z;->n:Lr5/z;

    if-ne v3, v2, :cond_4

    invoke-virtual {v1, p3, v0}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p2, p3}, Lq6/c;->p(Ls5/g;Lb6/r0;)V

    return-void

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p2, p3}, Lq6/c;->p(Ls5/g;Lb6/r0;)V

    return-void

    :cond_5
    if-ne v0, p1, :cond_6

    invoke-virtual {p0, p2, p3, v1}, Lq6/c;->i(Ls5/g;Lb6/r0;Lb6/u;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    iget-object p0, p0, Lq6/c;->x:Ln6/e;

    if-nez p0, :cond_7

    invoke-virtual {v1, v0, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_7
    invoke-virtual {v1, v0, p2, p3, p0}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    return-void
.end method

.method public final o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 5

    iget-object v0, p0, Lr6/a;->D:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lb6/r0;->e0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lq6/c;->n:Lw5/k;

    if-nez v0, :cond_0

    iget-object p1, p0, Lq6/c;->w:Lb6/u;

    if-eqz p1, :cond_5

    invoke-virtual {p2, v1}, Ls5/g;->T(Ls5/q;)V

    iget-object p0, p0, Lq6/c;->w:Lb6/u;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_0
    iget-object v2, p0, Lq6/c;->v:Lb6/u;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lq6/c;->y:Lpc/h;

    invoke-virtual {v3, v2}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3, v2, p3}, Lq6/c;->h(Lpc/h;Ljava/lang/Class;Lb6/r0;)Lb6/u;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v4

    :cond_2
    :goto_0
    iget-object v3, p0, Lq6/c;->A:Ljava/lang/Object;

    if-eqz v3, :cond_4

    sget-object v4, Lr5/z;->n:Lr5/z;

    if-ne v4, v3, :cond_3

    invoke-virtual {v2, p3, v0}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    if-ne v0, p1, :cond_6

    invoke-virtual {p0, p2, p3, v2}, Lq6/c;->i(Ls5/g;Lb6/r0;Lb6/u;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-virtual {p2, v1}, Ls5/g;->T(Ls5/q;)V

    iget-object p0, p0, Lq6/c;->x:Ln6/e;

    if-nez p0, :cond_7

    invoke-virtual {v2, v0, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_7
    invoke-virtual {v2, v0, p2, p3, p0}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    return-void
.end method
