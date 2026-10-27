.class public final synthetic Lnd/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/c;

.field public final synthetic n:Lr0/b1;


# direct methods
.method public synthetic constructor <init>(Li9/c;Lr0/b1;I)V
    .locals 0

    iput p3, p0, Lnd/n;->l:I

    iput-object p1, p0, Lnd/n;->m:Li9/c;

    iput-object p2, p0, Lnd/n;->n:Lr0/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lnd/n;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lnd/n;->n:Lr0/b1;

    invoke-virtual {v0}, Lr0/b1;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lnd/n;->m:Li9/c;

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lnd/n;->n:Lr0/b1;

    invoke-virtual {v0}, Lr0/b1;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lnd/n;->m:Li9/c;

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
