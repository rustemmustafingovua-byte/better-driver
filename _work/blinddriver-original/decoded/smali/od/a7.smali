.class public final synthetic Lod/a7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lr0/u0;I)V
    .locals 0

    iput p2, p0, Lod/a7;->l:I

    iput-object p1, p0, Lod/a7;->m:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/a7;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lod/a7;->m:Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw/g;

    return-object p0

    :pswitch_0
    new-instance v0, Lw/e;

    iget-object p0, p0, Lod/a7;->m:Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li9/c;

    invoke-direct {v0, p0}, Lw/e;-><init>(Li9/c;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Lod/a7;->m:Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lod/a7;->m:Lr0/u0;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lod/a7;->m:Lr0/u0;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lod/a7;->m:Lr0/u0;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lod/a7;->m:Lr0/u0;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lod/a7;->m:Lr0/u0;

    const-string v0, "enter"

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_7
    iget-object p0, p0, Lod/a7;->m:Lr0/u0;

    const-string v0, "show"

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lod/a7;->m:Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_9
    iget-object p0, p0, Lod/a7;->m:Lr0/u0;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_a
    iget-object p0, p0, Lod/a7;->m:Lr0/u0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_b
    iget-object p0, p0, Lod/a7;->m:Lr0/u0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_c
    iget-object p0, p0, Lod/a7;->m:Lr0/u0;

    const-string v0, "pay"

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_d
    iget-object p0, p0, Lod/a7;->m:Lr0/u0;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
