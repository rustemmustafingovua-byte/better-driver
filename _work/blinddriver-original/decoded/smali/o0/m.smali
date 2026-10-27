.class public final synthetic Lo0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lqd/q;Lqd/n;Lqd/e;ZLi9/a;Lf1/r;I)V
    .locals 0

    .line 1
    const/4 p7, 0x2

    iput p7, p0, Lo0/m;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/m;->n:Ljava/lang/Object;

    iput-object p2, p0, Lo0/m;->q:Ljava/lang/Object;

    iput-object p3, p0, Lo0/m;->r:Ljava/lang/Object;

    iput-boolean p4, p0, Lo0/m;->m:Z

    iput-object p5, p0, Lo0/m;->o:Ljava/lang/Object;

    iput-object p6, p0, Lo0/m;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lz0/d;Li9/a;Lf1/r;ZLo0/q1;Lu/s0;I)V
    .locals 0

    .line 2
    const/4 p7, 0x0

    iput p7, p0, Lo0/m;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/m;->n:Ljava/lang/Object;

    iput-object p2, p0, Lo0/m;->o:Ljava/lang/Object;

    iput-object p3, p0, Lo0/m;->p:Ljava/lang/Object;

    iput-boolean p4, p0, Lo0/m;->m:Z

    iput-object p5, p0, Lo0/m;->q:Ljava/lang/Object;

    iput-object p6, p0, Lo0/m;->r:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Lr0/u0;Landroid/content/Context;Lr0/u0;Lr0/u0;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lo0/m;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo0/m;->m:Z

    iput-object p2, p0, Lo0/m;->n:Ljava/lang/Object;

    iput-object p3, p0, Lo0/m;->o:Ljava/lang/Object;

    iput-object p4, p0, Lo0/m;->p:Ljava/lang/Object;

    iput-object p5, p0, Lo0/m;->q:Ljava/lang/Object;

    iput-object p6, p0, Lo0/m;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lo0/m;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo0/m;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lqd/q;

    iget-object v0, p0, Lo0/m;->q:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lqd/n;

    iget-object v0, p0, Lo0/m;->r:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lqd/e;

    iget-object v0, p0, Lo0/m;->o:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Li9/a;

    iget-object v0, p0, Lo0/m;->p:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lf1/r;

    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x30001

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v8

    iget-boolean v4, p0, Lo0/m;->m:Z

    invoke-static/range {v1 .. v8}, Lod/m;->a(Lqd/q;Lqd/n;Lqd/e;ZLi9/a;Lf1/r;Lr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lo0/m;->n:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lo0/m;->o:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    iget-object v2, p0, Lo0/m;->p:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroid/content/Context;

    iget-object v2, p0, Lo0/m;->q:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lr0/u0;

    iget-object v2, p0, Lo0/m;->r:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lr0/u0;

    check-cast p1, Lorg/maplibre/android/maps/MapLibreMap;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string p2, "m"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v6, :cond_0

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-boolean v5, p0, Lo0/m;->m:Z

    new-instance p0, Lorg/maplibre/android/maps/Style$Builder;

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lorg/maplibre/android/maps/Style$Builder;-><init>()V

    if-eqz v5, :cond_1

    const-string p2, "#232B38"

    goto :goto_1

    :cond_1
    const-string p2, "#F2EFE9"

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"version\":8,\"name\":\"offline\",\"glyphs\":\"https://tiles.openfreemap.org/fonts/{fontstack}/{range}.pbf\",\"sources\":{},\"layers\":[{\"id\":\"background\",\"type\":\"background\",\"paint\":{\"background-color\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"}}]}"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/maplibre/android/maps/Style$Builder;->fromJson(Ljava/lang/String;)Lorg/maplibre/android/maps/Style$Builder;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lorg/maplibre/android/maps/Style$Builder;-><init>()V

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/Style$Builder;->fromUri(Ljava/lang/String;)Lorg/maplibre/android/maps/Style$Builder;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v3, Lod/p0;

    invoke-direct/range {v3 .. v8}, Lod/p0;-><init>(Landroid/content/Context;ZZLr0/u0;Lr0/u0;)V

    invoke-virtual {p1, p0, v3}, Lorg/maplibre/android/maps/MapLibreMap;->setStyle(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/maps/Style$OnStyleLoaded;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lo0/m;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lz0/d;

    iget-object v0, p0, Lo0/m;->o:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Li9/a;

    iget-object v0, p0, Lo0/m;->p:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lf1/r;

    iget-object v0, p0, Lo0/m;->q:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lo0/q1;

    iget-object v0, p0, Lo0/m;->r:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lu/s0;

    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x7

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v8

    iget-boolean v4, p0, Lo0/m;->m:Z

    invoke-static/range {v1 .. v8}, Lo0/o;->b(Lz0/d;Li9/a;Lf1/r;ZLo0/q1;Lu/s0;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
