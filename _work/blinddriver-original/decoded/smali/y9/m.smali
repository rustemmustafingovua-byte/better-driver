.class public final Ly9/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/h;


# instance fields
.field public final synthetic l:Lw9/e;

.field public final synthetic m:I


# direct methods
.method public constructor <init>(Lw9/e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly9/m;->l:Lw9/e;

    iput p2, p0, Ly9/m;->m:I

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Ly9/l;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ly9/l;

    iget v1, v0, Ly9/l;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ly9/l;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Ly9/l;

    invoke-direct {v0, p0, p2}, Ly9/l;-><init>(Ly9/m;Ly8/c;)V

    :goto_0
    iget-object p2, v0, Ly9/l;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Ly9/l;->n:I

    sget-object v3, Lt8/z;->a:Lt8/z;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p2, Lu8/u;

    iget v2, p0, Ly9/m;->m:I

    invoke-direct {p2, v2, p1}, Lu8/u;-><init>(ILjava/lang/Object;)V

    iput v5, v0, Ly9/l;->n:I

    iget-object p0, p0, Ly9/m;->l:Lw9/e;

    invoke-interface {p0, p2, v0}, Lw9/u;->f(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_6

    :cond_4
    :goto_1
    iput v4, v0, Ly9/l;->n:I

    invoke-interface {v0}, Ly8/c;->getContext()Ly8/h;

    move-result-object p0

    invoke-static {p0}, Lu9/v;->i(Ly8/h;)V

    invoke-static {v0}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object p1

    instance-of p2, p1, Lz9/g;

    if-eqz p2, :cond_5

    check-cast p1, Lz9/g;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_6

    move-object p0, v3

    goto :goto_4

    :cond_6
    iget-object p2, p1, Lz9/g;->o:Lu9/p;

    invoke-static {p2, p0}, Lz9/b;->j(Lu9/p;Ly8/h;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object v3, p1, Lz9/g;->q:Ljava/lang/Object;

    iput v5, p1, Lu9/c0;->n:I

    invoke-virtual {p2, p0, p1}, Lu9/p;->S(Ly8/h;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_7
    new-instance v0, Lu9/w1;

    sget-object v2, Lu9/w1;->m:Lu9/q;

    invoke-direct {v0, v2}, Ly8/a;-><init>(Ly8/g;)V

    invoke-interface {p0, v0}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object p0

    iput-object v3, p1, Lz9/g;->q:Ljava/lang/Object;

    iput v5, p1, Lu9/c0;->n:I

    invoke-virtual {p2, p0, p1}, Lu9/p;->S(Ly8/h;Ljava/lang/Runnable;)V

    :goto_3
    move-object p0, v1

    :goto_4
    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_8

    goto :goto_5

    :cond_8
    move-object p0, v3

    :goto_5
    if-ne p0, v1, :cond_9

    :goto_6
    return-object v1

    :cond_9
    :goto_7
    return-object v3
.end method
