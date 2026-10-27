.class public final synthetic Lod/x5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/geo/PackInfo;


# direct methods
.method public synthetic constructor <init>(Lua/nav/geo/PackInfo;I)V
    .locals 0

    iput p2, p0, Lod/x5;->l:I

    iput-object p1, p0, Lod/x5;->m:Lua/nav/geo/PackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lod/x5;->l:I

    iget-object p0, p0, Lod/x5;->m:Lua/nav/geo/PackInfo;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->j()Lua/nav/geo/c;

    move-result-object v0

    iget-object p0, p0, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "id"

    invoke-static {p0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lua/nav/geo/c;->h:Lr9/i;

    invoke-virtual {v1, p0}, Lr9/i;->f(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lua/nav/geo/c;->f:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lua/nav/geo/c;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyc/p;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lyc/p;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v1

    invoke-virtual {v0, p0}, Lua/nav/geo/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lua/nav/geo/c;->c:Ljava/io/File;

    const-string v3, ".json"

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Lua/nav/geo/c;->d()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_2
    monitor-exit v1

    throw p0

    :pswitch_0
    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->j()Lua/nav/geo/c;

    move-result-object v0

    iget-object p0, p0, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lua/nav/geo/c;->b(Ljava/lang/String;)V

    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->j()Lua/nav/geo/c;

    move-result-object v0

    iget-object p0, p0, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lua/nav/geo/c;->b(Ljava/lang/String;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
