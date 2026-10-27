.class public final synthetic Lod/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lu9/t;

.field public final synthetic n:Lr0/u0;

.field public final synthetic o:Lr0/u0;

.field public final synthetic p:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lu9/t;Lr0/u0;Lr0/u0;Landroid/content/Context;I)V
    .locals 0

    iput p5, p0, Lod/h;->l:I

    iput-object p1, p0, Lod/h;->m:Lu9/t;

    iput-object p2, p0, Lod/h;->n:Lr0/u0;

    iput-object p3, p0, Lod/h;->o:Lr0/u0;

    iput-object p4, p0, Lod/h;->p:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lod/h;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lod/h;->p:Landroid/content/Context;

    const-string v1, "link"

    iget-object v2, p0, Lod/h;->m:Lu9/t;

    iget-object v3, p0, Lod/h;->n:Lr0/u0;

    iget-object p0, p0, Lod/h;->o:Lr0/u0;

    invoke-static {v2, v3, p0, v0, v1}, Lod/m;->l(Lu9/t;Lr0/u0;Lr0/u0;Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lod/h;->p:Landroid/content/Context;

    const-string v1, "restore"

    iget-object v2, p0, Lod/h;->m:Lu9/t;

    iget-object v3, p0, Lod/h;->n:Lr0/u0;

    iget-object p0, p0, Lod/h;->o:Lr0/u0;

    invoke-static {v2, v3, p0, v0, v1}, Lod/m;->l(Lu9/t;Lr0/u0;Lr0/u0;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lod/h;->p:Landroid/content/Context;

    const-string v1, "link"

    iget-object v2, p0, Lod/h;->m:Lu9/t;

    iget-object v3, p0, Lod/h;->n:Lr0/u0;

    iget-object p0, p0, Lod/h;->o:Lr0/u0;

    invoke-static {v2, v3, p0, v0, v1}, Lod/m;->l(Lu9/t;Lr0/u0;Lr0/u0;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
