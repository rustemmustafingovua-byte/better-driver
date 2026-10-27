.class public final synthetic Lo0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lf1/r;

.field public final synthetic n:Lu/s0;

.field public final synthetic o:Z

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ljava/lang/Object;

.field public final synthetic w:Lt8/e;


# direct methods
.method public synthetic constructor <init>(Lf1/r;Lw/p;Lu/s0;Lu/g;Lf1/d;Lr/k;ZLp/j;Li9/c;II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lo0/v;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/v;->m:Lf1/r;

    iput-object p2, p0, Lo0/v;->r:Ljava/lang/Object;

    iput-object p3, p0, Lo0/v;->n:Lu/s0;

    iput-object p4, p0, Lo0/v;->s:Ljava/lang/Object;

    iput-object p5, p0, Lo0/v;->t:Ljava/lang/Object;

    iput-object p6, p0, Lo0/v;->u:Ljava/lang/Object;

    iput-boolean p7, p0, Lo0/v;->o:Z

    iput-object p8, p0, Lo0/v;->v:Ljava/lang/Object;

    iput-object p9, p0, Lo0/v;->w:Lt8/e;

    iput p10, p0, Lo0/v;->p:I

    iput p11, p0, Lo0/v;->q:I

    return-void
.end method

.method public synthetic constructor <init>(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;II)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lo0/v;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/v;->r:Ljava/lang/Object;

    iput-object p2, p0, Lo0/v;->m:Lf1/r;

    iput-boolean p3, p0, Lo0/v;->o:Z

    iput-object p4, p0, Lo0/v;->s:Ljava/lang/Object;

    iput-object p5, p0, Lo0/v;->t:Ljava/lang/Object;

    iput-object p6, p0, Lo0/v;->u:Ljava/lang/Object;

    iput-object p7, p0, Lo0/v;->v:Ljava/lang/Object;

    iput-object p8, p0, Lo0/v;->n:Lu/s0;

    iput-object p9, p0, Lo0/v;->w:Lt8/e;

    iput p10, p0, Lo0/v;->p:I

    iput p11, p0, Lo0/v;->q:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lo0/v;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo0/v;->r:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lw/p;

    iget-object v0, p0, Lo0/v;->s:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lu/g;

    iget-object v0, p0, Lo0/v;->t:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lf1/d;

    iget-object v0, p0, Lo0/v;->u:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lr/k;

    iget-object v0, p0, Lo0/v;->v:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lp/j;

    iget-object v0, p0, Lo0/v;->w:Lt8/e;

    move-object v9, v0

    check-cast v9, Li9/c;

    move-object v10, p1

    check-cast v10, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/v;->p:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v11

    iget-object v1, p0, Lo0/v;->m:Lf1/r;

    iget-object v3, p0, Lo0/v;->n:Lu/s0;

    iget-boolean v7, p0, Lo0/v;->o:Z

    iget v12, p0, Lo0/v;->q:I

    invoke-static/range {v1 .. v12}, Lb6/g;->b(Lf1/r;Lw/p;Lu/s0;Lu/g;Lf1/d;Lr/k;ZLp/j;Li9/c;Lr0/q;II)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lo0/v;->r:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Li9/a;

    iget-object v0, p0, Lo0/v;->s:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lm1/h0;

    iget-object v0, p0, Lo0/v;->t:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lo0/p;

    iget-object v0, p0, Lo0/v;->u:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lo0/u;

    iget-object v0, p0, Lo0/v;->v:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lp/x;

    iget-object v0, p0, Lo0/v;->w:Lt8/e;

    move-object v9, v0

    check-cast v9, Li9/f;

    move-object v10, p1

    check-cast v10, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/v;->p:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v11

    iget-object v2, p0, Lo0/v;->m:Lf1/r;

    iget-boolean v3, p0, Lo0/v;->o:Z

    iget-object v8, p0, Lo0/v;->n:Lu/s0;

    iget v12, p0, Lo0/v;->q:I

    invoke-static/range {v1 .. v12}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
