.class public final synthetic Lod/k4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;ILi9/c;Li9/a;Li9/a;Li9/a;Lf1/r;I)V
    .locals 0

    .line 1
    const/4 p8, 0x0

    iput p8, p0, Lod/k4;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/k4;->n:Ljava/lang/Object;

    iput p2, p0, Lod/k4;->m:I

    iput-object p3, p0, Lod/k4;->o:Ljava/lang/Object;

    iput-object p4, p0, Lod/k4;->p:Ljava/lang/Object;

    iput-object p5, p0, Lod/k4;->q:Ljava/lang/Object;

    iput-object p6, p0, Lod/k4;->r:Ljava/lang/Object;

    iput-object p7, p0, Lod/k4;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lz0/d;Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lod/k4;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/k4;->n:Ljava/lang/Object;

    iput-object p2, p0, Lod/k4;->o:Ljava/lang/Object;

    iput-object p3, p0, Lod/k4;->p:Ljava/lang/Object;

    iput-object p4, p0, Lod/k4;->q:Ljava/lang/Object;

    iput-object p5, p0, Lod/k4;->r:Ljava/lang/Object;

    iput-object p6, p0, Lod/k4;->s:Ljava/lang/Object;

    iput p7, p0, Lod/k4;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lod/k4;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lod/k4;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lz0/d;

    iget-object v0, p0, Lod/k4;->p:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lod/k4;->m:I

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result p1

    or-int/lit8 v8, p1, 0x1

    iget-object v2, p0, Lod/k4;->o:Ljava/lang/Object;

    iget-object v4, p0, Lod/k4;->q:Ljava/lang/Object;

    iget-object v5, p0, Lod/k4;->r:Ljava/lang/Object;

    iget-object v6, p0, Lod/k4;->s:Ljava/lang/Object;

    invoke-virtual/range {v1 .. v8}, Lz0/d;->d(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lr0/q;I)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lod/k4;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    iget-object v0, p0, Lod/k4;->o:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Li9/c;

    iget-object v0, p0, Lod/k4;->p:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Li9/a;

    iget-object v0, p0, Lod/k4;->q:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Li9/a;

    iget-object v0, p0, Lod/k4;->r:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Li9/a;

    iget-object v0, p0, Lod/k4;->s:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lf1/r;

    move-object v8, p1

    check-cast v8, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x30001

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v9

    iget v2, p0, Lod/k4;->m:I

    invoke-static/range {v1 .. v9}, Lod/m;->o(Ljava/util/List;ILi9/c;Li9/a;Li9/a;Li9/a;Lf1/r;Lr0/q;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
