.class public final synthetic Ldd/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ldd/k0;


# direct methods
.method public synthetic constructor <init>(Ldd/k0;I)V
    .locals 0

    iput p2, p0, Ldd/d0;->l:I

    iput-object p1, p0, Ldd/d0;->m:Ldd/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Ldd/d0;->l:I

    iget-object p0, p0, Ldd/d0;->m:Ldd/k0;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ldd/l0;

    const-string v0, "it"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ldd/k0;->e:Ldd/o0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Ldd/o0;->a:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Ldd/o0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ldd/o0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/j1;

    if-nez v0, :cond_1

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_0

    :cond_1
    sget-object v2, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v3, v0, Lid/j1;->a:D

    iget-wide v5, v0, Lid/j1;->b:D

    iget-wide v7, p1, Ldd/l0;->d:D

    iget-wide v9, p1, Ldd/l0;->e:D

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v3 .. v10}, Ldd/s0;->a(DDDD)D

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_3

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v4, p0, Ldd/o0;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    new-instance v5, Lid/j1;

    iget-wide v6, p1, Ldd/l0;->d:D

    iget-wide v8, p1, Ldd/l0;->e:D

    iget-wide v10, p1, Ldd/l0;->b:J

    iget-object v12, p1, Ldd/l0;->i:Ljava/lang/Float;

    invoke-direct/range {v5 .. v12}, Lid/j1;-><init>(DDJLjava/lang/Float;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Ldd/o0;->c:Ljava/lang/Object;

    check-cast p0, Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_3
    monitor-exit v1

    throw p0

    :pswitch_0
    check-cast p1, Ldd/l0;

    const-string v0, "it"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p1, Ldd/l0;->c:J

    iget-wide v2, p1, Ldd/l0;->e:D

    iget-wide v4, p1, Ldd/l0;->d:D

    iget-wide v6, p0, Ldd/k0;->u:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-ltz v6, :cond_5

    invoke-static {v4, v5, v2, v3}, Ldd/w0;->a(DD)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    iput-wide v0, p0, Ldd/k0;->u:J

    iget-object p0, p0, Ldd/k0;->t:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "lat"

    double-to-float v1, v4

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "lon"

    double-to-float v1, v2

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "time"

    iget-wide v1, p1, Ldd/l0;->b:J

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    :goto_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Ldd/k0;->i:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "baseline"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
