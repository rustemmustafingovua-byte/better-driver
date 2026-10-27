.class public final synthetic Lod/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr0/u0;

.field public final synthetic n:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lr0/u0;Lr0/u0;I)V
    .locals 0

    iput p3, p0, Lod/a1;->l:I

    iput-object p1, p0, Lod/a1;->m:Lr0/u0;

    iput-object p2, p0, Lod/a1;->n:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lod/a1;->l:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lod/a1;->m:Lr0/u0;

    invoke-interface {v1, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iget-object p0, p0, Lod/a1;->n:Lr0/u0;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lod/a1;->m:Lr0/u0;

    invoke-interface {v1, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lod/j5;->a:Lod/j5;

    iget-object p0, p0, Lod/a1;->n:Lr0/u0;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lod/a1;->m:Lr0/u0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lod/g3;->A(Lr0/u0;Z)V

    iget-object p0, p0, Lod/a1;->n:Lr0/u0;

    invoke-static {p0}, Lod/g3;->B(Lr0/u0;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lod/a1;->m:Lr0/u0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lod/g3;->A(Lr0/u0;Z)V

    iget-object p0, p0, Lod/a1;->n:Lr0/u0;

    invoke-static {p0}, Lod/g3;->B(Lr0/u0;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lod/a1;->m:Lr0/u0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lod/g3;->A(Lr0/u0;Z)V

    iget-object p0, p0, Lod/a1;->n:Lr0/u0;

    invoke-static {p0}, Lod/g3;->B(Lr0/u0;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lod/a1;->m:Lr0/u0;

    invoke-interface {v1, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lod/a1;->n:Lr0/u0;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lod/a1;->m:Lr0/u0;

    invoke-interface {v1, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lod/a1;->n:Lr0/u0;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lod/a1;->m:Lr0/u0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lod/g3;->A(Lr0/u0;Z)V

    iget-object p0, p0, Lod/a1;->n:Lr0/u0;

    invoke-static {p0}, Lod/g3;->B(Lr0/u0;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lod/a1;->m:Lr0/u0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lod/g3;->A(Lr0/u0;Z)V

    iget-object p0, p0, Lod/a1;->n:Lr0/u0;

    invoke-static {p0}, Lod/g3;->B(Lr0/u0;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lod/a1;->m:Lr0/u0;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lod/a1;->n:Lr0/u0;

    invoke-static {p0}, Lod/g3;->u(Lr0/u0;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lod/a1;->m:Lr0/u0;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lod/a1;->n:Lr0/u0;

    invoke-static {p0}, Lod/g3;->v(Lr0/u0;)V

    goto/16 :goto_0

    :pswitch_a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lod/a1;->m:Lr0/u0;

    invoke-interface {v1, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lod/a1;->n:Lr0/u0;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
