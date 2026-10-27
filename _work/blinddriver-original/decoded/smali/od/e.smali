.class public final synthetic Lod/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Z

.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILi9/a;Li9/a;Lf1/r;ZI)V
    .locals 0

    .line 1
    const/4 p6, 0x2

    iput p6, p0, Lod/e;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lod/e;->o:I

    iput-object p2, p0, Lod/e;->m:Ljava/lang/Object;

    iput-object p3, p0, Lod/e;->p:Ljava/lang/Object;

    iput-object p4, p0, Lod/e;->q:Ljava/lang/Object;

    iput-boolean p5, p0, Lod/e;->n:Z

    return-void
.end method

.method public synthetic constructor <init>(Li9/a;Li9/a;ZLi9/f;II)V
    .locals 0

    .line 2
    const/4 p5, 0x1

    iput p5, p0, Lod/e;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/e;->m:Ljava/lang/Object;

    iput-object p2, p0, Lod/e;->p:Ljava/lang/Object;

    iput-boolean p3, p0, Lod/e;->n:Z

    iput-object p4, p0, Lod/e;->q:Ljava/lang/Object;

    iput p6, p0, Lod/e;->o:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZLi9/c;II)V
    .locals 0

    .line 3
    iput p6, p0, Lod/e;->l:I

    iput-object p1, p0, Lod/e;->p:Ljava/lang/Object;

    iput-object p2, p0, Lod/e;->m:Ljava/lang/Object;

    iput-boolean p3, p0, Lod/e;->n:Z

    iput-object p4, p0, Lod/e;->q:Ljava/lang/Object;

    iput p5, p0, Lod/e;->o:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltc/a;Li9/a;Lf1/r;ZI)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lod/e;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/e;->p:Ljava/lang/Object;

    iput-object p2, p0, Lod/e;->m:Ljava/lang/Object;

    iput-object p3, p0, Lod/e;->q:Ljava/lang/Object;

    iput-boolean p4, p0, Lod/e;->n:Z

    iput p5, p0, Lod/e;->o:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lod/e;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lod/e;->p:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    iget-object v0, p0, Lod/e;->m:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lua/nav/Tuning;

    iget-object v0, p0, Lod/e;->q:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Li9/c;

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lod/e;->o:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-boolean v3, p0, Lod/e;->n:Z

    invoke-static/range {v1 .. v6}, Lod/v6;->f(Ljava/util/Set;Lua/nav/Tuning;ZLi9/c;Lr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lod/e;->p:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lod/e;->m:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lod/e;->q:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Li9/c;

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lod/e;->o:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-boolean v3, p0, Lod/e;->n:Z

    invoke-static/range {v1 .. v6}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lod/e;->m:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Li9/a;

    iget-object v0, p0, Lod/e;->p:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Li9/a;

    iget-object v0, p0, Lod/e;->q:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lf1/r;

    move-object v6, p1

    check-cast v6, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0xc01

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v7

    iget v1, p0, Lod/e;->o:I

    iget-boolean v5, p0, Lod/e;->n:Z

    invoke-static/range {v1 .. v7}, Lod/e4;->a(ILi9/a;Li9/a;Lf1/r;ZLr0/q;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lod/e;->m:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Li9/a;

    iget-object v0, p0, Lod/e;->p:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Li9/a;

    iget-object v0, p0, Lod/e;->q:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Li9/f;

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x37

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-boolean v3, p0, Lod/e;->n:Z

    iget v7, p0, Lod/e;->o:I

    invoke-static/range {v1 .. v7}, Lod/g3;->V(Li9/a;Li9/a;ZLi9/f;Lr0/q;II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lod/e;->p:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ltc/a;

    iget-object v0, p0, Lod/e;->m:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Li9/a;

    iget-object v0, p0, Lod/e;->q:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lf1/r;

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lod/e;->o:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-boolean v4, p0, Lod/e;->n:Z

    invoke-static/range {v1 .. v6}, Lod/f;->a(Ltc/a;Li9/a;Lf1/r;ZLr0/q;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
