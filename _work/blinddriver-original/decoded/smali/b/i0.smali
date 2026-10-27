.class public final Lb/i0;
.super Lb/b0;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc/f;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lb/i0;->d:I

    iput-object p1, p0, Lb/i0;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lb/b0;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lf3/a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb/i0;->d:I

    iput-object p1, p0, Lb/i0;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lb/b0;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lb/i0;->d:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lb/i0;->e:Ljava/lang/Object;

    check-cast p0, Lc/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Lb/i0;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lb/i0;->e:Ljava/lang/Object;

    check-cast p0, Lc/f;

    iget-object p0, p0, Lc/f;->c:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, Lb/i0;->e:Ljava/lang/Object;

    check-cast v0, Lf3/a;

    invoke-virtual {v0, p0}, Lf3/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lb/a;)V
    .locals 0

    iget p1, p0, Lb/i0;->d:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lb/i0;->e:Ljava/lang/Object;

    check-cast p0, Lc/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lb/a;)V
    .locals 0

    iget p1, p0, Lb/i0;->d:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lb/i0;->e:Ljava/lang/Object;

    check-cast p0, Lc/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
