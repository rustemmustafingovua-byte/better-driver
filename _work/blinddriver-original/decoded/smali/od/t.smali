.class public final synthetic Lod/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lf2/y0;


# direct methods
.method public synthetic constructor <init>(Lu/s;Lf2/y0;I)V
    .locals 0

    iput p3, p0, Lod/t;->l:I

    iput-object p2, p0, Lod/t;->m:Lf2/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/t;->l:I

    iget-object p0, p0, Lod/t;->m:Lf2/y0;

    packed-switch v0, :pswitch_data_0

    :try_start_0
    const-string v0, "https://account.mapbox.com/"

    invoke-virtual {p0, v0}, Lf2/y0;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    :try_start_1
    const-string v0, "https://chatmag.github.io/blinddriver-releases/"

    invoke-virtual {p0, v0}, Lf2/y0;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    :try_start_2
    const-string v0, "https://t.me/BlindDriver"

    invoke-virtual {p0, v0}, Lf2/y0;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    :try_start_3
    const-string v0, "https://chatmag.github.io/blinddriver-releases/delete.html"

    invoke-virtual {p0, v0}, Lf2/y0;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    :try_start_4
    const-string v0, "https://chatmag.github.io/blinddriver-releases/privacy.html"

    invoke-virtual {p0, v0}, Lf2/y0;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
