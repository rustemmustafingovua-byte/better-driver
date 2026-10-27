.class public final Lod/j7;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:I

.field public final synthetic m:Z

.field public final synthetic n:Landroid/content/Context;

.field public final synthetic o:Li9/a;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Lr0/u0;

.field public final synthetic s:Lr0/u0;

.field public final synthetic t:Lr0/u0;


# direct methods
.method public constructor <init>(ZLandroid/content/Context;Li9/a;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V
    .locals 0

    iput-boolean p1, p0, Lod/j7;->m:Z

    iput-object p2, p0, Lod/j7;->n:Landroid/content/Context;

    iput-object p3, p0, Lod/j7;->o:Li9/a;

    iput-object p4, p0, Lod/j7;->p:Lr0/u0;

    iput-object p5, p0, Lod/j7;->q:Lr0/u0;

    iput-object p6, p0, Lod/j7;->r:Lr0/u0;

    iput-object p7, p0, Lod/j7;->s:Lr0/u0;

    iput-object p8, p0, Lod/j7;->t:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 10

    new-instance v0, Lod/j7;

    iget-object v7, p0, Lod/j7;->s:Lr0/u0;

    iget-object v8, p0, Lod/j7;->t:Lr0/u0;

    iget-boolean v1, p0, Lod/j7;->m:Z

    iget-object v2, p0, Lod/j7;->n:Landroid/content/Context;

    iget-object v3, p0, Lod/j7;->o:Li9/a;

    iget-object v4, p0, Lod/j7;->p:Lr0/u0;

    iget-object v5, p0, Lod/j7;->q:Lr0/u0;

    iget-object v6, p0, Lod/j7;->r:Lr0/u0;

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lod/j7;-><init>(ZLandroid/content/Context;Li9/a;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lod/j7;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/j7;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/j7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lod/j7;->l:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->c()Lgd/d;

    move-result-object p1

    iget-object v1, p0, Lod/j7;->p:Lr0/u0;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lod/j7;->q:Lr0/u0;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput v2, p0, Lod/j7;->l:I

    sget-object v2, Lu9/e0;->a:Lba/e;

    sget-object v2, Lba/d;->n:Lba/d;

    new-instance v4, Lua/nav/net/e;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v1, v3, v5}, Lua/nav/net/e;-><init>(Lgd/d;Ljava/lang/String;ZLy8/c;)V

    invoke-static {v2, v4, p0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lod/j7;->r:Lr0/u0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lod/j7;->s:Lr0/u0;

    sget-object v1, Lt8/z;->a:Lt8/z;

    if-nez p1, :cond_3

    const-string p0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0441\u0442\u0432\u043e\u0440\u0438\u0442\u0438 \u043e\u043f\u043b\u0430\u0442\u0443. \u041f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442 \u0456 \u0441\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0449\u0435 \u0440\u0430\u0437."

    invoke-interface {v0, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v1

    :cond_3
    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v2

    iget-object v3, v2, Luc/f;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "bot_opened_at_ms"

    invoke-virtual {v2}, Luc/f;->f()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-boolean v2, p0, Lod/j7;->m:Z

    iget-object v3, p0, Lod/j7;->t:Lr0/u0;

    if-eqz v2, :cond_4

    invoke-interface {v3, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v1

    :cond_4
    :try_start_0
    iget-object v2, p0, Lod/j7;->n:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lod/j7;->o:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string p0, "\u041d\u0435 \u0437\u043d\u0430\u0439\u0448\u043b\u043e\u0441\u044f \u0431\u0440\u0430\u0443\u0437\u0435\u0440\u0430. \u0421\u043a\u043e\u0440\u0438\u0441\u0442\u0430\u0439\u0442\u0435\u0441\u044f QR-\u043a\u043e\u0434\u043e\u043c \u0430\u0431\u043e \u0441\u043a\u043e\u043f\u0456\u044e\u0439\u0442\u0435 \u043f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f."

    invoke-interface {v0, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-interface {v3, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v1
.end method
