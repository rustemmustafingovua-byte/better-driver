.class public final synthetic Lod/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic A:Lu9/t;

.field public final synthetic l:Lorg/maplibre/android/maps/MapView;

.field public final synthetic m:Lua/nav/c;

.field public final synthetic n:Li9/e;

.field public final synthetic o:Lr0/u0;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Lr0/u0;

.field public final synthetic s:Li9/c;

.field public final synthetic t:Lr0/u0;

.field public final synthetic u:Lr0/u0;

.field public final synthetic v:Lr0/u0;

.field public final synthetic w:Lr0/u0;

.field public final synthetic x:Lf2/k2;

.field public final synthetic y:Lk1/l;

.field public final synthetic z:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lf2/k2;Li9/c;Li9/e;Lk1/l;Lorg/maplibre/android/maps/MapView;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lu9/t;Lua/nav/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lod/v1;->l:Lorg/maplibre/android/maps/MapView;

    move-object/from16 p5, p16

    iput-object p5, p0, Lod/v1;->m:Lua/nav/c;

    iput-object p3, p0, Lod/v1;->n:Li9/e;

    iput-object p6, p0, Lod/v1;->o:Lr0/u0;

    iput-object p7, p0, Lod/v1;->p:Lr0/u0;

    iput-object p8, p0, Lod/v1;->q:Lr0/u0;

    iput-object p9, p0, Lod/v1;->r:Lr0/u0;

    iput-object p2, p0, Lod/v1;->s:Li9/c;

    iput-object p10, p0, Lod/v1;->t:Lr0/u0;

    iput-object p11, p0, Lod/v1;->u:Lr0/u0;

    iput-object p12, p0, Lod/v1;->v:Lr0/u0;

    iput-object p13, p0, Lod/v1;->w:Lr0/u0;

    iput-object p1, p0, Lod/v1;->x:Lf2/k2;

    iput-object p4, p0, Lod/v1;->y:Lk1/l;

    iput-object p14, p0, Lod/v1;->z:Lr0/u0;

    iput-object p15, p0, Lod/v1;->A:Lu9/t;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroid/content/Context;

    const-string v2, "it"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lod/t1;

    iget-object v4, v0, Lod/v1;->x:Lf2/k2;

    iget-object v5, v0, Lod/v1;->s:Li9/c;

    iget-object v6, v0, Lod/v1;->n:Li9/e;

    iget-object v7, v0, Lod/v1;->y:Lk1/l;

    iget-object v8, v0, Lod/v1;->l:Lorg/maplibre/android/maps/MapView;

    iget-object v9, v0, Lod/v1;->o:Lr0/u0;

    iget-object v10, v0, Lod/v1;->p:Lr0/u0;

    iget-object v11, v0, Lod/v1;->q:Lr0/u0;

    iget-object v12, v0, Lod/v1;->r:Lr0/u0;

    iget-object v13, v0, Lod/v1;->t:Lr0/u0;

    iget-object v14, v0, Lod/v1;->u:Lr0/u0;

    iget-object v15, v0, Lod/v1;->v:Lr0/u0;

    iget-object v1, v0, Lod/v1;->w:Lr0/u0;

    iget-object v2, v0, Lod/v1;->z:Lr0/u0;

    move-object/from16 v16, v1

    iget-object v1, v0, Lod/v1;->A:Lu9/t;

    iget-object v0, v0, Lod/v1;->m:Lua/nav/c;

    move-object/from16 v19, v0

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    invoke-direct/range {v3 .. v19}, Lod/t1;-><init>(Lf2/k2;Li9/c;Li9/e;Lk1/l;Lorg/maplibre/android/maps/MapView;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lu9/t;Lua/nav/c;)V

    invoke-virtual {v8, v3}, Lorg/maplibre/android/maps/MapView;->getMapAsync(Lorg/maplibre/android/maps/OnMapReadyCallback;)V

    return-object v8
.end method
