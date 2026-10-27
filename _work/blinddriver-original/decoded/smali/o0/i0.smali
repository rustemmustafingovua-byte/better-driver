.class public final synthetic Lo0/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lf1/r;

.field public final synthetic n:Z

.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lf1/r;Lo0/o4;ZLs/i;Lz0/d;Lz0/d;I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lo0/i0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/i0;->m:Lf1/r;

    iput-object p2, p0, Lo0/i0;->p:Ljava/lang/Object;

    iput-boolean p3, p0, Lo0/i0;->n:Z

    iput-object p4, p0, Lo0/i0;->q:Ljava/lang/Object;

    iput-object p5, p0, Lo0/i0;->r:Ljava/lang/Object;

    iput-object p6, p0, Lo0/i0;->s:Ljava/lang/Object;

    iput p7, p0, Lo0/i0;->o:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLq/c;Lf1/r;Li9/f;Li9/a;I)V
    .locals 1

    .line 2
    const/4 v0, 0x3

    iput v0, p0, Lo0/i0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/i0;->p:Ljava/lang/Object;

    iput-boolean p2, p0, Lo0/i0;->n:Z

    iput-object p3, p0, Lo0/i0;->q:Ljava/lang/Object;

    iput-object p4, p0, Lo0/i0;->m:Lf1/r;

    iput-object p5, p0, Lo0/i0;->r:Ljava/lang/Object;

    iput-object p6, p0, Lo0/i0;->s:Ljava/lang/Object;

    iput p7, p0, Lo0/i0;->o:I

    return-void
.end method

.method public synthetic constructor <init>(Lz0/d;Li9/a;Lf1/r;ZLo0/q1;Lu/s0;I)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lo0/i0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/i0;->p:Ljava/lang/Object;

    iput-object p2, p0, Lo0/i0;->q:Ljava/lang/Object;

    iput-object p3, p0, Lo0/i0;->m:Lf1/r;

    iput-boolean p4, p0, Lo0/i0;->n:Z

    iput-object p5, p0, Lo0/i0;->r:Ljava/lang/Object;

    iput-object p6, p0, Lo0/i0;->s:Ljava/lang/Object;

    iput p7, p0, Lo0/i0;->o:I

    return-void
.end method

.method public synthetic constructor <init>(ZLo2/a;Lf1/r;Lo0/f0;Lo1/h;Lo1/h;I)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lo0/i0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo0/i0;->n:Z

    iput-object p2, p0, Lo0/i0;->p:Ljava/lang/Object;

    iput-object p3, p0, Lo0/i0;->m:Lf1/r;

    iput-object p4, p0, Lo0/i0;->q:Ljava/lang/Object;

    iput-object p5, p0, Lo0/i0;->r:Ljava/lang/Object;

    iput-object p6, p0, Lo0/i0;->s:Ljava/lang/Object;

    iput p7, p0, Lo0/i0;->o:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lo0/i0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo0/i0;->p:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lo0/i0;->q:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lq/c;

    iget-object v0, p0, Lo0/i0;->r:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Li9/f;

    iget-object v0, p0, Lo0/i0;->s:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Li9/a;

    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/i0;->o:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v8

    iget-boolean v2, p0, Lo0/i0;->n:Z

    iget-object v4, p0, Lo0/i0;->m:Lf1/r;

    invoke-static/range {v1 .. v8}, Lq/f;->c(Ljava/lang/String;ZLq/c;Lf1/r;Li9/f;Li9/a;Lr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lo0/i0;->p:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lo0/o4;

    iget-object v0, p0, Lo0/i0;->q:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ls/i;

    iget-object v0, p0, Lo0/i0;->r:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lz0/d;

    iget-object v0, p0, Lo0/i0;->s:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lz0/d;

    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/i0;->o:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v8

    iget-object v1, p0, Lo0/i0;->m:Lf1/r;

    iget-boolean v3, p0, Lo0/i0;->n:Z

    invoke-static/range {v1 .. v8}, Lo0/m4;->d(Lf1/r;Lo0/o4;ZLs/i;Lz0/d;Lz0/d;Lr0/q;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lo0/i0;->p:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lz0/d;

    iget-object v0, p0, Lo0/i0;->q:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Li9/a;

    iget-object v0, p0, Lo0/i0;->r:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lo0/q1;

    iget-object v0, p0, Lo0/i0;->s:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lu/s0;

    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/i0;->o:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v8

    iget-object v3, p0, Lo0/i0;->m:Lf1/r;

    iget-boolean v4, p0, Lo0/i0;->n:Z

    invoke-static/range {v1 .. v8}, Lo0/u1;->b(Lz0/d;Li9/a;Lf1/r;ZLo0/q1;Lu/s0;Lr0/q;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lo0/i0;->p:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lo2/a;

    iget-object v0, p0, Lo0/i0;->q:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lo0/f0;

    iget-object v0, p0, Lo0/i0;->r:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lo1/h;

    iget-object v0, p0, Lo0/i0;->s:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lo1/h;

    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/i0;->o:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v8

    iget-boolean v1, p0, Lo0/i0;->n:Z

    iget-object v3, p0, Lo0/i0;->m:Lf1/r;

    invoke-static/range {v1 .. v8}, Lo0/l0;->b(ZLo2/a;Lf1/r;Lo0/f0;Lo1/h;Lo1/h;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
