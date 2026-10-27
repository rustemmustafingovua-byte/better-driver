.class public Ls5/i;
.super Ls5/l;
.source "SourceFile"


# instance fields
.field public final transient m:Ls5/k;

.field public final synthetic n:I


# direct methods
.method public constructor <init>(Ls5/k;Ljava/lang/String;I)V
    .locals 12

    iput p3, p0, Ls5/i;->n:I

    packed-switch p3, :pswitch_data_0

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move-object v3, v4

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ls5/k;->n()Ls5/h;

    move-result-object p3

    move-object v3, p3

    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 5
    invoke-direct/range {v0 .. v5}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;Ls5/h;Ljava/lang/Throwable;B)V

    return-void

    :pswitch_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 6
    invoke-virtual {v1}, Ls5/k;->n()Ls5/h;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    .line 7
    invoke-direct/range {v6 .. v11}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;Ls5/h;Ljava/lang/Throwable;B)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ls5/k;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Ls5/i;->n:I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Ls5/k;->n()Ls5/h;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 9
    invoke-direct/range {v1 .. v6}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;Ls5/h;Ljava/lang/Throwable;B)V

    return-void
.end method

.method public synthetic constructor <init>(Ls5/k;Ljava/lang/String;Ls5/h;Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Ls5/i;->n:I

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;Ls5/h;Ljava/lang/Throwable;B)V

    return-void
.end method

.method public constructor <init>(Ls5/k;Ljava/lang/String;Ls5/h;Ljava/lang/Throwable;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3, p4}, Ls5/l;-><init>(Ljava/lang/String;Ls5/h;Ljava/lang/Throwable;)V

    .line 3
    iput-object p1, p0, Ls5/i;->m:Ls5/k;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ls5/i;->n:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Ls5/i;->n:I

    packed-switch v0, :pswitch_data_1

    :pswitch_0
    iget-object p0, p0, Ls5/i;->m:Ls5/k;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Ls5/i;->m:Ls5/k;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
