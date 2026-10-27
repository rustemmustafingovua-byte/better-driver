.class public final synthetic Lod/p4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lr0/u0;I)V
    .locals 0

    iput p2, p0, Lod/p4;->l:I

    iput-object p1, p0, Lod/p4;->m:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lod/p4;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object p0, p0, Lod/p4;->m:Lr0/u0;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcd/a;->a:Lcd/b;

    sget-object v0, Lcd/i;->l:Lcd/i;

    invoke-static {v1, v0, v2}, Lcd/a;->c(Lcd/b;Lcd/i;I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcd/a;->a:Lcd/b;

    sget-object v0, Lcd/i;->m:Lcd/i;

    invoke-static {v1, v0, v2}, Lcd/a;->c(Lcd/b;Lcd/i;I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_a
    sget-object v0, Lod/f4;->p:Lod/f4;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_c
    sget-object v0, Lod/f4;->o:Lod/f4;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_d
    sget-object v0, Lt8/z;->a:Lt8/z;

    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->n()Lfd/o;

    move-result-object v2

    iput-object v1, v2, Lfd/o;->f:Lfd/b;

    :try_start_0
    invoke-virtual {v2}, Lfd/o;->g()Lorg/maplibre/android/offline/OfflineManager;

    move-result-object v1

    new-instance v3, Lfd/e;

    invoke-direct {v3, v2}, Lfd/e;-><init>(Lfd/o;)V

    invoke-virtual {v1, v3}, Lorg/maplibre/android/offline/OfflineManager;->listOfflineRegions(Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "clear"

    :cond_0
    invoke-virtual {v2, v1}, Lfd/o;->e(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v0

    :pswitch_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_10
    sget-object v0, Lod/f4;->n:Lod/f4;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_12
    sget-object v0, Lod/f4;->m:Lod/f4;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_13
    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_18
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_19
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_1a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_1b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_1c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
