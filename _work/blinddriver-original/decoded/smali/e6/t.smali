.class public final Le6/t;
.super Le6/w;
.source "SourceFile"


# instance fields
.field public final synthetic s:I

.field public final t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb6/e;Lj6/h;Lb6/l;Lb6/n;Lp6/m;)V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Le6/t;->s:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v1 .. v7}, Le6/w;-><init>(Lb6/e;Lj6/h;Lb6/l;Lb6/w;Lb6/n;Ln6/d;)V

    .line 4
    iput-object p5, v1, Le6/t;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb6/e;Lj6/h;Lb6/l;Lb6/w;Lb6/n;Ln6/d;Le6/c0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Le6/t;->s:I

    .line 1
    invoke-direct/range {p0 .. p6}, Le6/w;-><init>(Lb6/e;Lj6/h;Lb6/l;Lb6/w;Lb6/n;Ln6/d;)V

    .line 2
    iput-object p7, p0, Le6/t;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Le6/t;->s:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Le6/w;->m:Lj6/h;

    check-cast v0, Lj6/f;

    invoke-virtual {v0, p1}, Lj6/f;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_1

    iget-object v1, p0, Le6/t;->t:Ljava/lang/Object;

    check-cast v1, Le6/c0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lj6/f;->q(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le6/w;->o:Lb6/l;

    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {p1}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Le6/w;->l:Lb6/e;

    iget-object p0, p0, Lb6/e;->l:Ljava/io/Serializable;

    check-cast p0, Lb6/i0;

    iget-object p0, p0, Lb6/i0;->l:Ljava/lang/String;

    const-string p2, " for use as \"any-setter\" \'"

    const-string p3, "\'"

    const-string v0, "Cannot create an instance of "

    invoke-static {v0, p1, p2, p0, p3}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lb6/p;

    invoke-direct {p1, v2, p0}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lb6/q;

    invoke-virtual {p0, p1, p2, p3}, Le6/t;->i(Ljava/lang/Object;Ljava/lang/String;Lb6/q;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Le6/t;->s:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Le6/w;->c(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Le6/w;->p:Lb6/n;

    invoke-virtual {p0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Le6/t;->s:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Le6/w;->d(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Le6/w;->p:Lb6/n;

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb6/q;

    invoke-virtual {p0, p3, p4, p1}, Le6/t;->i(Ljava/lang/Object;Ljava/lang/String;Lb6/q;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lb6/n;)Le6/w;
    .locals 9

    iget v0, p0, Le6/t;->s:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Le6/t;

    iget-object v0, p0, Le6/t;->t:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Le6/c0;

    iget-object v2, p0, Le6/w;->l:Lb6/e;

    iget-object v3, p0, Le6/w;->m:Lj6/h;

    iget-object v4, p0, Le6/w;->o:Lb6/l;

    iget-object v5, p0, Le6/w;->r:Lb6/w;

    iget-object v7, p0, Le6/w;->q:Ln6/d;

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Le6/t;-><init>(Lb6/e;Lj6/h;Lb6/l;Lb6/w;Lb6/n;Ln6/d;Le6/c0;)V

    return-object v1

    :pswitch_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i(Ljava/lang/Object;Ljava/lang/String;Lb6/q;)V
    .locals 2

    iget-object v0, p0, Le6/w;->m:Lj6/h;

    check-cast v0, Lj6/f;

    invoke-virtual {v0, p1}, Lj6/f;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p0, p0, Le6/t;->t:Ljava/lang/Object;

    check-cast p0, Lp6/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lp6/v;

    invoke-direct {v1, p0}, Lp6/v;-><init>(Lp6/m;)V

    invoke-virtual {v0, p1, v1}, Lj6/f;->q(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of p1, v1, Lp6/v;

    if-eqz p1, :cond_2

    check-cast v1, Lp6/v;

    :goto_0
    if-nez p3, :cond_1

    iget-object p0, v1, Lp6/f;->l:Lp6/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lp6/t;->l:Lp6/t;

    :cond_1
    invoke-virtual {v1, p2, p3}, Lp6/v;->I(Ljava/lang/String;Lb6/q;)V

    return-void

    :cond_2
    iget-object p0, p0, Le6/w;->l:Lb6/e;

    iget-object p0, p0, Lb6/e;->l:Ljava/io/Serializable;

    check-cast p0, Lb6/i0;

    iget-object p0, p0, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Value \"any-setter\" \'"

    const-string p3, "\' not `ObjectNode` but "

    invoke-static {p2, p0, p3, p1}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lb6/p;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method
