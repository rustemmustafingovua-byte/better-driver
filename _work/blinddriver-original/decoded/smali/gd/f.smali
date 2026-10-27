.class public final Lgd/f;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ly8/c;I)V
    .locals 0

    iput p3, p0, Lgd/f;->l:I

    iput-object p1, p0, Lgd/f;->m:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    iget p1, p0, Lgd/f;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lgd/f;

    iget-object p0, p0, Lgd/f;->m:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lgd/f;-><init>(Ljava/lang/String;Ly8/c;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lgd/f;

    iget-object p0, p0, Lgd/f;->m:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lgd/f;-><init>(Ljava/lang/String;Ly8/c;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lgd/f;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lgd/f;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lgd/f;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lgd/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lgd/f;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lgd/f;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lgd/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lgd/f;->l:I

    const/4 v1, 0x5

    iget-object p0, p0, Lgd/f;->m:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    const-string v0, "https://api.mapbox.com/directions/v5/mapbox/driving/30.5234,50.4501;30.5300,50.4560?overview=false&access_token="

    sget-object v2, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    :try_start_0
    invoke-static {p0}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lgd/h;->b:Lla/v;

    new-instance v0, Landroidx/lifecycle/a1;

    invoke-direct {v0, v1}, Landroidx/lifecycle/a1;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/lifecycle/a1;->G(Ljava/lang/String;)V

    new-instance p0, Lg7/c;

    invoke-direct {p0, v0}, Lg7/c;-><init>(Landroidx/lifecycle/a1;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lpa/p;

    invoke-direct {v0, p1, p0}, Lpa/p;-><init>(Lla/v;Lg7/c;)V

    invoke-virtual {v0}, Lpa/p;->i()Lla/c0;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean p1, p0, Lla/c0;->z:Z

    if-eqz p1, :cond_0

    sget-object p1, Lid/m;->l:Lid/m;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget p1, p0, Lla/c0;->o:I

    const/16 v0, 0x191

    if-ne p1, v0, :cond_1

    sget-object p1, Lid/m;->m:Lid/m;

    goto :goto_0

    :cond_1
    const/16 v0, 0x193

    if-ne p1, v0, :cond_2

    sget-object p1, Lid/m;->n:Lid/m;

    goto :goto_0

    :cond_2
    sget-object p1, Lid/m;->o:Lid/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lla/c0;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {p0, p1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    sget-object p1, Lid/m;->o:Lid/m;

    :goto_2
    return-object p1

    :pswitch_0
    const-string v0, "HTTP "

    sget-object v2, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lgd/h;->b:Lla/v;

    new-instance v2, Landroidx/lifecycle/a1;

    invoke-direct {v2, v1}, Landroidx/lifecycle/a1;-><init>(I)V

    invoke-virtual {v2, p0}, Landroidx/lifecycle/a1;->G(Ljava/lang/String;)V

    new-instance v1, Lg7/c;

    invoke-direct {v1, v2}, Lg7/c;-><init>(Landroidx/lifecycle/a1;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lpa/p;

    invoke-direct {v2, p1, v1}, Lpa/p;-><init>(Lla/v;Lg7/c;)V

    invoke-virtual {v2}, Lpa/p;->i()Lla/c0;

    move-result-object p1

    :try_start_5
    iget-object v1, p1, Lla/c0;->r:Lla/e0;

    invoke-virtual {v1}, Lla/e0;->k()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p1, Lla/c0;->z:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lla/c0;->close()V

    return-object v1

    :cond_3
    :try_start_6
    new-instance v2, Ljava/io/IOException;

    iget v3, p1, Lla/c0;->o:I

    const/16 v4, 0xc8

    invoke-static {v4, v1}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgd/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {p1, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
