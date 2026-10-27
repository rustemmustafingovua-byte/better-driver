.class public final Lx9/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/g;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:La9/i;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;La9/i;I)V
    .locals 0

    .line 1
    iput p3, p0, Lx9/m;->l:I

    iput-object p1, p0, Lx9/m;->m:Ljava/lang/Object;

    iput-object p2, p0, Lx9/m;->n:La9/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lx9/g;Li9/e;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lx9/m;->l:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lx9/m;->m:Ljava/lang/Object;

    check-cast p2, La9/i;

    iput-object p2, p0, Lx9/m;->n:La9/i;

    return-void
.end method

.method public constructor <init>([Lx9/g;Li9/h;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lx9/m;->l:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lx9/m;->m:Ljava/lang/Object;

    check-cast p2, La9/i;

    iput-object p2, p0, Lx9/m;->n:La9/i;

    return-void
.end method


# virtual methods
.method public final a(Lx9/h;Ly8/c;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lx9/m;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lx9/m;->m:Ljava/lang/Object;

    check-cast v0, [Lx9/g;

    new-instance v1, Lx9/t;

    const/4 v2, 0x0

    iget-object p0, p0, Lx9/m;->n:La9/i;

    invoke-direct {v1, v2, p0}, Lx9/t;-><init>(Ly8/c;Li9/h;)V

    sget-object p0, Lx9/v;->l:Lx9/v;

    invoke-static {p0, v1, p1, p2, v0}, Ly9/c;->a(Li9/a;Li9/f;Lx9/h;Ly8/c;[Lx9/g;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    :goto_0
    return-object p0

    :pswitch_0
    iget-object v0, p0, Lx9/m;->m:Ljava/lang/Object;

    check-cast v0, [Lx9/g;

    new-instance v1, Lx9/o;

    iget-object p0, p0, Lx9/m;->n:La9/i;

    check-cast p0, Lsc/x;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lx9/o;-><init>(Ly8/c;Lsc/x;)V

    sget-object p0, Lx9/v;->l:Lx9/v;

    invoke-static {p0, v1, p1, p2, v0}, Ly9/c;->a(Li9/a;Li9/f;Lx9/h;Ly8/c;[Lx9/g;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    :goto_1
    return-object p0

    :pswitch_1
    iget-object v0, p0, Lx9/m;->m:Ljava/lang/Object;

    check-cast v0, Lx9/g;

    new-instance v1, Lb0/s1;

    iget-object p0, p0, Lx9/m;->n:La9/i;

    invoke-direct {v1, p1, p0}, Lb0/s1;-><init>(Lx9/h;Li9/e;)V

    invoke-interface {v0, v1, p2}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    :goto_2
    return-object p0

    :pswitch_2
    new-instance v0, Lj9/u;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lx9/m;->m:Ljava/lang/Object;

    check-cast v1, Ly9/j;

    new-instance v2, Lm/f;

    iget-object p0, p0, Lx9/m;->n:La9/i;

    check-cast p0, Lr0/r1;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, p0, v3}, Lm/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2, p2}, Ly9/f;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_3

    goto :goto_3

    :cond_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    :goto_3
    return-object p0

    :pswitch_3
    instance-of v0, p2, Lx9/l;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lx9/l;

    iget v1, v0, Lx9/l;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_4

    sub-int/2addr v1, v2

    iput v1, v0, Lx9/l;->m:I

    goto :goto_4

    :cond_4
    new-instance v0, Lx9/l;

    invoke-direct {v0, p0, p2}, Lx9/l;-><init>(Lx9/m;Ly8/c;)V

    :goto_4
    iget-object p2, v0, Lx9/l;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lx9/l;->m:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    if-eq v2, v4, :cond_6

    if-ne v2, v3, :cond_5

    iget-wide p0, v0, Lx9/l;->r:J

    iget-object v2, v0, Lx9/l;->q:Ljava/lang/Throwable;

    iget-object v5, v0, Lx9/l;->p:Lx9/h;

    iget-object v6, v0, Lx9/l;->o:Lx9/m;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_6

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget-wide p0, v0, Lx9/l;->r:J

    iget-object v2, v0, Lx9/l;->p:Lx9/h;

    iget-object v5, v0, Lx9/l;->o:Lx9/m;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v2

    goto :goto_5

    :cond_7
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    :cond_8
    iget-object p2, p0, Lx9/m;->m:Ljava/lang/Object;

    check-cast p2, Lc5/n;

    iput-object p0, v0, Lx9/l;->o:Lx9/m;

    iput-object p1, v0, Lx9/l;->p:Lx9/h;

    const/4 v2, 0x0

    iput-object v2, v0, Lx9/l;->q:Ljava/lang/Throwable;

    iput-wide v5, v0, Lx9/l;->r:J

    iput v4, v0, Lx9/l;->m:I

    invoke-static {p2, p1, v0}, Lx9/c0;->e(Lc5/n;Lx9/h;La9/c;)Ljava/io/Serializable;

    move-result-object p2

    if-ne p2, v1, :cond_9

    goto :goto_9

    :cond_9
    move-wide v9, v5

    move-object v6, p0

    move-object v5, p1

    move-wide p0, v9

    :goto_5
    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_c

    iget-object p2, v6, Lx9/m;->n:La9/i;

    check-cast p2, Ly4/l;

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p0, p1}, Ljava/lang/Long;-><init>(J)V

    iput-object v6, v0, Lx9/l;->o:Lx9/m;

    iput-object v5, v0, Lx9/l;->p:Lx9/h;

    iput-object v2, v0, Lx9/l;->q:Ljava/lang/Throwable;

    iput-wide p0, v0, Lx9/l;->r:J

    iput v3, v0, Lx9/l;->m:I

    invoke-virtual {p2, v5, v2, v7, v0}, Ly4/l;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    goto :goto_9

    :cond_a
    :goto_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    const-wide/16 v7, 0x1

    add-long/2addr p0, v7

    move p2, v4

    :goto_7
    move-wide v9, p0

    move-object p1, v5

    move-object p0, v6

    move-wide v5, v9

    goto :goto_8

    :cond_b
    throw v2

    :cond_c
    const/4 p2, 0x0

    goto :goto_7

    :goto_8
    if-nez p2, :cond_8

    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_9
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
