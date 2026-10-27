.class public final Lv4/y;
.super Lv4/u;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Lv4/t;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lv4/y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lv4/t;I)V
    .locals 0

    .line 2
    iput p2, p0, Lv4/y;->a:I

    iput-object p1, p0, Lv4/y;->b:Lv4/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lv4/t;)V
    .locals 2

    iget v0, p0, Lv4/y;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lv4/y;->b:Lv4/t;

    invoke-virtual {v0}, Lv4/t;->S()V

    invoke-virtual {p1, p0}, Lv4/t;->P(Lv4/r;)Lv4/t;

    return-void

    :pswitch_1
    iget-object v0, p0, Lv4/y;->b:Lv4/t;

    check-cast v0, Lv4/z;

    iget v1, v0, Lv4/z;->P:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lv4/z;->P:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lv4/z;->Q:Z

    invoke-virtual {v0}, Lv4/t;->x()V

    :cond_0
    invoke-virtual {p1, p0}, Lv4/t;->P(Lv4/r;)Lv4/t;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lv4/t;)V
    .locals 1

    iget v0, p0, Lv4/y;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lv4/y;->b:Lv4/t;

    check-cast p0, Lv4/z;

    iget-object v0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lv4/z;->F()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lv4/s;->h:Lc2/c0;

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0}, Lv4/t;->M(Lv4/t;Lv4/s;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv4/t;->A:Z

    sget-object p1, Lv4/s;->g:Lc2/c0;

    invoke-virtual {p0, p0, p1, v0}, Lv4/t;->M(Lv4/t;Lv4/s;Z)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public f(Lv4/t;)V
    .locals 0

    iget p1, p0, Lv4/y;->a:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lv4/y;->b:Lv4/t;

    check-cast p0, Lv4/z;

    iget-boolean p1, p0, Lv4/z;->Q:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lv4/t;->Z()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv4/z;->Q:Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
