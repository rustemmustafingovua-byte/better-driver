.class public final Lb0/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lb0/w0;->a:I

    iput-object p2, p0, Lb0/w0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ly1/x;Ly8/c;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    iget v1, v0, Lb0/w0;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, v0, Lb0/w0;->b:Ljava/lang/Object;

    sget-object v9, Lt8/z;->a:Lt8/z;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lp/h0;

    iget-boolean v1, v0, Lp/g;->G:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lp/h0;->X:Li9/a;

    if-eqz v1, :cond_0

    new-instance v1, Lp/f0;

    invoke-direct {v1, v0, v3}, Lp/f0;-><init>(Lp/h0;I)V

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    new-instance v1, Lp/g0;

    invoke-direct {v1, v0, v4}, Lp/g0;-><init>(Lp/h0;Ly8/c;)V

    new-instance v5, Lp/f0;

    invoke-direct {v5, v0, v2}, Lp/f0;-><init>(Lp/h0;I)V

    sget-object v0, Lr/x2;->a:Lr/q0;

    new-instance v0, Lf2/z2;

    const/4 v6, 0x0

    const/16 v7, 0x9

    move-object v2, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lf2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v0, v8}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lz8/a;->l:Lz8/a;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v9

    :goto_1
    if-ne v0, v1, :cond_2

    move-object v9, v0

    :cond_2
    return-object v9

    :pswitch_0
    move-object/from16 v1, p1

    new-instance v2, Lp/i;

    check-cast v0, Lp/j;

    invoke-direct {v2, v0, v4, v3}, Lp/i;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v1, v2, v8}, Ly4/s;->e(Ly1/x;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lz8/a;->l:Lz8/a;

    if-ne v0, v1, :cond_3

    move-object v9, v0

    :cond_3
    return-object v9

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v0, Lr0/u0;

    new-instance v2, Lb0/y;

    const/16 v3, 0x16

    invoke-direct {v2, v0, v3}, Lb0/y;-><init>(Lr0/u0;I)V

    const/4 v0, 0x7

    invoke-static {v1, v4, v2, v8, v0}, Lr/x2;->e(Ly1/x;Li9/f;Li9/c;Ly8/c;I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lz8/a;->l:Lz8/a;

    if-ne v0, v1, :cond_4

    move-object v9, v0

    :cond_4
    return-object v9

    :pswitch_2
    move-object/from16 v1, p1

    new-instance v2, Lo0/l4;

    check-cast v0, Lo0/o4;

    invoke-direct {v2, v0, v4}, Lo0/l4;-><init>(Lo0/o4;Ly8/c;)V

    new-instance v3, Lo0/b4;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lo0/b4;-><init>(Lo0/o4;I)V

    const/4 v0, 0x3

    invoke-static {v1, v2, v3, v8, v0}, Lr/x2;->e(Ly1/x;Li9/f;Li9/c;Ly8/c;I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lz8/a;->l:Lz8/a;

    if-ne v0, v1, :cond_5

    move-object v9, v0

    :cond_5
    return-object v9

    :pswitch_3
    move-object/from16 v1, p1

    new-instance v3, Lf0/b;

    check-cast v0, Li9/c;

    invoke-direct {v3, v0, v4, v2}, Lf0/b;-><init>(Li9/c;Ly8/c;I)V

    move-object v0, v1

    check-cast v0, Ly1/k0;

    invoke-virtual {v0, v3, v8}, Ly1/k0;->M0(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lz8/a;->l:Lz8/a;

    if-ne v0, v1, :cond_6

    move-object v9, v0

    :cond_6
    return-object v9

    :pswitch_4
    move-object/from16 v1, p1

    new-instance v2, Lj0/c;

    check-cast v0, Lj0/d;

    invoke-direct {v2, v0, v4}, Lj0/c;-><init>(Lj0/d;Ly8/c;)V

    invoke-static {v1, v2, v8}, Ly4/s;->e(Ly1/x;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lz8/a;->l:Lz8/a;

    if-ne v0, v1, :cond_7

    move-object v9, v0

    :cond_7
    return-object v9

    :pswitch_5
    move-object/from16 v1, p1

    new-instance v10, Lb0/k2;

    move-object v12, v0

    check-cast v12, Lh0/g;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/4 v11, 0x1

    const-class v13, Lh0/g;

    const-string v14, "tryShowContextMenu"

    const-string v15, "tryShowContextMenu-k-4lQ0M(J)V"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v18}, Lb0/k2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    new-instance v0, Lf0/b;

    invoke-direct {v0, v10, v4, v3}, Lf0/b;-><init>(Li9/c;Ly8/c;I)V

    invoke-static {v1, v0, v8}, Ly4/s;->e(Ly1/x;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lz8/a;->l:Lz8/a;

    if-ne v0, v1, :cond_8

    goto :goto_2

    :cond_8
    move-object v0, v9

    :goto_2
    if-ne v0, v1, :cond_9

    move-object v9, v0

    :cond_9
    return-object v9

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v0, Lm0/v1;

    iget-object v2, v0, Lm0/v1;->A:Lad/a2;

    iget-object v0, v0, Lm0/v1;->z:Lm0/t1;

    invoke-static {v1, v2, v0, v8}, Lm0/d1;->n(Ly1/x;Lm0/o;Lb0/c2;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lz8/a;->l:Lz8/a;

    if-ne v0, v1, :cond_a

    move-object v9, v0

    :cond_a
    return-object v9

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
