.class public final synthetic Lr0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr0/q;


# direct methods
.method public synthetic constructor <init>(Lr0/q;I)V
    .locals 0

    .line 1
    iput p2, p0, Lr0/n;->l:I

    iput-object p1, p0, Lr0/n;->m:Lr0/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lr0/q;Lr0/t0;)V
    .locals 0

    .line 2
    const/4 p2, 0x0

    iput p2, p0, Lr0/n;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/n;->m:Lr0/q;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lr0/n;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lr0/n;->m:Lr0/q;

    invoke-virtual {p0}, Lr0/q;->n()Le1/a;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lr0/n;->m:Lr0/q;

    invoke-virtual {p0}, Lr0/q;->n()Le1/a;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
