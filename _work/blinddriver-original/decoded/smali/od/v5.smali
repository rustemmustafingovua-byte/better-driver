.class public final synthetic Lod/v5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/a;


# direct methods
.method public synthetic constructor <init>(Lua/nav/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lod/v5;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/v5;->m:Lua/nav/a;

    return-void
.end method

.method public synthetic constructor <init>(Lua/nav/a;II)V
    .locals 0

    .line 2
    iput p3, p0, Lod/v5;->l:I

    iput-object p1, p0, Lod/v5;->m:Lua/nav/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lod/v5;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x9

    invoke-static {v2}, Lr0/r;->H(I)I

    move-result v2

    iget-object v0, v0, Lod/v5;->m:Lua/nav/a;

    invoke-static {v0, v1, v2}, Lod/v6;->a(Lua/nav/a;Lr0/q;I)V

    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lod/v5;->m:Lua/nav/a;

    invoke-virtual {v0}, Lua/nav/a;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->k:Lp2/m0;

    const/16 v22, 0x0

    const v23, 0xfffe

    move-object/from16 v19, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v1

    move-object v1, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_2

    :cond_1
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x9

    invoke-static {v2}, Lr0/r;->H(I)I

    move-result v2

    iget-object v0, v0, Lod/v5;->m:Lua/nav/a;

    invoke-static {v0, v1, v2}, Lod/v6;->s(Lua/nav/a;Lr0/q;I)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x9

    invoke-static {v2}, Lr0/r;->H(I)I

    move-result v2

    iget-object v0, v0, Lod/v5;->m:Lua/nav/a;

    invoke-static {v0, v1, v2}, Lod/v6;->H(Lua/nav/a;Lr0/q;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
