.class public final synthetic Lod/u4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic A:Lr0/u0;

.field public final synthetic B:Lr0/u0;

.field public final synthetic C:Lr0/u0;

.field public final synthetic D:Lr0/u0;

.field public final synthetic l:I

.field public final synthetic m:Lua/nav/a;

.field public final synthetic n:Z

.field public final synthetic o:Ljava/util/List;

.field public final synthetic p:Z

.field public final synthetic q:Lu9/t;

.field public final synthetic r:Lr0/u0;

.field public final synthetic s:Lr0/u0;

.field public final synthetic t:Lr0/u0;

.field public final synthetic u:Lr0/a1;

.field public final synthetic v:Landroid/content/Context;

.field public final synthetic w:Ljd/b;

.field public final synthetic x:Ljava/io/File;

.field public final synthetic y:Led/f;

.field public final synthetic z:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lua/nav/a;Lr0/u0;ZLjava/util/List;ZLu9/t;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/a1;Landroid/content/Context;Ljd/b;Ljava/io/File;Led/f;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lod/u4;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/u4;->m:Lua/nav/a;

    iput-object p2, p0, Lod/u4;->r:Lr0/u0;

    iput-boolean p3, p0, Lod/u4;->n:Z

    iput-object p4, p0, Lod/u4;->o:Ljava/util/List;

    iput-boolean p5, p0, Lod/u4;->p:Z

    iput-object p6, p0, Lod/u4;->q:Lu9/t;

    iput-object p7, p0, Lod/u4;->s:Lr0/u0;

    iput-object p8, p0, Lod/u4;->t:Lr0/u0;

    iput-object p9, p0, Lod/u4;->z:Lr0/u0;

    iput-object p10, p0, Lod/u4;->u:Lr0/a1;

    iput-object p11, p0, Lod/u4;->v:Landroid/content/Context;

    iput-object p12, p0, Lod/u4;->w:Ljd/b;

    iput-object p13, p0, Lod/u4;->x:Ljava/io/File;

    iput-object p14, p0, Lod/u4;->y:Led/f;

    move-object/from16 p1, p15

    iput-object p1, p0, Lod/u4;->A:Lr0/u0;

    move-object/from16 p1, p16

    iput-object p1, p0, Lod/u4;->B:Lr0/u0;

    move-object/from16 p1, p17

    iput-object p1, p0, Lod/u4;->C:Lr0/u0;

    move-object/from16 p1, p18

    iput-object p1, p0, Lod/u4;->D:Lr0/u0;

    return-void
.end method

.method public synthetic constructor <init>(Lua/nav/a;ZLjava/util/List;ZLu9/t;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/a1;Landroid/content/Context;Ljd/b;Ljava/io/File;Led/f;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lod/u4;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/u4;->m:Lua/nav/a;

    iput-boolean p2, p0, Lod/u4;->n:Z

    iput-object p3, p0, Lod/u4;->o:Ljava/util/List;

    iput-boolean p4, p0, Lod/u4;->p:Z

    iput-object p5, p0, Lod/u4;->q:Lu9/t;

    iput-object p6, p0, Lod/u4;->r:Lr0/u0;

    iput-object p7, p0, Lod/u4;->s:Lr0/u0;

    iput-object p8, p0, Lod/u4;->t:Lr0/u0;

    iput-object p9, p0, Lod/u4;->u:Lr0/a1;

    iput-object p10, p0, Lod/u4;->v:Landroid/content/Context;

    iput-object p11, p0, Lod/u4;->w:Ljd/b;

    iput-object p12, p0, Lod/u4;->x:Ljava/io/File;

    iput-object p13, p0, Lod/u4;->y:Led/f;

    iput-object p14, p0, Lod/u4;->z:Lr0/u0;

    move-object/from16 p1, p15

    iput-object p1, p0, Lod/u4;->A:Lr0/u0;

    move-object/from16 p1, p16

    iput-object p1, p0, Lod/u4;->B:Lr0/u0;

    move-object/from16 p1, p17

    iput-object p1, p0, Lod/u4;->C:Lr0/u0;

    move-object/from16 p1, p18

    iput-object p1, p0, Lod/u4;->D:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lod/u4;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v5, v0, Lod/u4;->m:Lua/nav/a;

    iget-object v1, v5, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string v2, "log_consent"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v2, v0, Lod/u4;->n:Z

    iget-object v3, v0, Lod/u4;->o:Ljava/util/List;

    iget-boolean v4, v0, Lod/u4;->p:Z

    iget-object v6, v0, Lod/u4;->q:Lu9/t;

    iget-object v7, v0, Lod/u4;->r:Lr0/u0;

    iget-object v8, v0, Lod/u4;->s:Lr0/u0;

    iget-object v9, v0, Lod/u4;->t:Lr0/u0;

    iget-object v10, v0, Lod/u4;->u:Lr0/a1;

    iget-object v11, v0, Lod/u4;->v:Landroid/content/Context;

    iget-object v12, v0, Lod/u4;->w:Ljd/b;

    iget-object v13, v0, Lod/u4;->x:Ljava/io/File;

    iget-object v14, v0, Lod/u4;->y:Led/f;

    iget-object v15, v0, Lod/u4;->z:Lr0/u0;

    iget-object v1, v0, Lod/u4;->A:Lr0/u0;

    move-object/from16 v16, v1

    iget-object v1, v0, Lod/u4;->B:Lr0/u0;

    iget-object v0, v0, Lod/u4;->C:Lr0/u0;

    move-object/from16 v18, v0

    move-object/from16 v17, v1

    invoke-static/range {v2 .. v18}, Lod/m;->r(ZLjava/util/List;ZLua/nav/a;Lu9/t;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/a1;Landroid/content/Context;Ljd/b;Ljava/io/File;Led/f;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v0, Lod/u4;->D:Lr0/u0;

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v4, v0, Lod/u4;->m:Lua/nav/a;

    iget-object v1, v4, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string v2, "log_consent"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lr0/i;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, v0, Lod/u4;->r:Lr0/u0;

    invoke-interface {v2, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-boolean v1, v0, Lod/u4;->n:Z

    iget-object v2, v0, Lod/u4;->o:Ljava/util/List;

    iget-boolean v3, v0, Lod/u4;->p:Z

    iget-object v5, v0, Lod/u4;->q:Lu9/t;

    iget-object v6, v0, Lod/u4;->s:Lr0/u0;

    iget-object v7, v0, Lod/u4;->t:Lr0/u0;

    iget-object v8, v0, Lod/u4;->z:Lr0/u0;

    iget-object v9, v0, Lod/u4;->u:Lr0/a1;

    iget-object v10, v0, Lod/u4;->v:Landroid/content/Context;

    iget-object v11, v0, Lod/u4;->w:Ljd/b;

    iget-object v12, v0, Lod/u4;->x:Ljava/io/File;

    iget-object v13, v0, Lod/u4;->y:Led/f;

    iget-object v14, v0, Lod/u4;->A:Lr0/u0;

    iget-object v15, v0, Lod/u4;->B:Lr0/u0;

    move/from16 v16, v1

    iget-object v1, v0, Lod/u4;->C:Lr0/u0;

    iget-object v0, v0, Lod/u4;->D:Lr0/u0;

    move/from16 v17, v16

    move-object/from16 v16, v1

    move/from16 v1, v17

    move-object/from16 v17, v0

    invoke-static/range {v1 .. v17}, Lod/m;->r(ZLjava/util/List;ZLua/nav/a;Lu9/t;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/a1;Landroid/content/Context;Ljd/b;Ljava/io/File;Led/f;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
