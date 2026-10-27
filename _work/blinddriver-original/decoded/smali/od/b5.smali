.class public final Lod/b5;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:J

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/File;JILjava/io/File;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lod/b5;->l:I

    .line 1
    iput-object p1, p0, Lod/b5;->o:Ljava/lang/Object;

    iput-wide p2, p0, Lod/b5;->n:J

    iput p4, p0, Lod/b5;->m:I

    iput-object p5, p0, Lod/b5;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lr/s0;JLy8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lod/b5;->l:I

    .line 2
    iput-object p1, p0, Lod/b5;->p:Ljava/lang/Object;

    iput-wide p2, p0, Lod/b5;->n:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 11

    iget v0, p0, Lod/b5;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lod/b5;

    iget-object v1, p0, Lod/b5;->p:Ljava/lang/Object;

    check-cast v1, Lr/s0;

    iget-wide v2, p0, Lod/b5;->n:J

    invoke-direct {v0, v1, v2, v3, p2}, Lod/b5;-><init>(Lr/s0;JLy8/c;)V

    iput-object p1, v0, Lod/b5;->o:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v4, Lod/b5;

    iget-object p1, p0, Lod/b5;->o:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/io/File;

    iget v8, p0, Lod/b5;->m:I

    iget-object p1, p0, Lod/b5;->p:Ljava/lang/Object;

    move-object v9, p1

    check-cast v9, Ljava/io/File;

    iget-wide v6, p0, Lod/b5;->n:J

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lod/b5;-><init>(Ljava/io/File;JILjava/io/File;Ly8/c;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/b5;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lod/b5;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/b5;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/b5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lod/b5;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/b5;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/b5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lod/b5;->l:I

    iget-wide v1, p0, Lod/b5;->n:J

    iget-object v3, p0, Lod/b5;->p:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v4, p0, Lod/b5;->m:I

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v5, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lod/b5;->o:Ljava/lang/Object;

    check-cast p1, Lu9/t;

    check-cast v3, Lr/s0;

    iget-object v3, v3, Lr/s0;->W:Li9/f;

    new-instance v4, Ll1/b;

    invoke-direct {v4, v1, v2}, Ll1/b;-><init>(J)V

    iput v5, p0, Lod/b5;->m:I

    invoke-interface {v3, p1, v4, p0}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_1
    return-object v0

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Led/i;->a:Lr9/i;

    iget-object p1, p0, Lod/b5;->o:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget p0, p0, Lod/b5;->m:I

    int-to-long v4, p0

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    sub-long/2addr v1, v4

    check-cast v3, Ljava/io/File;

    invoke-static {p1, v1, v2, v3}, Led/i;->d(Ljava/io/File;JLjava/io/File;)Lt8/j;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
