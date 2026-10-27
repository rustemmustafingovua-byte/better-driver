.class public final synthetic Lkd/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Lkd/x;


# direct methods
.method public synthetic constructor <init>(ZLkd/x;I)V
    .locals 0

    iput p3, p0, Lkd/t;->l:I

    iput-boolean p1, p0, Lkd/t;->m:Z

    iput-object p2, p0, Lkd/t;->n:Lkd/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lkd/t;->l:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lkd/t;->m:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkd/t;->n:Lkd/x;

    iget-object p0, p0, Lkd/x;->f:Lsc/i;

    invoke-virtual {p0}, Lsc/i;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-boolean v0, p0, Lkd/t;->m:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lkd/t;->n:Lkd/x;

    iget-object p0, p0, Lkd/x;->e:Lp2/y;

    const-wide/high16 v0, -0x3fa7000000000000L    # -100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp2/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    iget-boolean v0, p0, Lkd/t;->m:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lkd/t;->n:Lkd/x;

    iget-object p0, p0, Lkd/x;->e:Lp2/y;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp2/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
