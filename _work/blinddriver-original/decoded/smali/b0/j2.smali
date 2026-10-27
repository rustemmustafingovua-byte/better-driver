.class public final synthetic Lb0/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:Lb0/r1;

.field public final synthetic m:Lm0/v1;

.field public final synthetic n:Lu2/x;

.field public final synthetic o:Z

.field public final synthetic p:Z

.field public final synthetic q:Lu2/q;

.field public final synthetic r:Lb0/h3;

.field public final synthetic s:Li9/c;

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Lb0/r1;Lm0/v1;Lu2/x;ZZLu2/q;Lb0/h3;Li9/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/j2;->l:Lb0/r1;

    iput-object p2, p0, Lb0/j2;->m:Lm0/v1;

    iput-object p3, p0, Lb0/j2;->n:Lu2/x;

    iput-boolean p4, p0, Lb0/j2;->o:Z

    iput-boolean p5, p0, Lb0/j2;->p:Z

    iput-object p6, p0, Lb0/j2;->q:Lu2/q;

    iput-object p7, p0, Lb0/j2;->r:Lb0/h3;

    iput-object p8, p0, Lb0/j2;->s:Li9/c;

    iput p9, p0, Lb0/j2;->t:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lf1/r;

    move-object/from16 v1, p2

    check-cast v1, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x32c59664

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-ne v2, v3, :cond_0

    new-instance v2, Lm0/z1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_0
    move-object v10, v2

    check-cast v10, Lm0/z1;

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_1

    new-instance v2, Lb0/c1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    move-object v13, v2

    check-cast v13, Lb0/c1;

    new-instance v16, Lb0/i2;

    iget-object v5, v0, Lb0/j2;->l:Lb0/r1;

    iget-object v6, v0, Lb0/j2;->m:Lm0/v1;

    iget-object v7, v0, Lb0/j2;->n:Lu2/x;

    iget-boolean v8, v0, Lb0/j2;->o:Z

    iget-boolean v9, v0, Lb0/j2;->p:Z

    iget-object v11, v0, Lb0/j2;->q:Lu2/q;

    iget-object v12, v0, Lb0/j2;->r:Lb0/h3;

    iget-object v14, v0, Lb0/j2;->s:Li9/c;

    iget v15, v0, Lb0/j2;->t:I

    move-object/from16 v4, v16

    invoke-direct/range {v4 .. v15}, Lb0/i2;-><init>(Lb0/r1;Lm0/v1;Lu2/x;ZZLm0/z1;Lu2/q;Lb0/h3;Lb0/c1;Li9/c;I)V

    invoke-virtual {v1, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_2

    if-ne v2, v3, :cond_3

    :cond_2
    new-instance v14, Lb0/k2;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v15, 0x1

    const-class v17, Lb0/i2;

    const-string v18, "process"

    const-string v19, "process-ZmokQxo(Landroid/view/KeyEvent;)Z"

    const/16 v20, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v22}, Lb0/k2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v1, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v2, v14

    :cond_3
    check-cast v2, Lj9/l;

    check-cast v2, Li9/c;

    sget-object v0, Lf1/o;->a:Lf1/o;

    invoke-static {v0, v2}, Lw1/c;->d(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lr0/q;->q(Z)V

    return-object v0
.end method
