.class public final synthetic Lod/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/a;

.field public final synthetic n:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Li9/a;Lr0/u0;I)V
    .locals 0

    iput p3, p0, Lod/q1;->l:I

    iput-object p1, p0, Lod/q1;->m:Li9/a;

    iput-object p2, p0, Lod/q1;->n:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lod/q1;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lod/q1;->n:Lr0/u0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lod/q1;->m:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lod/q1;->n:Lr0/u0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lod/q1;->m:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
