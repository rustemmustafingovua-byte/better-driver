.class public final synthetic Lod/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/a;

.field public final synthetic n:Li9/c;


# direct methods
.method public synthetic constructor <init>(Li9/a;Li9/c;I)V
    .locals 0

    iput p3, p0, Lod/x0;->l:I

    iput-object p1, p0, Lod/x0;->m:Li9/a;

    iput-object p2, p0, Lod/x0;->n:Li9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/x0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lod/x0;->m:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    sget-object v0, Lsc/e;->m:Lsc/e;

    iget-object p0, p0, Lod/x0;->n:Li9/c;

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lod/x0;->m:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    sget-object v0, Lsc/e;->l:Lsc/e;

    iget-object p0, p0, Lod/x0;->n:Li9/c;

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
