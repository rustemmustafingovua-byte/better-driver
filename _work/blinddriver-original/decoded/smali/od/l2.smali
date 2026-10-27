.class public final synthetic Lod/l2;
.super Lj9/l;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic s:I

.field public final synthetic t:Lua/nav/c;

.field public final synthetic u:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lua/nav/c;Landroid/content/Context;I)V
    .locals 12

    iput p3, p0, Lod/l2;->s:I

    packed-switch p3, :pswitch_data_0

    iput-object p1, p0, Lod/l2;->t:Lua/nav/c;

    iput-object p2, p0, Lod/l2;->u:Landroid/content/Context;

    const-string v4, "MapScreen$toggleRec(Lua/nav/NavViewModel;Landroid/content/Context;)V"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-class v2, Lj9/m;

    const-string v3, "toggleRec"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lj9/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :pswitch_0
    move-object v6, p0

    iput-object p1, v6, Lod/l2;->t:Lua/nav/c;

    iput-object p2, v6, Lod/l2;->u:Landroid/content/Context;

    const-string v10, "MapScreen$toggleRec(Lua/nav/NavViewModel;Landroid/content/Context;)V"

    const/4 v11, 0x0

    const/4 v7, 0x0

    const-class v8, Lj9/m;

    const-string v9, "toggleRec"

    invoke-direct/range {v6 .. v11}, Lj9/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :pswitch_1
    move-object v6, p0

    iput-object p1, v6, Lod/l2;->t:Lua/nav/c;

    iput-object p2, v6, Lod/l2;->u:Landroid/content/Context;

    const-string v10, "MapScreen$toggleRec(Lua/nav/NavViewModel;Landroid/content/Context;)V"

    const/4 v11, 0x0

    const/4 v7, 0x0

    const-class v8, Lj9/m;

    const-string v9, "toggleRec"

    invoke-direct/range {v6 .. v11}, Lj9/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :pswitch_2
    move-object v6, p0

    iput-object p1, v6, Lod/l2;->t:Lua/nav/c;

    iput-object p2, v6, Lod/l2;->u:Landroid/content/Context;

    const-string v10, "MapScreen$toggleRec(Lua/nav/NavViewModel;Landroid/content/Context;)V"

    const/4 v11, 0x0

    const/4 v7, 0x0

    const-class v8, Lj9/m;

    const-string v9, "toggleRec"

    invoke-direct/range {v6 .. v11}, Lj9/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :pswitch_3
    move-object v6, p0

    iput-object p1, v6, Lod/l2;->t:Lua/nav/c;

    iput-object p2, v6, Lod/l2;->u:Landroid/content/Context;

    const-string v10, "MapScreen$toggleRec(Lua/nav/NavViewModel;Landroid/content/Context;)V"

    const/4 v11, 0x0

    const/4 v7, 0x0

    const-class v8, Lj9/m;

    const-string v9, "toggleRec"

    invoke-direct/range {v6 .. v11}, Lj9/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :pswitch_4
    move-object v6, p0

    iput-object p1, v6, Lod/l2;->t:Lua/nav/c;

    iput-object p2, v6, Lod/l2;->u:Landroid/content/Context;

    const-string v10, "MapScreen$toggleRec(Lua/nav/NavViewModel;Landroid/content/Context;)V"

    const/4 v11, 0x0

    const/4 v7, 0x0

    const-class v8, Lj9/m;

    const-string v9, "toggleRec"

    invoke-direct/range {v6 .. v11}, Lj9/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/l2;->s:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lod/l2;->t:Lua/nav/c;

    iget-object p0, p0, Lod/l2;->u:Landroid/content/Context;

    invoke-static {v0, p0}, Lod/g3;->Z(Lua/nav/c;Landroid/content/Context;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lod/l2;->t:Lua/nav/c;

    iget-object p0, p0, Lod/l2;->u:Landroid/content/Context;

    invoke-static {v0, p0}, Lod/g3;->Z(Lua/nav/c;Landroid/content/Context;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lod/l2;->t:Lua/nav/c;

    iget-object p0, p0, Lod/l2;->u:Landroid/content/Context;

    invoke-static {v0, p0}, Lod/g3;->Z(Lua/nav/c;Landroid/content/Context;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lod/l2;->t:Lua/nav/c;

    iget-object p0, p0, Lod/l2;->u:Landroid/content/Context;

    invoke-static {v0, p0}, Lod/g3;->Z(Lua/nav/c;Landroid/content/Context;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lod/l2;->t:Lua/nav/c;

    iget-object p0, p0, Lod/l2;->u:Landroid/content/Context;

    invoke-static {v0, p0}, Lod/g3;->Z(Lua/nav/c;Landroid/content/Context;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_4
    iget-object v0, p0, Lod/l2;->t:Lua/nav/c;

    iget-object p0, p0, Lod/l2;->u:Landroid/content/Context;

    invoke-static {v0, p0}, Lod/g3;->Z(Lua/nav/c;Landroid/content/Context;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
