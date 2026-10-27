.class public final synthetic Lnd/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Z

.field public final synthetic o:Z

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZII)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lnd/b0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/b0;->m:Ljava/lang/String;

    iput-object p2, p0, Lnd/b0;->r:Ljava/lang/Object;

    iput-boolean p3, p0, Lnd/b0;->n:Z

    iput-boolean p4, p0, Lnd/b0;->o:Z

    iput p5, p0, Lnd/b0;->p:I

    iput p6, p0, Lnd/b0;->q:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLi9/a;ZII)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lnd/b0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/b0;->m:Ljava/lang/String;

    iput-boolean p2, p0, Lnd/b0;->n:Z

    iput-object p3, p0, Lnd/b0;->r:Ljava/lang/Object;

    iput-boolean p4, p0, Lnd/b0;->o:Z

    iput p5, p0, Lnd/b0;->p:I

    iput p6, p0, Lnd/b0;->q:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lnd/b0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lnd/b0;->r:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Li9/a;

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lnd/b0;->p:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-object v1, p0, Lnd/b0;->m:Ljava/lang/String;

    iget-boolean v2, p0, Lnd/b0;->n:Z

    iget-boolean v4, p0, Lnd/b0;->o:Z

    iget v7, p0, Lnd/b0;->q:I

    invoke-static/range {v1 .. v7}, Lod/g3;->Y(Ljava/lang/String;ZLi9/a;ZLr0/q;II)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lnd/b0;->r:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lnd/b0;->p:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-object v1, p0, Lnd/b0;->m:Ljava/lang/String;

    iget-boolean v3, p0, Lnd/b0;->n:Z

    iget-boolean v4, p0, Lnd/b0;->o:Z

    iget v7, p0, Lnd/b0;->q:I

    invoke-static/range {v1 .. v7}, Lnd/h0;->f(Ljava/lang/String;Ljava/lang/String;ZZLr0/q;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
