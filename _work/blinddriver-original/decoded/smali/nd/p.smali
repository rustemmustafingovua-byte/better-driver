.class public final synthetic Lnd/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnd/p;->l:I

    iput-object p1, p0, Lnd/p;->m:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lu/s;Landroid/content/Context;I)V
    .locals 0

    .line 2
    iput p3, p0, Lnd/p;->l:I

    iput-object p2, p0, Lnd/p;->m:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lnd/p;->l:I

    const/4 v1, 0x1

    const/high16 v2, 0x10000000

    const/4 v3, 0x0

    sget-object v4, Lt8/z;->a:Lt8/z;

    iget-object p0, p0, Lnd/p;->m:Landroid/content/Context;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->u()Lua/nav/stats/a;

    move-result-object v7

    new-instance v8, Lod/y6;

    invoke-direct {v8, v1, p0}, Lod/y6;-><init>(ILjava/lang/Object;)V

    iget-object p0, v7, Lua/nav/stats/a;->d:Lld/n;

    iget-object v0, v7, Lua/nav/stats/a;->j:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v7}, Lua/nav/stats/a;->b()Ljava/util/List;

    move-result-object v6

    iget-object v1, p0, Lld/n;->d:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    move-wide v9, v1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lld/n;->c(J)Ljava/time/LocalDate;

    move-result-object p0

    const-wide/16 v1, 0x5a

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lt8/j;

    invoke-direct {v2, p0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, v7, Lua/nav/stats/a;->a:Lu9/t;

    new-instance v5, Lld/q;

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lld/q;-><init>(Ljava/util/List;Lua/nav/stats/a;Lod/y6;JLjava/time/LocalDate;Ly8/c;)V

    const/4 v1, 0x3

    invoke-static {v0, p0, p0, v5, v1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :goto_2
    return-object v4

    :pswitch_0
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "BlindDriver"

    const-string v2, "BlindDriver \u2014 \u043d\u0430\u0432\u0456\u0433\u0430\u0442\u043e\u0440 \u0434\u043b\u044f \u0423\u043a\u0440\u0430\u0457\u043d\u0438, \u044f\u043a\u0438\u0439 \u043d\u0435 \u0433\u0443\u0431\u0438\u0442\u044c\u0441\u044f, \u043a\u043e\u043b\u0438 GPS \u0437\u0430\u0433\u043b\u0443\u0448\u0435\u043d\u043e \u0430\u0431\u043e \u0431\u0440\u0435\u0448\u0435.\n\n\u041e\u043f\u0438\u0441: https://chatmag.github.io/blinddriver-releases/\n\u041e\u0441\u0442\u0430\u043d\u043d\u044f \u0432\u0435\u0440\u0441\u0456\u044f (\u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438 APK): https://github.com/chatmag/blinddriver-releases/releases/latest"

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string v0, "\u0422\u0435\u043a\u0441\u0442 \u0456 \u043f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u0441\u043a\u043e\u043f\u0456\u0439\u043e\u0432\u0430\u043d\u043e \u0432 \u0431\u0443\u0444\u0435\u0440 \u043e\u0431\u043c\u0456\u043d\u0443"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-object v4

    :pswitch_1
    const-string v0, "package:"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_3
    return-object v4

    :pswitch_2
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_4
    return-object v4

    :pswitch_3
    sget-object v0, Lcd/d;->H0:Lcd/c;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-object v4

    :pswitch_4
    sget-object v0, Lcd/d;->G0:Lcd/c;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-object v4

    :pswitch_5
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_5
    return-object v4

    :pswitch_6
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v3, "https://www.youtube.com/watch?v=IReSMJ1Fozk"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_6
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
