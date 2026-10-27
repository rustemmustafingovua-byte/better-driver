.class public final synthetic Lod/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/c;

.field public final synthetic n:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lua/nav/c;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lod/e1;->l:I

    iput-object p1, p0, Lod/e1;->m:Lua/nav/c;

    iput-object p2, p0, Lod/e1;->n:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lod/e1;->l:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lod/e1;->m:Lua/nav/c;

    iget-object p0, p0, Lod/e1;->n:Landroid/content/Context;

    sget-object v2, Lsc/d;->m:Lsc/d;

    invoke-virtual {v0, v2}, Lua/nav/c;->O(Lsc/d;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcd/d;->D0:Lcd/c;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcd/d;->C0:Lcd/c;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lod/e1;->m:Lua/nav/c;

    iget-object p0, p0, Lod/e1;->n:Landroid/content/Context;

    sget-object v2, Lsc/d;->l:Lsc/d;

    invoke-virtual {v0, v2}, Lua/nav/c;->O(Lsc/d;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcd/d;->D0:Lcd/c;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    sget-object v0, Lcd/d;->C0:Lcd/c;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lod/e1;->m:Lua/nav/c;

    iget-object p0, p0, Lod/e1;->n:Landroid/content/Context;

    sget-object v2, Lsc/e;->m:Lsc/e;

    invoke-virtual {v0, v2}, Lua/nav/c;->X(Lsc/e;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcd/d;->F0:Lcd/c;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lod/e1;->m:Lua/nav/c;

    iget-object p0, p0, Lod/e1;->n:Landroid/content/Context;

    sget-object v2, Lsc/e;->l:Lsc/e;

    invoke-virtual {v0, v2}, Lua/nav/c;->X(Lsc/e;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcd/d;->E0:Lcd/c;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lod/e1;->m:Lua/nav/c;

    iget-object p0, p0, Lod/e1;->n:Landroid/content/Context;

    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->w()Lad/r2;

    move-result-object v2

    iget-object v2, v2, Lad/r2;->d:Lad/u2;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    if-eq v2, v4, :cond_5

    if-ne v2, v3, :cond_4

    sget-object v2, Lad/u2;->l:Lad/u2;

    goto :goto_3

    :cond_4
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    sget-object v2, Lad/u2;->n:Lad/u2;

    goto :goto_3

    :cond_6
    sget-object v2, Lad/u2;->m:Lad/u2;

    :goto_3
    invoke-static {}, Lsc/i0;->w()Lad/r2;

    move-result-object v5

    iput-object v2, v5, Lad/r2;->d:Lad/u2;

    iget-object v6, v5, Lad/r2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "mode"

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v6, Lad/u2;->n:Lad/u2;

    const/4 v7, 0x0

    if-ne v2, v6, :cond_b

    iget-object v6, v5, Lad/r2;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v6, v5, Lad/r2;->m:Landroid/media/AudioTrack;

    if-eqz v6, :cond_7

    :try_start_0
    invoke-virtual {v6}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v6

    invoke-static {v6}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_7
    :goto_4
    iget-object v6, v5, Lad/r2;->o:Lu8/k;

    invoke-virtual {v6}, Lu8/k;->clear()V

    iget-object v6, v5, Lad/r2;->b:Landroid/speech/tts/TextToSpeech;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_8
    iget-object v6, v5, Lad/r2;->u:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->clear()V

    iget-object v6, v5, Lad/r2;->p:Landroid/media/AudioManager;

    if-nez v6, :cond_9

    goto :goto_6

    :cond_9
    iget-object v8, v5, Lad/r2;->t:Landroid/media/AudioFocusRequest;

    if-eqz v8, :cond_a

    :try_start_1
    invoke-virtual {v6, v8}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v6

    invoke-static {v6}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_a
    :goto_5
    iput-object v7, v5, Lad/r2;->t:Landroid/media/AudioFocusRequest;

    :cond_b
    :goto_6
    iget-object v5, v0, Lua/nav/c;->v:Lx9/l0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v7, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v5, v0, Lua/nav/c;->c:Ldd/k0;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "voice_mode="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v0, v0, Lua/nav/c;->w:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/u2;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_e

    if-eq v0, v4, :cond_d

    if-ne v0, v3, :cond_c

    sget-object v0, Lcd/d;->f1:Lcd/c;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_c
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_d
    sget-object v0, Lcd/d;->e1:Lcd/c;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_e
    sget-object v0, Lcd/d;->d1:Lcd/c;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
