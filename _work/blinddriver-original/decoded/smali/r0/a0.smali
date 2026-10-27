.class public final Lr0/a0;
.super Lr0/m1;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li9/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lr0/a0;->b:I

    sget-object v0, Lr0/e;->r:Lr0/e;

    .line 1
    invoke-direct {p0, p1}, Lr0/m1;-><init>(Li9/a;)V

    .line 2
    iput-object v0, p0, Lr0/a0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Li9/c;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lr0/a0;->b:I

    .line 3
    new-instance v0, Lp/a1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lp/a1;-><init>(I)V

    .line 4
    invoke-direct {p0, v0}, Lr0/m1;-><init>(Li9/a;)V

    .line 5
    new-instance v0, Lr0/b0;

    invoke-direct {v0, p1}, Lr0/b0;-><init>(Li9/c;)V

    iput-object v0, p0, Lr0/a0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lj6/g0;
    .locals 8

    iget v0, p0, Lr0/a0;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lj6/g0;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lr0/a0;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lr0/m2;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lj6/g0;-><init>(Lr0/m1;Ljava/lang/Object;ZLr0/m2;Z)V

    return-object v1

    :pswitch_0
    move-object v2, p0

    move-object v3, p1

    new-instance p0, Lj6/g0;

    if-nez v3, :cond_1

    const/4 p1, 0x1

    :goto_2
    move v5, p1

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v4, v3

    move-object v3, v2

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lj6/g0;-><init>(Lr0/m1;Ljava/lang/Object;ZLr0/m2;Z)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b()Lr0/u2;
    .locals 1

    iget v0, p0, Lr0/a0;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lr0/m1;->b()Lr0/u2;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lr0/a0;->c:Ljava/lang/Object;

    check-cast p0, Lr0/b0;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
